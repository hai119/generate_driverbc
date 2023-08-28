; ModuleID = '../bcout/drivers/acpi/device_sysfs.llvm.bc'
source_filename = "drivers/acpi/device_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.acpi_data_node_attr = type { %struct.attribute, i64 (%struct.acpi_data_node*, i8*)*, i64 (%struct.acpi_data_node*, i8*, i64)* }
%struct.acpi_data_node = type { i8*, i8*, %struct.fwnode_handle, %struct.fwnode_handle*, %struct.acpi_device_data, %struct.list_head, %struct.kobject, %struct.completion }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
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
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_hardware_id = type { %struct.list_head, i8* }
%struct.anon.41 = type { i32, i32, %union.acpi_object* }
%struct.anon.39 = type { i32, i32, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.40 = type { i32, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@__const.acpi_device_setup_files.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@dev_attr_path = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_path_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !0
@dev_attr_hid = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_hid_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2455
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2469
@.str.1 = private unnamed_addr constant [5 x i8] c"_STR\00", align 1
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @description_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2471
@dev_attr_adr = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_adr_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2473
@dev_attr_uid = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_uid_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2475
@.str.2 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@dev_attr_sun = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_sun_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2477
@.str.3 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@dev_attr_hrv = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_device_hrv_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2479
@.str.4 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @status_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2481
@.str.5 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@dev_attr_eject = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @acpi_eject_store }, align 8, !dbg !2483
@dev_attr_power_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @power_state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2485
@dev_attr_real_power_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @real_power_state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2487
@.str.6 = private unnamed_addr constant [8 x i8] c"PRP0001\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"acpi:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@__const.create_of_modalias.buf = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"of:N%sT\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"C%s\00", align 1
@_ctype = external dso_local constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@__const.acpi_object_path.path = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"adr\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"0x%08llx\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"hrv\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"eject\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"power_state\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"real_power_state\00", align 1
@acpi_data_node_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @acpi_data_node_release, %struct.sysfs_ops* @acpi_data_node_sysfs_ops, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @acpi_data_node_default_attrs, i32 0, i32 0), %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2494
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Failed to expose (%d)\0A\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2489
@.str.30 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@acpi_data_node_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @acpi_data_node_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* null }, align 8, !dbg !2496
@acpi_data_node_default_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.acpi_data_node_attr, %struct.acpi_data_node_attr* @data_node_path, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2498
@data_node_path = internal global %struct.acpi_data_node_attr { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.acpi_data_node*, i8*)* @data_node_show_path, i64 (%struct.acpi_data_node*, i8*, i64)* null }, align 8, !dbg !2501

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__acpi_device_uevent_modalias(%struct.acpi_device* %adev, %struct.kobj_uevent_env* %env) #0 !dbg !2508 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %len = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2511, metadata !DIExpression()), !dbg !2512
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2515, metadata !DIExpression()), !dbg !2516
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2517
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !2517
  br i1 %tobool, label %if.end, label %if.then, !dbg !2519

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2520
  br label %return, !dbg !2520

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2521
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 10, !dbg !2523
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !2524
  %call = call i32 @list_empty(%struct.list_head* %ids) #4, !dbg !2525
  %tobool1 = icmp ne i32 %call, 0, !dbg !2525
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2526

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2527
  br label %return, !dbg !2527

if.end3:                                          ; preds = %if.end
  %2 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2528
  %call4 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #4, !dbg !2530
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2530
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2531

if.then6:                                         ; preds = %if.end3
  store i32 -12, i32* %retval, align 4, !dbg !2532
  br label %return, !dbg !2532

if.end7:                                          ; preds = %if.end3
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2533
  %4 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2534
  %buf = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %4, i32 0, i32 3, !dbg !2535
  %5 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2536
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %5, i32 0, i32 4, !dbg !2537
  %6 = load i32, i32* %buflen, align 4, !dbg !2537
  %sub = sub i32 %6, 1, !dbg !2538
  %idxprom = sext i32 %sub to i64, !dbg !2534
  %arrayidx = getelementptr [2048 x i8], [2048 x i8]* %buf, i64 0, i64 %idxprom, !dbg !2534
  %7 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2539
  %buflen8 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %7, i32 0, i32 4, !dbg !2540
  %8 = load i32, i32* %buflen8, align 4, !dbg !2540
  %conv = sext i32 %8 to i64, !dbg !2539
  %sub9 = sub i64 2048, %conv, !dbg !2541
  %conv10 = trunc i64 %sub9 to i32, !dbg !2542
  %call11 = call i32 @create_pnp_modalias(%struct.acpi_device* %3, i8* %arrayidx, i32 %conv10) #4, !dbg !2543
  store i32 %call11, i32* %len, align 4, !dbg !2544
  %9 = load i32, i32* %len, align 4, !dbg !2545
  %cmp = icmp slt i32 %9, 0, !dbg !2547
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !2548

if.then13:                                        ; preds = %if.end7
  %10 = load i32, i32* %len, align 4, !dbg !2549
  store i32 %10, i32* %retval, align 4, !dbg !2550
  br label %return, !dbg !2550

if.end14:                                         ; preds = %if.end7
  %11 = load i32, i32* %len, align 4, !dbg !2551
  %12 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2552
  %buflen15 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %12, i32 0, i32 4, !dbg !2553
  %13 = load i32, i32* %buflen15, align 4, !dbg !2554
  %add = add i32 %13, %11, !dbg !2554
  store i32 %add, i32* %buflen15, align 4, !dbg !2554
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2555
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 15, !dbg !2557
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 2, !dbg !2558
  %15 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2558
  %tobool16 = icmp ne %union.acpi_object* %15, null, !dbg !2555
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2559

if.then17:                                        ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !2560
  br label %return, !dbg !2560

if.end18:                                         ; preds = %if.end14
  %16 = load i32, i32* %len, align 4, !dbg !2561
  %cmp19 = icmp sgt i32 %16, 0, !dbg !2563
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !2564

land.lhs.true:                                    ; preds = %if.end18
  %17 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2565
  %call21 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #4, !dbg !2566
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2566
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2567

if.then23:                                        ; preds = %land.lhs.true
  store i32 -12, i32* %retval, align 4, !dbg !2568
  br label %return, !dbg !2568

if.end24:                                         ; preds = %land.lhs.true, %if.end18
  %18 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2569
  %19 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2570
  %buf25 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %19, i32 0, i32 3, !dbg !2571
  %20 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2572
  %buflen26 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %20, i32 0, i32 4, !dbg !2573
  %21 = load i32, i32* %buflen26, align 4, !dbg !2573
  %sub27 = sub i32 %21, 1, !dbg !2574
  %idxprom28 = sext i32 %sub27 to i64, !dbg !2570
  %arrayidx29 = getelementptr [2048 x i8], [2048 x i8]* %buf25, i64 0, i64 %idxprom28, !dbg !2570
  %22 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2575
  %buflen30 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %22, i32 0, i32 4, !dbg !2576
  %23 = load i32, i32* %buflen30, align 4, !dbg !2576
  %conv31 = sext i32 %23 to i64, !dbg !2575
  %sub32 = sub i64 2048, %conv31, !dbg !2577
  %conv33 = trunc i64 %sub32 to i32, !dbg !2578
  %call34 = call i32 @create_of_modalias(%struct.acpi_device* %18, i8* %arrayidx29, i32 %conv33) #4, !dbg !2579
  store i32 %call34, i32* %len, align 4, !dbg !2580
  %24 = load i32, i32* %len, align 4, !dbg !2581
  %cmp35 = icmp slt i32 %24, 0, !dbg !2583
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !2584

if.then37:                                        ; preds = %if.end24
  %25 = load i32, i32* %len, align 4, !dbg !2585
  store i32 %25, i32* %retval, align 4, !dbg !2586
  br label %return, !dbg !2586

if.end38:                                         ; preds = %if.end24
  %26 = load i32, i32* %len, align 4, !dbg !2587
  %27 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2588
  %buflen39 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %27, i32 0, i32 4, !dbg !2589
  %28 = load i32, i32* %buflen39, align 4, !dbg !2590
  %add40 = add i32 %28, %26, !dbg !2590
  store i32 %add40, i32* %buflen39, align 4, !dbg !2590
  store i32 0, i32* %retval, align 4, !dbg !2591
  br label %return, !dbg !2591

return:                                           ; preds = %if.end38, %if.then37, %if.then23, %if.then17, %if.then13, %if.then6, %if.then2, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !2592
  ret i32 %29, !dbg !2592
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2593 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  br label %do.body, !dbg !2601

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2603

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2601
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2601
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2601
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2603
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2601
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2605
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2606
  %conv = zext i1 %cmp to i32, !dbg !2606
  ret i32 %conv, !dbg !2607
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_pnp_modalias(%struct.acpi_device* %acpi_dev, i8* %modalias, i32 %size) #0 !dbg !2608 {
entry:
  %retval = alloca i32, align 4
  %acpi_dev.addr = alloca %struct.acpi_device*, align 8
  %modalias.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %id = alloca %struct.acpi_hardware_id*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hardware_id*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp12 = alloca %struct.acpi_hardware_id*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp28 = alloca %struct.acpi_hardware_id*, align 8
  %__mptr56 = alloca i8*, align 8
  %tmp61 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device* %acpi_dev, %struct.acpi_device** %acpi_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i8* %modalias, i8** %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %modalias.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %id, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2623
  %call = call zeroext i1 @acpi_device_is_present(%struct.acpi_device* %0) #4, !dbg !2625
  br i1 %call, label %if.end, label %if.then, !dbg !2626

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2627
  br label %return, !dbg !2627

if.end:                                           ; preds = %entry
  store i32 0, i32* %count, align 4, !dbg !2628
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2629, metadata !DIExpression()), !dbg !2632
  %1 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2632
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 10, !dbg !2632
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !2632
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ids, i32 0, i32 0, !dbg !2632
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2632
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !2632
  store i8* %3, i8** %__mptr, align 8, !dbg !2632
  br label %do.body, !dbg !2632

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2633

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2632
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !2632
  %5 = bitcast i8* %add.ptr to %struct.acpi_hardware_id*, !dbg !2632
  store %struct.acpi_hardware_id* %5, %struct.acpi_hardware_id** %tmp, align 8, !dbg !2633
  %6 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp, align 8, !dbg !2632
  store %struct.acpi_hardware_id* %6, %struct.acpi_hardware_id** %id, align 8, !dbg !2635
  br label %for.cond, !dbg !2635

for.cond:                                         ; preds = %do.end11, %do.end
  %7 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2636
  %list = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %7, i32 0, i32 0, !dbg !2636
  %8 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2636
  %pnp1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 10, !dbg !2636
  %ids2 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp1, i32 0, i32 4, !dbg !2636
  %cmp = icmp eq %struct.list_head* %list, %ids2, !dbg !2636
  %lnot = xor i1 %cmp, true, !dbg !2636
  br i1 %lnot, label %for.body, label %for.end, !dbg !2635

for.body:                                         ; preds = %for.cond
  %9 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2638
  %id3 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %9, i32 0, i32 1, !dbg !2640
  %10 = load i8*, i8** %id3, align 8, !dbg !2640
  %call4 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !2641
  %tobool = icmp ne i32 %call4, 0, !dbg !2641
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2642

if.then5:                                         ; preds = %for.body
  %11 = load i32, i32* %count, align 4, !dbg !2643
  %inc = add i32 %11, 1, !dbg !2643
  store i32 %inc, i32* %count, align 4, !dbg !2643
  br label %if.end6, !dbg !2644

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !2645

for.inc:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !2646, metadata !DIExpression()), !dbg !2648
  %12 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2648
  %list8 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %12, i32 0, i32 0, !dbg !2648
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %list8, i32 0, i32 0, !dbg !2648
  %13 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !2648
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !2648
  store i8* %14, i8** %__mptr7, align 8, !dbg !2648
  br label %do.body10, !dbg !2648

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !2649

do.end11:                                         ; preds = %do.body10
  %15 = load i8*, i8** %__mptr7, align 8, !dbg !2648
  %add.ptr13 = getelementptr i8, i8* %15, i64 0, !dbg !2648
  %16 = bitcast i8* %add.ptr13 to %struct.acpi_hardware_id*, !dbg !2648
  store %struct.acpi_hardware_id* %16, %struct.acpi_hardware_id** %tmp12, align 8, !dbg !2649
  %17 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp12, align 8, !dbg !2648
  store %struct.acpi_hardware_id* %17, %struct.acpi_hardware_id** %id, align 8, !dbg !2636
  br label %for.cond, !dbg !2636, !llvm.loop !2651

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %count, align 4, !dbg !2653
  %tobool14 = icmp ne i32 %18, 0, !dbg !2653
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2655

if.then15:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !2656
  br label %return, !dbg !2656

if.end16:                                         ; preds = %for.end
  %19 = load i8*, i8** %modalias.addr, align 8, !dbg !2657
  %20 = load i32, i32* %size.addr, align 4, !dbg !2658
  %conv = sext i32 %20 to i64, !dbg !2658
  %call17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %19, i64 %conv, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !2659
  store i32 %call17, i32* %len, align 4, !dbg !2660
  %21 = load i32, i32* %len, align 4, !dbg !2661
  %cmp18 = icmp sle i32 %21, 0, !dbg !2663
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !2664

if.then20:                                        ; preds = %if.end16
  %22 = load i32, i32* %len, align 4, !dbg !2665
  store i32 %22, i32* %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end21:                                         ; preds = %if.end16
  %23 = load i32, i32* %len, align 4, !dbg !2667
  %24 = load i32, i32* %size.addr, align 4, !dbg !2668
  %sub = sub i32 %24, %23, !dbg !2668
  store i32 %sub, i32* %size.addr, align 4, !dbg !2668
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !2669, metadata !DIExpression()), !dbg !2672
  %25 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2672
  %pnp23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 10, !dbg !2672
  %ids24 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp23, i32 0, i32 4, !dbg !2672
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %ids24, i32 0, i32 0, !dbg !2672
  %26 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !2672
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !2672
  store i8* %27, i8** %__mptr22, align 8, !dbg !2672
  br label %do.body26, !dbg !2672

do.body26:                                        ; preds = %if.end21
  br label %do.end27, !dbg !2673

do.end27:                                         ; preds = %do.body26
  %28 = load i8*, i8** %__mptr22, align 8, !dbg !2672
  %add.ptr29 = getelementptr i8, i8* %28, i64 0, !dbg !2672
  %29 = bitcast i8* %add.ptr29 to %struct.acpi_hardware_id*, !dbg !2672
  store %struct.acpi_hardware_id* %29, %struct.acpi_hardware_id** %tmp28, align 8, !dbg !2673
  %30 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp28, align 8, !dbg !2672
  store %struct.acpi_hardware_id* %30, %struct.acpi_hardware_id** %id, align 8, !dbg !2675
  br label %for.cond30, !dbg !2675

for.cond30:                                       ; preds = %do.end60, %do.end27
  %31 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2676
  %list31 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %31, i32 0, i32 0, !dbg !2676
  %32 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2676
  %pnp32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 10, !dbg !2676
  %ids33 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp32, i32 0, i32 4, !dbg !2676
  %cmp34 = icmp eq %struct.list_head* %list31, %ids33, !dbg !2676
  %lnot36 = xor i1 %cmp34, true, !dbg !2676
  br i1 %lnot36, label %for.body37, label %for.end63, !dbg !2675

for.body37:                                       ; preds = %for.cond30
  %33 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2678
  %id38 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %33, i32 0, i32 1, !dbg !2681
  %34 = load i8*, i8** %id38, align 8, !dbg !2681
  %call39 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !2682
  %tobool40 = icmp ne i32 %call39, 0, !dbg !2682
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2683

if.then41:                                        ; preds = %for.body37
  br label %for.inc55, !dbg !2684

if.end42:                                         ; preds = %for.body37
  %35 = load i8*, i8** %modalias.addr, align 8, !dbg !2685
  %36 = load i32, i32* %len, align 4, !dbg !2686
  %idxprom = sext i32 %36 to i64, !dbg !2685
  %arrayidx = getelementptr i8, i8* %35, i64 %idxprom, !dbg !2685
  %37 = load i32, i32* %size.addr, align 4, !dbg !2687
  %conv43 = sext i32 %37 to i64, !dbg !2687
  %38 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2688
  %id44 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %38, i32 0, i32 1, !dbg !2689
  %39 = load i8*, i8** %id44, align 8, !dbg !2689
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx, i64 %conv43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %39) #4, !dbg !2690
  store i32 %call45, i32* %count, align 4, !dbg !2691
  %40 = load i32, i32* %count, align 4, !dbg !2692
  %cmp46 = icmp slt i32 %40, 0, !dbg !2694
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !2695

if.then48:                                        ; preds = %if.end42
  store i32 -22, i32* %retval, align 4, !dbg !2696
  br label %return, !dbg !2696

if.end49:                                         ; preds = %if.end42
  %41 = load i32, i32* %count, align 4, !dbg !2697
  %42 = load i32, i32* %size.addr, align 4, !dbg !2699
  %cmp50 = icmp sge i32 %41, %42, !dbg !2700
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !2701

if.then52:                                        ; preds = %if.end49
  store i32 -12, i32* %retval, align 4, !dbg !2702
  br label %return, !dbg !2702

if.end53:                                         ; preds = %if.end49
  %43 = load i32, i32* %count, align 4, !dbg !2703
  %44 = load i32, i32* %len, align 4, !dbg !2704
  %add = add i32 %44, %43, !dbg !2704
  store i32 %add, i32* %len, align 4, !dbg !2704
  %45 = load i32, i32* %count, align 4, !dbg !2705
  %46 = load i32, i32* %size.addr, align 4, !dbg !2706
  %sub54 = sub i32 %46, %45, !dbg !2706
  store i32 %sub54, i32* %size.addr, align 4, !dbg !2706
  br label %for.inc55, !dbg !2707

for.inc55:                                        ; preds = %if.end53, %if.then41
  call void @llvm.dbg.declare(metadata i8** %__mptr56, metadata !2708, metadata !DIExpression()), !dbg !2710
  %47 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !2710
  %list57 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %47, i32 0, i32 0, !dbg !2710
  %next58 = getelementptr inbounds %struct.list_head, %struct.list_head* %list57, i32 0, i32 0, !dbg !2710
  %48 = load %struct.list_head*, %struct.list_head** %next58, align 8, !dbg !2710
  %49 = bitcast %struct.list_head* %48 to i8*, !dbg !2710
  store i8* %49, i8** %__mptr56, align 8, !dbg !2710
  br label %do.body59, !dbg !2710

do.body59:                                        ; preds = %for.inc55
  br label %do.end60, !dbg !2711

do.end60:                                         ; preds = %do.body59
  %50 = load i8*, i8** %__mptr56, align 8, !dbg !2710
  %add.ptr62 = getelementptr i8, i8* %50, i64 0, !dbg !2710
  %51 = bitcast i8* %add.ptr62 to %struct.acpi_hardware_id*, !dbg !2710
  store %struct.acpi_hardware_id* %51, %struct.acpi_hardware_id** %tmp61, align 8, !dbg !2711
  %52 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp61, align 8, !dbg !2710
  store %struct.acpi_hardware_id* %52, %struct.acpi_hardware_id** %id, align 8, !dbg !2676
  br label %for.cond30, !dbg !2676, !llvm.loop !2713

for.end63:                                        ; preds = %for.cond30
  %53 = load i8*, i8** %modalias.addr, align 8, !dbg !2715
  %54 = load i32, i32* %len, align 4, !dbg !2716
  %idxprom64 = sext i32 %54 to i64, !dbg !2715
  %arrayidx65 = getelementptr i8, i8* %53, i64 %idxprom64, !dbg !2715
  store i8 0, i8* %arrayidx65, align 1, !dbg !2717
  %55 = load i32, i32* %len, align 4, !dbg !2718
  store i32 %55, i32* %retval, align 4, !dbg !2719
  br label %return, !dbg !2719

return:                                           ; preds = %for.end63, %if.then52, %if.then48, %if.then20, %if.then15, %if.then
  %56 = load i32, i32* %retval, align 4, !dbg !2720
  ret i32 %56, !dbg !2720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @create_of_modalias(%struct.acpi_device* %acpi_dev, i8* %modalias, i32 %size) #0 !dbg !2721 {
entry:
  %retval = alloca i32, align 4
  %acpi_dev.addr = alloca %struct.acpi_device*, align 8
  %modalias.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %buf = alloca %struct.acpi_buffer, align 8
  %of_compatible = alloca %union.acpi_object*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %status = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %nval = alloca i32, align 4
  %c = alloca i8*, align 8
  store %struct.acpi_device* %acpi_dev, %struct.acpi_device** %acpi_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  store i8* %modalias, i8** %modalias.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %modalias.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buf, metadata !2728, metadata !DIExpression()), !dbg !2734
  %0 = bitcast %struct.acpi_buffer* %buf to i8*, !dbg !2734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.create_of_modalias.buf to i8*), i64 16, i1 false), !dbg !2734
  call void @llvm.dbg.declare(metadata %union.acpi_object** %of_compatible, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.declare(metadata i32* %nval, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.declare(metadata i8** %c, metadata !2749, metadata !DIExpression()), !dbg !2750
  %1 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2751
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !2752
  %2 = load i8*, i8** %handle, align 8, !dbg !2752
  %call = call i32 @acpi_get_name(i8* %2, i32 1, %struct.acpi_buffer* %buf) #4, !dbg !2753
  store i32 %call, i32* %status, align 4, !dbg !2754
  %3 = load i32, i32* %status, align 4, !dbg !2755
  %tobool = icmp ne i32 %3, 0, !dbg !2755
  br i1 %tobool, label %if.then, label %if.end, !dbg !2757

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2759
  %4 = load i8*, i8** %pointer, align 8, !dbg !2759
  store i8* %4, i8** %c, align 8, !dbg !2761
  br label %for.cond, !dbg !2762

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %c, align 8, !dbg !2763
  %6 = load i8, i8* %5, align 1, !dbg !2765
  %conv = sext i8 %6 to i32, !dbg !2765
  %cmp = icmp ne i32 %conv, 0, !dbg !2766
  br i1 %cmp, label %for.body, label %for.end, !dbg !2767

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %c, align 8, !dbg !2768
  %8 = load i8, i8* %7, align 1, !dbg !2768
  %call2 = call zeroext i8 @__tolower(i8 zeroext %8) #4, !dbg !2768
  %9 = load i8*, i8** %c, align 8, !dbg !2769
  store i8 %call2, i8* %9, align 1, !dbg !2770
  br label %for.inc, !dbg !2771

for.inc:                                          ; preds = %for.body
  %10 = load i8*, i8** %c, align 8, !dbg !2772
  %incdec.ptr = getelementptr i8, i8* %10, i32 1, !dbg !2772
  store i8* %incdec.ptr, i8** %c, align 8, !dbg !2772
  br label %for.cond, !dbg !2773, !llvm.loop !2774

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %modalias.addr, align 8, !dbg !2776
  %12 = load i32, i32* %size.addr, align 4, !dbg !2777
  %conv3 = sext i32 %12 to i64, !dbg !2777
  %pointer4 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2778
  %13 = load i8*, i8** %pointer4, align 8, !dbg !2778
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %11, i64 %conv3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %13) #4, !dbg !2779
  store i32 %call5, i32* %len, align 4, !dbg !2780
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buf, i32 0, i32 1, !dbg !2781
  %14 = load i8*, i8** %pointer6, align 8, !dbg !2781
  call void @acpi_os_free(i8* %14) #4, !dbg !2781
  %15 = load i32, i32* %len, align 4, !dbg !2782
  %cmp7 = icmp sle i32 %15, 0, !dbg !2784
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !2785

if.then9:                                         ; preds = %for.end
  %16 = load i32, i32* %len, align 4, !dbg !2786
  store i32 %16, i32* %retval, align 4, !dbg !2787
  br label %return, !dbg !2787

if.end10:                                         ; preds = %for.end
  %17 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev.addr, align 8, !dbg !2788
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 15, !dbg !2789
  %of_compatible11 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 2, !dbg !2790
  %18 = load %union.acpi_object*, %union.acpi_object** %of_compatible11, align 8, !dbg !2790
  store %union.acpi_object* %18, %union.acpi_object** %of_compatible, align 8, !dbg !2791
  %19 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2792
  %type = bitcast %union.acpi_object* %19 to i32*, !dbg !2794
  %20 = load i32, i32* %type, align 8, !dbg !2794
  %cmp12 = icmp eq i32 %20, 4, !dbg !2795
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !2796

if.then14:                                        ; preds = %if.end10
  %21 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2797
  %package = bitcast %union.acpi_object* %21 to %struct.anon.41*, !dbg !2799
  %count15 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package, i32 0, i32 1, !dbg !2800
  %22 = load i32, i32* %count15, align 4, !dbg !2800
  store i32 %22, i32* %nval, align 4, !dbg !2801
  %23 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2802
  %package16 = bitcast %union.acpi_object* %23 to %struct.anon.41*, !dbg !2803
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package16, i32 0, i32 2, !dbg !2804
  %24 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2804
  store %union.acpi_object* %24, %union.acpi_object** %obj, align 8, !dbg !2805
  br label %if.end17, !dbg !2806

if.else:                                          ; preds = %if.end10
  store i32 1, i32* %nval, align 4, !dbg !2807
  %25 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2809
  store %union.acpi_object* %25, %union.acpi_object** %obj, align 8, !dbg !2810
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  store i32 0, i32* %i, align 4, !dbg !2811
  br label %for.cond18, !dbg !2813

for.cond18:                                       ; preds = %for.inc33, %if.end17
  %26 = load i32, i32* %i, align 4, !dbg !2814
  %27 = load i32, i32* %nval, align 4, !dbg !2816
  %cmp19 = icmp slt i32 %26, %27, !dbg !2817
  br i1 %cmp19, label %for.body21, label %for.end35, !dbg !2818

for.body21:                                       ; preds = %for.cond18
  %28 = load i8*, i8** %modalias.addr, align 8, !dbg !2819
  %29 = load i32, i32* %len, align 4, !dbg !2821
  %idxprom = sext i32 %29 to i64, !dbg !2819
  %arrayidx = getelementptr i8, i8* %28, i64 %idxprom, !dbg !2819
  %30 = load i32, i32* %size.addr, align 4, !dbg !2822
  %conv22 = sext i32 %30 to i64, !dbg !2822
  %31 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2823
  %string = bitcast %union.acpi_object* %31 to %struct.anon.39*, !dbg !2824
  %pointer23 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %string, i32 0, i32 2, !dbg !2825
  %32 = load i8*, i8** %pointer23, align 8, !dbg !2825
  %call24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arrayidx, i64 %conv22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %32) #4, !dbg !2826
  store i32 %call24, i32* %count, align 4, !dbg !2827
  %33 = load i32, i32* %count, align 4, !dbg !2828
  %cmp25 = icmp slt i32 %33, 0, !dbg !2830
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !2831

if.then27:                                        ; preds = %for.body21
  store i32 -22, i32* %retval, align 4, !dbg !2832
  br label %return, !dbg !2832

if.end28:                                         ; preds = %for.body21
  %34 = load i32, i32* %count, align 4, !dbg !2833
  %35 = load i32, i32* %size.addr, align 4, !dbg !2835
  %cmp29 = icmp sge i32 %34, %35, !dbg !2836
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2837

if.then31:                                        ; preds = %if.end28
  store i32 -12, i32* %retval, align 4, !dbg !2838
  br label %return, !dbg !2838

if.end32:                                         ; preds = %if.end28
  %36 = load i32, i32* %count, align 4, !dbg !2839
  %37 = load i32, i32* %len, align 4, !dbg !2840
  %add = add i32 %37, %36, !dbg !2840
  store i32 %add, i32* %len, align 4, !dbg !2840
  %38 = load i32, i32* %count, align 4, !dbg !2841
  %39 = load i32, i32* %size.addr, align 4, !dbg !2842
  %sub = sub i32 %39, %38, !dbg !2842
  store i32 %sub, i32* %size.addr, align 4, !dbg !2842
  br label %for.inc33, !dbg !2843

for.inc33:                                        ; preds = %if.end32
  %40 = load i32, i32* %i, align 4, !dbg !2844
  %inc = add i32 %40, 1, !dbg !2844
  store i32 %inc, i32* %i, align 4, !dbg !2844
  %41 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !2845
  %incdec.ptr34 = getelementptr %union.acpi_object, %union.acpi_object* %41, i32 1, !dbg !2845
  store %union.acpi_object* %incdec.ptr34, %union.acpi_object** %obj, align 8, !dbg !2845
  br label %for.cond18, !dbg !2846, !llvm.loop !2847

for.end35:                                        ; preds = %for.cond18
  %42 = load i8*, i8** %modalias.addr, align 8, !dbg !2849
  %43 = load i32, i32* %len, align 4, !dbg !2850
  %idxprom36 = sext i32 %43 to i64, !dbg !2849
  %arrayidx37 = getelementptr i8, i8* %42, i64 %idxprom36, !dbg !2849
  store i8 0, i8* %arrayidx37, align 1, !dbg !2851
  %44 = load i32, i32* %len, align 4, !dbg !2852
  store i32 %44, i32* %retval, align 4, !dbg !2853
  br label %return, !dbg !2853

return:                                           ; preds = %for.end35, %if.then31, %if.then27, %if.then9, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !2854
  ret i32 %45, !dbg !2854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_uevent_modalias(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !2855 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2856, metadata !DIExpression()), !dbg !2857
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !2858, metadata !DIExpression()), !dbg !2859
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2860
  %call = call %struct.acpi_device* @acpi_companion_match(%struct.device* %0) #4, !dbg !2861
  %1 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !2862
  %call1 = call i32 @__acpi_device_uevent_modalias(%struct.acpi_device* %call, %struct.kobj_uevent_env* %1) #4, !dbg !2863
  ret i32 %call1, !dbg !2864
}

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_companion_match(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_modalias(%struct.device* %dev, i8* %buf, i32 %size) #0 !dbg !2865 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2874
  %call = call %struct.acpi_device* @acpi_companion_match(%struct.device* %0) #4, !dbg !2875
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2876
  %2 = load i32, i32* %size.addr, align 4, !dbg !2877
  %call1 = call i32 @__acpi_device_modalias(%struct.acpi_device* %call, i8* %1, i32 %2) #4, !dbg !2878
  ret i32 %call1, !dbg !2879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_device_modalias(%struct.acpi_device* %adev, i8* %buf, i32 %size) #0 !dbg !2880 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2883, metadata !DIExpression()), !dbg !2884
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2889, metadata !DIExpression()), !dbg !2890
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2891
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !2891
  br i1 %tobool, label %if.end, label %if.then, !dbg !2893

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2895
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 10, !dbg !2897
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !2898
  %call = call i32 @list_empty(%struct.list_head* %ids) #4, !dbg !2899
  %tobool1 = icmp ne i32 %call, 0, !dbg !2899
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2900

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2901
  br label %return, !dbg !2901

if.end3:                                          ; preds = %if.end
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2902
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !2903
  %4 = load i32, i32* %size.addr, align 4, !dbg !2904
  %sub = sub i32 %4, 1, !dbg !2905
  %call4 = call i32 @create_pnp_modalias(%struct.acpi_device* %2, i8* %3, i32 %sub) #4, !dbg !2906
  store i32 %call4, i32* %len, align 4, !dbg !2907
  %5 = load i32, i32* %len, align 4, !dbg !2908
  %cmp = icmp slt i32 %5, 0, !dbg !2910
  br i1 %cmp, label %if.then5, label %if.else, !dbg !2911

if.then5:                                         ; preds = %if.end3
  %6 = load i32, i32* %len, align 4, !dbg !2912
  store i32 %6, i32* %retval, align 4, !dbg !2914
  br label %return, !dbg !2914

if.else:                                          ; preds = %if.end3
  %7 = load i32, i32* %len, align 4, !dbg !2915
  %cmp6 = icmp sgt i32 %7, 0, !dbg !2917
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !2918

if.then7:                                         ; preds = %if.else
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !2919
  %9 = load i32, i32* %len, align 4, !dbg !2921
  %inc = add i32 %9, 1, !dbg !2921
  store i32 %inc, i32* %len, align 4, !dbg !2921
  %idxprom = sext i32 %9 to i64, !dbg !2919
  %arrayidx = getelementptr i8, i8* %8, i64 %idxprom, !dbg !2919
  store i8 10, i8* %arrayidx, align 1, !dbg !2922
  %10 = load i32, i32* %len, align 4, !dbg !2923
  %11 = load i32, i32* %size.addr, align 4, !dbg !2924
  %sub8 = sub i32 %11, %10, !dbg !2924
  store i32 %sub8, i32* %size.addr, align 4, !dbg !2924
  br label %if.end9, !dbg !2925

if.end9:                                          ; preds = %if.then7, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  %12 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2926
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 15, !dbg !2928
  %of_compatible = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %data, i32 0, i32 2, !dbg !2929
  %13 = load %union.acpi_object*, %union.acpi_object** %of_compatible, align 8, !dbg !2929
  %tobool11 = icmp ne %union.acpi_object* %13, null, !dbg !2926
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2930

if.then12:                                        ; preds = %if.end10
  %14 = load i32, i32* %len, align 4, !dbg !2931
  store i32 %14, i32* %retval, align 4, !dbg !2932
  br label %return, !dbg !2932

if.end13:                                         ; preds = %if.end10
  %15 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2933
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !2934
  %17 = load i32, i32* %len, align 4, !dbg !2935
  %idx.ext = sext i32 %17 to i64, !dbg !2936
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !2936
  %18 = load i32, i32* %size.addr, align 4, !dbg !2937
  %sub14 = sub i32 %18, 1, !dbg !2938
  %call15 = call i32 @create_of_modalias(%struct.acpi_device* %15, i8* %add.ptr, i32 %sub14) #4, !dbg !2939
  store i32 %call15, i32* %count, align 4, !dbg !2940
  %19 = load i32, i32* %count, align 4, !dbg !2941
  %cmp16 = icmp slt i32 %19, 0, !dbg !2943
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !2944

if.then17:                                        ; preds = %if.end13
  %20 = load i32, i32* %count, align 4, !dbg !2945
  store i32 %20, i32* %retval, align 4, !dbg !2947
  br label %return, !dbg !2947

if.else18:                                        ; preds = %if.end13
  %21 = load i32, i32* %count, align 4, !dbg !2948
  %cmp19 = icmp sgt i32 %21, 0, !dbg !2950
  br i1 %cmp19, label %if.then20, label %if.end24, !dbg !2951

if.then20:                                        ; preds = %if.else18
  %22 = load i32, i32* %count, align 4, !dbg !2952
  %23 = load i32, i32* %len, align 4, !dbg !2954
  %add = add i32 %23, %22, !dbg !2954
  store i32 %add, i32* %len, align 4, !dbg !2954
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !2955
  %25 = load i32, i32* %len, align 4, !dbg !2956
  %inc21 = add i32 %25, 1, !dbg !2956
  store i32 %inc21, i32* %len, align 4, !dbg !2956
  %idxprom22 = sext i32 %25 to i64, !dbg !2955
  %arrayidx23 = getelementptr i8, i8* %24, i64 %idxprom22, !dbg !2955
  store i8 10, i8* %arrayidx23, align 1, !dbg !2957
  br label %if.end24, !dbg !2958

if.end24:                                         ; preds = %if.then20, %if.else18
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %26 = load i32, i32* %len, align 4, !dbg !2959
  store i32 %26, i32* %retval, align 4, !dbg !2960
  br label %return, !dbg !2960

return:                                           ; preds = %if.end25, %if.then17, %if.then12, %if.then5, %if.then2, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !2961
  ret i32 %27, !dbg !2961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_setup_files(%struct.acpi_device* %dev) #0 !dbg !2962 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.acpi_device*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2965, metadata !DIExpression()), !dbg !2966
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_device_setup_files.buffer to i8*), i64 16, i1 false), !dbg !2966
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2969, metadata !DIExpression()), !dbg !2970
  store i32 0, i32* %result, align 4, !dbg !2970
  %1 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !2971
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !2973
  %2 = load i8*, i8** %handle, align 8, !dbg !2973
  %tobool = icmp ne i8* %2, null, !dbg !2971
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2974

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !2975
  %dev1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 21, !dbg !2977
  %call = call i32 @device_create_file(%struct.device* %dev1, %struct.device_attribute* @dev_attr_path) #4, !dbg !2978
  store i32 %call, i32* %result, align 4, !dbg !2979
  %4 = load i32, i32* %result, align 4, !dbg !2980
  %tobool2 = icmp ne i32 %4, 0, !dbg !2980
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2982

if.then3:                                         ; preds = %if.then
  br label %end, !dbg !2983

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2984

if.end4:                                          ; preds = %if.end, %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !2985
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 10, !dbg !2987
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !2988
  %call5 = call i32 @list_empty(%struct.list_head* %ids) #4, !dbg !2989
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2989
  br i1 %tobool6, label %if.end18, label %if.then7, !dbg !2990

if.then7:                                         ; preds = %if.end4
  %6 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !2991
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 21, !dbg !2993
  %call9 = call i32 @device_create_file(%struct.device* %dev8, %struct.device_attribute* @dev_attr_hid) #4, !dbg !2994
  store i32 %call9, i32* %result, align 4, !dbg !2995
  %7 = load i32, i32* %result, align 4, !dbg !2996
  %tobool10 = icmp ne i32 %7, 0, !dbg !2996
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2998

if.then11:                                        ; preds = %if.then7
  br label %end, !dbg !2999

if.end12:                                         ; preds = %if.then7
  %8 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3000
  %dev13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 21, !dbg !3001
  %call14 = call i32 @device_create_file(%struct.device* %dev13, %struct.device_attribute* @dev_attr_modalias) #4, !dbg !3002
  store i32 %call14, i32* %result, align 4, !dbg !3003
  %9 = load i32, i32* %result, align 4, !dbg !3004
  %tobool15 = icmp ne i32 %9, 0, !dbg !3004
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3006

if.then16:                                        ; preds = %if.end12
  br label %end, !dbg !3007

if.end17:                                         ; preds = %if.end12
  br label %if.end18, !dbg !3008

if.end18:                                         ; preds = %if.end17, %if.end4
  %10 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3009
  %handle19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1, !dbg !3011
  %11 = load i8*, i8** %handle19, align 8, !dbg !3011
  %call20 = call zeroext i1 @acpi_has_method(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !3012
  br i1 %call20, label %if.then21, label %if.end34, !dbg !3013

if.then21:                                        ; preds = %if.end18
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3014
  %handle22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1, !dbg !3016
  %13 = load i8*, i8** %handle22, align 8, !dbg !3016
  %call23 = call i32 @acpi_evaluate_object(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #4, !dbg !3017
  store i32 %call23, i32* %status, align 4, !dbg !3018
  %14 = load i32, i32* %status, align 4, !dbg !3019
  %tobool24 = icmp ne i32 %14, 0, !dbg !3019
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !3021

if.then25:                                        ; preds = %if.then21
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3022
  store i8* null, i8** %pointer, align 8, !dbg !3023
  br label %if.end26, !dbg !3024

if.end26:                                         ; preds = %if.then25, %if.then21
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3025
  %15 = load i8*, i8** %pointer27, align 8, !dbg !3025
  %16 = bitcast i8* %15 to %union.acpi_object*, !dbg !3026
  %17 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3027
  %pnp28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 10, !dbg !3028
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp28, i32 0, i32 7, !dbg !3029
  store %union.acpi_object* %16, %union.acpi_object** %str_obj, align 8, !dbg !3030
  %18 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3031
  %dev29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !3032
  %call30 = call i32 @device_create_file(%struct.device* %dev29, %struct.device_attribute* @dev_attr_description) #4, !dbg !3033
  store i32 %call30, i32* %result, align 4, !dbg !3034
  %19 = load i32, i32* %result, align 4, !dbg !3035
  %tobool31 = icmp ne i32 %19, 0, !dbg !3035
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3037

if.then32:                                        ; preds = %if.end26
  br label %end, !dbg !3038

if.end33:                                         ; preds = %if.end26
  br label %if.end34, !dbg !3039

if.end34:                                         ; preds = %if.end33, %if.end18
  %20 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3040
  %pnp35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 10, !dbg !3042
  %type = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp35, i32 0, i32 1, !dbg !3043
  %21 = bitcast %struct.acpi_pnp_type* %type to i32*, !dbg !3044
  %bf.load = load i32, i32* %21, align 8, !dbg !3044
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !3044
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3044
  %tobool36 = icmp ne i32 %bf.clear, 0, !dbg !3040
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !3045

if.then37:                                        ; preds = %if.end34
  %22 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3046
  %dev38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 21, !dbg !3047
  %call39 = call i32 @device_create_file(%struct.device* %dev38, %struct.device_attribute* @dev_attr_adr) #4, !dbg !3048
  store i32 %call39, i32* %result, align 4, !dbg !3049
  br label %if.end40, !dbg !3050

if.end40:                                         ; preds = %if.then37, %if.end34
  %23 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3051
  %pnp41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 10, !dbg !3053
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp41, i32 0, i32 3, !dbg !3054
  %24 = load i8*, i8** %unique_id, align 8, !dbg !3054
  %tobool42 = icmp ne i8* %24, null, !dbg !3051
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !3055

if.then43:                                        ; preds = %if.end40
  %25 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3056
  %dev44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 21, !dbg !3057
  %call45 = call i32 @device_create_file(%struct.device* %dev44, %struct.device_attribute* @dev_attr_uid) #4, !dbg !3058
  store i32 %call45, i32* %result, align 4, !dbg !3059
  br label %if.end46, !dbg !3060

if.end46:                                         ; preds = %if.then43, %if.end40
  %26 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3061
  %handle47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 1, !dbg !3063
  %27 = load i8*, i8** %handle47, align 8, !dbg !3063
  %call48 = call zeroext i1 @acpi_has_method(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !3064
  br i1 %call48, label %if.then49, label %if.end55, !dbg !3065

if.then49:                                        ; preds = %if.end46
  %28 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3066
  %dev50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 21, !dbg !3068
  %call51 = call i32 @device_create_file(%struct.device* %dev50, %struct.device_attribute* @dev_attr_sun) #4, !dbg !3069
  store i32 %call51, i32* %result, align 4, !dbg !3070
  %29 = load i32, i32* %result, align 4, !dbg !3071
  %tobool52 = icmp ne i32 %29, 0, !dbg !3071
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !3073

if.then53:                                        ; preds = %if.then49
  br label %end, !dbg !3074

if.end54:                                         ; preds = %if.then49
  br label %if.end55, !dbg !3075

if.end55:                                         ; preds = %if.end54, %if.end46
  %30 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3076
  %handle56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 1, !dbg !3078
  %31 = load i8*, i8** %handle56, align 8, !dbg !3078
  %call57 = call zeroext i1 @acpi_has_method(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !3079
  br i1 %call57, label %if.then58, label %if.end64, !dbg !3080

if.then58:                                        ; preds = %if.end55
  %32 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3081
  %dev59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 21, !dbg !3083
  %call60 = call i32 @device_create_file(%struct.device* %dev59, %struct.device_attribute* @dev_attr_hrv) #4, !dbg !3084
  store i32 %call60, i32* %result, align 4, !dbg !3085
  %33 = load i32, i32* %result, align 4, !dbg !3086
  %tobool61 = icmp ne i32 %33, 0, !dbg !3086
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !3088

if.then62:                                        ; preds = %if.then58
  br label %end, !dbg !3089

if.end63:                                         ; preds = %if.then58
  br label %if.end64, !dbg !3090

if.end64:                                         ; preds = %if.end63, %if.end55
  %34 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3091
  %handle65 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 1, !dbg !3093
  %35 = load i8*, i8** %handle65, align 8, !dbg !3093
  %call66 = call zeroext i1 @acpi_has_method(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !3094
  br i1 %call66, label %if.then67, label %if.end73, !dbg !3095

if.then67:                                        ; preds = %if.end64
  %36 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3096
  %dev68 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 21, !dbg !3098
  %call69 = call i32 @device_create_file(%struct.device* %dev68, %struct.device_attribute* @dev_attr_status) #4, !dbg !3099
  store i32 %call69, i32* %result, align 4, !dbg !3100
  %37 = load i32, i32* %result, align 4, !dbg !3101
  %tobool70 = icmp ne i32 %37, 0, !dbg !3101
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !3103

if.then71:                                        ; preds = %if.then67
  br label %end, !dbg !3104

if.end72:                                         ; preds = %if.then67
  br label %if.end73, !dbg !3105

if.end73:                                         ; preds = %if.end72, %if.end64
  %38 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3106
  %handle74 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %38, i32 0, i32 1, !dbg !3108
  %39 = load i8*, i8** %handle74, align 8, !dbg !3108
  %call75 = call zeroext i1 @acpi_has_method(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !3109
  br i1 %call75, label %if.then76, label %if.end82, !dbg !3110

if.then76:                                        ; preds = %if.end73
  %40 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3111
  %dev77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 21, !dbg !3113
  %call78 = call i32 @device_create_file(%struct.device* %dev77, %struct.device_attribute* @dev_attr_eject) #4, !dbg !3114
  store i32 %call78, i32* %result, align 4, !dbg !3115
  %41 = load i32, i32* %result, align 4, !dbg !3116
  %tobool79 = icmp ne i32 %41, 0, !dbg !3116
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !3118

if.then80:                                        ; preds = %if.then76
  %42 = load i32, i32* %result, align 4, !dbg !3119
  store i32 %42, i32* %retval, align 4, !dbg !3120
  br label %return, !dbg !3120

if.end81:                                         ; preds = %if.then76
  br label %if.end82, !dbg !3121

if.end82:                                         ; preds = %if.end81, %if.end73
  %43 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3122
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 9, !dbg !3124
  %44 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3125
  %bf.load83 = load i32, i32* %44, align 4, !dbg !3125
  %bf.lshr84 = lshr i32 %bf.load83, 3, !dbg !3125
  %bf.clear85 = and i32 %bf.lshr84, 1, !dbg !3125
  %tobool86 = icmp ne i32 %bf.clear85, 0, !dbg !3122
  br i1 %tobool86, label %if.then87, label %if.end102, !dbg !3126

if.then87:                                        ; preds = %if.end82
  %45 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3127
  %dev88 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 21, !dbg !3129
  %call89 = call i32 @device_create_file(%struct.device* %dev88, %struct.device_attribute* @dev_attr_power_state) #4, !dbg !3130
  store i32 %call89, i32* %result, align 4, !dbg !3131
  %46 = load i32, i32* %result, align 4, !dbg !3132
  %tobool90 = icmp ne i32 %46, 0, !dbg !3132
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !3134

if.then91:                                        ; preds = %if.then87
  %47 = load i32, i32* %result, align 4, !dbg !3135
  store i32 %47, i32* %retval, align 4, !dbg !3136
  br label %return, !dbg !3136

if.end92:                                         ; preds = %if.then87
  %48 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3137
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 11, !dbg !3139
  %flags93 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !3140
  %49 = bitcast %struct.acpi_device_power_flags* %flags93 to i32*, !dbg !3141
  %bf.load94 = load i32, i32* %49, align 4, !dbg !3141
  %bf.lshr95 = lshr i32 %bf.load94, 1, !dbg !3141
  %bf.clear96 = and i32 %bf.lshr95, 1, !dbg !3141
  %tobool97 = icmp ne i32 %bf.clear96, 0, !dbg !3137
  br i1 %tobool97, label %if.then98, label %if.end101, !dbg !3142

if.then98:                                        ; preds = %if.end92
  %50 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3143
  %dev99 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 21, !dbg !3144
  %call100 = call i32 @device_create_file(%struct.device* %dev99, %struct.device_attribute* @dev_attr_real_power_state) #4, !dbg !3145
  store i32 %call100, i32* %result, align 4, !dbg !3146
  br label %if.end101, !dbg !3147

if.end101:                                        ; preds = %if.then98, %if.end92
  br label %if.end102, !dbg !3148

if.end102:                                        ; preds = %if.end101, %if.end82
  %51 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3149
  %dev103 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 21, !dbg !3150
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev103, i32 0, i32 0, !dbg !3151
  %52 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3152
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 15, !dbg !3153
  call void @acpi_expose_nondev_subnodes(%struct.kobject* %kobj, %struct.acpi_device_data* %data) #4, !dbg !3154
  br label %end, !dbg !3154

end:                                              ; preds = %if.end102, %if.then71, %if.then62, %if.then53, %if.then32, %if.then16, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !3155), !dbg !3156
  %53 = load i32, i32* %result, align 4, !dbg !3157
  store i32 %53, i32* %retval, align 4, !dbg !3158
  br label %return, !dbg !3158

return:                                           ; preds = %end, %if.then91, %if.then80
  %54 = load i32, i32* %retval, align 4, !dbg !3159
  ret i32 %54, !dbg !3159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_expose_nondev_subnodes(%struct.kobject* %kobj, %struct.acpi_device_data* %data) #0 !dbg !3160 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %list = alloca %struct.list_head*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %ret = alloca i32, align 4
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.acpi_data_node*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3164, metadata !DIExpression()), !dbg !3165
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3166, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.declare(metadata %struct.list_head** %list, metadata !3168, metadata !DIExpression()), !dbg !3169
  %0 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3170
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %0, i32 0, i32 3, !dbg !3171
  store %struct.list_head* %subnodes, %struct.list_head** %list, align 8, !dbg !3169
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3172, metadata !DIExpression()), !dbg !3173
  %1 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3174
  %call = call i32 @list_empty(%struct.list_head* %1) #4, !dbg !3176
  %tobool = icmp ne i32 %call, 0, !dbg !3176
  br i1 %tobool, label %if.then, label %if.end, !dbg !3177

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !3178

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3179, metadata !DIExpression()), !dbg !3182
  %2 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3182
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !3182
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3182
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !3182
  store i8* %4, i8** %__mptr, align 8, !dbg !3182
  br label %do.body, !dbg !3182

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3183

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3182
  %add.ptr = getelementptr i8, i8* %5, i64 -96, !dbg !3182
  %6 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !3182
  store %struct.acpi_data_node* %6, %struct.acpi_data_node** %tmp, align 8, !dbg !3183
  %7 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !3182
  store %struct.acpi_data_node* %7, %struct.acpi_data_node** %dn, align 8, !dbg !3185
  br label %for.cond, !dbg !3185

for.cond:                                         ; preds = %do.end16, %do.end
  %8 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3186
  %sibling = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %8, i32 0, i32 5, !dbg !3186
  %9 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3186
  %cmp = icmp eq %struct.list_head* %sibling, %9, !dbg !3186
  %lnot = xor i1 %cmp, true, !dbg !3186
  br i1 %lnot, label %for.body, label %for.end, !dbg !3185

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3188, metadata !DIExpression()), !dbg !3190
  %10 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3191
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %10, i32 0, i32 7, !dbg !3191
  call void @__init_completion(%struct.completion* %kobj_done) #4, !dbg !3191
  %11 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3192
  %kobj1 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %11, i32 0, i32 6, !dbg !3193
  %12 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3194
  %13 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3195
  %name = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %13, i32 0, i32 0, !dbg !3196
  %14 = load i8*, i8** %name, align 8, !dbg !3196
  %call2 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj1, %struct.kobj_type* @acpi_data_node_ktype, %struct.kobject* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %14) #4, !dbg !3197
  store i32 %call2, i32* %ret, align 4, !dbg !3198
  %15 = load i32, i32* %ret, align 4, !dbg !3199
  %tobool3 = icmp ne i32 %15, 0, !dbg !3199
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3201

if.then4:                                         ; preds = %for.body
  %16 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3202
  %kobj5 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %16, i32 0, i32 6, !dbg !3203
  %17 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3204
  %data6 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %17, i32 0, i32 4, !dbg !3205
  call void @acpi_expose_nondev_subnodes(%struct.kobject* %kobj5, %struct.acpi_device_data* %data6) #4, !dbg !3206
  br label %if.end11, !dbg !3206

if.else:                                          ; preds = %for.body
  %18 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3207
  %handle = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %18, i32 0, i32 1, !dbg !3209
  %19 = load i8*, i8** %handle, align 8, !dbg !3209
  %tobool7 = icmp ne i8* %19, null, !dbg !3207
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !3210

if.then8:                                         ; preds = %if.else
  %20 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3211
  %handle9 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %20, i32 0, i32 1, !dbg !3211
  %21 = load i8*, i8** %handle9, align 8, !dbg !3211
  %22 = load i32, i32* %ret, align 4, !dbg !3211
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %22) #4, !dbg !3211
  br label %if.end10, !dbg !3211

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then4
  br label %for.inc, !dbg !3212

for.inc:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !3213, metadata !DIExpression()), !dbg !3215
  %23 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3215
  %sibling13 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %23, i32 0, i32 5, !dbg !3215
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %sibling13, i32 0, i32 0, !dbg !3215
  %24 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !3215
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !3215
  store i8* %25, i8** %__mptr12, align 8, !dbg !3215
  br label %do.body15, !dbg !3215

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !3216

do.end16:                                         ; preds = %do.body15
  %26 = load i8*, i8** %__mptr12, align 8, !dbg !3215
  %add.ptr18 = getelementptr i8, i8* %26, i64 -96, !dbg !3215
  %27 = bitcast i8* %add.ptr18 to %struct.acpi_data_node*, !dbg !3215
  store %struct.acpi_data_node* %27, %struct.acpi_data_node** %tmp17, align 8, !dbg !3216
  %28 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp17, align 8, !dbg !3215
  store %struct.acpi_data_node* %28, %struct.acpi_data_node** %dn, align 8, !dbg !3186
  br label %for.cond, !dbg !3186, !llvm.loop !3218

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3220
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_device_remove_files(%struct.acpi_device* %dev) #0 !dbg !3221 {
entry:
  %dev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !3222, metadata !DIExpression()), !dbg !3223
  %0 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3224
  %data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 15, !dbg !3225
  call void @acpi_hide_nondev_subnodes(%struct.acpi_device_data* %data) #4, !dbg !3226
  %1 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3227
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 9, !dbg !3229
  %2 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3230
  %bf.load = load i32, i32* %2, align 4, !dbg !3230
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3230
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3230
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3227
  br i1 %tobool, label %if.then, label %if.end9, !dbg !3231

if.then:                                          ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3232
  %dev1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 21, !dbg !3234
  call void @device_remove_file(%struct.device* %dev1, %struct.device_attribute* @dev_attr_power_state) #4, !dbg !3235
  %4 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3236
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %4, i32 0, i32 11, !dbg !3238
  %flags2 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !3239
  %5 = bitcast %struct.acpi_device_power_flags* %flags2 to i32*, !dbg !3240
  %bf.load3 = load i32, i32* %5, align 4, !dbg !3240
  %bf.lshr4 = lshr i32 %bf.load3, 1, !dbg !3240
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !3240
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !3236
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !3241

if.then7:                                         ; preds = %if.then
  %6 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3242
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 21, !dbg !3243
  call void @device_remove_file(%struct.device* %dev8, %struct.device_attribute* @dev_attr_real_power_state) #4, !dbg !3244
  br label %if.end, !dbg !3244

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9, !dbg !3245

if.end9:                                          ; preds = %if.end, %entry
  %7 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3246
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1, !dbg !3248
  %8 = load i8*, i8** %handle, align 8, !dbg !3248
  %call = call zeroext i1 @acpi_has_method(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !3249
  br i1 %call, label %if.then10, label %if.end12, !dbg !3250

if.then10:                                        ; preds = %if.end9
  %9 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3251
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 10, !dbg !3253
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 7, !dbg !3254
  %10 = load %union.acpi_object*, %union.acpi_object** %str_obj, align 8, !dbg !3254
  %11 = bitcast %union.acpi_object* %10 to i8*, !dbg !3251
  call void @kfree(i8* %11) #4, !dbg !3255
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3256
  %dev11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 21, !dbg !3257
  call void @device_remove_file(%struct.device* %dev11, %struct.device_attribute* @dev_attr_description) #4, !dbg !3258
  br label %if.end12, !dbg !3259

if.end12:                                         ; preds = %if.then10, %if.end9
  %13 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3260
  %handle13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1, !dbg !3262
  %14 = load i8*, i8** %handle13, align 8, !dbg !3262
  %call14 = call zeroext i1 @acpi_has_method(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !3263
  br i1 %call14, label %if.then15, label %if.end17, !dbg !3264

if.then15:                                        ; preds = %if.end12
  %15 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3265
  %dev16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 21, !dbg !3266
  call void @device_remove_file(%struct.device* %dev16, %struct.device_attribute* @dev_attr_eject) #4, !dbg !3267
  br label %if.end17, !dbg !3267

if.end17:                                         ; preds = %if.then15, %if.end12
  %16 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3268
  %handle18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 1, !dbg !3270
  %17 = load i8*, i8** %handle18, align 8, !dbg !3270
  %call19 = call zeroext i1 @acpi_has_method(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !3271
  br i1 %call19, label %if.then20, label %if.end22, !dbg !3272

if.then20:                                        ; preds = %if.end17
  %18 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3273
  %dev21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !3274
  call void @device_remove_file(%struct.device* %dev21, %struct.device_attribute* @dev_attr_sun) #4, !dbg !3275
  br label %if.end22, !dbg !3275

if.end22:                                         ; preds = %if.then20, %if.end17
  %19 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3276
  %handle23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1, !dbg !3278
  %20 = load i8*, i8** %handle23, align 8, !dbg !3278
  %call24 = call zeroext i1 @acpi_has_method(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !3279
  br i1 %call24, label %if.then25, label %if.end27, !dbg !3280

if.then25:                                        ; preds = %if.end22
  %21 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3281
  %dev26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 21, !dbg !3282
  call void @device_remove_file(%struct.device* %dev26, %struct.device_attribute* @dev_attr_hrv) #4, !dbg !3283
  br label %if.end27, !dbg !3283

if.end27:                                         ; preds = %if.then25, %if.end22
  %22 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3284
  %pnp28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 10, !dbg !3286
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp28, i32 0, i32 3, !dbg !3287
  %23 = load i8*, i8** %unique_id, align 8, !dbg !3287
  %tobool29 = icmp ne i8* %23, null, !dbg !3284
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !3288

if.then30:                                        ; preds = %if.end27
  %24 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3289
  %dev31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 21, !dbg !3290
  call void @device_remove_file(%struct.device* %dev31, %struct.device_attribute* @dev_attr_uid) #4, !dbg !3291
  br label %if.end32, !dbg !3291

if.end32:                                         ; preds = %if.then30, %if.end27
  %25 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3292
  %pnp33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 10, !dbg !3294
  %type = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp33, i32 0, i32 1, !dbg !3295
  %26 = bitcast %struct.acpi_pnp_type* %type to i32*, !dbg !3296
  %bf.load34 = load i32, i32* %26, align 8, !dbg !3296
  %bf.lshr35 = lshr i32 %bf.load34, 1, !dbg !3296
  %bf.clear36 = and i32 %bf.lshr35, 1, !dbg !3296
  %tobool37 = icmp ne i32 %bf.clear36, 0, !dbg !3292
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !3297

if.then38:                                        ; preds = %if.end32
  %27 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3298
  %dev39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 21, !dbg !3299
  call void @device_remove_file(%struct.device* %dev39, %struct.device_attribute* @dev_attr_adr) #4, !dbg !3300
  br label %if.end40, !dbg !3300

if.end40:                                         ; preds = %if.then38, %if.end32
  %28 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3301
  %dev41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 21, !dbg !3302
  call void @device_remove_file(%struct.device* %dev41, %struct.device_attribute* @dev_attr_modalias) #4, !dbg !3303
  %29 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3304
  %dev42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 21, !dbg !3305
  call void @device_remove_file(%struct.device* %dev42, %struct.device_attribute* @dev_attr_hid) #4, !dbg !3306
  %30 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3307
  %handle43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 1, !dbg !3309
  %31 = load i8*, i8** %handle43, align 8, !dbg !3309
  %call44 = call zeroext i1 @acpi_has_method(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !3310
  br i1 %call44, label %if.then45, label %if.end47, !dbg !3311

if.then45:                                        ; preds = %if.end40
  %32 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3312
  %dev46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 21, !dbg !3313
  call void @device_remove_file(%struct.device* %dev46, %struct.device_attribute* @dev_attr_status) #4, !dbg !3314
  br label %if.end47, !dbg !3314

if.end47:                                         ; preds = %if.then45, %if.end40
  %33 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3315
  %handle48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 1, !dbg !3317
  %34 = load i8*, i8** %handle48, align 8, !dbg !3317
  %tobool49 = icmp ne i8* %34, null, !dbg !3315
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !3318

if.then50:                                        ; preds = %if.end47
  %35 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3319
  %dev51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 21, !dbg !3320
  call void @device_remove_file(%struct.device* %dev51, %struct.device_attribute* @dev_attr_path) #4, !dbg !3321
  br label %if.end52, !dbg !3321

if.end52:                                         ; preds = %if.then50, %if.end47
  ret void, !dbg !3322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_hide_nondev_subnodes(%struct.acpi_device_data* %data) #0 !dbg !3323 {
entry:
  %data.addr = alloca %struct.acpi_device_data*, align 8
  %list = alloca %struct.list_head*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.acpi_data_node*, align 8
  store %struct.acpi_device_data* %data, %struct.acpi_device_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device_data** %data.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.declare(metadata %struct.list_head** %list, metadata !3328, metadata !DIExpression()), !dbg !3329
  %0 = load %struct.acpi_device_data*, %struct.acpi_device_data** %data.addr, align 8, !dbg !3330
  %subnodes = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %0, i32 0, i32 3, !dbg !3331
  store %struct.list_head* %subnodes, %struct.list_head** %list, align 8, !dbg !3329
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3332, metadata !DIExpression()), !dbg !3333
  %1 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3334
  %call = call i32 @list_empty(%struct.list_head* %1) #4, !dbg !3336
  %tobool = icmp ne i32 %call, 0, !dbg !3336
  br i1 %tobool, label %if.then, label %if.end, !dbg !3337

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !3338

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3339, metadata !DIExpression()), !dbg !3342
  %2 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3342
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3342
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3342
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !3342
  store i8* %4, i8** %__mptr, align 8, !dbg !3342
  br label %do.body, !dbg !3342

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3343

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3342
  %add.ptr = getelementptr i8, i8* %5, i64 -96, !dbg !3342
  %6 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !3342
  store %struct.acpi_data_node* %6, %struct.acpi_data_node** %tmp, align 8, !dbg !3343
  %7 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !3342
  store %struct.acpi_data_node* %7, %struct.acpi_data_node** %dn, align 8, !dbg !3345
  br label %for.cond, !dbg !3345

for.cond:                                         ; preds = %do.end6, %do.end
  %8 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3346
  %sibling = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %8, i32 0, i32 5, !dbg !3346
  %9 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3346
  %cmp = icmp eq %struct.list_head* %sibling, %9, !dbg !3346
  %lnot = xor i1 %cmp, true, !dbg !3346
  br i1 %lnot, label %for.body, label %for.end, !dbg !3345

for.body:                                         ; preds = %for.cond
  %10 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3348
  %data1 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %10, i32 0, i32 4, !dbg !3350
  call void @acpi_hide_nondev_subnodes(%struct.acpi_device_data* %data1) #4, !dbg !3351
  %11 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3352
  %kobj = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %11, i32 0, i32 6, !dbg !3353
  call void @kobject_put(%struct.kobject* %kobj) #4, !dbg !3354
  br label %for.inc, !dbg !3355

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3356, metadata !DIExpression()), !dbg !3358
  %12 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3358
  %sibling3 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %12, i32 0, i32 5, !dbg !3358
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %sibling3, i32 0, i32 1, !dbg !3358
  %13 = load %struct.list_head*, %struct.list_head** %prev4, align 8, !dbg !3358
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !3358
  store i8* %14, i8** %__mptr2, align 8, !dbg !3358
  br label %do.body5, !dbg !3358

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !3359

do.end6:                                          ; preds = %do.body5
  %15 = load i8*, i8** %__mptr2, align 8, !dbg !3358
  %add.ptr8 = getelementptr i8, i8* %15, i64 -96, !dbg !3358
  %16 = bitcast i8* %add.ptr8 to %struct.acpi_data_node*, !dbg !3358
  store %struct.acpi_data_node* %16, %struct.acpi_data_node** %tmp7, align 8, !dbg !3359
  %17 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp7, align 8, !dbg !3358
  store %struct.acpi_data_node* %17, %struct.acpi_data_node** %dn, align 8, !dbg !3346
  br label %for.cond, !dbg !3346, !llvm.loop !3361

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3363
}

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_device_is_present(%struct.acpi_device*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_name(i8*, i32, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !3364 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  %0 = load i8, i8* %c.addr, align 1, !dbg !3370
  %conv = zext i8 %0 to i32, !dbg !3370
  %idxprom = sext i32 %conv to i64, !dbg !3370
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !3370
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3370
  %conv1 = zext i8 %1 to i32, !dbg !3370
  %and = and i32 %conv1, 1, !dbg !3370
  %cmp = icmp ne i32 %and, 0, !dbg !3370
  br i1 %cmp, label %if.then, label %if.end, !dbg !3372

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !3373
  %conv3 = zext i8 %2 to i32, !dbg !3373
  %sub = sub i32 %conv3, -32, !dbg !3373
  %conv4 = trunc i32 %sub to i8, !dbg !3373
  store i8 %conv4, i8* %c.addr, align 1, !dbg !3373
  br label %if.end, !dbg !3374

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !3375
  ret i8 %3, !dbg !3376
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !3377 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !3379, metadata !DIExpression()), !dbg !3380
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !3381
  call void @kfree(i8* %0) #4, !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_path_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3384 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3385, metadata !DIExpression()), !dbg !3386
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3387, metadata !DIExpression()), !dbg !3388
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3393, metadata !DIExpression()), !dbg !3395
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3395
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3395
  store i8* %1, i8** %__mptr, align 8, !dbg !3395
  br label %do.body, !dbg !3395

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3396

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3395
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3395
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3395
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3396
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3395
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3392
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3398
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3399
  %6 = load i8*, i8** %handle, align 8, !dbg !3399
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3400
  %call = call i64 @acpi_object_path(i8* %6, i8* %7) #4, !dbg !3401
  ret i64 %call, !dbg !3402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_object_path(i8* %handle, i8* %buf) #0 !dbg !3403 {
entry:
  %retval = alloca i64, align 8
  %handle.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %path = alloca %struct.acpi_buffer, align 8
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3406, metadata !DIExpression()), !dbg !3407
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %path, metadata !3410, metadata !DIExpression()), !dbg !3411
  %0 = bitcast %struct.acpi_buffer* %path to i8*, !dbg !3411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_object_path.path to i8*), i64 16, i1 false), !dbg !3411
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3412, metadata !DIExpression()), !dbg !3413
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !3414
  %call = call i32 @acpi_get_name(i8* %1, i32 0, %struct.acpi_buffer* %path) #4, !dbg !3415
  store i32 %call, i32* %result, align 4, !dbg !3416
  %2 = load i32, i32* %result, align 4, !dbg !3417
  %tobool = icmp ne i32 %2, 0, !dbg !3417
  br i1 %tobool, label %if.then, label %if.end, !dbg !3419

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %result, align 4, !dbg !3420
  %conv = sext i32 %3 to i64, !dbg !3420
  store i64 %conv, i64* %retval, align 8, !dbg !3421
  br label %return, !dbg !3421

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3422
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %path, i32 0, i32 1, !dbg !3423
  %5 = load i8*, i8** %pointer, align 8, !dbg !3423
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %5) #4, !dbg !3424
  store i32 %call1, i32* %result, align 4, !dbg !3425
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %path, i32 0, i32 1, !dbg !3426
  %6 = load i8*, i8** %pointer2, align 8, !dbg !3426
  call void @kfree(i8* %6) #4, !dbg !3427
  %7 = load i32, i32* %result, align 4, !dbg !3428
  %conv3 = sext i32 %7 to i64, !dbg !3428
  store i64 %conv3, i64* %retval, align 8, !dbg !3429
  br label %return, !dbg !3429

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !3430
  ret i64 %8, !dbg !3430
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_hid_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3431 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3432, metadata !DIExpression()), !dbg !3433
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3434, metadata !DIExpression()), !dbg !3435
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3440, metadata !DIExpression()), !dbg !3442
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3442
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3442
  store i8* %1, i8** %__mptr, align 8, !dbg !3442
  br label %do.body, !dbg !3442

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3443

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3442
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3442
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3442
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3443
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3442
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3439
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3445
  %6 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3446
  %call = call i8* @acpi_device_hid(%struct.acpi_device* %6) #4, !dbg !3447
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %call) #4, !dbg !3448
  %conv = sext i32 %call1 to i64, !dbg !3448
  ret i64 %conv, !dbg !3449
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_device_hid(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3450 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3453, metadata !DIExpression()), !dbg !3454
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3457, metadata !DIExpression()), !dbg !3459
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3459
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3459
  store i8* %1, i8** %__mptr, align 8, !dbg !3459
  br label %do.body, !dbg !3459

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3460

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3459
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3459
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3459
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3460
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3459
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3462
  %call = call i32 @__acpi_device_modalias(%struct.acpi_device* %4, i8* %5, i32 1024) #4, !dbg !3463
  %conv = sext i32 %call to i64, !dbg !3463
  ret i64 %conv, !dbg !3464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @description_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3465 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3474, metadata !DIExpression()), !dbg !3476
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3476
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3476
  store i8* %1, i8** %__mptr, align 8, !dbg !3476
  br label %do.body, !dbg !3476

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3477

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3476
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3476
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3476
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3477
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3476
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3473
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3479, metadata !DIExpression()), !dbg !3480
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3481
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 10, !dbg !3483
  %str_obj = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 7, !dbg !3484
  %6 = load %union.acpi_object*, %union.acpi_object** %str_obj, align 8, !dbg !3484
  %cmp = icmp eq %union.acpi_object* %6, null, !dbg !3485
  br i1 %cmp, label %if.then, label %if.end, !dbg !3486

if.then:                                          ; preds = %do.end
  store i64 0, i64* %retval, align 8, !dbg !3487
  br label %return, !dbg !3487

if.end:                                           ; preds = %do.end
  %7 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3488
  %pnp1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !3489
  %str_obj2 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp1, i32 0, i32 7, !dbg !3490
  %8 = load %union.acpi_object*, %union.acpi_object** %str_obj2, align 8, !dbg !3490
  %buffer = bitcast %union.acpi_object* %8 to %struct.anon.40*, !dbg !3491
  %pointer = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer, i32 0, i32 2, !dbg !3492
  %9 = load i8*, i8** %pointer, align 8, !dbg !3492
  %10 = bitcast i8* %9 to i16*, !dbg !3493
  %11 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3494
  %pnp3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !3495
  %str_obj4 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp3, i32 0, i32 7, !dbg !3496
  %12 = load %union.acpi_object*, %union.acpi_object** %str_obj4, align 8, !dbg !3496
  %buffer5 = bitcast %union.acpi_object* %12 to %struct.anon.40*, !dbg !3497
  %length = getelementptr inbounds %struct.anon.40, %struct.anon.40* %buffer5, i32 0, i32 1, !dbg !3498
  %13 = load i32, i32* %length, align 4, !dbg !3498
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !3499
  %call = call i32 @utf16s_to_utf8s(i16* %10, i32 %13, i32 1, i8* %14, i32 4096) #4, !dbg !3500
  store i32 %call, i32* %result, align 4, !dbg !3501
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !3502
  %16 = load i32, i32* %result, align 4, !dbg !3503
  %inc = add i32 %16, 1, !dbg !3503
  store i32 %inc, i32* %result, align 4, !dbg !3503
  %idxprom = sext i32 %16 to i64, !dbg !3502
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !3502
  store i8 10, i8* %arrayidx, align 1, !dbg !3504
  %17 = load i32, i32* %result, align 4, !dbg !3505
  %conv = sext i32 %17 to i64, !dbg !3505
  store i64 %conv, i64* %retval, align 8, !dbg !3506
  br label %return, !dbg !3506

return:                                           ; preds = %if.end, %if.then
  %18 = load i64, i64* %retval, align 8, !dbg !3507
  ret i64 %18, !dbg !3507
}

; Function Attrs: noredzone
declare dso_local i32 @utf16s_to_utf8s(i16*, i32, i32, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_adr_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3508 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3517, metadata !DIExpression()), !dbg !3519
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3519
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3519
  store i8* %1, i8** %__mptr, align 8, !dbg !3519
  br label %do.body, !dbg !3519

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3520

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3519
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3519
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3519
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3520
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3519
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3516
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3522
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 10, !dbg !3524
  %bus_address = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 2, !dbg !3525
  %6 = load i64, i64* %bus_address, align 8, !dbg !3525
  %cmp = icmp ugt i64 %6, 4294967295, !dbg !3526
  br i1 %cmp, label %if.then, label %if.else, !dbg !3527

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3528
  %8 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3529
  %pnp1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 10, !dbg !3530
  %bus_address2 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp1, i32 0, i32 2, !dbg !3531
  %9 = load i64, i64* %bus_address2, align 8, !dbg !3531
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i64 %9) #4, !dbg !3532
  %conv = sext i32 %call to i64, !dbg !3532
  store i64 %conv, i64* %retval, align 8, !dbg !3533
  br label %return, !dbg !3533

if.else:                                          ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3534
  %11 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3535
  %pnp3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !3536
  %bus_address4 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp3, i32 0, i32 2, !dbg !3537
  %12 = load i64, i64* %bus_address4, align 8, !dbg !3537
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 %12) #4, !dbg !3538
  %conv6 = sext i32 %call5 to i64, !dbg !3538
  store i64 %conv6, i64* %retval, align 8, !dbg !3539
  br label %return, !dbg !3539

return:                                           ; preds = %if.else, %if.then
  %13 = load i64, i64* %retval, align 8, !dbg !3540
  ret i64 %13, !dbg !3540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_uid_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3541 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3542, metadata !DIExpression()), !dbg !3543
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3544, metadata !DIExpression()), !dbg !3545
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3548, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3550, metadata !DIExpression()), !dbg !3552
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3552
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3552
  store i8* %1, i8** %__mptr, align 8, !dbg !3552
  br label %do.body, !dbg !3552

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3553

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3552
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3552
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3552
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3553
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3552
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3549
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3555
  %6 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3556
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 10, !dbg !3557
  %unique_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 3, !dbg !3558
  %7 = load i8*, i8** %unique_id, align 8, !dbg !3558
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %7) #4, !dbg !3559
  %conv = sext i32 %call to i64, !dbg !3559
  ret i64 %conv, !dbg !3560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_sun_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3561 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %sun = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3562, metadata !DIExpression()), !dbg !3563
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3566, metadata !DIExpression()), !dbg !3567
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3570, metadata !DIExpression()), !dbg !3572
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3572
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3572
  store i8* %1, i8** %__mptr, align 8, !dbg !3572
  br label %do.body, !dbg !3572

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3573

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3572
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3572
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3572
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3573
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3572
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3569
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3575, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.declare(metadata i64* %sun, metadata !3577, metadata !DIExpression()), !dbg !3578
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3579
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3580
  %6 = load i8*, i8** %handle, align 8, !dbg !3580
  %call = call i32 @acpi_evaluate_integer(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.acpi_object_list* null, i64* %sun) #4, !dbg !3581
  store i32 %call, i32* %status, align 4, !dbg !3582
  %7 = load i32, i32* %status, align 4, !dbg !3583
  %tobool = icmp ne i32 %7, 0, !dbg !3583
  br i1 %tobool, label %if.then, label %if.end, !dbg !3585

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3586
  br label %return, !dbg !3586

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3587
  %9 = load i64, i64* %sun, align 8, !dbg !3588
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 %9) #4, !dbg !3589
  %conv = sext i32 %call1 to i64, !dbg !3589
  store i64 %conv, i64* %retval, align 8, !dbg !3590
  br label %return, !dbg !3590

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !3591
  ret i64 %10, !dbg !3591
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_device_hrv_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3592 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %hrv = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3593, metadata !DIExpression()), !dbg !3594
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3597, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3601, metadata !DIExpression()), !dbg !3603
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3603
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3603
  store i8* %1, i8** %__mptr, align 8, !dbg !3603
  br label %do.body, !dbg !3603

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3604

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3603
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3603
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3603
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3604
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3603
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3600
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3606, metadata !DIExpression()), !dbg !3607
  call void @llvm.dbg.declare(metadata i64* %hrv, metadata !3608, metadata !DIExpression()), !dbg !3609
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3610
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3611
  %6 = load i8*, i8** %handle, align 8, !dbg !3611
  %call = call i32 @acpi_evaluate_integer(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_object_list* null, i64* %hrv) #4, !dbg !3612
  store i32 %call, i32* %status, align 4, !dbg !3613
  %7 = load i32, i32* %status, align 4, !dbg !3614
  %tobool = icmp ne i32 %7, 0, !dbg !3614
  br i1 %tobool, label %if.then, label %if.end, !dbg !3616

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3617
  br label %return, !dbg !3617

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3618
  %9 = load i64, i64* %hrv, align 8, !dbg !3619
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 %9) #4, !dbg !3620
  %conv = sext i32 %call1 to i64, !dbg !3620
  store i64 %conv, i64* %retval, align 8, !dbg !3621
  br label %return, !dbg !3621

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !3622
  ret i64 %10, !dbg !3622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @status_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3623 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %sta = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3626, metadata !DIExpression()), !dbg !3627
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !3630, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3632, metadata !DIExpression()), !dbg !3634
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3634
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3634
  store i8* %1, i8** %__mptr, align 8, !dbg !3634
  br label %do.body, !dbg !3634

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3635

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3634
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3634
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3634
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3635
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3634
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_dev, align 8, !dbg !3631
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata i64* %sta, metadata !3639, metadata !DIExpression()), !dbg !3640
  %5 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !3641
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 1, !dbg !3642
  %6 = load i8*, i8** %handle, align 8, !dbg !3642
  %call = call i32 @acpi_evaluate_integer(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.acpi_object_list* null, i64* %sta) #4, !dbg !3643
  store i32 %call, i32* %status, align 4, !dbg !3644
  %7 = load i32, i32* %status, align 4, !dbg !3645
  %tobool = icmp ne i32 %7, 0, !dbg !3645
  br i1 %tobool, label %if.then, label %if.end, !dbg !3647

if.then:                                          ; preds = %do.end
  store i64 -5, i64* %retval, align 8, !dbg !3648
  br label %return, !dbg !3648

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3649
  %9 = load i64, i64* %sta, align 8, !dbg !3650
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 %9) #4, !dbg !3651
  %conv = sext i32 %call1 to i64, !dbg !3651
  store i64 %conv, i64* %retval, align 8, !dbg !3652
  br label %return, !dbg !3652

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !3653
  ret i64 %10, !dbg !3653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_eject_store(%struct.device* %d, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3654 {
entry:
  %retval = alloca i64, align 8
  %d.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %acpi_device = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %not_used = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.device* %d, %struct.device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %d.addr, metadata !3655, metadata !DIExpression()), !dbg !3656
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3657, metadata !DIExpression()), !dbg !3658
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3659, metadata !DIExpression()), !dbg !3660
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3661, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_device, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3665, metadata !DIExpression()), !dbg !3667
  %0 = load %struct.device*, %struct.device** %d.addr, align 8, !dbg !3667
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3667
  store i8* %1, i8** %__mptr, align 8, !dbg !3667
  br label %do.body, !dbg !3667

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3668

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3667
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3667
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3667
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3668
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3667
  store %struct.acpi_device* %4, %struct.acpi_device** %acpi_device, align 8, !dbg !3664
  call void @llvm.dbg.declare(metadata i32* %not_used, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3672, metadata !DIExpression()), !dbg !3673
  %5 = load i64, i64* %count.addr, align 8, !dbg !3674
  %tobool = icmp ne i64 %5, 0, !dbg !3674
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3676

lor.lhs.false:                                    ; preds = %do.end
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !3677
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !3677
  %7 = load i8, i8* %arrayidx, align 1, !dbg !3677
  %conv = sext i8 %7 to i32, !dbg !3677
  %cmp = icmp ne i32 %conv, 49, !dbg !3678
  br i1 %cmp, label %if.then, label %if.end, !dbg !3679

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i64 -22, i64* %retval, align 8, !dbg !3680
  br label %return, !dbg !3680

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3681
  %handler = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 16, !dbg !3683
  %9 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler, align 8, !dbg !3683
  %tobool2 = icmp ne %struct.acpi_scan_handler* %9, null, !dbg !3681
  br i1 %tobool2, label %lor.lhs.false3, label %land.lhs.true, !dbg !3684

lor.lhs.false3:                                   ; preds = %if.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3685
  %handler4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 16, !dbg !3686
  %11 = load %struct.acpi_scan_handler*, %struct.acpi_scan_handler** %handler4, align 8, !dbg !3686
  %hotplug = getelementptr inbounds %struct.acpi_scan_handler, %struct.acpi_scan_handler* %11, i32 0, i32 7, !dbg !3687
  %enabled = getelementptr inbounds %struct.acpi_hotplug_profile, %struct.acpi_hotplug_profile* %hotplug, i32 0, i32 3, !dbg !3688
  %bf.load = load i8, i8* %enabled, align 8, !dbg !3688
  %bf.clear = and i8 %bf.load, 1, !dbg !3688
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !3688
  br i1 %bf.cast, label %if.end7, label %land.lhs.true, !dbg !3689

land.lhs.true:                                    ; preds = %lor.lhs.false3, %if.end
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3690
  %driver = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 18, !dbg !3691
  %13 = load %struct.acpi_driver*, %struct.acpi_driver** %driver, align 8, !dbg !3691
  %tobool5 = icmp ne %struct.acpi_driver* %13, null, !dbg !3690
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3692

if.then6:                                         ; preds = %land.lhs.true
  store i64 -19, i64* %retval, align 8, !dbg !3693
  br label %return, !dbg !3693

if.end7:                                          ; preds = %land.lhs.true, %lor.lhs.false3
  %14 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3694
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1, !dbg !3695
  %15 = load i8*, i8** %handle, align 8, !dbg !3695
  %call = call i32 @acpi_get_type(i8* %15, i32* %not_used) #4, !dbg !3696
  store i32 %call, i32* %status, align 4, !dbg !3697
  %16 = load i32, i32* %status, align 4, !dbg !3698
  %tobool8 = icmp ne i32 %16, 0, !dbg !3698
  br i1 %tobool8, label %if.then13, label %lor.lhs.false9, !dbg !3700

lor.lhs.false9:                                   ; preds = %if.end7
  %17 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3701
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 9, !dbg !3702
  %18 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3703
  %bf.load10 = load i32, i32* %18, align 4, !dbg !3703
  %bf.lshr = lshr i32 %bf.load10, 2, !dbg !3703
  %bf.clear11 = and i32 %bf.lshr, 1, !dbg !3703
  %tobool12 = icmp ne i32 %bf.clear11, 0, !dbg !3701
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3704

if.then13:                                        ; preds = %lor.lhs.false9, %if.end7
  store i64 -19, i64* %retval, align 8, !dbg !3705
  br label %return, !dbg !3705

if.end14:                                         ; preds = %lor.lhs.false9
  %19 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3706
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 21, !dbg !3707
  %call15 = call %struct.device* @get_device(%struct.device* %dev) #4, !dbg !3708
  %20 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3709
  %call16 = call i32 @acpi_hotplug_schedule(%struct.acpi_device* %20, i32 259) #4, !dbg !3710
  store i32 %call16, i32* %status, align 4, !dbg !3711
  %21 = load i32, i32* %status, align 4, !dbg !3712
  %tobool17 = icmp ne i32 %21, 0, !dbg !3712
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3714

if.then18:                                        ; preds = %if.end14
  %22 = load i64, i64* %count.addr, align 8, !dbg !3715
  store i64 %22, i64* %retval, align 8, !dbg !3716
  br label %return, !dbg !3716

if.end19:                                         ; preds = %if.end14
  %23 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3717
  %dev20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 21, !dbg !3718
  call void @put_device(%struct.device* %dev20) #4, !dbg !3719
  %24 = load %struct.acpi_device*, %struct.acpi_device** %acpi_device, align 8, !dbg !3720
  %handle21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 1, !dbg !3721
  %25 = load i8*, i8** %handle21, align 8, !dbg !3721
  %call22 = call i32 @acpi_evaluate_ost(i8* %25, i32 259, i32 1, %struct.acpi_buffer* null) #4, !dbg !3722
  %26 = load i32, i32* %status, align 4, !dbg !3723
  %cmp23 = icmp eq i32 %26, 4, !dbg !3724
  %27 = zext i1 %cmp23 to i64, !dbg !3723
  %cond = select i1 %cmp23, i32 -12, i32 -11, !dbg !3723
  %conv25 = sext i32 %cond to i64, !dbg !3723
  store i64 %conv25, i64* %retval, align 8, !dbg !3725
  br label %return, !dbg !3725

return:                                           ; preds = %if.end19, %if.then18, %if.then13, %if.then6, %if.then
  %28 = load i64, i64* %retval, align 8, !dbg !3726
  ret i64 %28, !dbg !3726
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_type(i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_hotplug_schedule(%struct.acpi_device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_ost(i8*, i32, i32, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @power_state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3727 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3728, metadata !DIExpression()), !dbg !3729
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3736, metadata !DIExpression()), !dbg !3738
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3738
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3738
  store i8* %1, i8** %__mptr, align 8, !dbg !3738
  br label %do.body, !dbg !3738

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3739

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3738
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3738
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3738
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3739
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3738
  store %struct.acpi_device* %4, %struct.acpi_device** %adev, align 8, !dbg !3735
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3741
  %6 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3742
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 11, !dbg !3743
  %state = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !3744
  %7 = load i32, i32* %state, align 8, !dbg !3744
  %call = call i8* @acpi_power_state_string(i32 %7) #4, !dbg !3745
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %call) #4, !dbg !3746
  %conv = sext i32 %call1 to i64, !dbg !3746
  ret i64 %conv, !dbg !3747
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_power_state_string(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @real_power_state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3748 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %state = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3753, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3757, metadata !DIExpression()), !dbg !3759
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3759
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3759
  store i8* %1, i8** %__mptr, align 8, !dbg !3759
  br label %do.body, !dbg !3759

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3760

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3759
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !3759
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3759
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !3760
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3759
  store %struct.acpi_device* %4, %struct.acpi_device** %adev, align 8, !dbg !3756
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3762, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3764, metadata !DIExpression()), !dbg !3765
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev, align 8, !dbg !3766
  %call = call i32 @acpi_device_get_power(%struct.acpi_device* %5, i32* %state) #4, !dbg !3767
  store i32 %call, i32* %ret, align 4, !dbg !3768
  %6 = load i32, i32* %ret, align 4, !dbg !3769
  %tobool = icmp ne i32 %6, 0, !dbg !3769
  br i1 %tobool, label %if.then, label %if.end, !dbg !3771

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %ret, align 4, !dbg !3772
  %conv = sext i32 %7 to i64, !dbg !3772
  store i64 %conv, i64* %retval, align 8, !dbg !3773
  br label %return, !dbg !3773

if.end:                                           ; preds = %do.end
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !3774
  %9 = load i32, i32* %state, align 4, !dbg !3775
  %call1 = call i8* @acpi_power_state_string(i32 %9) #4, !dbg !3776
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %call1) #4, !dbg !3777
  %conv3 = sext i32 %call2 to i64, !dbg !3777
  store i64 %conv3, i64* %retval, align 8, !dbg !3778
  br label %return, !dbg !3778

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !3779
  ret i64 %10, !dbg !3779
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_device_get_power(%struct.acpi_device*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !2491 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !3780, metadata !DIExpression()), !dbg !3781
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3782
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !3783
  store i32 0, i32* %done, align 8, !dbg !3784
  br label %do.body, !dbg !3785

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3786
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !3786
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #4, !dbg !3786
  br label %do.end, !dbg !3786

do.end:                                           ; preds = %do.body
  ret void, !dbg !3788
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_init_and_add(%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_data_node_release(%struct.kobject* %kobj) #0 !dbg !3789 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3792, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3794, metadata !DIExpression()), !dbg !3796
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3796
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3796
  store i8* %1, i8** %__mptr, align 8, !dbg !3796
  br label %do.body, !dbg !3796

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3797

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3796
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !3796
  %3 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !3796
  store %struct.acpi_data_node* %3, %struct.acpi_data_node** %tmp, align 8, !dbg !3797
  %4 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !3796
  store %struct.acpi_data_node* %4, %struct.acpi_data_node** %dn, align 8, !dbg !3793
  %5 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3799
  %kobj_done = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %5, i32 0, i32 7, !dbg !3800
  call void @complete(%struct.completion* %kobj_done) #4, !dbg !3801
  ret void, !dbg !3802
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_data_node_attr_show(%struct.kobject* %kobj, %struct.attribute* %attr, i8* %buf) #0 !dbg !3803 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %dn = alloca %struct.acpi_data_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_data_node*, align 8
  %dn_attr = alloca %struct.acpi_data_node_attr*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_data_node_attr*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3806, metadata !DIExpression()), !dbg !3807
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3812, metadata !DIExpression()), !dbg !3814
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3814
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !3814
  store i8* %1, i8** %__mptr, align 8, !dbg !3814
  br label %do.body, !dbg !3814

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3815

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3814
  %add.ptr = getelementptr i8, i8* %2, i64 -112, !dbg !3814
  %3 = bitcast i8* %add.ptr to %struct.acpi_data_node*, !dbg !3814
  store %struct.acpi_data_node* %3, %struct.acpi_data_node** %tmp, align 8, !dbg !3815
  %4 = load %struct.acpi_data_node*, %struct.acpi_data_node** %tmp, align 8, !dbg !3814
  store %struct.acpi_data_node* %4, %struct.acpi_data_node** %dn, align 8, !dbg !3811
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node_attr** %dn_attr, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3819, metadata !DIExpression()), !dbg !3821
  %5 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !3821
  %6 = bitcast %struct.attribute* %5 to i8*, !dbg !3821
  store i8* %6, i8** %__mptr1, align 8, !dbg !3821
  br label %do.body2, !dbg !3821

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3822

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !3821
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !3821
  %8 = bitcast i8* %add.ptr5 to %struct.acpi_data_node_attr*, !dbg !3821
  store %struct.acpi_data_node_attr* %8, %struct.acpi_data_node_attr** %tmp4, align 8, !dbg !3822
  %9 = load %struct.acpi_data_node_attr*, %struct.acpi_data_node_attr** %tmp4, align 8, !dbg !3821
  store %struct.acpi_data_node_attr* %9, %struct.acpi_data_node_attr** %dn_attr, align 8, !dbg !3818
  %10 = load %struct.acpi_data_node_attr*, %struct.acpi_data_node_attr** %dn_attr, align 8, !dbg !3824
  %show = getelementptr inbounds %struct.acpi_data_node_attr, %struct.acpi_data_node_attr* %10, i32 0, i32 1, !dbg !3825
  %11 = load i64 (%struct.acpi_data_node*, i8*)*, i64 (%struct.acpi_data_node*, i8*)** %show, align 8, !dbg !3825
  %tobool = icmp ne i64 (%struct.acpi_data_node*, i8*)* %11, null, !dbg !3824
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3824

cond.true:                                        ; preds = %do.end3
  %12 = load %struct.acpi_data_node_attr*, %struct.acpi_data_node_attr** %dn_attr, align 8, !dbg !3826
  %show6 = getelementptr inbounds %struct.acpi_data_node_attr, %struct.acpi_data_node_attr* %12, i32 0, i32 1, !dbg !3827
  %13 = load i64 (%struct.acpi_data_node*, i8*)*, i64 (%struct.acpi_data_node*, i8*)** %show6, align 8, !dbg !3827
  %14 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn, align 8, !dbg !3828
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !3829
  %call = call i64 %13(%struct.acpi_data_node* %14, i8* %15) #4, !dbg !3826
  br label %cond.end, !dbg !3824

cond.false:                                       ; preds = %do.end3
  br label %cond.end, !dbg !3824

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -6, %cond.false ], !dbg !3824
  ret i64 %cond, !dbg !3830
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @data_node_show_path(%struct.acpi_data_node* %dn, i8* %buf) #0 !dbg !3831 {
entry:
  %dn.addr = alloca %struct.acpi_data_node*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.acpi_data_node* %dn, %struct.acpi_data_node** %dn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_data_node** %dn.addr, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3834, metadata !DIExpression()), !dbg !3835
  %0 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn.addr, align 8, !dbg !3836
  %handle = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %0, i32 0, i32 1, !dbg !3837
  %1 = load i8*, i8** %handle, align 8, !dbg !3837
  %tobool = icmp ne i8* %1, null, !dbg !3836
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3836

cond.true:                                        ; preds = %entry
  %2 = load %struct.acpi_data_node*, %struct.acpi_data_node** %dn.addr, align 8, !dbg !3838
  %handle1 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %2, i32 0, i32 1, !dbg !3839
  %3 = load i8*, i8** %handle1, align 8, !dbg !3839
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3840
  %call = call i64 @acpi_object_path(i8* %3, i8* %4) #4, !dbg !3841
  br label %cond.end, !dbg !3836

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3836

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %cond.false ], !dbg !3836
  ret i64 %cond, !dbg !3842
}

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2503, !2504, !2505, !2506}
!llvm.ident = !{!2507}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dev_attr_path", scope: !2, file: !3, line: 437, type: !2457, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !70, globals: !2454, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/device_sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "utf16_endian", file: !65, line: 41, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "UTF16_HOST_ENDIAN", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "UTF16_LITTLE_ENDIAN", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "UTF16_BIG_ENDIAN", value: 2, isUnsigned: true)
!70 = !{!71, !72, !81, !90, !91, !92, !93, !2428, !464, !2430, !2431, !2442}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !77, line: 178, size: 128, elements: !78)
!77 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !77, line: 179, baseType: !75, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !76, file: !77, line: 179, baseType: !75, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !83, line: 222, size: 192, elements: !84)
!83 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !82, file: !83, line: 223, baseType: !76, size: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !82, file: !83, line: 224, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !83, line: 351, size: 10880, elements: !95)
!95 = !{!96, !97, !100, !2155, !2156, !2157, !2158, !2159, !2160, !2169, !2186, !2260, !2289, !2313, !2334, !2340, !2349, !2381, !2395, !2417, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !94, file: !83, line: 352, baseType: !91, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !94, file: !83, line: 353, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !99, line: 424, baseType: !71)
!99 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !94, file: !83, line: 354, baseType: !101, size: 192, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !102, line: 17, size: 192, elements: !103)
!102 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !106, !2154}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !101, file: !102, line: 18, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !101, file: !102, line: 19, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !102, line: 110, size: 1152, elements: !110)
!110 = !{!111, !115, !119, !127, !2096, !2100, !2104, !2109, !2113, !2114, !2118, !2122, !2126, !2137, !2138, !2139, !2140, !2150}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !109, file: !102, line: 111, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!105, !105}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !109, file: !102, line: 112, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !105}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !109, file: !102, line: 113, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !77, line: 30, baseType: !124)
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !109, file: !102, line: 114, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !125, !133}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !136)
!136 = !{!137, !1629, !1631, !1634, !1635, !1686, !1783, !1784, !1785, !1786, !1787, !1796, !1901, !1914, !2021, !2022, !2026, !2028, !2029, !2030, !2034, !2040, !2041, !2044, !2045, !2046, !2049, !2050, !2051, !2052, !2084, !2085, !2086, !2089, !2092, !2093, !2094, !2095}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !135, file: !30, line: 462, baseType: !138, size: 512)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !139, line: 64, size: 512, elements: !140)
!139 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !142, !143, !145, !204, !1465, !1619, !1624, !1625, !1626, !1627, !1628}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !139, line: 65, baseType: !87, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !138, file: !139, line: 66, baseType: !76, size: 128, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !138, file: !139, line: 67, baseType: !144, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !138, file: !139, line: 68, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !139, line: 192, size: 704, elements: !148)
!148 = !{!149, !150, !166, !167}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !147, file: !139, line: 193, baseType: !76, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !147, file: !139, line: 194, baseType: !151, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !152, line: 83, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !152, line: 71, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 72, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 72, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !156, file: !152, line: 73, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !152, line: 20, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !159, file: !152, line: 21, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !163, line: 25, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 25, elements: !165)
!165 = !{}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !147, file: !139, line: 195, baseType: !138, size: 512, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !147, file: !139, line: 196, baseType: !168, size: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !139, line: 156, size: 192, elements: !171)
!171 = !{!172, !177, !182}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !170, file: !139, line: 157, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!91, !146, !144}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !139, line: 158, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!87, !146, !144}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !170, file: !139, line: 159, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!91, !146, !144, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !139, line: 148, size: 20736, elements: !189)
!189 = !{!190, !194, !198, !199, !203}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !188, file: !139, line: 149, baseType: !191, size: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 192, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 3)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !188, file: !139, line: 150, baseType: !195, size: 4096, offset: 192)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 4096, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !188, file: !139, line: 151, baseType: !91, size: 32, offset: 4288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !188, file: !139, line: 152, baseType: !200, size: 16384, offset: 4320)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 16384, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 2048)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !188, file: !139, line: 153, baseType: !91, size: 32, offset: 20704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !138, file: !139, line: 69, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !139, line: 138, size: 448, elements: !207)
!207 = !{!208, !212, !242, !244, !1412, !1443, !1447}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !206, file: !139, line: 139, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !144}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !206, file: !139, line: 140, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !216, line: 230, size: 128, elements: !217)
!216 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !234}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !215, file: !216, line: 231, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !144, !227, !90}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !77, line: 60, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !224, line: 73, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !224, line: 15, baseType: !226)
!226 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !216, line: 30, size: 128, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !216, line: 31, baseType: !87, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !228, file: !216, line: 32, baseType: !232, size: 16, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !77, line: 19, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !215, file: !216, line: 232, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!222, !144, !227, !87, !238}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 55, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !224, line: 72, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !224, line: 16, baseType: !241)
!241 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !206, file: !139, line: 141, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !206, file: !139, line: 142, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !216, line: 84, size: 320, elements: !249)
!249 = !{!250, !251, !255, !1409, !1410}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !216, line: 85, baseType: !87, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !248, file: !216, line: 86, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!232, !144, !227, !91}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !248, file: !216, line: 88, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!232, !144, !259, !91}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !216, line: 168, size: 448, elements: !261)
!261 = !{!262, !263, !264, !265, !275, !276}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !260, file: !216, line: 169, baseType: !228, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !260, file: !216, line: 170, baseType: !238, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !260, file: !216, line: 171, baseType: !71, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !260, file: !216, line: 172, baseType: !266, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!222, !269, !144, !259, !90, !272, !238}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !271, line: 526, flags: DIFlagFwdDecl)
!271 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !77, line: 46, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !224, line: 88, baseType: !274)
!274 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !260, file: !216, line: 174, baseType: !266, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !260, file: !216, line: 176, baseType: !277, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!91, !269, !144, !259, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !282, line: 305, size: 1472, elements: !283)
!282 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !285, !286, !287, !288, !296, !297, !1383, !1389, !1390, !1395, !1396, !1399, !1403, !1404, !1405, !1406, !1407}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !281, file: !282, line: 308, baseType: !241, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !281, file: !282, line: 309, baseType: !241, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !281, file: !282, line: 313, baseType: !280, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !281, file: !282, line: 313, baseType: !280, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !281, file: !282, line: 315, baseType: !289, size: 192, align: 64, offset: 256)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !290, line: 24, size: 192, align: 64, elements: !291)
!290 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !289, file: !290, line: 25, baseType: !241, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !289, file: !290, line: 26, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !289, file: !290, line: 27, baseType: !294, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !281, file: !282, line: 323, baseType: !241, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !281, file: !282, line: 327, baseType: !298, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !282, line: 388, size: 7296, elements: !300)
!300 = !{!301, !1379}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !282, line: 389, baseType: !302, size: 7296)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !282, line: 389, size: 7296, elements: !303)
!303 = !{!304, !305, !309, !315, !319, !320, !321, !322, !323, !331, !336, !337, !338, !339, !348, !349, !350, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !385, !393, !396, !444, !445, !1350, !1351, !1354, !1357, !1358, !1361, !1362, !1363, !1366, !1378}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !302, file: !282, line: 390, baseType: !280, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !302, file: !282, line: 391, baseType: !306, size: 64, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !290, line: 31, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !306, file: !290, line: 32, baseType: !294, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !302, file: !282, line: 392, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !311, line: 23, baseType: !312)
!311 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !313, line: 31, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!314 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !302, file: !282, line: 394, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!241, !269, !241, !241, !241, !241}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !302, file: !282, line: 398, baseType: !241, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !302, file: !282, line: 399, baseType: !241, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !302, file: !282, line: 405, baseType: !241, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !302, file: !282, line: 406, baseType: !241, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !302, file: !282, line: 407, baseType: !324, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !271, line: 286, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 286, size: 64, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !326, file: !271, line: 286, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !330, line: 18, baseType: !241)
!330 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !302, file: !282, line: 416, baseType: !332, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !77, line: 168, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 166, size: 32, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !333, file: !77, line: 167, baseType: !91, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !302, file: !282, line: 428, baseType: !332, size: 32, offset: 608)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !302, file: !282, line: 437, baseType: !332, size: 32, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !302, file: !282, line: 447, baseType: !332, size: 32, offset: 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !302, file: !282, line: 450, baseType: !340, size: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !341, line: 13, baseType: !342)
!341 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !77, line: 175, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 173, size: 64, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !343, file: !77, line: 174, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !311, line: 22, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !313, line: 30, baseType: !274)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !302, file: !282, line: 452, baseType: !91, size: 32, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !302, file: !282, line: 454, baseType: !151, offset: 800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !302, file: !282, line: 457, baseType: !351, size: 256, offset: 832)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !352, line: 35, size: 256, elements: !353)
!352 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !351, file: !352, line: 36, baseType: !340, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 42, baseType: !340, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 46, baseType: !357, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !152, line: 29, baseType: !159)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 47, baseType: !76, size: 128, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !302, file: !282, line: 459, baseType: !76, size: 128, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !302, file: !282, line: 466, baseType: !241, size: 64, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !302, file: !282, line: 467, baseType: !241, size: 64, offset: 1280)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !302, file: !282, line: 469, baseType: !241, size: 64, offset: 1344)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !302, file: !282, line: 470, baseType: !241, size: 64, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !302, file: !282, line: 471, baseType: !342, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !302, file: !282, line: 472, baseType: !241, size: 64, offset: 1536)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !302, file: !282, line: 473, baseType: !241, size: 64, offset: 1600)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !302, file: !282, line: 474, baseType: !241, size: 64, offset: 1664)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !302, file: !282, line: 475, baseType: !241, size: 64, offset: 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !302, file: !282, line: 477, baseType: !151, offset: 1792)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1792)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1856)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1920)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !302, file: !282, line: 478, baseType: !241, size: 64, offset: 1984)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2048)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2112)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !302, file: !282, line: 479, baseType: !241, size: 64, offset: 2176)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2240)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2304)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2368)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !302, file: !282, line: 480, baseType: !241, size: 64, offset: 2432)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !302, file: !282, line: 482, baseType: !382, size: 2816, offset: 2496)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 2816, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 44)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !302, file: !282, line: 488, baseType: !386, size: 256, offset: 5312)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !387, line: 60, size: 256, elements: !388)
!387 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !387, line: 61, baseType: !390, size: 256)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 4)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !302, file: !282, line: 490, baseType: !394, size: 64, offset: 5568)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !282, line: 490, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !302, file: !282, line: 493, baseType: !397, size: 896, offset: 5632)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !398, line: 53, baseType: !399)
!398 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !398, line: 13, size: 896, elements: !400)
!400 = !{!401, !402, !403, !404, !407, !408, !415, !416, !436, !437, !440}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !399, file: !398, line: 18, baseType: !310, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !399, file: !398, line: 28, baseType: !342, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !399, file: !398, line: 31, baseType: !351, size: 256, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !399, file: !398, line: 32, baseType: !405, size: 64, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !398, line: 32, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !399, file: !398, line: 37, baseType: !233, size: 16, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !399, file: !398, line: 40, baseType: !409, size: 192, offset: 512)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !410, line: 53, size: 192, elements: !411)
!410 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !409, file: !410, line: 54, baseType: !340, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !409, file: !410, line: 55, baseType: !151, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !409, file: !410, line: 59, baseType: !76, size: 128, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !399, file: !398, line: 41, baseType: !71, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !399, file: !398, line: 42, baseType: !417, size: 64, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !420, line: 13, size: 896, elements: !421)
!420 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !419, file: !420, line: 14, baseType: !71, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !419, file: !420, line: 15, baseType: !241, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !419, file: !420, line: 17, baseType: !241, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !419, file: !420, line: 17, baseType: !241, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !419, file: !420, line: 19, baseType: !226, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !419, file: !420, line: 21, baseType: !226, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !419, file: !420, line: 22, baseType: !226, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !419, file: !420, line: 23, baseType: !226, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !419, file: !420, line: 24, baseType: !226, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !419, file: !420, line: 25, baseType: !226, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !419, file: !420, line: 26, baseType: !226, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !419, file: !420, line: 27, baseType: !226, size: 64, offset: 704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !419, file: !420, line: 28, baseType: !226, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !419, file: !420, line: 29, baseType: !226, size: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !399, file: !398, line: 44, baseType: !332, size: 32, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !399, file: !398, line: 50, baseType: !438, size: 16, offset: 864)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !311, line: 19, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !313, line: 24, baseType: !233)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !399, file: !398, line: 51, baseType: !441, size: 16, offset: 880)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !311, line: 18, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !313, line: 23, baseType: !443)
!443 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !282, line: 495, baseType: !241, size: 64, offset: 6528)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !302, file: !282, line: 497, baseType: !446, size: 64, offset: 6592)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !282, line: 381, size: 384, elements: !448)
!448 = !{!449, !450, !1349}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !447, file: !282, line: 382, baseType: !332, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !447, file: !282, line: 383, baseType: !451, size: 128, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !282, line: 376, size: 128, elements: !452)
!452 = !{!453, !1347}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !451, file: !282, line: 377, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !456, line: 640, size: 48640, elements: !457)
!456 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !466, !468, !469, !475, !476, !477, !478, !479, !480, !481, !482, !486, !504, !515, !609, !610, !611, !622, !623, !625, !626, !627, !628, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !707, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !763, !765, !766, !767, !779, !781, !782, !783, !784, !785, !791, !792, !793, !794, !795, !796, !797, !809, !814, !818, !819, !820, !823, !827, !830, !833, !836, !839, !842, !845, !848, !854, !855, !856, !862, !863, !864, !865, !866, !875, !876, !877, !878, !879, !884, !885, !886, !889, !890, !893, !896, !899, !902, !905, !908, !909, !989, !992, !995, !996, !999, !1000, !1001, !1007, !1008, !1009, !1022, !1023, !1024, !1034, !1039, !1042, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !455, file: !456, line: 646, baseType: !459, size: 128)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !460, line: 56, size: 128, elements: !461)
!460 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !460, line: 57, baseType: !241, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !459, file: !460, line: 58, baseType: !464, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !311, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !313, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !456, line: 649, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !226)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !455, file: !456, line: 657, baseType: !71, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !455, file: !456, line: 658, baseType: !470, size: 32, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !471, line: 113, baseType: !472)
!471 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !471, line: 111, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !472, file: !471, line: 112, baseType: !332, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !456, line: 660, baseType: !7, size: 32, offset: 288)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !455, file: !456, line: 661, baseType: !7, size: 32, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !456, line: 684, baseType: !91, size: 32, offset: 352)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !455, file: !456, line: 686, baseType: !91, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !455, file: !456, line: 687, baseType: !91, size: 32, offset: 416)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !455, file: !456, line: 688, baseType: !91, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !455, file: !456, line: 689, baseType: !7, size: 32, offset: 480)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !455, file: !456, line: 691, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !456, line: 691, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !455, file: !456, line: 692, baseType: !487, size: 832, offset: 576)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !456, line: 451, size: 832, elements: !488)
!488 = !{!489, !494, !495, !496, !497, !498, !499, !500, !501, !502}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !487, file: !456, line: 453, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !456, line: 325, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !490, file: !456, line: 326, baseType: !241, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !490, file: !456, line: 327, baseType: !464, size: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !487, file: !456, line: 454, baseType: !289, size: 192, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !487, file: !456, line: 455, baseType: !76, size: 128, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !487, file: !456, line: 456, baseType: !7, size: 32, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !487, file: !456, line: 458, baseType: !310, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !487, file: !456, line: 459, baseType: !310, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !487, file: !456, line: 460, baseType: !310, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !487, file: !456, line: 461, baseType: !310, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !487, file: !456, line: 463, baseType: !310, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !487, file: !456, line: 465, baseType: !503, offset: 832)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !456, line: 415, elements: !165)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !455, file: !456, line: 693, baseType: !505, size: 384, offset: 1408)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !456, line: 489, size: 384, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !505, file: !456, line: 490, baseType: !76, size: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !505, file: !456, line: 491, baseType: !241, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !505, file: !456, line: 492, baseType: !241, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !505, file: !456, line: 493, baseType: !7, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !505, file: !456, line: 494, baseType: !233, size: 16, offset: 288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !505, file: !456, line: 495, baseType: !233, size: 16, offset: 304)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !505, file: !456, line: 497, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !455, file: !456, line: 697, baseType: !516, size: 1792, offset: 1792)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !456, line: 507, size: 1792, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !606, !607}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !516, file: !456, line: 508, baseType: !289, size: 192, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !516, file: !456, line: 515, baseType: !310, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !516, file: !456, line: 516, baseType: !310, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !516, file: !456, line: 517, baseType: !310, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !516, file: !456, line: 518, baseType: !310, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !516, file: !456, line: 519, baseType: !310, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !516, file: !456, line: 526, baseType: !346, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !516, file: !456, line: 527, baseType: !310, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !456, line: 528, baseType: !7, size: 32, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !516, file: !456, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !516, file: !456, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !516, file: !456, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !516, file: !456, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !516, file: !456, line: 563, baseType: !532, size: 512, offset: 704)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !533)
!533 = !{!534, !542, !543, !548, !600, !603, !604, !605}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !532, file: !6, line: 119, baseType: !535, size: 256)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !536, line: 9, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !536, line: 10, baseType: !289, size: 192, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !535, file: !536, line: 11, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !541, line: 29, baseType: !346)
!541 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !532, file: !6, line: 120, baseType: !540, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !532, file: !6, line: 121, baseType: !544, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!5, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !532, file: !6, line: 122, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !551)
!551 = !{!552, !572, !573, !576, !586, !587, !595, !599}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !550, file: !6, line: 160, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !6, line: 215, baseType: !357)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !554, file: !6, line: 216, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !554, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !554, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !554, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !554, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !554, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !554, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !554, file: !6, line: 233, baseType: !540, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !554, file: !6, line: 234, baseType: !547, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !554, file: !6, line: 235, baseType: !540, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !554, file: !6, line: 236, baseType: !547, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !554, file: !6, line: 237, baseType: !569, size: 4096, offset: 512)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 4096, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 8)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !550, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !550, file: !6, line: 162, baseType: !574, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !77, line: 27, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !224, line: 96, baseType: !91)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !550, file: !6, line: 163, baseType: !577, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !578, line: 276, baseType: !579)
!578 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !578, line: 276, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !579, file: !578, line: 276, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !578, line: 70, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !578, line: 65, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !583, file: !578, line: 66, baseType: !7, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !550, file: !6, line: 164, baseType: !547, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !550, file: !6, line: 165, baseType: !588, size: 128, offset: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !536, line: 14, size: 128, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !588, file: !536, line: 15, baseType: !591, size: 128)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !290, line: 125, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !591, file: !290, line: 126, baseType: !306, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !591, file: !290, line: 127, baseType: !294, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !550, file: !6, line: 166, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!540}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !550, file: !6, line: 167, baseType: !540, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !532, file: !6, line: 123, baseType: !601, size: 8, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !311, line: 17, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !313, line: 21, baseType: !92)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !532, file: !6, line: 124, baseType: !601, size: 8, offset: 456)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !532, file: !6, line: 125, baseType: !601, size: 8, offset: 464)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !532, file: !6, line: 126, baseType: !601, size: 8, offset: 472)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !516, file: !456, line: 572, baseType: !532, size: 512, offset: 1216)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !516, file: !456, line: 580, baseType: !608, size: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !455, file: !456, line: 721, baseType: !7, size: 32, offset: 3584)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !455, file: !456, line: 722, baseType: !91, size: 32, offset: 3616)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !455, file: !456, line: 723, baseType: !612, size: 64, offset: 3648)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !615, line: 17, baseType: !616)
!615 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !615, line: 17, size: 64, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !616, file: !615, line: 17, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 64, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 1)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !455, file: !456, line: 724, baseType: !614, size: 64, offset: 3712)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !455, file: !456, line: 749, baseType: !624, offset: 3776)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !456, line: 290, elements: !165)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !455, file: !456, line: 751, baseType: !76, size: 128, offset: 3776)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !455, file: !456, line: 757, baseType: !298, size: 64, offset: 3904)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !455, file: !456, line: 758, baseType: !298, size: 64, offset: 3968)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !455, file: !456, line: 761, baseType: !629, size: 320, offset: 4032)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !387, line: 34, size: 320, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !629, file: !387, line: 35, baseType: !310, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !629, file: !387, line: 36, baseType: !633, size: 256, offset: 64)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !391)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !455, file: !456, line: 766, baseType: !91, size: 32, offset: 4352)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !455, file: !456, line: 767, baseType: !91, size: 32, offset: 4384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !455, file: !456, line: 768, baseType: !91, size: 32, offset: 4416)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !455, file: !456, line: 770, baseType: !91, size: 32, offset: 4448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !455, file: !456, line: 772, baseType: !241, size: 64, offset: 4480)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !455, file: !456, line: 775, baseType: !7, size: 32, offset: 4544)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !455, file: !456, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !455, file: !456, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !455, file: !456, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !455, file: !456, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !455, file: !456, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !455, file: !456, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !455, file: !456, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !455, file: !456, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !455, file: !456, line: 831, baseType: !241, size: 64, offset: 4672)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !455, file: !456, line: 833, baseType: !650, size: 384, offset: 4736)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !651)
!651 = !{!652, !657}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !650, file: !12, line: 26, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!226, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !12, line: 27, baseType: !658, size: 320, offset: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !12, line: 27, size: 320, elements: !659)
!659 = !{!660, !670, !697}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !658, file: !12, line: 36, baseType: !661, size: 320)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 29, size: 320, elements: !662)
!662 = !{!663, !665, !666, !667, !668, !669}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !661, file: !12, line: 30, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !12, line: 31, baseType: !464, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !12, line: 32, baseType: !464, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !661, file: !12, line: 33, baseType: !464, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !661, file: !12, line: 34, baseType: !310, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !661, file: !12, line: 35, baseType: !664, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !658, file: !12, line: 46, baseType: !671, size: 192)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 38, size: 192, elements: !672)
!672 = !{!673, !674, !675, !696}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !671, file: !12, line: 39, baseType: !574, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !671, file: !12, line: 41, baseType: !676, size: 64, offset: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !671, file: !12, line: 41, size: 64, elements: !677)
!677 = !{!678, !686}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !676, file: !12, line: 42, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !681, line: 7, size: 128, elements: !682)
!681 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !{!683, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !680, file: !681, line: 8, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !224, line: 93, baseType: !274)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !680, file: !681, line: 9, baseType: !274, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !676, file: !12, line: 43, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !689, line: 7, size: 64, elements: !690)
!689 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !695}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !688, file: !689, line: 8, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !689, line: 5, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !311, line: 20, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !313, line: 26, baseType: !91)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !688, file: !689, line: 9, baseType: !693, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !671, file: !12, line: 45, baseType: !310, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !658, file: !12, line: 54, baseType: !698, size: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !12, line: 48, size: 256, elements: !699)
!699 = !{!700, !703, !704, !705, !706}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !698, file: !12, line: 49, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !698, file: !12, line: 50, baseType: !91, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !698, file: !12, line: 51, baseType: !91, size: 32, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !698, file: !12, line: 52, baseType: !241, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !698, file: !12, line: 53, baseType: !241, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !455, file: !456, line: 835, baseType: !708, size: 32, offset: 5120)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !77, line: 22, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !224, line: 28, baseType: !91)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !455, file: !456, line: 836, baseType: !708, size: 32, offset: 5152)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !455, file: !456, line: 840, baseType: !241, size: 64, offset: 5184)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !455, file: !456, line: 849, baseType: !454, size: 64, offset: 5248)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !455, file: !456, line: 852, baseType: !454, size: 64, offset: 5312)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !455, file: !456, line: 857, baseType: !76, size: 128, offset: 5376)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !455, file: !456, line: 858, baseType: !76, size: 128, offset: 5504)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !455, file: !456, line: 859, baseType: !454, size: 64, offset: 5632)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !455, file: !456, line: 867, baseType: !76, size: 128, offset: 5696)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !455, file: !456, line: 868, baseType: !76, size: 128, offset: 5824)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !455, file: !456, line: 871, baseType: !720, size: 64, offset: 5952)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !722, line: 59, size: 768, elements: !723)
!722 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725, !726, !727, !738, !739, !746, !755}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !722, line: 61, baseType: !470, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !721, file: !722, line: 62, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !722, line: 63, baseType: !151, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !721, file: !722, line: 65, baseType: !728, size: 256, offset: 64)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !391)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !77, line: 182, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !729, file: !77, line: 183, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !77, line: 186, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !77, line: 187, baseType: !732, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !733, file: !77, line: 187, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !721, file: !722, line: 66, baseType: !729, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !721, file: !722, line: 68, baseType: !740, size: 128, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !741, line: 40, baseType: !742)
!741 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !741, line: 36, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !742, file: !741, line: 37, baseType: !151)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !742, file: !741, line: 38, baseType: !76, size: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !721, file: !722, line: 69, baseType: !747, size: 128, align: 64, offset: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !77, line: 216, size: 128, align: 64, elements: !748)
!748 = !{!749, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !77, line: 217, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !747, file: !77, line: 218, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !750}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !721, file: !722, line: 70, baseType: !756, size: 128, offset: 640)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 128, elements: !620)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !722, line: 54, size: 128, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !757, file: !722, line: 55, baseType: !91, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !757, file: !722, line: 56, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !722, line: 56, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !455, file: !456, line: 872, baseType: !764, size: 512, offset: 6016)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 512, elements: !391)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !455, file: !456, line: 873, baseType: !76, size: 128, offset: 6528)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !455, file: !456, line: 874, baseType: !76, size: 128, offset: 6656)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !455, file: !456, line: 876, baseType: !768, size: 64, offset: 6784)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !770, line: 26, size: 192, elements: !771)
!770 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !769, file: !770, line: 27, baseType: !7, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !769, file: !770, line: 28, baseType: !774, size: 128, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !775, line: 43, size: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !775, line: 44, baseType: !357)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !774, file: !775, line: 45, baseType: !76, size: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !455, file: !456, line: 879, baseType: !780, size: 64, offset: 6848)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !455, file: !456, line: 882, baseType: !780, size: 64, offset: 6912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !455, file: !456, line: 884, baseType: !310, size: 64, offset: 6976)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !455, file: !456, line: 885, baseType: !310, size: 64, offset: 7040)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !455, file: !456, line: 890, baseType: !310, size: 64, offset: 7104)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !455, file: !456, line: 891, baseType: !786, size: 128, offset: 7168)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !456, line: 242, size: 128, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !786, file: !456, line: 244, baseType: !310, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !786, file: !456, line: 245, baseType: !310, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !456, line: 246, baseType: !357, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !455, file: !456, line: 900, baseType: !241, size: 64, offset: 7296)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !455, file: !456, line: 901, baseType: !241, size: 64, offset: 7360)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !455, file: !456, line: 904, baseType: !310, size: 64, offset: 7424)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !455, file: !456, line: 907, baseType: !310, size: 64, offset: 7488)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !455, file: !456, line: 910, baseType: !241, size: 64, offset: 7552)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !455, file: !456, line: 911, baseType: !241, size: 64, offset: 7616)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !455, file: !456, line: 914, baseType: !798, size: 640, offset: 7680)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !799, line: 123, size: 640, elements: !800)
!799 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !807, !808}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !798, file: !799, line: 124, baseType: !802, size: 576)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 576, elements: !192)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !799, line: 108, size: 192, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !803, file: !799, line: 109, baseType: !310, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !803, file: !799, line: 110, baseType: !588, size: 128, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !798, file: !799, line: 125, baseType: !7, size: 32, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !798, file: !799, line: 126, baseType: !7, size: 32, offset: 608)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !455, file: !456, line: 917, baseType: !810, size: 192, offset: 8320)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !799, line: 134, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !810, file: !799, line: 135, baseType: !747, size: 128, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !810, file: !799, line: 136, baseType: !7, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !455, file: !456, line: 923, baseType: !815, size: 64, offset: 8512)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !456, line: 923, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !455, file: !456, line: 926, baseType: !815, size: 64, offset: 8576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !455, file: !456, line: 929, baseType: !815, size: 64, offset: 8640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !455, file: !456, line: 933, baseType: !821, size: 64, offset: 8704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !456, line: 933, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !455, file: !456, line: 943, baseType: !824, size: 128, offset: 8768)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 16)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !455, file: !456, line: 945, baseType: !828, size: 64, offset: 8896)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !456, line: 49, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !455, file: !456, line: 956, baseType: !831, size: 64, offset: 8960)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !456, line: 45, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !455, file: !456, line: 959, baseType: !834, size: 64, offset: 9024)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !456, line: 959, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !455, file: !456, line: 962, baseType: !837, size: 64, offset: 9088)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !456, line: 66, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !455, file: !456, line: 966, baseType: !840, size: 64, offset: 9152)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !456, line: 50, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !455, file: !456, line: 969, baseType: !843, size: 64, offset: 9216)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !799, line: 223, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !455, file: !456, line: 970, baseType: !846, size: 64, offset: 9280)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !456, line: 62, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !455, file: !456, line: 971, baseType: !849, size: 64, offset: 9344)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !850, line: 25, baseType: !851)
!850 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !850, line: 23, size: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !851, file: !850, line: 24, baseType: !619, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !455, file: !456, line: 972, baseType: !849, size: 64, offset: 9408)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !455, file: !456, line: 974, baseType: !849, size: 64, offset: 9472)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !455, file: !456, line: 975, baseType: !857, size: 192, offset: 9536)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !858, line: 30, size: 192, elements: !859)
!858 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !857, file: !858, line: 31, baseType: !76, size: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !857, file: !858, line: 32, baseType: !849, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !455, file: !456, line: 976, baseType: !241, size: 64, offset: 9728)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !455, file: !456, line: 977, baseType: !238, size: 64, offset: 9792)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !455, file: !456, line: 978, baseType: !7, size: 32, offset: 9856)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !455, file: !456, line: 980, baseType: !750, size: 64, offset: 9920)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !455, file: !456, line: 989, baseType: !867, size: 128, offset: 9984)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !868, line: 35, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !867, file: !868, line: 36, baseType: !91, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !867, file: !868, line: 37, baseType: !332, size: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !867, file: !868, line: 38, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !868, line: 23, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !455, file: !456, line: 992, baseType: !310, size: 64, offset: 10112)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !455, file: !456, line: 993, baseType: !310, size: 64, offset: 10176)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !455, file: !456, line: 996, baseType: !151, offset: 10240)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !455, file: !456, line: 999, baseType: !357, offset: 10240)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !455, file: !456, line: 1001, baseType: !880, size: 64, offset: 10240)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !456, line: 636, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !456, line: 637, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !455, file: !456, line: 1005, baseType: !591, size: 128, offset: 10304)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !455, file: !456, line: 1007, baseType: !454, size: 64, offset: 10432)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !455, file: !456, line: 1009, baseType: !887, size: 64, offset: 10496)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !456, line: 1009, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !455, file: !456, line: 1043, baseType: !71, size: 64, offset: 10560)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !455, file: !456, line: 1046, baseType: !891, size: 64, offset: 10624)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !456, line: 41, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !455, file: !456, line: 1050, baseType: !894, size: 64, offset: 10688)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !456, line: 42, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !455, file: !456, line: 1054, baseType: !897, size: 64, offset: 10752)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !456, line: 55, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !455, file: !456, line: 1056, baseType: !900, size: 64, offset: 10816)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !456, line: 40, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !455, file: !456, line: 1058, baseType: !903, size: 64, offset: 10880)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !456, line: 47, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !455, file: !456, line: 1061, baseType: !906, size: 64, offset: 10944)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !456, line: 43, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !455, file: !456, line: 1064, baseType: !241, size: 64, offset: 11008)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !455, file: !456, line: 1065, baseType: !910, size: 64, offset: 11072)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !858, line: 14, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !858, line: 12, size: 384, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !858, line: 13, baseType: !915, size: 384)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !858, line: 13, size: 384, elements: !916)
!916 = !{!917, !918, !919, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !915, file: !858, line: 13, baseType: !91, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !915, file: !858, line: 13, baseType: !91, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !915, file: !858, line: 13, baseType: !91, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !915, file: !858, line: 13, baseType: !921, size: 256, offset: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !922, line: 32, size: 256, elements: !923)
!922 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!923 = !{!924, !930, !943, !949, !958, !978, !983}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !921, file: !922, line: 37, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 34, size: 64, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !925, file: !922, line: 35, baseType: !709, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !925, file: !922, line: 36, baseType: !929, size: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !224, line: 49, baseType: !7)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !921, file: !922, line: 45, baseType: !931, size: 192)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 40, size: 192, elements: !932)
!932 = !{!933, !935, !936, !942}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !931, file: !922, line: 41, baseType: !934, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !224, line: 95, baseType: !91)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !931, file: !922, line: 42, baseType: !91, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !931, file: !922, line: 43, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !922, line: 11, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !922, line: 8, size: 64, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !938, file: !922, line: 9, baseType: !91, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !938, file: !922, line: 10, baseType: !71, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !931, file: !922, line: 44, baseType: !91, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !921, file: !922, line: 52, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 48, size: 128, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !944, file: !922, line: 49, baseType: !709, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !944, file: !922, line: 50, baseType: !929, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !944, file: !922, line: 51, baseType: !937, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !921, file: !922, line: 61, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 55, size: 256, elements: !951)
!951 = !{!952, !953, !954, !955, !957}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !950, file: !922, line: 56, baseType: !709, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !950, file: !922, line: 57, baseType: !929, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !950, file: !922, line: 58, baseType: !91, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !950, file: !922, line: 59, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !224, line: 94, baseType: !225)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !950, file: !922, line: 60, baseType: !956, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !921, file: !922, line: 95, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 64, size: 256, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !959, file: !922, line: 65, baseType: !71, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !922, line: 77, baseType: !963, size: 192, offset: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !922, line: 77, size: 192, elements: !964)
!964 = !{!965, !966, !973}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !963, file: !922, line: 82, baseType: !443, size: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !963, file: !922, line: 88, baseType: !967, size: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !922, line: 84, size: 192, elements: !968)
!968 = !{!969, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !967, file: !922, line: 85, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 64, elements: !570)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !967, file: !922, line: 86, baseType: !71, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !967, file: !922, line: 87, baseType: !71, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !963, file: !922, line: 93, baseType: !974, size: 96)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !963, file: !922, line: 90, size: 96, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !974, file: !922, line: 91, baseType: !970, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !974, file: !922, line: 92, baseType: !465, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !921, file: !922, line: 101, baseType: !979, size: 128)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 98, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !979, file: !922, line: 99, baseType: !226, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !979, file: !922, line: 100, baseType: !91, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !921, file: !922, line: 108, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !922, line: 104, size: 128, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !984, file: !922, line: 105, baseType: !71, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !984, file: !922, line: 106, baseType: !91, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !984, file: !922, line: 107, baseType: !7, size: 32, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !455, file: !456, line: 1067, baseType: !990, offset: 11136)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !991, line: 12, elements: !165)
!991 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !455, file: !456, line: 1099, baseType: !993, size: 64, offset: 11136)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !456, line: 56, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !455, file: !456, line: 1103, baseType: !76, size: 128, offset: 11200)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !455, file: !456, line: 1104, baseType: !997, size: 64, offset: 11328)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !456, line: 46, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !455, file: !456, line: 1105, baseType: !409, size: 192, offset: 11392)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !455, file: !456, line: 1106, baseType: !7, size: 32, offset: 11584)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !455, file: !456, line: 1109, baseType: !1002, size: 128, offset: 11648)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 128, elements: !1005)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !456, line: 51, flags: DIFlagFwdDecl)
!1005 = !{!1006}
!1006 = !DISubrange(count: 2)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !455, file: !456, line: 1110, baseType: !409, size: 192, offset: 11776)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !455, file: !456, line: 1111, baseType: !76, size: 128, offset: 11968)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !455, file: !456, line: 1173, baseType: !1010, size: 64, offset: 12096)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1012, line: 62, size: 256, align: 256, elements: !1013)
!1012 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !{!1014, !1015, !1016, !1021}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1011, file: !1012, line: 75, baseType: !465, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1011, file: !1012, line: 90, baseType: !465, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1011, file: !1012, line: 124, baseType: !1017, size: 64, offset: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !1012, line: 109, size: 64, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1017, file: !1012, line: 110, baseType: !312, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1017, file: !1012, line: 112, baseType: !312, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 144, baseType: !465, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !455, file: !456, line: 1174, baseType: !464, size: 32, offset: 12160)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !455, file: !456, line: 1179, baseType: !241, size: 64, offset: 12224)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !455, file: !456, line: 1182, baseType: !1025, size: 128, offset: 12288)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !387, line: 76, size: 128, elements: !1026)
!1026 = !{!1027, !1032, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1025, file: !387, line: 85, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1029, line: 7, size: 64, elements: !1030)
!1029 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1028, file: !1029, line: 12, baseType: !616, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1025, file: !387, line: 88, baseType: !123, size: 8, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1025, file: !387, line: 95, baseType: !123, size: 8, offset: 72)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 1184, baseType: !1035, size: 128, offset: 12416)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 1184, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1035, file: !456, line: 1185, baseType: !470, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1035, file: !456, line: 1186, baseType: !747, size: 128, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !455, file: !456, line: 1190, baseType: !1040, size: 64, offset: 12544)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !456, line: 53, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !455, file: !456, line: 1192, baseType: !1043, size: 128, offset: 12608)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !387, line: 64, size: 128, elements: !1044)
!1044 = !{!1045, !1138, !1139}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1043, file: !387, line: 65, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !282, line: 68, size: 512, align: 128, elements: !1048)
!1048 = !{!1049, !1050, !1130, !1137}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !282, line: 69, baseType: !241, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !282, line: 77, baseType: !1051, size: 320, offset: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !282, line: 77, size: 320, elements: !1052)
!1052 = !{!1053, !1062, !1067, !1095, !1103, !1109, !1122, !1129}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 78, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 78, size: 320, elements: !1055)
!1055 = !{!1056, !1057, !1060, !1061}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1054, file: !282, line: 84, baseType: !76, size: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1054, file: !282, line: 86, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !282, line: 26, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1054, file: !282, line: 87, baseType: !241, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1054, file: !282, line: 94, baseType: !241, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 96, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 96, size: 64, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1063, file: !282, line: 101, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !77, line: 143, baseType: !310)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 103, baseType: !1068, size: 320)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 103, size: 320, elements: !1069)
!1069 = !{!1070, !1080, !1083, !1084}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !282, line: 104, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !282, line: 104, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1071, file: !282, line: 105, baseType: !76, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !282, line: 106, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !282, line: 106, size: 128, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1075, file: !282, line: 107, baseType: !1046, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1075, file: !282, line: 109, baseType: !91, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1075, file: !282, line: 110, baseType: !91, size: 32, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1068, file: !282, line: 117, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !282, line: 117, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1068, file: !282, line: 119, baseType: !71, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !282, line: 120, baseType: !1085, size: 64, offset: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !282, line: 120, size: 64, elements: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1085, file: !282, line: 121, baseType: !71, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1085, file: !282, line: 122, baseType: !241, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !282, line: 123, baseType: !1090, size: 32)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !282, line: 123, size: 32, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1090, file: !282, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1090, file: !282, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1090, file: !282, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 130, baseType: !1096, size: 192)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 130, size: 192, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1096, file: !282, line: 131, baseType: !241, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1096, file: !282, line: 134, baseType: !92, size: 8, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1096, file: !282, line: 135, baseType: !92, size: 8, offset: 72)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1096, file: !282, line: 136, baseType: !332, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1096, file: !282, line: 137, baseType: !7, size: 32, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 139, baseType: !1104, size: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 139, size: 256, elements: !1105)
!1105 = !{!1106, !1107, !1108}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1104, file: !282, line: 140, baseType: !241, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1104, file: !282, line: 141, baseType: !332, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1104, file: !282, line: 143, baseType: !76, size: 128, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 145, baseType: !1110, size: 256)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 145, size: 256, elements: !1111)
!1111 = !{!1112, !1113, !1115, !1116, !1121}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1110, file: !282, line: 146, baseType: !241, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1110, file: !282, line: 147, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !271, line: 509, baseType: !1046)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1110, file: !282, line: 148, baseType: !241, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !282, line: 149, baseType: !1117, size: 64, offset: 192)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !282, line: 149, size: 64, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1117, file: !282, line: 150, baseType: !298, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1117, file: !282, line: 151, baseType: !332, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1110, file: !282, line: 156, baseType: !151, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !282, line: 159, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !282, line: 159, size: 128, elements: !1124)
!1124 = !{!1125, !1128}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1123, file: !282, line: 161, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !282, line: 161, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1123, file: !282, line: 162, baseType: !71, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1051, file: !282, line: 176, baseType: !747, size: 128, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !282, line: 179, baseType: !1131, size: 32, offset: 384)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !282, line: 179, size: 32, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1131, file: !282, line: 184, baseType: !332, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1131, file: !282, line: 192, baseType: !7, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1131, file: !282, line: 194, baseType: !7, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1131, file: !282, line: 195, baseType: !91, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1047, file: !282, line: 199, baseType: !332, size: 32, offset: 416)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1043, file: !387, line: 67, baseType: !465, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1043, file: !387, line: 68, baseType: !465, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !455, file: !456, line: 1206, baseType: !91, size: 32, offset: 12736)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !455, file: !456, line: 1207, baseType: !91, size: 32, offset: 12768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !455, file: !456, line: 1209, baseType: !241, size: 64, offset: 12800)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !455, file: !456, line: 1219, baseType: !310, size: 64, offset: 12864)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !455, file: !456, line: 1220, baseType: !310, size: 64, offset: 12928)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !455, file: !456, line: 1317, baseType: !91, size: 32, offset: 12992)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !455, file: !456, line: 1319, baseType: !454, size: 64, offset: 13056)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !455, file: !456, line: 1322, baseType: !1148, size: 64, offset: 13120)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1150, line: 56, size: 512, elements: !1151)
!1150 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154, !1155, !1156, !1158, !1159, !1161}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1149, file: !1150, line: 57, baseType: !1148, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1149, file: !1150, line: 58, baseType: !71, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !1150, line: 59, baseType: !241, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !1150, line: 60, baseType: !241, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1149, file: !1150, line: 61, baseType: !1157, size: 64, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1149, file: !1150, line: 62, baseType: !7, size: 32, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1149, file: !1150, line: 63, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !77, line: 153, baseType: !310)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1149, file: !1150, line: 64, baseType: !131, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !455, file: !456, line: 1326, baseType: !470, size: 32, offset: 13184)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !455, file: !456, line: 1342, baseType: !71, size: 64, offset: 13248)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !455, file: !456, line: 1343, baseType: !312, size: 64, offset: 13312)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !455, file: !456, line: 1344, baseType: !310, size: 64, offset: 13376)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !455, file: !456, line: 1345, baseType: !312, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !455, file: !456, line: 1346, baseType: !312, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !455, file: !456, line: 1347, baseType: !312, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !455, file: !456, line: 1348, baseType: !747, size: 128, align: 64, offset: 13504)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !455, file: !456, line: 1358, baseType: !1171, size: 34816, offset: 13824)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1172, line: 485, size: 34816, elements: !1173)
!1172 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !{!1174, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1204, !1205, !1206, !1207, !1208, !1211, !1212, !1213}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1171, file: !1172, line: 487, baseType: !1175, size: 192)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, size: 192, elements: !192)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1177, line: 16, size: 64, elements: !1178)
!1177 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1176, file: !1177, line: 17, baseType: !438, size: 16)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1176, file: !1177, line: 18, baseType: !438, size: 16, offset: 16)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1176, file: !1177, line: 19, baseType: !438, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1176, file: !1177, line: 19, baseType: !438, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1176, file: !1177, line: 19, baseType: !438, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1176, file: !1177, line: 19, baseType: !438, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1176, file: !1177, line: 19, baseType: !438, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1176, file: !1177, line: 20, baseType: !438, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1176, file: !1177, line: 20, baseType: !438, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1176, file: !1177, line: 20, baseType: !438, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1176, file: !1177, line: 20, baseType: !438, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1176, file: !1177, line: 20, baseType: !438, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1176, file: !1177, line: 20, baseType: !438, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1171, file: !1172, line: 491, baseType: !241, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1171, file: !1172, line: 495, baseType: !233, size: 16, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1171, file: !1172, line: 496, baseType: !233, size: 16, offset: 272)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1171, file: !1172, line: 497, baseType: !233, size: 16, offset: 288)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1171, file: !1172, line: 498, baseType: !233, size: 16, offset: 304)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1171, file: !1172, line: 502, baseType: !241, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1171, file: !1172, line: 503, baseType: !241, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1171, file: !1172, line: 514, baseType: !1200, size: 256, offset: 448)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 256, elements: !391)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1172, line: 483, flags: DIFlagFwdDecl)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1171, file: !1172, line: 516, baseType: !241, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1171, file: !1172, line: 518, baseType: !241, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1171, file: !1172, line: 520, baseType: !241, size: 64, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1171, file: !1172, line: 521, baseType: !241, size: 64, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1171, file: !1172, line: 522, baseType: !241, size: 64, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1171, file: !1172, line: 528, baseType: !1209, size: 64, offset: 1024)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1172, line: 10, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1171, file: !1172, line: 535, baseType: !241, size: 64, offset: 1088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1171, file: !1172, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1171, file: !1172, line: 540, baseType: !1214, size: 33280, offset: 1536)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1215, line: 317, size: 33280, elements: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1214, file: !1215, line: 330, baseType: !7, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1214, file: !1215, line: 337, baseType: !241, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1214, file: !1215, line: 348, baseType: !1220, size: 32768, offset: 512)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1215, line: 304, size: 32768, elements: !1221)
!1221 = !{!1222, !1237, !1276, !1326, !1343}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1220, file: !1215, line: 305, baseType: !1223, size: 896)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1215, line: 12, size: 896, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1236}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1223, file: !1215, line: 13, baseType: !464, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1223, file: !1215, line: 14, baseType: !464, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1223, file: !1215, line: 15, baseType: !464, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1223, file: !1215, line: 16, baseType: !464, size: 32, offset: 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1223, file: !1215, line: 17, baseType: !464, size: 32, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1223, file: !1215, line: 18, baseType: !464, size: 32, offset: 160)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1223, file: !1215, line: 19, baseType: !464, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1223, file: !1215, line: 22, baseType: !1233, size: 640, offset: 224)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !1234)
!1234 = !{!1235}
!1235 = !DISubrange(count: 20)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1223, file: !1215, line: 25, baseType: !464, size: 32, offset: 864)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1220, file: !1215, line: 306, baseType: !1238, size: 4096, align: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1215, line: 34, size: 4096, align: 128, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1259, !1260, !1261, !1265, !1267, !1271}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1238, file: !1215, line: 35, baseType: !438, size: 16)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1238, file: !1215, line: 36, baseType: !438, size: 16, offset: 16)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1238, file: !1215, line: 37, baseType: !438, size: 16, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1238, file: !1215, line: 38, baseType: !438, size: 16, offset: 48)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1215, line: 39, baseType: !1245, size: 128, offset: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1215, line: 39, size: 128, elements: !1246)
!1246 = !{!1247, !1252}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1215, line: 40, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1245, file: !1215, line: 40, size: 128, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1248, file: !1215, line: 41, baseType: !310, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1248, file: !1215, line: 42, baseType: !310, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1215, line: 44, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1245, file: !1215, line: 44, size: 128, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1253, file: !1215, line: 45, baseType: !464, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1253, file: !1215, line: 46, baseType: !464, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1253, file: !1215, line: 47, baseType: !464, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1253, file: !1215, line: 48, baseType: !464, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1238, file: !1215, line: 51, baseType: !464, size: 32, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1238, file: !1215, line: 52, baseType: !464, size: 32, offset: 224)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1238, file: !1215, line: 55, baseType: !1262, size: 1024, offset: 256)
!1262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !1263)
!1263 = !{!1264}
!1264 = !DISubrange(count: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1238, file: !1215, line: 58, baseType: !1266, size: 2048, offset: 1280)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !196)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1238, file: !1215, line: 60, baseType: !1268, size: 384, offset: 3328)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 12)
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1215, line: 62, baseType: !1272, size: 384, offset: 3712)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1238, file: !1215, line: 62, size: 384, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1272, file: !1215, line: 63, baseType: !1268, size: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1272, file: !1215, line: 64, baseType: !1268, size: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1220, file: !1215, line: 307, baseType: !1277, size: 1088)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1215, line: 79, size: 1088, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1325}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1277, file: !1215, line: 80, baseType: !464, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1277, file: !1215, line: 81, baseType: !464, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1277, file: !1215, line: 82, baseType: !464, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1277, file: !1215, line: 83, baseType: !464, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1277, file: !1215, line: 84, baseType: !464, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1277, file: !1215, line: 85, baseType: !464, size: 32, offset: 160)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1277, file: !1215, line: 86, baseType: !464, size: 32, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1277, file: !1215, line: 88, baseType: !1233, size: 640, offset: 224)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1277, file: !1215, line: 89, baseType: !601, size: 8, offset: 864)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1277, file: !1215, line: 90, baseType: !601, size: 8, offset: 872)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1277, file: !1215, line: 91, baseType: !601, size: 8, offset: 880)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1277, file: !1215, line: 92, baseType: !601, size: 8, offset: 888)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1277, file: !1215, line: 93, baseType: !601, size: 8, offset: 896)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1277, file: !1215, line: 94, baseType: !601, size: 8, offset: 904)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1277, file: !1215, line: 95, baseType: !1294, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1296, line: 11, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1295, file: !1296, line: 12, baseType: !226, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1295, file: !1296, line: 13, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1302, line: 56, size: 1344, elements: !1303)
!1302 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1301, file: !1302, line: 61, baseType: !241, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1301, file: !1302, line: 62, baseType: !241, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1301, file: !1302, line: 63, baseType: !241, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1301, file: !1302, line: 64, baseType: !241, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1301, file: !1302, line: 65, baseType: !241, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1301, file: !1302, line: 66, baseType: !241, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1301, file: !1302, line: 68, baseType: !241, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1301, file: !1302, line: 69, baseType: !241, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1301, file: !1302, line: 70, baseType: !241, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1301, file: !1302, line: 71, baseType: !241, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1301, file: !1302, line: 72, baseType: !241, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1301, file: !1302, line: 73, baseType: !241, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1301, file: !1302, line: 74, baseType: !241, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1301, file: !1302, line: 75, baseType: !241, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1301, file: !1302, line: 76, baseType: !241, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1301, file: !1302, line: 81, baseType: !241, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1301, file: !1302, line: 83, baseType: !241, size: 64, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1301, file: !1302, line: 84, baseType: !241, size: 64, offset: 1088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1301, file: !1302, line: 85, baseType: !241, size: 64, offset: 1152)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1301, file: !1302, line: 86, baseType: !241, size: 64, offset: 1216)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1301, file: !1302, line: 87, baseType: !241, size: 64, offset: 1280)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1277, file: !1215, line: 96, baseType: !464, size: 32, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1220, file: !1215, line: 308, baseType: !1327, size: 4608, align: 512)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1215, line: 289, size: 4608, align: 512, elements: !1328)
!1328 = !{!1329, !1330, !1339}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1327, file: !1215, line: 290, baseType: !1238, size: 4096, align: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1327, file: !1215, line: 291, baseType: !1331, size: 512, offset: 4096)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1215, line: 268, size: 512, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1331, file: !1215, line: 269, baseType: !310, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1331, file: !1215, line: 270, baseType: !310, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1331, file: !1215, line: 271, baseType: !1336, size: 384, offset: 128)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 384, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 6)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1327, file: !1215, line: 292, baseType: !1340, offset: 4608)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 0)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1220, file: !1215, line: 309, baseType: !1344, size: 32768)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 32768, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: 4096)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !282, line: 378, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !447, file: !282, line: 384, baseType: !769, size: 192, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !302, file: !282, line: 500, baseType: !151, offset: 6656)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !302, file: !282, line: 501, baseType: !1352, size: 64, offset: 6656)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !282, line: 387, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !302, file: !282, line: 516, baseType: !1355, size: 64, offset: 6720)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !282, line: 516, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !302, file: !282, line: 519, baseType: !269, size: 64, offset: 6784)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !302, file: !282, line: 521, baseType: !1359, size: 64, offset: 6848)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !282, line: 521, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !302, file: !282, line: 545, baseType: !332, size: 32, offset: 6912)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !302, file: !282, line: 548, baseType: !123, size: 8, offset: 6944)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !302, file: !282, line: 550, baseType: !1364, offset: 6952)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1365, line: 142, elements: !165)
!1365 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !302, file: !282, line: 554, baseType: !1367, size: 256, offset: 6976)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1368, line: 102, size: 256, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1371, !1372}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1367, file: !1368, line: 103, baseType: !340, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1367, file: !1368, line: 104, baseType: !76, size: 128, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1367, file: !1368, line: 105, baseType: !1373, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1368, line: 21, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !302, file: !282, line: 557, baseType: !464, size: 32, offset: 7232)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !299, file: !282, line: 565, baseType: !1380, offset: 7296)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: -1)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !281, file: !282, line: 333, baseType: !1384, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !271, line: 284, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !271, line: 284, size: 64, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1385, file: !271, line: 284, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !330, line: 19, baseType: !241)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !281, file: !282, line: 334, baseType: !241, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !281, file: !282, line: 343, baseType: !1391, size: 256, offset: 704)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !282, line: 340, size: 256, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1391, file: !282, line: 341, baseType: !289, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1391, file: !282, line: 342, baseType: !241, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !281, file: !282, line: 351, baseType: !76, size: 128, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !281, file: !282, line: 353, baseType: !1397, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !282, line: 353, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !281, file: !282, line: 356, baseType: !1400, size: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !282, line: 356, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !281, file: !282, line: 359, baseType: !241, size: 64, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !281, file: !282, line: 361, baseType: !269, size: 64, offset: 1280)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !281, file: !282, line: 362, baseType: !71, size: 64, offset: 1344)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !281, file: !282, line: 365, baseType: !340, size: 64, offset: 1408)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !281, file: !282, line: 373, baseType: !1408, offset: 1472)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !282, line: 296, elements: !165)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !248, file: !216, line: 90, baseType: !243, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !248, file: !216, line: 91, baseType: !1411, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !206, file: !139, line: 143, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1416, !144}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1419)
!1419 = !{!1420, !1421, !1425, !1429, !1435, !1439}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1418, file: !18, line: 40, baseType: !17, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1418, file: !18, line: 41, baseType: !1422, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!123}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1418, file: !18, line: 42, baseType: !1426, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!71}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1418, file: !18, line: 43, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!131, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1418, file: !18, line: 44, baseType: !1436, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!131}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1418, file: !18, line: 45, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !71}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !206, file: !139, line: 144, baseType: !1444, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!131, !144}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !206, file: !139, line: 145, baseType: !1448, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !144, !1451, !1458}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1453, line: 23, baseType: !1454)
!1453 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1453, line: 21, size: 32, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1454, file: !1453, line: 22, baseType: !1457, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !77, line: 32, baseType: !929)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1453, line: 28, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1453, line: 26, size: 32, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1460, file: !1453, line: 27, baseType: !1463, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !77, line: 33, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !224, line: 50, baseType: !7)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !138, file: !139, line: 70, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1468, line: 123, size: 1024, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1612, !1613, !1614, !1615, !1616}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !1468, line: 124, baseType: !332, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1467, file: !1468, line: 125, baseType: !332, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1467, file: !1468, line: 135, baseType: !1466, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1467, file: !1468, line: 136, baseType: !87, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1467, file: !1468, line: 138, baseType: !289, size: 192, align: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1467, file: !1468, line: 140, baseType: !131, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1467, file: !1468, line: 141, baseType: !7, size: 32, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !1468, line: 142, baseType: !1478, size: 256, offset: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !1468, line: 142, size: 256, elements: !1479)
!1479 = !{!1480, !1535, !1539}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1478, file: !1468, line: 143, baseType: !1481, size: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1468, line: 91, size: 192, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1481, file: !1468, line: 92, baseType: !241, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1481, file: !1468, line: 94, baseType: !306, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1481, file: !1468, line: 100, baseType: !1486, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1468, line: 180, size: 704, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1505, !1506, !1507, !1533, !1534}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1487, file: !1468, line: 182, baseType: !1466, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1468, line: 183, baseType: !7, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1487, file: !1468, line: 186, baseType: !1492, size: 192, offset: 128)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1493, line: 19, size: 192, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1494 = !{!1495, !1503, !1504}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1492, file: !1493, line: 20, baseType: !1496, size: 128)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1497, line: 292, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1498 = !{!1499, !1500, !1502}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1496, file: !1497, line: 293, baseType: !151)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1496, file: !1497, line: 295, baseType: !1501, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !77, line: 148, baseType: !7)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1496, file: !1497, line: 296, baseType: !71, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1492, file: !1493, line: 21, baseType: !7, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1492, file: !1493, line: 22, baseType: !7, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1487, file: !1468, line: 187, baseType: !464, size: 32, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1487, file: !1468, line: 188, baseType: !464, size: 32, offset: 352)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1487, file: !1468, line: 189, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1468, line: 168, size: 320, elements: !1510)
!1510 = !{!1511, !1517, !1521, !1525, !1529}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1509, file: !1468, line: 169, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!91, !1515, !1486}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !271, line: 539, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1509, file: !1468, line: 171, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!91, !1466, !87, !232}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1509, file: !1468, line: 173, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!91, !1466}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1509, file: !1468, line: 174, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!91, !1466, !1466, !87}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1509, file: !1468, line: 176, baseType: !1530, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!91, !1515, !1466, !1486}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1487, file: !1468, line: 192, baseType: !76, size: 128, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1487, file: !1468, line: 194, baseType: !740, size: 128, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1478, file: !1468, line: 144, baseType: !1536, size: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1468, line: 103, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1536, file: !1468, line: 104, baseType: !1466, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1478, file: !1468, line: 145, baseType: !1540, size: 256)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1468, line: 107, size: 256, elements: !1541)
!1541 = !{!1542, !1607, !1610, !1611}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1540, file: !1468, line: 108, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1468, line: 217, size: 768, elements: !1546)
!1546 = !{!1547, !1567, !1571, !1575, !1580, !1584, !1588, !1592, !1593, !1594, !1595, !1603}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1545, file: !1468, line: 222, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!91, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1468, line: 197, size: 1088, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1552, file: !1468, line: 199, baseType: !1466, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1552, file: !1468, line: 200, baseType: !269, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1552, file: !1468, line: 201, baseType: !1515, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1552, file: !1468, line: 202, baseType: !71, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1552, file: !1468, line: 205, baseType: !409, size: 192, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1552, file: !1468, line: 206, baseType: !409, size: 192, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1552, file: !1468, line: 207, baseType: !91, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1552, file: !1468, line: 208, baseType: !76, size: 128, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1552, file: !1468, line: 209, baseType: !90, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1552, file: !1468, line: 211, baseType: !238, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1552, file: !1468, line: 212, baseType: !123, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1552, file: !1468, line: 213, baseType: !123, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1552, file: !1468, line: 214, baseType: !1400, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1545, file: !1468, line: 223, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1551}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1545, file: !1468, line: 236, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!91, !1515, !71}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1545, file: !1468, line: 238, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!71, !1515, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1545, file: !1468, line: 239, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!71, !1515, !71, !1579}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1545, file: !1468, line: 240, baseType: !1585, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1515, !71}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1545, file: !1468, line: 242, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!222, !1551, !90, !238, !272}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1545, file: !1468, line: 252, baseType: !238, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1545, file: !1468, line: 259, baseType: !123, size: 8, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1545, file: !1468, line: 260, baseType: !1589, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1545, file: !1468, line: 263, baseType: !1596, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1599, !1551, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1600, line: 52, baseType: !7)
!1600 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1468, line: 27, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1545, file: !1468, line: 266, baseType: !1604, size: 64, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!91, !1551, !280}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1540, file: !1468, line: 109, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1468, line: 31, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1540, file: !1468, line: 110, baseType: !272, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1540, file: !1468, line: 111, baseType: !1466, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1467, file: !1468, line: 148, baseType: !71, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1467, file: !1468, line: 154, baseType: !310, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1467, file: !1468, line: 156, baseType: !233, size: 16, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1467, file: !1468, line: 157, baseType: !232, size: 16, offset: 912)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1467, file: !1468, line: 158, baseType: !1617, size: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1468, line: 32, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !138, file: !139, line: 71, baseType: !1620, size: 32, offset: 448)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1621, line: 19, size: 32, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1620, file: !1621, line: 20, baseType: !470, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !138, file: !139, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !138, file: !139, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !138, file: !139, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !138, file: !139, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !138, file: !139, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !30, line: 463, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !135, file: !30, line: 465, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !135, file: !30, line: 467, baseType: !87, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !30, line: 468, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1651, !1655}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !30, line: 88, baseType: !87, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1638, file: !30, line: 89, baseType: !245, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !30, line: 90, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!91, !1630, !187}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1638, file: !30, line: 91, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!90, !1630, !1650, !1451, !1458}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1638, file: !30, line: 93, baseType: !1652, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1630}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !30, line: 95, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1659)
!1659 = !{!1660, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1658, file: !37, line: 279, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!91, !1630}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1658, file: !37, line: 280, baseType: !1652, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1658, file: !37, line: 281, baseType: !1661, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1658, file: !37, line: 282, baseType: !1661, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1658, file: !37, line: 283, baseType: !1661, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1658, file: !37, line: 284, baseType: !1661, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1658, file: !37, line: 285, baseType: !1661, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1658, file: !37, line: 286, baseType: !1661, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1658, file: !37, line: 287, baseType: !1661, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1658, file: !37, line: 288, baseType: !1661, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1658, file: !37, line: 289, baseType: !1661, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1658, file: !37, line: 290, baseType: !1661, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1658, file: !37, line: 291, baseType: !1661, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1658, file: !37, line: 292, baseType: !1661, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1658, file: !37, line: 293, baseType: !1661, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1658, file: !37, line: 294, baseType: !1661, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1658, file: !37, line: 295, baseType: !1661, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1658, file: !37, line: 296, baseType: !1661, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1658, file: !37, line: 297, baseType: !1661, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1658, file: !37, line: 298, baseType: !1661, size: 64, offset: 1216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1658, file: !37, line: 299, baseType: !1661, size: 64, offset: 1280)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1658, file: !37, line: 300, baseType: !1661, size: 64, offset: 1344)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1658, file: !37, line: 301, baseType: !1661, size: 64, offset: 1408)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !135, file: !30, line: 470, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1689, line: 82, size: 1408, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1776, !1779, !1782}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 83, baseType: !87, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1688, file: !1689, line: 84, baseType: !87, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1688, file: !1689, line: 85, baseType: !1630, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1688, file: !1689, line: 86, baseType: !245, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1688, file: !1689, line: 87, baseType: !245, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1688, file: !1689, line: 88, baseType: !245, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1688, file: !1689, line: 90, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!91, !1630, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1710, !1711, !1712, !1713, !1727, !1740, !1741, !1742, !1743, !1744, !1752, !1753, !1754, !1755, !1756, !1757}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !24, line: 96, baseType: !87, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1702, file: !24, line: 97, baseType: !1687, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1702, file: !24, line: 99, baseType: !1707, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1709, line: 76, flags: DIFlagFwdDecl)
!1709 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1702, file: !24, line: 100, baseType: !87, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1702, file: !24, line: 102, baseType: !123, size: 8, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1702, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1702, file: !24, line: 105, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1717, line: 262, size: 1600, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1721, !1722, !1726}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !1717, line: 263, baseType: !1720, size: 256)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 256, elements: !1263)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1716, file: !1717, line: 264, baseType: !1720, size: 256, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1716, file: !1717, line: 265, baseType: !1723, size: 1024, offset: 512)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 1024, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1717, line: 266, baseType: !131, size: 64, offset: 1536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1702, file: !24, line: 106, baseType: !1728, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1717, line: 210, size: 256, elements: !1731)
!1731 = !{!1732, !1736, !1738, !1739}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1730, file: !1717, line: 211, baseType: !1733, size: 72)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 72, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 9)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1730, file: !1717, line: 212, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1717, line: 14, baseType: !241)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1730, file: !1717, line: 213, baseType: !465, size: 32, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1730, file: !1717, line: 214, baseType: !465, size: 32, offset: 224)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1702, file: !24, line: 108, baseType: !1661, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1702, file: !24, line: 109, baseType: !1652, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1702, file: !24, line: 110, baseType: !1661, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1702, file: !24, line: 111, baseType: !1652, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1702, file: !24, line: 112, baseType: !1745, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!91, !1630, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1749, file: !37, line: 51, baseType: !91, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1702, file: !24, line: 113, baseType: !1661, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1702, file: !24, line: 114, baseType: !245, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1702, file: !24, line: 115, baseType: !245, size: 64, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1702, file: !24, line: 117, baseType: !1656, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1702, file: !24, line: 118, baseType: !1652, size: 64, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1702, file: !24, line: 120, baseType: !1758, size: 64, offset: 1088)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1688, file: !1689, line: 91, baseType: !1643, size: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1688, file: !1689, line: 92, baseType: !1661, size: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1688, file: !1689, line: 93, baseType: !1652, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1688, file: !1689, line: 94, baseType: !1661, size: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1688, file: !1689, line: 95, baseType: !1652, size: 64, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1688, file: !1689, line: 97, baseType: !1661, size: 64, offset: 768)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1688, file: !1689, line: 98, baseType: !1661, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1688, file: !1689, line: 100, baseType: !1745, size: 64, offset: 896)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1688, file: !1689, line: 101, baseType: !1661, size: 64, offset: 960)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1688, file: !1689, line: 103, baseType: !1661, size: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1688, file: !1689, line: 105, baseType: !1661, size: 64, offset: 1088)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1688, file: !1689, line: 107, baseType: !1656, size: 64, offset: 1152)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1688, file: !1689, line: 109, baseType: !1773, size: 64, offset: 1216)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1775)
!1775 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1689, line: 109, flags: DIFlagFwdDecl)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1688, file: !1689, line: 111, baseType: !1777, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1689, line: 111, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1688, file: !1689, line: 112, baseType: !1780, offset: 1344)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1781, line: 187, elements: !165)
!1781 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1688, file: !1689, line: 114, baseType: !123, size: 8, offset: 1344)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !135, file: !30, line: 471, baseType: !1701, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !135, file: !30, line: 473, baseType: !71, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !135, file: !30, line: 475, baseType: !71, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !135, file: !30, line: 480, baseType: !409, size: 192, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !135, file: !30, line: 484, baseType: !1788, size: 576, offset: 1216)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1788, file: !30, line: 362, baseType: !76, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1788, file: !30, line: 363, baseType: !76, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1788, file: !30, line: 364, baseType: !76, size: 128, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1788, file: !30, line: 365, baseType: !76, size: 128, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1788, file: !30, line: 366, baseType: !123, size: 8, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1788, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !135, file: !30, line: 485, baseType: !1797, size: 2304, offset: 1792)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1894, !1898}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1797, file: !37, line: 566, baseType: !1748, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1797, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1797, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1797, file: !37, line: 569, baseType: !123, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1797, file: !37, line: 570, baseType: !123, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1797, file: !37, line: 571, baseType: !123, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1797, file: !37, line: 572, baseType: !123, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1797, file: !37, line: 573, baseType: !123, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1797, file: !37, line: 574, baseType: !123, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1797, file: !37, line: 575, baseType: !123, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1797, file: !37, line: 576, baseType: !123, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1797, file: !37, line: 577, baseType: !464, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !37, line: 578, baseType: !151, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !37, line: 580, baseType: !76, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1797, file: !37, line: 581, baseType: !769, size: 192, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1797, file: !37, line: 582, baseType: !1815, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1817, line: 43, size: 1472, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1826, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !1817, line: 44, baseType: !87, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1816, file: !1817, line: 45, baseType: !91, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1816, file: !1817, line: 46, baseType: !76, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !1817, line: 47, baseType: !151, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1816, file: !1817, line: 48, baseType: !1824, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1816, file: !1817, line: 49, baseType: !1827, size: 320, offset: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1828, line: 11, size: 320, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1837}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1827, file: !1828, line: 16, baseType: !733, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1827, file: !1828, line: 17, baseType: !241, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1827, file: !1828, line: 18, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 19, baseType: !464, size: 32, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1816, file: !1817, line: 50, baseType: !241, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1816, file: !1817, line: 51, baseType: !540, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1816, file: !1817, line: 52, baseType: !540, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1816, file: !1817, line: 53, baseType: !540, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1816, file: !1817, line: 54, baseType: !540, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1816, file: !1817, line: 55, baseType: !540, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1816, file: !1817, line: 56, baseType: !241, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1816, file: !1817, line: 57, baseType: !241, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1816, file: !1817, line: 58, baseType: !241, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1816, file: !1817, line: 59, baseType: !241, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1816, file: !1817, line: 60, baseType: !241, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1816, file: !1817, line: 61, baseType: !1630, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1816, file: !1817, line: 62, baseType: !123, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1816, file: !1817, line: 63, baseType: !123, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1797, file: !37, line: 583, baseType: !123, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1797, file: !37, line: 584, baseType: !123, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1797, file: !37, line: 585, baseType: !123, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1797, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1797, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1797, file: !37, line: 592, baseType: !532, size: 512, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1797, file: !37, line: 593, baseType: !310, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1797, file: !37, line: 594, baseType: !1367, size: 256, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1797, file: !37, line: 595, baseType: !740, size: 128, offset: 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1797, file: !37, line: 596, baseType: !1824, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1797, file: !37, line: 597, baseType: !332, size: 32, offset: 1600)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1797, file: !37, line: 598, baseType: !332, size: 32, offset: 1632)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1797, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1797, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1797, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1797, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1797, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1797, file: !37, line: 604, baseType: !123, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1797, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1797, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1797, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1797, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1797, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1797, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1797, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1797, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1797, file: !37, line: 613, baseType: !91, size: 32, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1797, file: !37, line: 614, baseType: !91, size: 32, offset: 1824)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1797, file: !37, line: 615, baseType: !310, size: 64, offset: 1856)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1797, file: !37, line: 616, baseType: !310, size: 64, offset: 1920)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1797, file: !37, line: 617, baseType: !310, size: 64, offset: 1984)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1797, file: !37, line: 618, baseType: !310, size: 64, offset: 2048)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1797, file: !37, line: 620, baseType: !1885, size: 64, offset: 2112)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !37, line: 537, baseType: !151)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1886, file: !37, line: 538, baseType: !7, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1886, file: !37, line: 540, baseType: !76, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1886, file: !37, line: 543, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1797, file: !37, line: 621, baseType: !1895, size: 64, offset: 2176)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1630, !693}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1797, file: !37, line: 622, baseType: !1899, size: 64, offset: 2240)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !135, file: !30, line: 486, baseType: !1902, size: 64, offset: 4096)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1911, !1912, !1913}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1903, file: !37, line: 643, baseType: !1658, size: 1472)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !37, line: 644, baseType: !1661, size: 64, offset: 1472)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1903, file: !37, line: 645, baseType: !1908, size: 64, offset: 1536)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1630, !123}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1903, file: !37, line: 646, baseType: !1661, size: 64, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1903, file: !37, line: 647, baseType: !1652, size: 64, offset: 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1903, file: !37, line: 648, baseType: !1652, size: 64, offset: 1728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !135, file: !30, line: 493, baseType: !1915, size: 64, offset: 4160)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1917)
!1917 = !{!1918, !1919, !1920, !2005, !2006, !2007, !2008, !2009, !2010, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1916, file: !51, line: 163, baseType: !76, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1916, file: !51, line: 164, baseType: !87, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1916, file: !51, line: 165, baseType: !1921, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1924)
!1924 = !{!1925, !1954, !1965, !1970, !1974, !1982, !1986, !1990, !1997, !2001}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1923, file: !51, line: 106, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!91, !1915, !1929, !50}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1931, line: 51, size: 1344, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1936, !1937, !1938, !1947, !1948, !1949, !1950, !1951, !1952, !1953}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1930, file: !1931, line: 52, baseType: !87, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1930, file: !1931, line: 53, baseType: !1935, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1931, line: 28, baseType: !464)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1930, file: !1931, line: 54, baseType: !87, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1930, file: !1931, line: 55, baseType: !101, size: 192, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1930, file: !1931, line: 57, baseType: !1939, size: 64, offset: 384)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1931, line: 31, size: 704, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1940, file: !1931, line: 32, baseType: !90, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1940, file: !1931, line: 33, baseType: !91, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1940, file: !1931, line: 34, baseType: !71, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1940, file: !1931, line: 35, baseType: !1939, size: 64, offset: 192)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1940, file: !1931, line: 43, baseType: !260, size: 448, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1930, file: !1931, line: 58, baseType: !1939, size: 64, offset: 448)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1930, file: !1931, line: 59, baseType: !1929, size: 64, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1930, file: !1931, line: 60, baseType: !1929, size: 64, offset: 576)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1930, file: !1931, line: 61, baseType: !1929, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1930, file: !1931, line: 63, baseType: !138, size: 512, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1930, file: !1931, line: 65, baseType: !241, size: 64, offset: 1216)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1930, file: !1931, line: 66, baseType: !71, size: 64, offset: 1280)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1923, file: !51, line: 108, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!91, !1915, !1958, !50}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1960)
!1960 = !{!1961, !1962, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1959, file: !51, line: 64, baseType: !105, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1959, file: !51, line: 65, baseType: !91, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1959, file: !51, line: 66, baseType: !1964, size: 512, offset: 96)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 512, elements: !825)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1923, file: !51, line: 110, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!91, !1915, !7, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !77, line: 164, baseType: !241)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1923, file: !51, line: 111, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1915, !7}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1923, file: !51, line: 112, baseType: !1975, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!91, !1915, !1929, !1978, !7, !1980, !1981}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1923, file: !51, line: 117, baseType: !1983, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!91, !1915, !7, !7, !71}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1923, file: !51, line: 119, baseType: !1987, size: 64, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1915, !7, !7}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1923, file: !51, line: 121, baseType: !1991, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!91, !1915, !1994, !123}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !1996, line: 11, flags: DIFlagFwdDecl)
!1996 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1923, file: !51, line: 122, baseType: !1998, size: 64, offset: 512)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1915, !1994}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1923, file: !51, line: 123, baseType: !2002, size: 64, offset: 576)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!91, !1915, !1958, !1980, !1981}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1916, file: !51, line: 166, baseType: !71, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1916, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1916, file: !51, line: 171, baseType: !105, size: 64, offset: 384)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1916, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1916, file: !51, line: 173, baseType: !2011, size: 64, offset: 512)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1916, file: !51, line: 175, baseType: !1915, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1916, file: !51, line: 182, baseType: !1969, size: 64, offset: 640)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1916, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1916, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1916, file: !51, line: 185, baseType: !1496, size: 128, offset: 768)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1916, file: !51, line: 186, baseType: !409, size: 192, offset: 896)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1916, file: !51, line: 187, baseType: !2020, offset: 1088)
!2020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1381)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !135, file: !30, line: 499, baseType: !76, size: 128, offset: 4224)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !135, file: !30, line: 502, baseType: !2023, size: 64, offset: 4352)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !135, file: !30, line: 504, baseType: !2027, size: 64, offset: 4416)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !135, file: !30, line: 505, baseType: !310, size: 64, offset: 4480)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !135, file: !30, line: 510, baseType: !310, size: 64, offset: 4544)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !135, file: !30, line: 511, baseType: !2031, size: 64, offset: 4608)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !135, file: !30, line: 513, baseType: !2035, size: 64, offset: 4672)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2036, file: !30, line: 293, baseType: !7, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2036, file: !30, line: 294, baseType: !241, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !135, file: !30, line: 515, baseType: !76, size: 128, offset: 4736)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !135, file: !30, line: 526, baseType: !2042, offset: 4864)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2043, line: 5, elements: !165)
!2043 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !135, file: !30, line: 528, baseType: !1929, size: 64, offset: 4864)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !135, file: !30, line: 529, baseType: !105, size: 64, offset: 4928)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !135, file: !30, line: 534, baseType: !2047, size: 32, offset: 4992)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !77, line: 16, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !77, line: 13, baseType: !464)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !135, file: !30, line: 535, baseType: !464, size: 32, offset: 5024)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !135, file: !30, line: 537, baseType: !151, offset: 5056)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !135, file: !30, line: 538, baseType: !76, size: 128, offset: 5056)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !135, file: !30, line: 540, baseType: !2053, size: 64, offset: 5184)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2055, line: 54, size: 960, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057, !2058, !2059, !2060, !2061, !2062, !2063, !2067, !2071, !2072, !2073, !2074, !2078, !2082, !2083}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2054, file: !2055, line: 55, baseType: !87, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2054, file: !2055, line: 56, baseType: !1707, size: 64, offset: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2054, file: !2055, line: 58, baseType: !245, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2054, file: !2055, line: 59, baseType: !245, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2054, file: !2055, line: 60, baseType: !144, size: 64, offset: 256)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2054, file: !2055, line: 62, baseType: !1643, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2054, file: !2055, line: 63, baseType: !2064, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!90, !1630, !1650}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2054, file: !2055, line: 65, baseType: !2068, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !2053}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2054, file: !2055, line: 66, baseType: !1652, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2054, file: !2055, line: 68, baseType: !1661, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2054, file: !2055, line: 70, baseType: !1416, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2054, file: !2055, line: 71, baseType: !2075, size: 64, offset: 704)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!131, !1630}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2054, file: !2055, line: 73, baseType: !2079, size: 64, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !1630, !1451, !1458}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2054, file: !2055, line: 75, baseType: !1656, size: 64, offset: 832)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2054, file: !2055, line: 77, baseType: !1777, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !135, file: !30, line: 541, baseType: !245, size: 64, offset: 5248)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !135, file: !30, line: 543, baseType: !1652, size: 64, offset: 5312)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !135, file: !30, line: 544, baseType: !2087, size: 64, offset: 5376)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !135, file: !30, line: 545, baseType: !2090, size: 64, offset: 5440)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !135, file: !30, line: 547, baseType: !123, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !135, file: !30, line: 548, baseType: !123, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !135, file: !30, line: 549, baseType: !123, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !135, file: !30, line: 550, baseType: !123, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !109, file: !102, line: 116, baseType: !2097, size: 64, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!123, !125, !87}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !109, file: !102, line: 118, baseType: !2101, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!91, !125, !87, !7, !71, !238}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !109, file: !102, line: 123, baseType: !2105, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!91, !125, !87, !2108, !238}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !109, file: !102, line: 126, baseType: !2110, size: 64, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!87, !125}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !109, file: !102, line: 127, baseType: !2110, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !109, file: !102, line: 128, baseType: !2115, size: 64, offset: 576)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!105, !125}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !109, file: !102, line: 130, baseType: !2119, size: 64, offset: 640)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!105, !125, !105}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !109, file: !102, line: 133, baseType: !2123, size: 64, offset: 704)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!105, !125, !87}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !109, file: !102, line: 135, baseType: !2127, size: 64, offset: 768)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!91, !125, !87, !87, !7, !7, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !102, line: 43, size: 640, elements: !2132)
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2131, file: !102, line: 44, baseType: !105, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2131, file: !102, line: 45, baseType: !7, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2131, file: !102, line: 46, baseType: !2136, size: 512, offset: 128)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 512, elements: !570)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !109, file: !102, line: 140, baseType: !2119, size: 64, offset: 832)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !109, file: !102, line: 143, baseType: !2115, size: 64, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !109, file: !102, line: 145, baseType: !112, size: 64, offset: 960)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !109, file: !102, line: 146, baseType: !2141, size: 64, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!91, !125, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !102, line: 29, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2145, file: !102, line: 30, baseType: !7, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2145, file: !102, line: 31, baseType: !7, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2145, file: !102, line: 32, baseType: !125, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !109, file: !102, line: 148, baseType: !2151, size: 64, offset: 1088)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!91, !125, !1630}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !101, file: !102, line: 20, baseType: !1630, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !83, line: 355, baseType: !93, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !94, file: !83, line: 356, baseType: !76, size: 128, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !83, line: 357, baseType: !76, size: 128, offset: 512)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !94, file: !83, line: 358, baseType: !76, size: 128, offset: 640)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !94, file: !83, line: 359, baseType: !76, size: 128, offset: 768)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !94, file: !83, line: 360, baseType: !2161, size: 32, offset: 896)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !83, line: 179, size: 32, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2161, file: !83, line: 180, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2161, file: !83, line: 181, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2161, file: !83, line: 182, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2161, file: !83, line: 183, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2161, file: !83, line: 184, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2161, file: !83, line: 185, baseType: !464, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !83, line: 361, baseType: !2170, size: 32, offset: 928)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !83, line: 190, size: 32, elements: !2171)
!2171 = !{!2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2170, file: !83, line: 191, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2170, file: !83, line: 192, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2170, file: !83, line: 193, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2170, file: !83, line: 194, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2170, file: !83, line: 195, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2170, file: !83, line: 196, baseType: !464, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2170, file: !83, line: 197, baseType: !464, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2170, file: !83, line: 198, baseType: !464, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2170, file: !83, line: 199, baseType: !464, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2170, file: !83, line: 200, baseType: !464, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2170, file: !83, line: 201, baseType: !464, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2170, file: !83, line: 202, baseType: !464, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2170, file: !83, line: 203, baseType: !464, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2170, file: !83, line: 204, baseType: !464, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !94, file: !83, line: 362, baseType: !2187, size: 960, offset: 960)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !83, line: 234, size: 960, elements: !2188)
!2188 = !{!2189, !2191, !2198, !2200, !2201, !2202, !2207, !2210}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2187, file: !83, line: 235, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !83, line: 217, baseType: !970)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2187, file: !83, line: 236, baseType: !2192, size: 32, offset: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !83, line: 227, size: 32, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2192, file: !83, line: 228, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2192, file: !83, line: 229, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2192, file: !83, line: 230, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2192, file: !83, line: 231, baseType: !464, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2187, file: !83, line: 237, baseType: !2199, size: 64, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !83, line: 218, baseType: !310)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2187, file: !83, line: 238, baseType: !90, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2187, file: !83, line: 239, baseType: !76, size: 128, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2187, file: !83, line: 240, baseType: !2203, size: 320, offset: 384)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !83, line: 219, baseType: !2204)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 320, elements: !2205)
!2205 = !{!2206}
!2206 = !DISubrange(count: 40)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2187, file: !83, line: 241, baseType: !2208, size: 160, offset: 704)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !83, line: 220, baseType: !2209)
!2209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 160, elements: !1234)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2187, file: !83, line: 242, baseType: !2211, size: 64, offset: 896)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !99, line: 899, size: 192, elements: !2213)
!2213 = !{!2214, !2216, !2221, !2227, !2234, !2240, !2246, !2254}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !99, line: 900, baseType: !2215, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !99, line: 635, baseType: !464)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2212, file: !99, line: 904, baseType: !2217, size: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 901, size: 128, elements: !2218)
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2217, file: !99, line: 902, baseType: !2215, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2217, file: !99, line: 903, baseType: !310, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2212, file: !99, line: 910, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 906, size: 128, elements: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2222, file: !99, line: 907, baseType: !2215, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2222, file: !99, line: 908, baseType: !464, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2222, file: !99, line: 909, baseType: !90, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2212, file: !99, line: 916, baseType: !2228, size: 128)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 912, size: 128, elements: !2229)
!2229 = !{!2230, !2231, !2232}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2228, file: !99, line: 913, baseType: !2215, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2228, file: !99, line: 914, baseType: !464, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2228, file: !99, line: 915, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2212, file: !99, line: 922, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 918, size: 128, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2235, file: !99, line: 919, baseType: !2215, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2235, file: !99, line: 920, baseType: !464, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2235, file: !99, line: 921, baseType: !2211, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2212, file: !99, line: 928, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 924, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2241, file: !99, line: 925, baseType: !2215, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2241, file: !99, line: 926, baseType: !2215, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2241, file: !99, line: 927, baseType: !98, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2212, file: !99, line: 935, baseType: !2247, size: 192)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 930, size: 192, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2253}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !99, line: 931, baseType: !2215, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2247, file: !99, line: 932, baseType: !464, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2247, file: !99, line: 933, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !99, line: 128, baseType: !310)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2247, file: !99, line: 934, baseType: !464, size: 32, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2212, file: !99, line: 941, baseType: !2255, size: 96)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2212, file: !99, line: 937, size: 96, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2255, file: !99, line: 938, baseType: !2215, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2255, file: !99, line: 939, baseType: !464, size: 32, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2255, file: !99, line: 940, baseType: !464, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !94, file: !83, line: 363, baseType: !2261, size: 1344, offset: 1920)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !83, line: 275, size: 1344, elements: !2262)
!2262 = !{!2263, !2264, !2274}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2261, file: !83, line: 276, baseType: !91, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2261, file: !83, line: 277, baseType: !2265, size: 32, offset: 32)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !83, line: 254, size: 32, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2265, file: !83, line: 255, baseType: !464, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2265, file: !83, line: 256, baseType: !464, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2265, file: !83, line: 257, baseType: !464, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2265, file: !83, line: 258, baseType: !464, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2265, file: !83, line: 259, baseType: !464, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2265, file: !83, line: 260, baseType: !464, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2265, file: !83, line: 261, baseType: !464, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2261, file: !83, line: 278, baseType: !2275, size: 1280, offset: 64)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2276, size: 1280, elements: !2287)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !83, line: 264, size: 256, elements: !2277)
!2277 = !{!2278, !2284, !2285, !2286}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !83, line: 269, baseType: !2279, size: 8)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !83, line: 265, size: 8, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2279, file: !83, line: 266, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2279, file: !83, line: 267, baseType: !601, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2279, file: !83, line: 268, baseType: !601, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2276, file: !83, line: 270, baseType: !91, size: 32, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2276, file: !83, line: 271, baseType: !91, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2276, file: !83, line: 272, baseType: !76, size: 128, offset: 128)
!2287 = !{!2288}
!2288 = !DISubrange(count: 5)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !94, file: !83, line: 364, baseType: !2290, size: 640, offset: 3264)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !83, line: 315, size: 640, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2301, !2310, !2311, !2312}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2290, file: !83, line: 316, baseType: !98, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2290, file: !83, line: 317, baseType: !310, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2290, file: !83, line: 318, baseType: !310, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2290, file: !83, line: 319, baseType: !76, size: 128, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2290, file: !83, line: 320, baseType: !2297, size: 8, offset: 320)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !83, line: 305, size: 8, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2297, file: !83, line: 306, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2297, file: !83, line: 307, baseType: !601, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2290, file: !83, line: 321, baseType: !2302, size: 128, offset: 384)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !83, line: 310, size: 128, elements: !2303)
!2303 = !{!2304, !2309}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2302, file: !83, line: 311, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2302, file: !83, line: 312, baseType: !1630, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2290, file: !83, line: 322, baseType: !1815, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2290, file: !83, line: 323, baseType: !91, size: 32, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2290, file: !83, line: 324, baseType: !91, size: 32, offset: 608)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !94, file: !83, line: 365, baseType: !2314, size: 192, offset: 3904)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !83, line: 297, size: 192, elements: !2315)
!2315 = !{!2316, !2317, !2321, !2322}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2314, file: !83, line: 298, baseType: !91, size: 32)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !83, line: 299, baseType: !2318, size: 8, offset: 32)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !83, line: 283, size: 8, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2318, file: !83, line: 284, baseType: !601, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2314, file: !83, line: 300, baseType: !91, size: 32, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2314, file: !83, line: 301, baseType: !2323, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !83, line: 287, size: 64, elements: !2325)
!2325 = !{!2326, !2331, !2332, !2333}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !83, line: 291, baseType: !2327, size: 8)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2324, file: !83, line: 288, size: 8, elements: !2328)
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2327, file: !83, line: 289, baseType: !601, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2327, file: !83, line: 290, baseType: !601, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2324, file: !83, line: 292, baseType: !601, size: 8, offset: 8)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2324, file: !83, line: 293, baseType: !601, size: 8, offset: 16)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2324, file: !83, line: 294, baseType: !91, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !94, file: !83, line: 366, baseType: !2335, size: 64, offset: 4096)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !83, line: 209, size: 64, elements: !2336)
!2336 = !{!2337}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2335, file: !83, line: 210, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !83, line: 84, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !94, file: !83, line: 367, baseType: !2341, size: 384, offset: 4160)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !83, line: 341, size: 384, elements: !2342)
!2342 = !{!2343, !2346, !2347, !2348}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2341, file: !83, line: 342, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2212)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2341, file: !83, line: 343, baseType: !76, size: 128, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2341, file: !83, line: 344, baseType: !2344, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2341, file: !83, line: 345, baseType: !76, size: 128, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !94, file: !83, line: 368, baseType: !2350, size: 64, offset: 4544)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !83, line: 122, size: 1216, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2360, !2364, !2368, !2369, !2370}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2351, file: !83, line: 123, baseType: !1728, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2351, file: !83, line: 124, baseType: !76, size: 128, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2351, file: !83, line: 125, baseType: !2356, size: 64, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!123, !87, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2351, file: !83, line: 126, baseType: !2361, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!91, !93, !1728}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2351, file: !83, line: 127, baseType: !2365, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !93}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2351, file: !83, line: 128, baseType: !1652, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2351, file: !83, line: 129, baseType: !1652, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2351, file: !83, line: 130, baseType: !2371, size: 704, offset: 512)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !83, line: 108, size: 704, elements: !2372)
!2372 = !{!2373, !2374, !2378, !2379, !2380}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2371, file: !83, line: 109, baseType: !138, size: 512)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2371, file: !83, line: 110, baseType: !2375, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!91, !93}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2371, file: !83, line: 111, baseType: !2365, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2371, file: !83, line: 112, baseType: !123, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2371, file: !83, line: 113, baseType: !123, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !94, file: !83, line: 369, baseType: !2382, size: 64, offset: 4608)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !83, line: 138, size: 256, elements: !2384)
!2384 = !{!2385, !2386, !2390, !2394}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2383, file: !83, line: 139, baseType: !93, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2383, file: !83, line: 140, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!91, !93, !464}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2383, file: !83, line: 141, baseType: !2391, size: 64, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !93, !464}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2383, file: !83, line: 142, baseType: !2365, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !94, file: !83, line: 370, baseType: !2396, size: 64, offset: 4672)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !83, line: 162, size: 2816, elements: !2398)
!2398 = !{!2399, !2403, !2404, !2405, !2406, !2415, !2416}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2397, file: !83, line: 163, baseType: !2400, size: 640)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 640, elements: !2401)
!2401 = !{!2402}
!2402 = !DISubrange(count: 80)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2397, file: !83, line: 164, baseType: !2400, size: 640, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2397, file: !83, line: 165, baseType: !1728, size: 64, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2397, file: !83, line: 166, baseType: !7, size: 32, offset: 1344)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2397, file: !83, line: 167, baseType: !2407, size: 192, offset: 1408)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !83, line: 154, size: 192, elements: !2408)
!2408 = !{!2409, !2411, !2413}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2407, file: !83, line: 155, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !83, line: 150, baseType: !2375)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2407, file: !83, line: 156, baseType: !2412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !83, line: 151, baseType: !2375)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2407, file: !83, line: 157, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !83, line: 152, baseType: !2391)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2397, file: !83, line: 168, baseType: !1702, size: 1152, offset: 1600)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2397, file: !83, line: 169, baseType: !1707, size: 64, offset: 2752)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !94, file: !83, line: 371, baseType: !2418, size: 64, offset: 4736)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !83, line: 348, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !94, file: !83, line: 372, baseType: !71, size: 64, offset: 4800)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !94, file: !83, line: 373, baseType: !135, size: 5568, offset: 4864)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !94, file: !83, line: 374, baseType: !7, size: 32, offset: 10432)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !94, file: !83, line: 375, baseType: !7, size: 32, offset: 10464)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !94, file: !83, line: 376, baseType: !76, size: 128, offset: 10496)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !94, file: !83, line: 377, baseType: !409, size: 192, offset: 10624)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !94, file: !83, line: 378, baseType: !2365, size: 64, offset: 10816)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !65, line: 19, baseType: !438)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !99, line: 421, baseType: !464)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node", file: !83, line: 382, size: 1600, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2432, file: !83, line: 383, baseType: !87, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2432, file: !83, line: 384, baseType: !98, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2432, file: !83, line: 385, baseType: !101, size: 192, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2432, file: !83, line: 386, baseType: !105, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2432, file: !83, line: 387, baseType: !2341, size: 384, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2432, file: !83, line: 388, baseType: !76, size: 128, offset: 768)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2432, file: !83, line: 389, baseType: !138, size: 512, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_done", scope: !2432, file: !83, line: 390, baseType: !769, size: 192, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_node_attr", file: !3, line: 35, size: 256, elements: !2444)
!2444 = !{!2445, !2446, !2450}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2443, file: !3, line: 36, baseType: !228, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2443, file: !3, line: 37, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!222, !2431, !90}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2443, file: !3, line: 38, baseType: !2451, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!222, !2431, !87, !238}
!2454 = !{!0, !2455, !2469, !2471, !2473, !2475, !2477, !2479, !2481, !2483, !2485, !2487, !2489, !2494, !2496, !2498, !2501}
!2455 = !DIGlobalVariableExpression(var: !2456, expr: !DIExpression())
!2456 = distinct !DIGlobalVariable(name: "dev_attr_hid", scope: !2, file: !3, line: 407, type: !2457, isLocal: true, isDefinition: true)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2458)
!2458 = !{!2459, !2460, !2465}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2457, file: !30, line: 100, baseType: !228, size: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2457, file: !30, line: 101, baseType: !2461, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!222, !1630, !2464, !90}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2457, file: !30, line: 103, baseType: !2466, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!222, !1630, !2464, !87, !238}
!2469 = !DIGlobalVariableExpression(var: !2470, expr: !DIExpression())
!2470 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 340, type: !2457, isLocal: true, isDefinition: true)
!2471 = !DIGlobalVariableExpression(var: !2472, expr: !DIExpression())
!2472 = distinct !DIGlobalVariable(name: "dev_attr_description", scope: !2, file: !3, line: 463, type: !2457, isLocal: true, isDefinition: true)
!2473 = !DIGlobalVariableExpression(var: !2474, expr: !DIExpression())
!2474 = distinct !DIGlobalVariable(name: "dev_attr_adr", scope: !2, file: !3, line: 428, type: !2457, isLocal: true, isDefinition: true)
!2475 = !DIGlobalVariableExpression(var: !2476, expr: !DIExpression())
!2476 = distinct !DIGlobalVariable(name: "dev_attr_uid", scope: !2, file: !3, line: 416, type: !2457, isLocal: true, isDefinition: true)
!2477 = !DIGlobalVariableExpression(var: !2478, expr: !DIExpression())
!2478 = distinct !DIGlobalVariable(name: "dev_attr_sun", scope: !2, file: !3, line: 478, type: !2457, isLocal: true, isDefinition: true)
!2479 = !DIGlobalVariableExpression(var: !2480, expr: !DIExpression())
!2480 = distinct !DIGlobalVariable(name: "dev_attr_hrv", scope: !2, file: !3, line: 493, type: !2457, isLocal: true, isDefinition: true)
!2481 = !DIGlobalVariableExpression(var: !2482, expr: !DIExpression())
!2482 = distinct !DIGlobalVariable(name: "dev_attr_status", scope: !2, file: !3, line: 507, type: !2457, isLocal: true, isDefinition: true)
!2483 = !DIGlobalVariableExpression(var: !2484, expr: !DIExpression())
!2484 = distinct !DIGlobalVariable(name: "dev_attr_eject", scope: !2, file: !3, line: 398, type: !2457, isLocal: true, isDefinition: true)
!2485 = !DIGlobalVariableExpression(var: !2486, expr: !DIExpression())
!2486 = distinct !DIGlobalVariable(name: "dev_attr_power_state", scope: !2, file: !3, line: 366, type: !2457, isLocal: true, isDefinition: true)
!2487 = !DIGlobalVariableExpression(var: !2488, expr: !DIExpression())
!2488 = distinct !DIGlobalVariable(name: "dev_attr_real_power_state", scope: !2, file: !3, line: 356, type: !2457, isLocal: true, isDefinition: true)
!2489 = !DIGlobalVariableExpression(var: !2490, expr: !DIExpression())
!2490 = distinct !DIGlobalVariable(name: "__key", scope: !2491, file: !770, line: 88, type: !1780, isLocal: true, isDefinition: true)
!2491 = distinct !DISubprogram(name: "__init_completion", scope: !770, file: !770, line: 85, type: !2492, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !768}
!2494 = !DIGlobalVariableExpression(var: !2495, expr: !DIExpression())
!2495 = distinct !DIGlobalVariable(name: "acpi_data_node_ktype", scope: !2, file: !3, line: 79, type: !206, isLocal: true, isDefinition: true)
!2496 = !DIGlobalVariableExpression(var: !2497, expr: !DIExpression())
!2497 = distinct !DIGlobalVariable(name: "acpi_data_node_sysfs_ops", scope: !2, file: !3, line: 69, type: !214, isLocal: true, isDefinition: true)
!2498 = !DIGlobalVariableExpression(var: !2499, expr: !DIExpression())
!2499 = distinct !DIGlobalVariable(name: "acpi_data_node_default_attrs", scope: !2, file: !3, line: 52, type: !2500, isLocal: true, isDefinition: true)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !1005)
!2501 = !DIGlobalVariableExpression(var: !2502, expr: !DIExpression())
!2502 = distinct !DIGlobalVariable(name: "data_node_path", scope: !2, file: !3, line: 50, type: !2443, isLocal: true, isDefinition: true)
!2503 = !{i32 7, !"Dwarf Version", i32 4}
!2504 = !{i32 2, !"Debug Info Version", i32 3}
!2505 = !{i32 1, !"wchar_size", i32 2}
!2506 = !{i32 1, !"Code Model", i32 2}
!2507 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2508 = distinct !DISubprogram(name: "__acpi_device_uevent_modalias", scope: !3, file: !3, line: 240, type: !2509, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!91, !93, !187}
!2511 = !DILocalVariable(name: "adev", arg: 1, scope: !2508, file: !3, line: 240, type: !93)
!2512 = !DILocation(line: 240, column: 55, scope: !2508)
!2513 = !DILocalVariable(name: "env", arg: 2, scope: !2508, file: !3, line: 241, type: !187)
!2514 = !DILocation(line: 241, column: 31, scope: !2508)
!2515 = !DILocalVariable(name: "len", scope: !2508, file: !3, line: 243, type: !91)
!2516 = !DILocation(line: 243, column: 6, scope: !2508)
!2517 = !DILocation(line: 245, column: 7, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 245, column: 6)
!2519 = !DILocation(line: 245, column: 6, scope: !2508)
!2520 = !DILocation(line: 246, column: 3, scope: !2518)
!2521 = !DILocation(line: 248, column: 18, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 248, column: 6)
!2523 = !DILocation(line: 248, column: 24, scope: !2522)
!2524 = !DILocation(line: 248, column: 28, scope: !2522)
!2525 = !DILocation(line: 248, column: 6, scope: !2522)
!2526 = !DILocation(line: 248, column: 6, scope: !2508)
!2527 = !DILocation(line: 249, column: 3, scope: !2522)
!2528 = !DILocation(line: 251, column: 21, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 251, column: 6)
!2530 = !DILocation(line: 251, column: 6, scope: !2529)
!2531 = !DILocation(line: 251, column: 6, scope: !2508)
!2532 = !DILocation(line: 252, column: 3, scope: !2529)
!2533 = !DILocation(line: 254, column: 28, scope: !2508)
!2534 = !DILocation(line: 254, column: 35, scope: !2508)
!2535 = !DILocation(line: 254, column: 40, scope: !2508)
!2536 = !DILocation(line: 254, column: 44, scope: !2508)
!2537 = !DILocation(line: 254, column: 49, scope: !2508)
!2538 = !DILocation(line: 254, column: 56, scope: !2508)
!2539 = !DILocation(line: 255, column: 26, scope: !2508)
!2540 = !DILocation(line: 255, column: 31, scope: !2508)
!2541 = !DILocation(line: 255, column: 24, scope: !2508)
!2542 = !DILocation(line: 255, column: 7, scope: !2508)
!2543 = !DILocation(line: 254, column: 8, scope: !2508)
!2544 = !DILocation(line: 254, column: 6, scope: !2508)
!2545 = !DILocation(line: 256, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 256, column: 6)
!2547 = !DILocation(line: 256, column: 10, scope: !2546)
!2548 = !DILocation(line: 256, column: 6, scope: !2508)
!2549 = !DILocation(line: 257, column: 10, scope: !2546)
!2550 = !DILocation(line: 257, column: 3, scope: !2546)
!2551 = !DILocation(line: 259, column: 17, scope: !2508)
!2552 = !DILocation(line: 259, column: 2, scope: !2508)
!2553 = !DILocation(line: 259, column: 7, scope: !2508)
!2554 = !DILocation(line: 259, column: 14, scope: !2508)
!2555 = !DILocation(line: 260, column: 7, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 260, column: 6)
!2557 = !DILocation(line: 260, column: 13, scope: !2556)
!2558 = !DILocation(line: 260, column: 18, scope: !2556)
!2559 = !DILocation(line: 260, column: 6, scope: !2508)
!2560 = !DILocation(line: 261, column: 3, scope: !2556)
!2561 = !DILocation(line: 263, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 263, column: 6)
!2563 = !DILocation(line: 263, column: 10, scope: !2562)
!2564 = !DILocation(line: 263, column: 14, scope: !2562)
!2565 = !DILocation(line: 263, column: 32, scope: !2562)
!2566 = !DILocation(line: 263, column: 17, scope: !2562)
!2567 = !DILocation(line: 263, column: 6, scope: !2508)
!2568 = !DILocation(line: 264, column: 3, scope: !2562)
!2569 = !DILocation(line: 266, column: 27, scope: !2508)
!2570 = !DILocation(line: 266, column: 34, scope: !2508)
!2571 = !DILocation(line: 266, column: 39, scope: !2508)
!2572 = !DILocation(line: 266, column: 43, scope: !2508)
!2573 = !DILocation(line: 266, column: 48, scope: !2508)
!2574 = !DILocation(line: 266, column: 55, scope: !2508)
!2575 = !DILocation(line: 267, column: 25, scope: !2508)
!2576 = !DILocation(line: 267, column: 30, scope: !2508)
!2577 = !DILocation(line: 267, column: 23, scope: !2508)
!2578 = !DILocation(line: 267, column: 6, scope: !2508)
!2579 = !DILocation(line: 266, column: 8, scope: !2508)
!2580 = !DILocation(line: 266, column: 6, scope: !2508)
!2581 = !DILocation(line: 268, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 268, column: 6)
!2583 = !DILocation(line: 268, column: 10, scope: !2582)
!2584 = !DILocation(line: 268, column: 6, scope: !2508)
!2585 = !DILocation(line: 269, column: 10, scope: !2582)
!2586 = !DILocation(line: 269, column: 3, scope: !2582)
!2587 = !DILocation(line: 271, column: 17, scope: !2508)
!2588 = !DILocation(line: 271, column: 2, scope: !2508)
!2589 = !DILocation(line: 271, column: 7, scope: !2508)
!2590 = !DILocation(line: 271, column: 14, scope: !2508)
!2591 = !DILocation(line: 273, column: 2, scope: !2508)
!2592 = !DILocation(line: 274, column: 1, scope: !2508)
!2593 = distinct !DISubprogram(name: "list_empty", scope: !2594, file: !2594, line: 280, type: !2595, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2594 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!91, !2597}
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2599 = !DILocalVariable(name: "head", arg: 1, scope: !2593, file: !2594, line: 280, type: !2597)
!2600 = !DILocation(line: 280, column: 54, scope: !2593)
!2601 = !DILocation(line: 282, column: 9, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2593, file: !2594, line: 282, column: 9)
!2603 = !DILocation(line: 282, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2602, file: !2594, line: 282, column: 9)
!2605 = !DILocation(line: 282, column: 34, scope: !2593)
!2606 = !DILocation(line: 282, column: 31, scope: !2593)
!2607 = !DILocation(line: 282, column: 2, scope: !2593)
!2608 = distinct !DISubprogram(name: "create_pnp_modalias", scope: !3, file: !3, line: 134, type: !2609, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!91, !93, !90, !91}
!2611 = !DILocalVariable(name: "acpi_dev", arg: 1, scope: !2608, file: !3, line: 134, type: !93)
!2612 = !DILocation(line: 134, column: 52, scope: !2608)
!2613 = !DILocalVariable(name: "modalias", arg: 2, scope: !2608, file: !3, line: 134, type: !90)
!2614 = !DILocation(line: 134, column: 68, scope: !2608)
!2615 = !DILocalVariable(name: "size", arg: 3, scope: !2608, file: !3, line: 135, type: !91)
!2616 = !DILocation(line: 135, column: 15, scope: !2608)
!2617 = !DILocalVariable(name: "len", scope: !2608, file: !3, line: 137, type: !91)
!2618 = !DILocation(line: 137, column: 6, scope: !2608)
!2619 = !DILocalVariable(name: "count", scope: !2608, file: !3, line: 138, type: !91)
!2620 = !DILocation(line: 138, column: 6, scope: !2608)
!2621 = !DILocalVariable(name: "id", scope: !2608, file: !3, line: 139, type: !81)
!2622 = !DILocation(line: 139, column: 27, scope: !2608)
!2623 = !DILocation(line: 142, column: 30, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 142, column: 6)
!2625 = !DILocation(line: 142, column: 7, scope: !2624)
!2626 = !DILocation(line: 142, column: 6, scope: !2608)
!2627 = !DILocation(line: 143, column: 3, scope: !2624)
!2628 = !DILocation(line: 150, column: 8, scope: !2608)
!2629 = !DILocalVariable(name: "__mptr", scope: !2630, file: !3, line: 151, type: !71)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 151, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 151, column: 2)
!2632 = !DILocation(line: 151, column: 2, scope: !2630)
!2633 = !DILocation(line: 151, column: 2, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 151, column: 2)
!2635 = !DILocation(line: 151, column: 2, scope: !2631)
!2636 = !DILocation(line: 151, column: 2, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 151, column: 2)
!2638 = !DILocation(line: 152, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 152, column: 7)
!2640 = !DILocation(line: 152, column: 18, scope: !2639)
!2641 = !DILocation(line: 152, column: 7, scope: !2639)
!2642 = !DILocation(line: 152, column: 7, scope: !2637)
!2643 = !DILocation(line: 153, column: 9, scope: !2639)
!2644 = !DILocation(line: 153, column: 4, scope: !2639)
!2645 = !DILocation(line: 152, column: 43, scope: !2639)
!2646 = !DILocalVariable(name: "__mptr", scope: !2647, file: !3, line: 151, type: !71)
!2647 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 151, column: 2)
!2648 = !DILocation(line: 151, column: 2, scope: !2647)
!2649 = !DILocation(line: 151, column: 2, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 151, column: 2)
!2651 = distinct !{!2651, !2635, !2652}
!2652 = !DILocation(line: 153, column: 9, scope: !2631)
!2653 = !DILocation(line: 155, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 155, column: 6)
!2655 = !DILocation(line: 155, column: 6, scope: !2608)
!2656 = !DILocation(line: 156, column: 3, scope: !2654)
!2657 = !DILocation(line: 158, column: 17, scope: !2608)
!2658 = !DILocation(line: 158, column: 27, scope: !2608)
!2659 = !DILocation(line: 158, column: 8, scope: !2608)
!2660 = !DILocation(line: 158, column: 6, scope: !2608)
!2661 = !DILocation(line: 159, column: 6, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 159, column: 6)
!2663 = !DILocation(line: 159, column: 10, scope: !2662)
!2664 = !DILocation(line: 159, column: 6, scope: !2608)
!2665 = !DILocation(line: 160, column: 10, scope: !2662)
!2666 = !DILocation(line: 160, column: 3, scope: !2662)
!2667 = !DILocation(line: 162, column: 10, scope: !2608)
!2668 = !DILocation(line: 162, column: 7, scope: !2608)
!2669 = !DILocalVariable(name: "__mptr", scope: !2670, file: !3, line: 164, type: !71)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 164, column: 2)
!2671 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 164, column: 2)
!2672 = !DILocation(line: 164, column: 2, scope: !2670)
!2673 = !DILocation(line: 164, column: 2, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 164, column: 2)
!2675 = !DILocation(line: 164, column: 2, scope: !2671)
!2676 = !DILocation(line: 164, column: 2, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 164, column: 2)
!2678 = !DILocation(line: 165, column: 15, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 165, column: 7)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 164, column: 52)
!2681 = !DILocation(line: 165, column: 19, scope: !2679)
!2682 = !DILocation(line: 165, column: 8, scope: !2679)
!2683 = !DILocation(line: 165, column: 7, scope: !2680)
!2684 = !DILocation(line: 166, column: 4, scope: !2679)
!2685 = !DILocation(line: 168, column: 21, scope: !2680)
!2686 = !DILocation(line: 168, column: 30, scope: !2680)
!2687 = !DILocation(line: 168, column: 36, scope: !2680)
!2688 = !DILocation(line: 168, column: 49, scope: !2680)
!2689 = !DILocation(line: 168, column: 53, scope: !2680)
!2690 = !DILocation(line: 168, column: 11, scope: !2680)
!2691 = !DILocation(line: 168, column: 9, scope: !2680)
!2692 = !DILocation(line: 169, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 169, column: 7)
!2694 = !DILocation(line: 169, column: 13, scope: !2693)
!2695 = !DILocation(line: 169, column: 7, scope: !2680)
!2696 = !DILocation(line: 170, column: 4, scope: !2693)
!2697 = !DILocation(line: 172, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 172, column: 7)
!2699 = !DILocation(line: 172, column: 16, scope: !2698)
!2700 = !DILocation(line: 172, column: 13, scope: !2698)
!2701 = !DILocation(line: 172, column: 7, scope: !2680)
!2702 = !DILocation(line: 173, column: 4, scope: !2698)
!2703 = !DILocation(line: 175, column: 10, scope: !2680)
!2704 = !DILocation(line: 175, column: 7, scope: !2680)
!2705 = !DILocation(line: 176, column: 11, scope: !2680)
!2706 = !DILocation(line: 176, column: 8, scope: !2680)
!2707 = !DILocation(line: 177, column: 2, scope: !2680)
!2708 = !DILocalVariable(name: "__mptr", scope: !2709, file: !3, line: 164, type: !71)
!2709 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 164, column: 2)
!2710 = !DILocation(line: 164, column: 2, scope: !2709)
!2711 = !DILocation(line: 164, column: 2, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 164, column: 2)
!2713 = distinct !{!2713, !2675, !2714}
!2714 = !DILocation(line: 177, column: 2, scope: !2671)
!2715 = !DILocation(line: 178, column: 2, scope: !2608)
!2716 = !DILocation(line: 178, column: 11, scope: !2608)
!2717 = !DILocation(line: 178, column: 16, scope: !2608)
!2718 = !DILocation(line: 179, column: 9, scope: !2608)
!2719 = !DILocation(line: 179, column: 2, scope: !2608)
!2720 = !DILocation(line: 180, column: 1, scope: !2608)
!2721 = distinct !DISubprogram(name: "create_of_modalias", scope: !3, file: !3, line: 192, type: !2609, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2722 = !DILocalVariable(name: "acpi_dev", arg: 1, scope: !2721, file: !3, line: 192, type: !93)
!2723 = !DILocation(line: 192, column: 51, scope: !2721)
!2724 = !DILocalVariable(name: "modalias", arg: 2, scope: !2721, file: !3, line: 192, type: !90)
!2725 = !DILocation(line: 192, column: 67, scope: !2721)
!2726 = !DILocalVariable(name: "size", arg: 3, scope: !2721, file: !3, line: 193, type: !91)
!2727 = !DILocation(line: 193, column: 14, scope: !2721)
!2728 = !DILocalVariable(name: "buf", scope: !2721, file: !3, line: 195, type: !2729)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !99, line: 969, size: 128, elements: !2730)
!2730 = !{!2731, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2729, file: !99, line: 970, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !99, line: 127, baseType: !310)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2729, file: !99, line: 971, baseType: !71, size: 64, offset: 64)
!2734 = !DILocation(line: 195, column: 21, scope: !2721)
!2735 = !DILocalVariable(name: "of_compatible", scope: !2721, file: !3, line: 196, type: !2344)
!2736 = !DILocation(line: 196, column: 27, scope: !2721)
!2737 = !DILocalVariable(name: "obj", scope: !2721, file: !3, line: 196, type: !2344)
!2738 = !DILocation(line: 196, column: 43, scope: !2721)
!2739 = !DILocalVariable(name: "status", scope: !2721, file: !3, line: 197, type: !2430)
!2740 = !DILocation(line: 197, column: 14, scope: !2721)
!2741 = !DILocalVariable(name: "len", scope: !2721, file: !3, line: 198, type: !91)
!2742 = !DILocation(line: 198, column: 6, scope: !2721)
!2743 = !DILocalVariable(name: "count", scope: !2721, file: !3, line: 198, type: !91)
!2744 = !DILocation(line: 198, column: 11, scope: !2721)
!2745 = !DILocalVariable(name: "i", scope: !2721, file: !3, line: 199, type: !91)
!2746 = !DILocation(line: 199, column: 6, scope: !2721)
!2747 = !DILocalVariable(name: "nval", scope: !2721, file: !3, line: 199, type: !91)
!2748 = !DILocation(line: 199, column: 9, scope: !2721)
!2749 = !DILocalVariable(name: "c", scope: !2721, file: !3, line: 200, type: !90)
!2750 = !DILocation(line: 200, column: 8, scope: !2721)
!2751 = !DILocation(line: 202, column: 25, scope: !2721)
!2752 = !DILocation(line: 202, column: 35, scope: !2721)
!2753 = !DILocation(line: 202, column: 11, scope: !2721)
!2754 = !DILocation(line: 202, column: 9, scope: !2721)
!2755 = !DILocation(line: 203, column: 6, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 203, column: 6)
!2757 = !DILocation(line: 203, column: 6, scope: !2721)
!2758 = !DILocation(line: 204, column: 3, scope: !2756)
!2759 = !DILocation(line: 207, column: 15, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 207, column: 2)
!2761 = !DILocation(line: 207, column: 9, scope: !2760)
!2762 = !DILocation(line: 207, column: 7, scope: !2760)
!2763 = !DILocation(line: 207, column: 25, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 207, column: 2)
!2765 = !DILocation(line: 207, column: 24, scope: !2764)
!2766 = !DILocation(line: 207, column: 27, scope: !2764)
!2767 = !DILocation(line: 207, column: 2, scope: !2760)
!2768 = !DILocation(line: 208, column: 8, scope: !2764)
!2769 = !DILocation(line: 208, column: 4, scope: !2764)
!2770 = !DILocation(line: 208, column: 6, scope: !2764)
!2771 = !DILocation(line: 208, column: 3, scope: !2764)
!2772 = !DILocation(line: 207, column: 37, scope: !2764)
!2773 = !DILocation(line: 207, column: 2, scope: !2764)
!2774 = distinct !{!2774, !2767, !2775}
!2775 = !DILocation(line: 208, column: 8, scope: !2760)
!2776 = !DILocation(line: 210, column: 17, scope: !2721)
!2777 = !DILocation(line: 210, column: 27, scope: !2721)
!2778 = !DILocation(line: 210, column: 56, scope: !2721)
!2779 = !DILocation(line: 210, column: 8, scope: !2721)
!2780 = !DILocation(line: 210, column: 6, scope: !2721)
!2781 = !DILocation(line: 211, column: 2, scope: !2721)
!2782 = !DILocation(line: 213, column: 6, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 213, column: 6)
!2784 = !DILocation(line: 213, column: 10, scope: !2783)
!2785 = !DILocation(line: 213, column: 6, scope: !2721)
!2786 = !DILocation(line: 214, column: 10, scope: !2783)
!2787 = !DILocation(line: 214, column: 3, scope: !2783)
!2788 = !DILocation(line: 216, column: 18, scope: !2721)
!2789 = !DILocation(line: 216, column: 28, scope: !2721)
!2790 = !DILocation(line: 216, column: 33, scope: !2721)
!2791 = !DILocation(line: 216, column: 16, scope: !2721)
!2792 = !DILocation(line: 217, column: 6, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 217, column: 6)
!2794 = !DILocation(line: 217, column: 21, scope: !2793)
!2795 = !DILocation(line: 217, column: 26, scope: !2793)
!2796 = !DILocation(line: 217, column: 6, scope: !2721)
!2797 = !DILocation(line: 218, column: 10, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 217, column: 48)
!2799 = !DILocation(line: 218, column: 25, scope: !2798)
!2800 = !DILocation(line: 218, column: 33, scope: !2798)
!2801 = !DILocation(line: 218, column: 8, scope: !2798)
!2802 = !DILocation(line: 219, column: 9, scope: !2798)
!2803 = !DILocation(line: 219, column: 24, scope: !2798)
!2804 = !DILocation(line: 219, column: 32, scope: !2798)
!2805 = !DILocation(line: 219, column: 7, scope: !2798)
!2806 = !DILocation(line: 220, column: 2, scope: !2798)
!2807 = !DILocation(line: 221, column: 8, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 220, column: 9)
!2809 = !DILocation(line: 222, column: 9, scope: !2808)
!2810 = !DILocation(line: 222, column: 7, scope: !2808)
!2811 = !DILocation(line: 224, column: 9, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 224, column: 2)
!2813 = !DILocation(line: 224, column: 7, scope: !2812)
!2814 = !DILocation(line: 224, column: 14, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 224, column: 2)
!2816 = !DILocation(line: 224, column: 18, scope: !2815)
!2817 = !DILocation(line: 224, column: 16, scope: !2815)
!2818 = !DILocation(line: 224, column: 2, scope: !2812)
!2819 = !DILocation(line: 225, column: 21, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 224, column: 36)
!2821 = !DILocation(line: 225, column: 30, scope: !2820)
!2822 = !DILocation(line: 225, column: 36, scope: !2820)
!2823 = !DILocation(line: 226, column: 6, scope: !2820)
!2824 = !DILocation(line: 226, column: 11, scope: !2820)
!2825 = !DILocation(line: 226, column: 18, scope: !2820)
!2826 = !DILocation(line: 225, column: 11, scope: !2820)
!2827 = !DILocation(line: 225, column: 9, scope: !2820)
!2828 = !DILocation(line: 227, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 227, column: 7)
!2830 = !DILocation(line: 227, column: 13, scope: !2829)
!2831 = !DILocation(line: 227, column: 7, scope: !2820)
!2832 = !DILocation(line: 228, column: 4, scope: !2829)
!2833 = !DILocation(line: 230, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 230, column: 7)
!2835 = !DILocation(line: 230, column: 16, scope: !2834)
!2836 = !DILocation(line: 230, column: 13, scope: !2834)
!2837 = !DILocation(line: 230, column: 7, scope: !2820)
!2838 = !DILocation(line: 231, column: 4, scope: !2834)
!2839 = !DILocation(line: 233, column: 10, scope: !2820)
!2840 = !DILocation(line: 233, column: 7, scope: !2820)
!2841 = !DILocation(line: 234, column: 11, scope: !2820)
!2842 = !DILocation(line: 234, column: 8, scope: !2820)
!2843 = !DILocation(line: 235, column: 2, scope: !2820)
!2844 = !DILocation(line: 224, column: 25, scope: !2815)
!2845 = !DILocation(line: 224, column: 32, scope: !2815)
!2846 = !DILocation(line: 224, column: 2, scope: !2815)
!2847 = distinct !{!2847, !2818, !2848}
!2848 = !DILocation(line: 235, column: 2, scope: !2812)
!2849 = !DILocation(line: 236, column: 2, scope: !2721)
!2850 = !DILocation(line: 236, column: 11, scope: !2721)
!2851 = !DILocation(line: 236, column: 16, scope: !2721)
!2852 = !DILocation(line: 237, column: 9, scope: !2721)
!2853 = !DILocation(line: 237, column: 2, scope: !2721)
!2854 = !DILocation(line: 238, column: 1, scope: !2721)
!2855 = distinct !DISubprogram(name: "acpi_device_uevent_modalias", scope: !3, file: !3, line: 284, type: !1644, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2856 = !DILocalVariable(name: "dev", arg: 1, scope: !2855, file: !3, line: 284, type: !1630)
!2857 = !DILocation(line: 284, column: 48, scope: !2855)
!2858 = !DILocalVariable(name: "env", arg: 2, scope: !2855, file: !3, line: 284, type: !187)
!2859 = !DILocation(line: 284, column: 77, scope: !2855)
!2860 = !DILocation(line: 286, column: 60, scope: !2855)
!2861 = !DILocation(line: 286, column: 39, scope: !2855)
!2862 = !DILocation(line: 286, column: 66, scope: !2855)
!2863 = !DILocation(line: 286, column: 9, scope: !2855)
!2864 = !DILocation(line: 286, column: 2, scope: !2855)
!2865 = distinct !DISubprogram(name: "acpi_device_modalias", scope: !3, file: !3, line: 329, type: !2866, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!91, !1630, !90, !91}
!2868 = !DILocalVariable(name: "dev", arg: 1, scope: !2865, file: !3, line: 329, type: !1630)
!2869 = !DILocation(line: 329, column: 41, scope: !2865)
!2870 = !DILocalVariable(name: "buf", arg: 2, scope: !2865, file: !3, line: 329, type: !90)
!2871 = !DILocation(line: 329, column: 52, scope: !2865)
!2872 = !DILocalVariable(name: "size", arg: 3, scope: !2865, file: !3, line: 329, type: !91)
!2873 = !DILocation(line: 329, column: 61, scope: !2865)
!2874 = !DILocation(line: 331, column: 53, scope: !2865)
!2875 = !DILocation(line: 331, column: 32, scope: !2865)
!2876 = !DILocation(line: 331, column: 59, scope: !2865)
!2877 = !DILocation(line: 331, column: 64, scope: !2865)
!2878 = !DILocation(line: 331, column: 9, scope: !2865)
!2879 = !DILocation(line: 331, column: 2, scope: !2865)
!2880 = distinct !DISubprogram(name: "__acpi_device_modalias", scope: !3, file: !3, line: 290, type: !2609, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2881 = !DILocalVariable(name: "adev", arg: 1, scope: !2880, file: !3, line: 290, type: !93)
!2882 = !DILocation(line: 290, column: 55, scope: !2880)
!2883 = !DILocalVariable(name: "buf", arg: 2, scope: !2880, file: !3, line: 290, type: !90)
!2884 = !DILocation(line: 290, column: 67, scope: !2880)
!2885 = !DILocalVariable(name: "size", arg: 3, scope: !2880, file: !3, line: 290, type: !91)
!2886 = !DILocation(line: 290, column: 76, scope: !2880)
!2887 = !DILocalVariable(name: "len", scope: !2880, file: !3, line: 292, type: !91)
!2888 = !DILocation(line: 292, column: 6, scope: !2880)
!2889 = !DILocalVariable(name: "count", scope: !2880, file: !3, line: 292, type: !91)
!2890 = !DILocation(line: 292, column: 11, scope: !2880)
!2891 = !DILocation(line: 294, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 294, column: 6)
!2893 = !DILocation(line: 294, column: 6, scope: !2880)
!2894 = !DILocation(line: 295, column: 3, scope: !2892)
!2895 = !DILocation(line: 297, column: 18, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 297, column: 6)
!2897 = !DILocation(line: 297, column: 24, scope: !2896)
!2898 = !DILocation(line: 297, column: 28, scope: !2896)
!2899 = !DILocation(line: 297, column: 6, scope: !2896)
!2900 = !DILocation(line: 297, column: 6, scope: !2880)
!2901 = !DILocation(line: 298, column: 3, scope: !2896)
!2902 = !DILocation(line: 300, column: 28, scope: !2880)
!2903 = !DILocation(line: 300, column: 34, scope: !2880)
!2904 = !DILocation(line: 300, column: 39, scope: !2880)
!2905 = !DILocation(line: 300, column: 44, scope: !2880)
!2906 = !DILocation(line: 300, column: 8, scope: !2880)
!2907 = !DILocation(line: 300, column: 6, scope: !2880)
!2908 = !DILocation(line: 301, column: 6, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 301, column: 6)
!2910 = !DILocation(line: 301, column: 10, scope: !2909)
!2911 = !DILocation(line: 301, column: 6, scope: !2880)
!2912 = !DILocation(line: 302, column: 10, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 301, column: 15)
!2914 = !DILocation(line: 302, column: 3, scope: !2913)
!2915 = !DILocation(line: 303, column: 13, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 303, column: 13)
!2917 = !DILocation(line: 303, column: 17, scope: !2916)
!2918 = !DILocation(line: 303, column: 13, scope: !2909)
!2919 = !DILocation(line: 304, column: 3, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 303, column: 22)
!2921 = !DILocation(line: 304, column: 10, scope: !2920)
!2922 = !DILocation(line: 304, column: 14, scope: !2920)
!2923 = !DILocation(line: 305, column: 11, scope: !2920)
!2924 = !DILocation(line: 305, column: 8, scope: !2920)
!2925 = !DILocation(line: 306, column: 2, scope: !2920)
!2926 = !DILocation(line: 307, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 307, column: 6)
!2928 = !DILocation(line: 307, column: 13, scope: !2927)
!2929 = !DILocation(line: 307, column: 18, scope: !2927)
!2930 = !DILocation(line: 307, column: 6, scope: !2880)
!2931 = !DILocation(line: 308, column: 10, scope: !2927)
!2932 = !DILocation(line: 308, column: 3, scope: !2927)
!2933 = !DILocation(line: 310, column: 29, scope: !2880)
!2934 = !DILocation(line: 310, column: 35, scope: !2880)
!2935 = !DILocation(line: 310, column: 41, scope: !2880)
!2936 = !DILocation(line: 310, column: 39, scope: !2880)
!2937 = !DILocation(line: 310, column: 46, scope: !2880)
!2938 = !DILocation(line: 310, column: 51, scope: !2880)
!2939 = !DILocation(line: 310, column: 10, scope: !2880)
!2940 = !DILocation(line: 310, column: 8, scope: !2880)
!2941 = !DILocation(line: 311, column: 6, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 311, column: 6)
!2943 = !DILocation(line: 311, column: 12, scope: !2942)
!2944 = !DILocation(line: 311, column: 6, scope: !2880)
!2945 = !DILocation(line: 312, column: 10, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 311, column: 17)
!2947 = !DILocation(line: 312, column: 3, scope: !2946)
!2948 = !DILocation(line: 313, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 313, column: 13)
!2950 = !DILocation(line: 313, column: 19, scope: !2949)
!2951 = !DILocation(line: 313, column: 13, scope: !2942)
!2952 = !DILocation(line: 314, column: 10, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 313, column: 24)
!2954 = !DILocation(line: 314, column: 7, scope: !2953)
!2955 = !DILocation(line: 315, column: 3, scope: !2953)
!2956 = !DILocation(line: 315, column: 10, scope: !2953)
!2957 = !DILocation(line: 315, column: 14, scope: !2953)
!2958 = !DILocation(line: 316, column: 2, scope: !2953)
!2959 = !DILocation(line: 318, column: 9, scope: !2880)
!2960 = !DILocation(line: 318, column: 2, scope: !2880)
!2961 = !DILocation(line: 319, column: 1, scope: !2880)
!2962 = distinct !DISubprogram(name: "acpi_device_setup_files", scope: !3, file: !3, line: 513, type: !2376, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!2963 = !DILocalVariable(name: "dev", arg: 1, scope: !2962, file: !3, line: 513, type: !93)
!2964 = !DILocation(line: 513, column: 49, scope: !2962)
!2965 = !DILocalVariable(name: "buffer", scope: !2962, file: !3, line: 515, type: !2729)
!2966 = !DILocation(line: 515, column: 21, scope: !2962)
!2967 = !DILocalVariable(name: "status", scope: !2962, file: !3, line: 516, type: !2430)
!2968 = !DILocation(line: 516, column: 14, scope: !2962)
!2969 = !DILocalVariable(name: "result", scope: !2962, file: !3, line: 517, type: !91)
!2970 = !DILocation(line: 517, column: 6, scope: !2962)
!2971 = !DILocation(line: 522, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 522, column: 6)
!2973 = !DILocation(line: 522, column: 11, scope: !2972)
!2974 = !DILocation(line: 522, column: 6, scope: !2962)
!2975 = !DILocation(line: 523, column: 32, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 522, column: 19)
!2977 = !DILocation(line: 523, column: 37, scope: !2976)
!2978 = !DILocation(line: 523, column: 12, scope: !2976)
!2979 = !DILocation(line: 523, column: 10, scope: !2976)
!2980 = !DILocation(line: 524, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 524, column: 7)
!2982 = !DILocation(line: 524, column: 7, scope: !2976)
!2983 = !DILocation(line: 525, column: 4, scope: !2981)
!2984 = !DILocation(line: 526, column: 2, scope: !2976)
!2985 = !DILocation(line: 528, column: 19, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 528, column: 6)
!2987 = !DILocation(line: 528, column: 24, scope: !2986)
!2988 = !DILocation(line: 528, column: 28, scope: !2986)
!2989 = !DILocation(line: 528, column: 7, scope: !2986)
!2990 = !DILocation(line: 528, column: 6, scope: !2962)
!2991 = !DILocation(line: 529, column: 32, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 528, column: 34)
!2993 = !DILocation(line: 529, column: 37, scope: !2992)
!2994 = !DILocation(line: 529, column: 12, scope: !2992)
!2995 = !DILocation(line: 529, column: 10, scope: !2992)
!2996 = !DILocation(line: 530, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 530, column: 7)
!2998 = !DILocation(line: 530, column: 7, scope: !2992)
!2999 = !DILocation(line: 531, column: 4, scope: !2997)
!3000 = !DILocation(line: 533, column: 32, scope: !2992)
!3001 = !DILocation(line: 533, column: 37, scope: !2992)
!3002 = !DILocation(line: 533, column: 12, scope: !2992)
!3003 = !DILocation(line: 533, column: 10, scope: !2992)
!3004 = !DILocation(line: 534, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 534, column: 7)
!3006 = !DILocation(line: 534, column: 7, scope: !2992)
!3007 = !DILocation(line: 535, column: 4, scope: !3005)
!3008 = !DILocation(line: 536, column: 2, scope: !2992)
!3009 = !DILocation(line: 541, column: 22, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 541, column: 6)
!3011 = !DILocation(line: 541, column: 27, scope: !3010)
!3012 = !DILocation(line: 541, column: 6, scope: !3010)
!3013 = !DILocation(line: 541, column: 6, scope: !2962)
!3014 = !DILocation(line: 542, column: 33, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 541, column: 44)
!3016 = !DILocation(line: 542, column: 38, scope: !3015)
!3017 = !DILocation(line: 542, column: 12, scope: !3015)
!3018 = !DILocation(line: 542, column: 10, scope: !3015)
!3019 = !DILocation(line: 544, column: 7, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 544, column: 7)
!3021 = !DILocation(line: 544, column: 7, scope: !3015)
!3022 = !DILocation(line: 545, column: 11, scope: !3020)
!3023 = !DILocation(line: 545, column: 19, scope: !3020)
!3024 = !DILocation(line: 545, column: 4, scope: !3020)
!3025 = !DILocation(line: 546, column: 29, scope: !3015)
!3026 = !DILocation(line: 546, column: 22, scope: !3015)
!3027 = !DILocation(line: 546, column: 3, scope: !3015)
!3028 = !DILocation(line: 546, column: 8, scope: !3015)
!3029 = !DILocation(line: 546, column: 12, scope: !3015)
!3030 = !DILocation(line: 546, column: 20, scope: !3015)
!3031 = !DILocation(line: 547, column: 32, scope: !3015)
!3032 = !DILocation(line: 547, column: 37, scope: !3015)
!3033 = !DILocation(line: 547, column: 12, scope: !3015)
!3034 = !DILocation(line: 547, column: 10, scope: !3015)
!3035 = !DILocation(line: 548, column: 7, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 548, column: 7)
!3037 = !DILocation(line: 548, column: 7, scope: !3015)
!3038 = !DILocation(line: 549, column: 4, scope: !3036)
!3039 = !DILocation(line: 550, column: 2, scope: !3015)
!3040 = !DILocation(line: 552, column: 6, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 552, column: 6)
!3042 = !DILocation(line: 552, column: 11, scope: !3041)
!3043 = !DILocation(line: 552, column: 15, scope: !3041)
!3044 = !DILocation(line: 552, column: 20, scope: !3041)
!3045 = !DILocation(line: 552, column: 6, scope: !2962)
!3046 = !DILocation(line: 553, column: 32, scope: !3041)
!3047 = !DILocation(line: 553, column: 37, scope: !3041)
!3048 = !DILocation(line: 553, column: 12, scope: !3041)
!3049 = !DILocation(line: 553, column: 10, scope: !3041)
!3050 = !DILocation(line: 553, column: 3, scope: !3041)
!3051 = !DILocation(line: 554, column: 6, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 554, column: 6)
!3053 = !DILocation(line: 554, column: 11, scope: !3052)
!3054 = !DILocation(line: 554, column: 15, scope: !3052)
!3055 = !DILocation(line: 554, column: 6, scope: !2962)
!3056 = !DILocation(line: 555, column: 32, scope: !3052)
!3057 = !DILocation(line: 555, column: 37, scope: !3052)
!3058 = !DILocation(line: 555, column: 12, scope: !3052)
!3059 = !DILocation(line: 555, column: 10, scope: !3052)
!3060 = !DILocation(line: 555, column: 3, scope: !3052)
!3061 = !DILocation(line: 557, column: 22, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 557, column: 6)
!3063 = !DILocation(line: 557, column: 27, scope: !3062)
!3064 = !DILocation(line: 557, column: 6, scope: !3062)
!3065 = !DILocation(line: 557, column: 6, scope: !2962)
!3066 = !DILocation(line: 558, column: 32, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 557, column: 44)
!3068 = !DILocation(line: 558, column: 37, scope: !3067)
!3069 = !DILocation(line: 558, column: 12, scope: !3067)
!3070 = !DILocation(line: 558, column: 10, scope: !3067)
!3071 = !DILocation(line: 559, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 559, column: 7)
!3073 = !DILocation(line: 559, column: 7, scope: !3067)
!3074 = !DILocation(line: 560, column: 4, scope: !3072)
!3075 = !DILocation(line: 561, column: 2, scope: !3067)
!3076 = !DILocation(line: 563, column: 22, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 563, column: 6)
!3078 = !DILocation(line: 563, column: 27, scope: !3077)
!3079 = !DILocation(line: 563, column: 6, scope: !3077)
!3080 = !DILocation(line: 563, column: 6, scope: !2962)
!3081 = !DILocation(line: 564, column: 32, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 563, column: 44)
!3083 = !DILocation(line: 564, column: 37, scope: !3082)
!3084 = !DILocation(line: 564, column: 12, scope: !3082)
!3085 = !DILocation(line: 564, column: 10, scope: !3082)
!3086 = !DILocation(line: 565, column: 7, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 565, column: 7)
!3088 = !DILocation(line: 565, column: 7, scope: !3082)
!3089 = !DILocation(line: 566, column: 4, scope: !3087)
!3090 = !DILocation(line: 567, column: 2, scope: !3082)
!3091 = !DILocation(line: 569, column: 22, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 569, column: 6)
!3093 = !DILocation(line: 569, column: 27, scope: !3092)
!3094 = !DILocation(line: 569, column: 6, scope: !3092)
!3095 = !DILocation(line: 569, column: 6, scope: !2962)
!3096 = !DILocation(line: 570, column: 32, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 569, column: 44)
!3098 = !DILocation(line: 570, column: 37, scope: !3097)
!3099 = !DILocation(line: 570, column: 12, scope: !3097)
!3100 = !DILocation(line: 570, column: 10, scope: !3097)
!3101 = !DILocation(line: 571, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 571, column: 7)
!3103 = !DILocation(line: 571, column: 7, scope: !3097)
!3104 = !DILocation(line: 572, column: 4, scope: !3102)
!3105 = !DILocation(line: 573, column: 2, scope: !3097)
!3106 = !DILocation(line: 579, column: 22, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 579, column: 6)
!3108 = !DILocation(line: 579, column: 27, scope: !3107)
!3109 = !DILocation(line: 579, column: 6, scope: !3107)
!3110 = !DILocation(line: 579, column: 6, scope: !2962)
!3111 = !DILocation(line: 580, column: 32, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 579, column: 44)
!3113 = !DILocation(line: 580, column: 37, scope: !3112)
!3114 = !DILocation(line: 580, column: 12, scope: !3112)
!3115 = !DILocation(line: 580, column: 10, scope: !3112)
!3116 = !DILocation(line: 581, column: 7, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 581, column: 7)
!3118 = !DILocation(line: 581, column: 7, scope: !3112)
!3119 = !DILocation(line: 582, column: 11, scope: !3117)
!3120 = !DILocation(line: 582, column: 4, scope: !3117)
!3121 = !DILocation(line: 583, column: 2, scope: !3112)
!3122 = !DILocation(line: 585, column: 6, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 585, column: 6)
!3124 = !DILocation(line: 585, column: 11, scope: !3123)
!3125 = !DILocation(line: 585, column: 17, scope: !3123)
!3126 = !DILocation(line: 585, column: 6, scope: !2962)
!3127 = !DILocation(line: 586, column: 32, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 585, column: 35)
!3129 = !DILocation(line: 586, column: 37, scope: !3128)
!3130 = !DILocation(line: 586, column: 12, scope: !3128)
!3131 = !DILocation(line: 586, column: 10, scope: !3128)
!3132 = !DILocation(line: 587, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 587, column: 7)
!3134 = !DILocation(line: 587, column: 7, scope: !3128)
!3135 = !DILocation(line: 588, column: 11, scope: !3133)
!3136 = !DILocation(line: 588, column: 4, scope: !3133)
!3137 = !DILocation(line: 590, column: 7, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 590, column: 7)
!3139 = !DILocation(line: 590, column: 12, scope: !3138)
!3140 = !DILocation(line: 590, column: 18, scope: !3138)
!3141 = !DILocation(line: 590, column: 24, scope: !3138)
!3142 = !DILocation(line: 590, column: 7, scope: !3128)
!3143 = !DILocation(line: 591, column: 33, scope: !3138)
!3144 = !DILocation(line: 591, column: 38, scope: !3138)
!3145 = !DILocation(line: 591, column: 13, scope: !3138)
!3146 = !DILocation(line: 591, column: 11, scope: !3138)
!3147 = !DILocation(line: 591, column: 4, scope: !3138)
!3148 = !DILocation(line: 593, column: 2, scope: !3128)
!3149 = !DILocation(line: 595, column: 31, scope: !2962)
!3150 = !DILocation(line: 595, column: 36, scope: !2962)
!3151 = !DILocation(line: 595, column: 40, scope: !2962)
!3152 = !DILocation(line: 595, column: 47, scope: !2962)
!3153 = !DILocation(line: 595, column: 52, scope: !2962)
!3154 = !DILocation(line: 595, column: 2, scope: !2962)
!3155 = !DILabel(scope: !2962, name: "end", file: !3, line: 597)
!3156 = !DILocation(line: 597, column: 1, scope: !2962)
!3157 = !DILocation(line: 598, column: 9, scope: !2962)
!3158 = !DILocation(line: 598, column: 2, scope: !2962)
!3159 = !DILocation(line: 599, column: 1, scope: !2962)
!3160 = distinct !DISubprogram(name: "acpi_expose_nondev_subnodes", scope: !3, file: !3, line: 85, type: !3161, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !144, !3163}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!3164 = !DILocalVariable(name: "kobj", arg: 1, scope: !3160, file: !3, line: 85, type: !144)
!3165 = !DILocation(line: 85, column: 57, scope: !3160)
!3166 = !DILocalVariable(name: "data", arg: 2, scope: !3160, file: !3, line: 86, type: !3163)
!3167 = !DILocation(line: 86, column: 31, scope: !3160)
!3168 = !DILocalVariable(name: "list", scope: !3160, file: !3, line: 88, type: !75)
!3169 = !DILocation(line: 88, column: 20, scope: !3160)
!3170 = !DILocation(line: 88, column: 28, scope: !3160)
!3171 = !DILocation(line: 88, column: 34, scope: !3160)
!3172 = !DILocalVariable(name: "dn", scope: !3160, file: !3, line: 89, type: !2431)
!3173 = !DILocation(line: 89, column: 25, scope: !3160)
!3174 = !DILocation(line: 91, column: 17, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 91, column: 6)
!3176 = !DILocation(line: 91, column: 6, scope: !3175)
!3177 = !DILocation(line: 91, column: 6, scope: !3160)
!3178 = !DILocation(line: 92, column: 3, scope: !3175)
!3179 = !DILocalVariable(name: "__mptr", scope: !3180, file: !3, line: 94, type: !71)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 94, column: 2)
!3181 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 94, column: 2)
!3182 = !DILocation(line: 94, column: 2, scope: !3180)
!3183 = !DILocation(line: 94, column: 2, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 94, column: 2)
!3185 = !DILocation(line: 94, column: 2, scope: !3181)
!3186 = !DILocation(line: 94, column: 2, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 94, column: 2)
!3188 = !DILocalVariable(name: "ret", scope: !3189, file: !3, line: 95, type: !91)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 94, column: 41)
!3190 = !DILocation(line: 95, column: 7, scope: !3189)
!3191 = !DILocation(line: 97, column: 3, scope: !3189)
!3192 = !DILocation(line: 98, column: 31, scope: !3189)
!3193 = !DILocation(line: 98, column: 35, scope: !3189)
!3194 = !DILocation(line: 99, column: 9, scope: !3189)
!3195 = !DILocation(line: 99, column: 21, scope: !3189)
!3196 = !DILocation(line: 99, column: 25, scope: !3189)
!3197 = !DILocation(line: 98, column: 9, scope: !3189)
!3198 = !DILocation(line: 98, column: 7, scope: !3189)
!3199 = !DILocation(line: 100, column: 8, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 100, column: 7)
!3201 = !DILocation(line: 100, column: 7, scope: !3189)
!3202 = !DILocation(line: 101, column: 33, scope: !3200)
!3203 = !DILocation(line: 101, column: 37, scope: !3200)
!3204 = !DILocation(line: 101, column: 44, scope: !3200)
!3205 = !DILocation(line: 101, column: 48, scope: !3200)
!3206 = !DILocation(line: 101, column: 4, scope: !3200)
!3207 = !DILocation(line: 102, column: 12, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 102, column: 12)
!3209 = !DILocation(line: 102, column: 16, scope: !3208)
!3210 = !DILocation(line: 102, column: 12, scope: !3200)
!3211 = !DILocation(line: 103, column: 4, scope: !3208)
!3212 = !DILocation(line: 104, column: 2, scope: !3189)
!3213 = !DILocalVariable(name: "__mptr", scope: !3214, file: !3, line: 94, type: !71)
!3214 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 94, column: 2)
!3215 = !DILocation(line: 94, column: 2, scope: !3214)
!3216 = !DILocation(line: 94, column: 2, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 94, column: 2)
!3218 = distinct !{!3218, !3185, !3219}
!3219 = !DILocation(line: 104, column: 2, scope: !3181)
!3220 = !DILocation(line: 105, column: 1, scope: !3160)
!3221 = distinct !DISubprogram(name: "acpi_device_remove_files", scope: !3, file: !3, line: 605, type: !2366, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3222 = !DILocalVariable(name: "dev", arg: 1, scope: !3221, file: !3, line: 605, type: !93)
!3223 = !DILocation(line: 605, column: 51, scope: !3221)
!3224 = !DILocation(line: 607, column: 29, scope: !3221)
!3225 = !DILocation(line: 607, column: 34, scope: !3221)
!3226 = !DILocation(line: 607, column: 2, scope: !3221)
!3227 = !DILocation(line: 609, column: 6, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 609, column: 6)
!3229 = !DILocation(line: 609, column: 11, scope: !3228)
!3230 = !DILocation(line: 609, column: 17, scope: !3228)
!3231 = !DILocation(line: 609, column: 6, scope: !3221)
!3232 = !DILocation(line: 610, column: 23, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 609, column: 35)
!3234 = !DILocation(line: 610, column: 28, scope: !3233)
!3235 = !DILocation(line: 610, column: 3, scope: !3233)
!3236 = !DILocation(line: 611, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 611, column: 7)
!3238 = !DILocation(line: 611, column: 12, scope: !3237)
!3239 = !DILocation(line: 611, column: 18, scope: !3237)
!3240 = !DILocation(line: 611, column: 24, scope: !3237)
!3241 = !DILocation(line: 611, column: 7, scope: !3233)
!3242 = !DILocation(line: 612, column: 24, scope: !3237)
!3243 = !DILocation(line: 612, column: 29, scope: !3237)
!3244 = !DILocation(line: 612, column: 4, scope: !3237)
!3245 = !DILocation(line: 614, column: 2, scope: !3233)
!3246 = !DILocation(line: 619, column: 22, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 619, column: 6)
!3248 = !DILocation(line: 619, column: 27, scope: !3247)
!3249 = !DILocation(line: 619, column: 6, scope: !3247)
!3250 = !DILocation(line: 619, column: 6, scope: !3221)
!3251 = !DILocation(line: 620, column: 9, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 619, column: 44)
!3253 = !DILocation(line: 620, column: 14, scope: !3252)
!3254 = !DILocation(line: 620, column: 18, scope: !3252)
!3255 = !DILocation(line: 620, column: 3, scope: !3252)
!3256 = !DILocation(line: 621, column: 23, scope: !3252)
!3257 = !DILocation(line: 621, column: 28, scope: !3252)
!3258 = !DILocation(line: 621, column: 3, scope: !3252)
!3259 = !DILocation(line: 622, column: 2, scope: !3252)
!3260 = !DILocation(line: 626, column: 22, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 626, column: 6)
!3262 = !DILocation(line: 626, column: 27, scope: !3261)
!3263 = !DILocation(line: 626, column: 6, scope: !3261)
!3264 = !DILocation(line: 626, column: 6, scope: !3221)
!3265 = !DILocation(line: 627, column: 23, scope: !3261)
!3266 = !DILocation(line: 627, column: 28, scope: !3261)
!3267 = !DILocation(line: 627, column: 3, scope: !3261)
!3268 = !DILocation(line: 629, column: 22, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 629, column: 6)
!3270 = !DILocation(line: 629, column: 27, scope: !3269)
!3271 = !DILocation(line: 629, column: 6, scope: !3269)
!3272 = !DILocation(line: 629, column: 6, scope: !3221)
!3273 = !DILocation(line: 630, column: 23, scope: !3269)
!3274 = !DILocation(line: 630, column: 28, scope: !3269)
!3275 = !DILocation(line: 630, column: 3, scope: !3269)
!3276 = !DILocation(line: 632, column: 22, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 632, column: 6)
!3278 = !DILocation(line: 632, column: 27, scope: !3277)
!3279 = !DILocation(line: 632, column: 6, scope: !3277)
!3280 = !DILocation(line: 632, column: 6, scope: !3221)
!3281 = !DILocation(line: 633, column: 23, scope: !3277)
!3282 = !DILocation(line: 633, column: 28, scope: !3277)
!3283 = !DILocation(line: 633, column: 3, scope: !3277)
!3284 = !DILocation(line: 635, column: 6, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 635, column: 6)
!3286 = !DILocation(line: 635, column: 11, scope: !3285)
!3287 = !DILocation(line: 635, column: 15, scope: !3285)
!3288 = !DILocation(line: 635, column: 6, scope: !3221)
!3289 = !DILocation(line: 636, column: 23, scope: !3285)
!3290 = !DILocation(line: 636, column: 28, scope: !3285)
!3291 = !DILocation(line: 636, column: 3, scope: !3285)
!3292 = !DILocation(line: 637, column: 6, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 637, column: 6)
!3294 = !DILocation(line: 637, column: 11, scope: !3293)
!3295 = !DILocation(line: 637, column: 15, scope: !3293)
!3296 = !DILocation(line: 637, column: 20, scope: !3293)
!3297 = !DILocation(line: 637, column: 6, scope: !3221)
!3298 = !DILocation(line: 638, column: 23, scope: !3293)
!3299 = !DILocation(line: 638, column: 28, scope: !3293)
!3300 = !DILocation(line: 638, column: 3, scope: !3293)
!3301 = !DILocation(line: 639, column: 22, scope: !3221)
!3302 = !DILocation(line: 639, column: 27, scope: !3221)
!3303 = !DILocation(line: 639, column: 2, scope: !3221)
!3304 = !DILocation(line: 640, column: 22, scope: !3221)
!3305 = !DILocation(line: 640, column: 27, scope: !3221)
!3306 = !DILocation(line: 640, column: 2, scope: !3221)
!3307 = !DILocation(line: 641, column: 22, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 641, column: 6)
!3309 = !DILocation(line: 641, column: 27, scope: !3308)
!3310 = !DILocation(line: 641, column: 6, scope: !3308)
!3311 = !DILocation(line: 641, column: 6, scope: !3221)
!3312 = !DILocation(line: 642, column: 23, scope: !3308)
!3313 = !DILocation(line: 642, column: 28, scope: !3308)
!3314 = !DILocation(line: 642, column: 3, scope: !3308)
!3315 = !DILocation(line: 643, column: 6, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 643, column: 6)
!3317 = !DILocation(line: 643, column: 11, scope: !3316)
!3318 = !DILocation(line: 643, column: 6, scope: !3221)
!3319 = !DILocation(line: 644, column: 23, scope: !3316)
!3320 = !DILocation(line: 644, column: 28, scope: !3316)
!3321 = !DILocation(line: 644, column: 3, scope: !3316)
!3322 = !DILocation(line: 645, column: 1, scope: !3221)
!3323 = distinct !DISubprogram(name: "acpi_hide_nondev_subnodes", scope: !3, file: !3, line: 107, type: !3324, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3163}
!3326 = !DILocalVariable(name: "data", arg: 1, scope: !3323, file: !3, line: 107, type: !3163)
!3327 = !DILocation(line: 107, column: 64, scope: !3323)
!3328 = !DILocalVariable(name: "list", scope: !3323, file: !3, line: 109, type: !75)
!3329 = !DILocation(line: 109, column: 20, scope: !3323)
!3330 = !DILocation(line: 109, column: 28, scope: !3323)
!3331 = !DILocation(line: 109, column: 34, scope: !3323)
!3332 = !DILocalVariable(name: "dn", scope: !3323, file: !3, line: 110, type: !2431)
!3333 = !DILocation(line: 110, column: 25, scope: !3323)
!3334 = !DILocation(line: 112, column: 17, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 112, column: 6)
!3336 = !DILocation(line: 112, column: 6, scope: !3335)
!3337 = !DILocation(line: 112, column: 6, scope: !3323)
!3338 = !DILocation(line: 113, column: 3, scope: !3335)
!3339 = !DILocalVariable(name: "__mptr", scope: !3340, file: !3, line: 115, type: !71)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 115, column: 2)
!3341 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 115, column: 2)
!3342 = !DILocation(line: 115, column: 2, scope: !3340)
!3343 = !DILocation(line: 115, column: 2, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 115, column: 2)
!3345 = !DILocation(line: 115, column: 2, scope: !3341)
!3346 = !DILocation(line: 115, column: 2, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 115, column: 2)
!3348 = !DILocation(line: 116, column: 30, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 115, column: 49)
!3350 = !DILocation(line: 116, column: 34, scope: !3349)
!3351 = !DILocation(line: 116, column: 3, scope: !3349)
!3352 = !DILocation(line: 117, column: 16, scope: !3349)
!3353 = !DILocation(line: 117, column: 20, scope: !3349)
!3354 = !DILocation(line: 117, column: 3, scope: !3349)
!3355 = !DILocation(line: 118, column: 2, scope: !3349)
!3356 = !DILocalVariable(name: "__mptr", scope: !3357, file: !3, line: 115, type: !71)
!3357 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 115, column: 2)
!3358 = !DILocation(line: 115, column: 2, scope: !3357)
!3359 = !DILocation(line: 115, column: 2, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 115, column: 2)
!3361 = distinct !{!3361, !3345, !3362}
!3362 = !DILocation(line: 118, column: 2, scope: !3341)
!3363 = !DILocation(line: 119, column: 1, scope: !3323)
!3364 = distinct !DISubprogram(name: "__tolower", scope: !3365, file: !3365, line: 42, type: !3366, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3365 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!92, !92}
!3368 = !DILocalVariable(name: "c", arg: 1, scope: !3364, file: !3365, line: 42, type: !92)
!3369 = !DILocation(line: 42, column: 53, scope: !3364)
!3370 = !DILocation(line: 44, column: 6, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !3365, line: 44, column: 6)
!3372 = !DILocation(line: 44, column: 6, scope: !3364)
!3373 = !DILocation(line: 45, column: 5, scope: !3371)
!3374 = !DILocation(line: 45, column: 3, scope: !3371)
!3375 = !DILocation(line: 46, column: 9, scope: !3364)
!3376 = !DILocation(line: 46, column: 2, scope: !3364)
!3377 = distinct !DISubprogram(name: "acpi_os_free", scope: !3378, file: !3378, line: 60, type: !1441, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3378 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!3379 = !DILocalVariable(name: "memory", arg: 1, scope: !3377, file: !3378, line: 60, type: !71)
!3380 = !DILocation(line: 60, column: 39, scope: !3377)
!3381 = !DILocation(line: 62, column: 8, scope: !3377)
!3382 = !DILocation(line: 62, column: 2, scope: !3377)
!3383 = !DILocation(line: 63, column: 1, scope: !3377)
!3384 = distinct !DISubprogram(name: "acpi_device_path_show", scope: !3, file: !3, line: 430, type: !2462, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3385 = !DILocalVariable(name: "dev", arg: 1, scope: !3384, file: !3, line: 430, type: !1630)
!3386 = !DILocation(line: 430, column: 53, scope: !3384)
!3387 = !DILocalVariable(name: "attr", arg: 2, scope: !3384, file: !3, line: 431, type: !2464)
!3388 = !DILocation(line: 431, column: 35, scope: !3384)
!3389 = !DILocalVariable(name: "buf", arg: 3, scope: !3384, file: !3, line: 431, type: !90)
!3390 = !DILocation(line: 431, column: 47, scope: !3384)
!3391 = !DILocalVariable(name: "acpi_dev", scope: !3384, file: !3, line: 433, type: !93)
!3392 = !DILocation(line: 433, column: 22, scope: !3384)
!3393 = !DILocalVariable(name: "__mptr", scope: !3394, file: !3, line: 433, type: !71)
!3394 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 433, column: 33)
!3395 = !DILocation(line: 433, column: 33, scope: !3394)
!3396 = !DILocation(line: 433, column: 33, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 433, column: 33)
!3398 = !DILocation(line: 435, column: 26, scope: !3384)
!3399 = !DILocation(line: 435, column: 36, scope: !3384)
!3400 = !DILocation(line: 435, column: 44, scope: !3384)
!3401 = !DILocation(line: 435, column: 9, scope: !3384)
!3402 = !DILocation(line: 435, column: 2, scope: !3384)
!3403 = distinct !DISubprogram(name: "acpi_object_path", scope: !3, file: !3, line: 21, type: !3404, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!222, !98, !90}
!3406 = !DILocalVariable(name: "handle", arg: 1, scope: !3403, file: !3, line: 21, type: !98)
!3407 = !DILocation(line: 21, column: 45, scope: !3403)
!3408 = !DILocalVariable(name: "buf", arg: 2, scope: !3403, file: !3, line: 21, type: !90)
!3409 = !DILocation(line: 21, column: 59, scope: !3403)
!3410 = !DILocalVariable(name: "path", scope: !3403, file: !3, line: 23, type: !2729)
!3411 = !DILocation(line: 23, column: 21, scope: !3403)
!3412 = !DILocalVariable(name: "result", scope: !3403, file: !3, line: 24, type: !91)
!3413 = !DILocation(line: 24, column: 6, scope: !3403)
!3414 = !DILocation(line: 26, column: 25, scope: !3403)
!3415 = !DILocation(line: 26, column: 11, scope: !3403)
!3416 = !DILocation(line: 26, column: 9, scope: !3403)
!3417 = !DILocation(line: 27, column: 6, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 27, column: 6)
!3419 = !DILocation(line: 27, column: 6, scope: !3403)
!3420 = !DILocation(line: 28, column: 10, scope: !3418)
!3421 = !DILocation(line: 28, column: 3, scope: !3418)
!3422 = !DILocation(line: 30, column: 19, scope: !3403)
!3423 = !DILocation(line: 30, column: 45, scope: !3403)
!3424 = !DILocation(line: 30, column: 11, scope: !3403)
!3425 = !DILocation(line: 30, column: 9, scope: !3403)
!3426 = !DILocation(line: 31, column: 13, scope: !3403)
!3427 = !DILocation(line: 31, column: 2, scope: !3403)
!3428 = !DILocation(line: 32, column: 9, scope: !3403)
!3429 = !DILocation(line: 32, column: 2, scope: !3403)
!3430 = !DILocation(line: 33, column: 1, scope: !3403)
!3431 = distinct !DISubprogram(name: "acpi_device_hid_show", scope: !3, file: !3, line: 401, type: !2462, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3432 = !DILocalVariable(name: "dev", arg: 1, scope: !3431, file: !3, line: 401, type: !1630)
!3433 = !DILocation(line: 401, column: 37, scope: !3431)
!3434 = !DILocalVariable(name: "attr", arg: 2, scope: !3431, file: !3, line: 401, type: !2464)
!3435 = !DILocation(line: 401, column: 67, scope: !3431)
!3436 = !DILocalVariable(name: "buf", arg: 3, scope: !3431, file: !3, line: 401, type: !90)
!3437 = !DILocation(line: 401, column: 79, scope: !3431)
!3438 = !DILocalVariable(name: "acpi_dev", scope: !3431, file: !3, line: 403, type: !93)
!3439 = !DILocation(line: 403, column: 22, scope: !3431)
!3440 = !DILocalVariable(name: "__mptr", scope: !3441, file: !3, line: 403, type: !71)
!3441 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 403, column: 33)
!3442 = !DILocation(line: 403, column: 33, scope: !3441)
!3443 = !DILocation(line: 403, column: 33, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 403, column: 33)
!3445 = !DILocation(line: 405, column: 17, scope: !3431)
!3446 = !DILocation(line: 405, column: 46, scope: !3431)
!3447 = !DILocation(line: 405, column: 30, scope: !3431)
!3448 = !DILocation(line: 405, column: 9, scope: !3431)
!3449 = !DILocation(line: 405, column: 2, scope: !3431)
!3450 = distinct !DISubprogram(name: "acpi_device_modalias_show", scope: !3, file: !3, line: 336, type: !2462, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3451 = !DILocalVariable(name: "dev", arg: 1, scope: !3450, file: !3, line: 336, type: !1630)
!3452 = !DILocation(line: 336, column: 42, scope: !3450)
!3453 = !DILocalVariable(name: "attr", arg: 2, scope: !3450, file: !3, line: 336, type: !2464)
!3454 = !DILocation(line: 336, column: 72, scope: !3450)
!3455 = !DILocalVariable(name: "buf", arg: 3, scope: !3450, file: !3, line: 336, type: !90)
!3456 = !DILocation(line: 336, column: 84, scope: !3450)
!3457 = !DILocalVariable(name: "__mptr", scope: !3458, file: !3, line: 338, type: !71)
!3458 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 338, column: 32)
!3459 = !DILocation(line: 338, column: 32, scope: !3458)
!3460 = !DILocation(line: 338, column: 32, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 338, column: 32)
!3462 = !DILocation(line: 338, column: 53, scope: !3450)
!3463 = !DILocation(line: 338, column: 9, scope: !3450)
!3464 = !DILocation(line: 338, column: 2, scope: !3450)
!3465 = distinct !DISubprogram(name: "description_show", scope: !3, file: !3, line: 440, type: !2462, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3466 = !DILocalVariable(name: "dev", arg: 1, scope: !3465, file: !3, line: 440, type: !1630)
!3467 = !DILocation(line: 440, column: 48, scope: !3465)
!3468 = !DILocalVariable(name: "attr", arg: 2, scope: !3465, file: !3, line: 441, type: !2464)
!3469 = !DILocation(line: 441, column: 30, scope: !3465)
!3470 = !DILocalVariable(name: "buf", arg: 3, scope: !3465, file: !3, line: 442, type: !90)
!3471 = !DILocation(line: 442, column: 11, scope: !3465)
!3472 = !DILocalVariable(name: "acpi_dev", scope: !3465, file: !3, line: 443, type: !93)
!3473 = !DILocation(line: 443, column: 22, scope: !3465)
!3474 = !DILocalVariable(name: "__mptr", scope: !3475, file: !3, line: 443, type: !71)
!3475 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 443, column: 33)
!3476 = !DILocation(line: 443, column: 33, scope: !3475)
!3477 = !DILocation(line: 443, column: 33, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 443, column: 33)
!3479 = !DILocalVariable(name: "result", scope: !3465, file: !3, line: 444, type: !91)
!3480 = !DILocation(line: 444, column: 6, scope: !3465)
!3481 = !DILocation(line: 446, column: 6, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 446, column: 6)
!3483 = !DILocation(line: 446, column: 16, scope: !3482)
!3484 = !DILocation(line: 446, column: 20, scope: !3482)
!3485 = !DILocation(line: 446, column: 28, scope: !3482)
!3486 = !DILocation(line: 446, column: 6, scope: !3465)
!3487 = !DILocation(line: 447, column: 3, scope: !3482)
!3488 = !DILocation(line: 454, column: 14, scope: !3465)
!3489 = !DILocation(line: 454, column: 24, scope: !3465)
!3490 = !DILocation(line: 454, column: 28, scope: !3465)
!3491 = !DILocation(line: 454, column: 37, scope: !3465)
!3492 = !DILocation(line: 454, column: 44, scope: !3465)
!3493 = !DILocation(line: 454, column: 3, scope: !3465)
!3494 = !DILocation(line: 455, column: 3, scope: !3465)
!3495 = !DILocation(line: 455, column: 13, scope: !3465)
!3496 = !DILocation(line: 455, column: 17, scope: !3465)
!3497 = !DILocation(line: 455, column: 26, scope: !3465)
!3498 = !DILocation(line: 455, column: 33, scope: !3465)
!3499 = !DILocation(line: 456, column: 24, scope: !3465)
!3500 = !DILocation(line: 453, column: 11, scope: !3465)
!3501 = !DILocation(line: 453, column: 9, scope: !3465)
!3502 = !DILocation(line: 459, column: 2, scope: !3465)
!3503 = !DILocation(line: 459, column: 12, scope: !3465)
!3504 = !DILocation(line: 459, column: 16, scope: !3465)
!3505 = !DILocation(line: 461, column: 9, scope: !3465)
!3506 = !DILocation(line: 461, column: 2, scope: !3465)
!3507 = !DILocation(line: 462, column: 1, scope: !3465)
!3508 = distinct !DISubprogram(name: "acpi_device_adr_show", scope: !3, file: !3, line: 418, type: !2462, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3509 = !DILocalVariable(name: "dev", arg: 1, scope: !3508, file: !3, line: 418, type: !1630)
!3510 = !DILocation(line: 418, column: 52, scope: !3508)
!3511 = !DILocalVariable(name: "attr", arg: 2, scope: !3508, file: !3, line: 419, type: !2464)
!3512 = !DILocation(line: 419, column: 34, scope: !3508)
!3513 = !DILocalVariable(name: "buf", arg: 3, scope: !3508, file: !3, line: 419, type: !90)
!3514 = !DILocation(line: 419, column: 46, scope: !3508)
!3515 = !DILocalVariable(name: "acpi_dev", scope: !3508, file: !3, line: 421, type: !93)
!3516 = !DILocation(line: 421, column: 22, scope: !3508)
!3517 = !DILocalVariable(name: "__mptr", scope: !3518, file: !3, line: 421, type: !71)
!3518 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 421, column: 33)
!3519 = !DILocation(line: 421, column: 33, scope: !3518)
!3520 = !DILocation(line: 421, column: 33, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 421, column: 33)
!3522 = !DILocation(line: 423, column: 6, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 423, column: 6)
!3524 = !DILocation(line: 423, column: 16, scope: !3523)
!3525 = !DILocation(line: 423, column: 20, scope: !3523)
!3526 = !DILocation(line: 423, column: 32, scope: !3523)
!3527 = !DILocation(line: 423, column: 6, scope: !3508)
!3528 = !DILocation(line: 424, column: 18, scope: !3523)
!3529 = !DILocation(line: 424, column: 38, scope: !3523)
!3530 = !DILocation(line: 424, column: 48, scope: !3523)
!3531 = !DILocation(line: 424, column: 52, scope: !3523)
!3532 = !DILocation(line: 424, column: 10, scope: !3523)
!3533 = !DILocation(line: 424, column: 3, scope: !3523)
!3534 = !DILocation(line: 426, column: 18, scope: !3523)
!3535 = !DILocation(line: 426, column: 37, scope: !3523)
!3536 = !DILocation(line: 426, column: 47, scope: !3523)
!3537 = !DILocation(line: 426, column: 51, scope: !3523)
!3538 = !DILocation(line: 426, column: 10, scope: !3523)
!3539 = !DILocation(line: 426, column: 3, scope: !3523)
!3540 = !DILocation(line: 427, column: 1, scope: !3508)
!3541 = distinct !DISubprogram(name: "acpi_device_uid_show", scope: !3, file: !3, line: 409, type: !2462, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3542 = !DILocalVariable(name: "dev", arg: 1, scope: !3541, file: !3, line: 409, type: !1630)
!3543 = !DILocation(line: 409, column: 52, scope: !3541)
!3544 = !DILocalVariable(name: "attr", arg: 2, scope: !3541, file: !3, line: 410, type: !2464)
!3545 = !DILocation(line: 410, column: 34, scope: !3541)
!3546 = !DILocalVariable(name: "buf", arg: 3, scope: !3541, file: !3, line: 410, type: !90)
!3547 = !DILocation(line: 410, column: 46, scope: !3541)
!3548 = !DILocalVariable(name: "acpi_dev", scope: !3541, file: !3, line: 412, type: !93)
!3549 = !DILocation(line: 412, column: 22, scope: !3541)
!3550 = !DILocalVariable(name: "__mptr", scope: !3551, file: !3, line: 412, type: !71)
!3551 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 412, column: 33)
!3552 = !DILocation(line: 412, column: 33, scope: !3551)
!3553 = !DILocation(line: 412, column: 33, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 412, column: 33)
!3555 = !DILocation(line: 414, column: 17, scope: !3541)
!3556 = !DILocation(line: 414, column: 30, scope: !3541)
!3557 = !DILocation(line: 414, column: 40, scope: !3541)
!3558 = !DILocation(line: 414, column: 44, scope: !3541)
!3559 = !DILocation(line: 414, column: 9, scope: !3541)
!3560 = !DILocation(line: 414, column: 2, scope: !3541)
!3561 = distinct !DISubprogram(name: "acpi_device_sun_show", scope: !3, file: !3, line: 466, type: !2462, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3562 = !DILocalVariable(name: "dev", arg: 1, scope: !3561, file: !3, line: 466, type: !1630)
!3563 = !DILocation(line: 466, column: 37, scope: !3561)
!3564 = !DILocalVariable(name: "attr", arg: 2, scope: !3561, file: !3, line: 466, type: !2464)
!3565 = !DILocation(line: 466, column: 67, scope: !3561)
!3566 = !DILocalVariable(name: "buf", arg: 3, scope: !3561, file: !3, line: 467, type: !90)
!3567 = !DILocation(line: 467, column: 14, scope: !3561)
!3568 = !DILocalVariable(name: "acpi_dev", scope: !3561, file: !3, line: 468, type: !93)
!3569 = !DILocation(line: 468, column: 22, scope: !3561)
!3570 = !DILocalVariable(name: "__mptr", scope: !3571, file: !3, line: 468, type: !71)
!3571 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 468, column: 33)
!3572 = !DILocation(line: 468, column: 33, scope: !3571)
!3573 = !DILocation(line: 468, column: 33, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !3, line: 468, column: 33)
!3575 = !DILocalVariable(name: "status", scope: !3561, file: !3, line: 469, type: !2430)
!3576 = !DILocation(line: 469, column: 14, scope: !3561)
!3577 = !DILocalVariable(name: "sun", scope: !3561, file: !3, line: 470, type: !314)
!3578 = !DILocation(line: 470, column: 21, scope: !3561)
!3579 = !DILocation(line: 472, column: 33, scope: !3561)
!3580 = !DILocation(line: 472, column: 43, scope: !3561)
!3581 = !DILocation(line: 472, column: 11, scope: !3561)
!3582 = !DILocation(line: 472, column: 9, scope: !3561)
!3583 = !DILocation(line: 473, column: 6, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 473, column: 6)
!3585 = !DILocation(line: 473, column: 6, scope: !3561)
!3586 = !DILocation(line: 474, column: 3, scope: !3584)
!3587 = !DILocation(line: 476, column: 17, scope: !3561)
!3588 = !DILocation(line: 476, column: 32, scope: !3561)
!3589 = !DILocation(line: 476, column: 9, scope: !3561)
!3590 = !DILocation(line: 476, column: 2, scope: !3561)
!3591 = !DILocation(line: 477, column: 1, scope: !3561)
!3592 = distinct !DISubprogram(name: "acpi_device_hrv_show", scope: !3, file: !3, line: 481, type: !2462, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3593 = !DILocalVariable(name: "dev", arg: 1, scope: !3592, file: !3, line: 481, type: !1630)
!3594 = !DILocation(line: 481, column: 37, scope: !3592)
!3595 = !DILocalVariable(name: "attr", arg: 2, scope: !3592, file: !3, line: 481, type: !2464)
!3596 = !DILocation(line: 481, column: 67, scope: !3592)
!3597 = !DILocalVariable(name: "buf", arg: 3, scope: !3592, file: !3, line: 482, type: !90)
!3598 = !DILocation(line: 482, column: 14, scope: !3592)
!3599 = !DILocalVariable(name: "acpi_dev", scope: !3592, file: !3, line: 483, type: !93)
!3600 = !DILocation(line: 483, column: 22, scope: !3592)
!3601 = !DILocalVariable(name: "__mptr", scope: !3602, file: !3, line: 483, type: !71)
!3602 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 483, column: 33)
!3603 = !DILocation(line: 483, column: 33, scope: !3602)
!3604 = !DILocation(line: 483, column: 33, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 483, column: 33)
!3606 = !DILocalVariable(name: "status", scope: !3592, file: !3, line: 484, type: !2430)
!3607 = !DILocation(line: 484, column: 14, scope: !3592)
!3608 = !DILocalVariable(name: "hrv", scope: !3592, file: !3, line: 485, type: !314)
!3609 = !DILocation(line: 485, column: 21, scope: !3592)
!3610 = !DILocation(line: 487, column: 33, scope: !3592)
!3611 = !DILocation(line: 487, column: 43, scope: !3592)
!3612 = !DILocation(line: 487, column: 11, scope: !3592)
!3613 = !DILocation(line: 487, column: 9, scope: !3592)
!3614 = !DILocation(line: 488, column: 6, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 488, column: 6)
!3616 = !DILocation(line: 488, column: 6, scope: !3592)
!3617 = !DILocation(line: 489, column: 3, scope: !3615)
!3618 = !DILocation(line: 491, column: 17, scope: !3592)
!3619 = !DILocation(line: 491, column: 32, scope: !3592)
!3620 = !DILocation(line: 491, column: 9, scope: !3592)
!3621 = !DILocation(line: 491, column: 2, scope: !3592)
!3622 = !DILocation(line: 492, column: 1, scope: !3592)
!3623 = distinct !DISubprogram(name: "status_show", scope: !3, file: !3, line: 495, type: !2462, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3624 = !DILocalVariable(name: "dev", arg: 1, scope: !3623, file: !3, line: 495, type: !1630)
!3625 = !DILocation(line: 495, column: 43, scope: !3623)
!3626 = !DILocalVariable(name: "attr", arg: 2, scope: !3623, file: !3, line: 495, type: !2464)
!3627 = !DILocation(line: 495, column: 73, scope: !3623)
!3628 = !DILocalVariable(name: "buf", arg: 3, scope: !3623, file: !3, line: 496, type: !90)
!3629 = !DILocation(line: 496, column: 11, scope: !3623)
!3630 = !DILocalVariable(name: "acpi_dev", scope: !3623, file: !3, line: 497, type: !93)
!3631 = !DILocation(line: 497, column: 22, scope: !3623)
!3632 = !DILocalVariable(name: "__mptr", scope: !3633, file: !3, line: 497, type: !71)
!3633 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 497, column: 33)
!3634 = !DILocation(line: 497, column: 33, scope: !3633)
!3635 = !DILocation(line: 497, column: 33, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 497, column: 33)
!3637 = !DILocalVariable(name: "status", scope: !3623, file: !3, line: 498, type: !2430)
!3638 = !DILocation(line: 498, column: 14, scope: !3623)
!3639 = !DILocalVariable(name: "sta", scope: !3623, file: !3, line: 499, type: !314)
!3640 = !DILocation(line: 499, column: 21, scope: !3623)
!3641 = !DILocation(line: 501, column: 33, scope: !3623)
!3642 = !DILocation(line: 501, column: 43, scope: !3623)
!3643 = !DILocation(line: 501, column: 11, scope: !3623)
!3644 = !DILocation(line: 501, column: 9, scope: !3623)
!3645 = !DILocation(line: 502, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 502, column: 6)
!3647 = !DILocation(line: 502, column: 6, scope: !3623)
!3648 = !DILocation(line: 503, column: 3, scope: !3646)
!3649 = !DILocation(line: 505, column: 17, scope: !3623)
!3650 = !DILocation(line: 505, column: 32, scope: !3623)
!3651 = !DILocation(line: 505, column: 9, scope: !3623)
!3652 = !DILocation(line: 505, column: 2, scope: !3623)
!3653 = !DILocation(line: 506, column: 1, scope: !3623)
!3654 = distinct !DISubprogram(name: "acpi_eject_store", scope: !3, file: !3, line: 369, type: !2467, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3655 = !DILocalVariable(name: "d", arg: 1, scope: !3654, file: !3, line: 369, type: !1630)
!3656 = !DILocation(line: 369, column: 33, scope: !3654)
!3657 = !DILocalVariable(name: "attr", arg: 2, scope: !3654, file: !3, line: 369, type: !2464)
!3658 = !DILocation(line: 369, column: 61, scope: !3654)
!3659 = !DILocalVariable(name: "buf", arg: 3, scope: !3654, file: !3, line: 370, type: !87)
!3660 = !DILocation(line: 370, column: 15, scope: !3654)
!3661 = !DILocalVariable(name: "count", arg: 4, scope: !3654, file: !3, line: 370, type: !238)
!3662 = !DILocation(line: 370, column: 27, scope: !3654)
!3663 = !DILocalVariable(name: "acpi_device", scope: !3654, file: !3, line: 372, type: !93)
!3664 = !DILocation(line: 372, column: 22, scope: !3654)
!3665 = !DILocalVariable(name: "__mptr", scope: !3666, file: !3, line: 372, type: !71)
!3666 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 372, column: 36)
!3667 = !DILocation(line: 372, column: 36, scope: !3666)
!3668 = !DILocation(line: 372, column: 36, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 372, column: 36)
!3670 = !DILocalVariable(name: "not_used", scope: !3654, file: !3, line: 373, type: !2215)
!3671 = !DILocation(line: 373, column: 19, scope: !3654)
!3672 = !DILocalVariable(name: "status", scope: !3654, file: !3, line: 374, type: !2430)
!3673 = !DILocation(line: 374, column: 14, scope: !3654)
!3674 = !DILocation(line: 376, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 376, column: 6)
!3676 = !DILocation(line: 376, column: 13, scope: !3675)
!3677 = !DILocation(line: 376, column: 16, scope: !3675)
!3678 = !DILocation(line: 376, column: 23, scope: !3675)
!3679 = !DILocation(line: 376, column: 6, scope: !3654)
!3680 = !DILocation(line: 377, column: 3, scope: !3675)
!3681 = !DILocation(line: 379, column: 8, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 379, column: 6)
!3683 = !DILocation(line: 379, column: 21, scope: !3682)
!3684 = !DILocation(line: 379, column: 29, scope: !3682)
!3685 = !DILocation(line: 379, column: 33, scope: !3682)
!3686 = !DILocation(line: 379, column: 46, scope: !3682)
!3687 = !DILocation(line: 379, column: 55, scope: !3682)
!3688 = !DILocation(line: 379, column: 63, scope: !3682)
!3689 = !DILocation(line: 380, column: 6, scope: !3682)
!3690 = !DILocation(line: 380, column: 10, scope: !3682)
!3691 = !DILocation(line: 380, column: 23, scope: !3682)
!3692 = !DILocation(line: 379, column: 6, scope: !3654)
!3693 = !DILocation(line: 381, column: 3, scope: !3682)
!3694 = !DILocation(line: 383, column: 25, scope: !3654)
!3695 = !DILocation(line: 383, column: 38, scope: !3654)
!3696 = !DILocation(line: 383, column: 11, scope: !3654)
!3697 = !DILocation(line: 383, column: 9, scope: !3654)
!3698 = !DILocation(line: 384, column: 6, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 384, column: 6)
!3700 = !DILocation(line: 384, column: 27, scope: !3699)
!3701 = !DILocation(line: 384, column: 31, scope: !3699)
!3702 = !DILocation(line: 384, column: 44, scope: !3699)
!3703 = !DILocation(line: 384, column: 50, scope: !3699)
!3704 = !DILocation(line: 384, column: 6, scope: !3654)
!3705 = !DILocation(line: 385, column: 3, scope: !3699)
!3706 = !DILocation(line: 387, column: 14, scope: !3654)
!3707 = !DILocation(line: 387, column: 27, scope: !3654)
!3708 = !DILocation(line: 387, column: 2, scope: !3654)
!3709 = !DILocation(line: 388, column: 33, scope: !3654)
!3710 = !DILocation(line: 388, column: 11, scope: !3654)
!3711 = !DILocation(line: 388, column: 9, scope: !3654)
!3712 = !DILocation(line: 389, column: 6, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 389, column: 6)
!3714 = !DILocation(line: 389, column: 6, scope: !3654)
!3715 = !DILocation(line: 390, column: 10, scope: !3713)
!3716 = !DILocation(line: 390, column: 3, scope: !3713)
!3717 = !DILocation(line: 392, column: 14, scope: !3654)
!3718 = !DILocation(line: 392, column: 27, scope: !3654)
!3719 = !DILocation(line: 392, column: 2, scope: !3654)
!3720 = !DILocation(line: 393, column: 20, scope: !3654)
!3721 = !DILocation(line: 393, column: 33, scope: !3654)
!3722 = !DILocation(line: 393, column: 2, scope: !3654)
!3723 = !DILocation(line: 395, column: 9, scope: !3654)
!3724 = !DILocation(line: 395, column: 16, scope: !3654)
!3725 = !DILocation(line: 395, column: 2, scope: !3654)
!3726 = !DILocation(line: 396, column: 1, scope: !3654)
!3727 = distinct !DISubprogram(name: "power_state_show", scope: !3, file: !3, line: 358, type: !2462, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3728 = !DILocalVariable(name: "dev", arg: 1, scope: !3727, file: !3, line: 358, type: !1630)
!3729 = !DILocation(line: 358, column: 48, scope: !3727)
!3730 = !DILocalVariable(name: "attr", arg: 2, scope: !3727, file: !3, line: 359, type: !2464)
!3731 = !DILocation(line: 359, column: 30, scope: !3727)
!3732 = !DILocalVariable(name: "buf", arg: 3, scope: !3727, file: !3, line: 359, type: !90)
!3733 = !DILocation(line: 359, column: 42, scope: !3727)
!3734 = !DILocalVariable(name: "adev", scope: !3727, file: !3, line: 361, type: !93)
!3735 = !DILocation(line: 361, column: 22, scope: !3727)
!3736 = !DILocalVariable(name: "__mptr", scope: !3737, file: !3, line: 361, type: !71)
!3737 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 361, column: 29)
!3738 = !DILocation(line: 361, column: 29, scope: !3737)
!3739 = !DILocation(line: 361, column: 29, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 361, column: 29)
!3741 = !DILocation(line: 363, column: 17, scope: !3727)
!3742 = !DILocation(line: 363, column: 54, scope: !3727)
!3743 = !DILocation(line: 363, column: 60, scope: !3727)
!3744 = !DILocation(line: 363, column: 66, scope: !3727)
!3745 = !DILocation(line: 363, column: 30, scope: !3727)
!3746 = !DILocation(line: 363, column: 9, scope: !3727)
!3747 = !DILocation(line: 363, column: 2, scope: !3727)
!3748 = distinct !DISubprogram(name: "real_power_state_show", scope: !3, file: !3, line: 342, type: !2462, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3749 = !DILocalVariable(name: "dev", arg: 1, scope: !3748, file: !3, line: 342, type: !1630)
!3750 = !DILocation(line: 342, column: 53, scope: !3748)
!3751 = !DILocalVariable(name: "attr", arg: 2, scope: !3748, file: !3, line: 343, type: !2464)
!3752 = !DILocation(line: 343, column: 35, scope: !3748)
!3753 = !DILocalVariable(name: "buf", arg: 3, scope: !3748, file: !3, line: 343, type: !90)
!3754 = !DILocation(line: 343, column: 47, scope: !3748)
!3755 = !DILocalVariable(name: "adev", scope: !3748, file: !3, line: 345, type: !93)
!3756 = !DILocation(line: 345, column: 22, scope: !3748)
!3757 = !DILocalVariable(name: "__mptr", scope: !3758, file: !3, line: 345, type: !71)
!3758 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 345, column: 29)
!3759 = !DILocation(line: 345, column: 29, scope: !3758)
!3760 = !DILocation(line: 345, column: 29, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 345, column: 29)
!3762 = !DILocalVariable(name: "state", scope: !3748, file: !3, line: 346, type: !91)
!3763 = !DILocation(line: 346, column: 6, scope: !3748)
!3764 = !DILocalVariable(name: "ret", scope: !3748, file: !3, line: 347, type: !91)
!3765 = !DILocation(line: 347, column: 6, scope: !3748)
!3766 = !DILocation(line: 349, column: 30, scope: !3748)
!3767 = !DILocation(line: 349, column: 8, scope: !3748)
!3768 = !DILocation(line: 349, column: 6, scope: !3748)
!3769 = !DILocation(line: 350, column: 6, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 350, column: 6)
!3771 = !DILocation(line: 350, column: 6, scope: !3748)
!3772 = !DILocation(line: 351, column: 10, scope: !3770)
!3773 = !DILocation(line: 351, column: 3, scope: !3770)
!3774 = !DILocation(line: 353, column: 17, scope: !3748)
!3775 = !DILocation(line: 353, column: 54, scope: !3748)
!3776 = !DILocation(line: 353, column: 30, scope: !3748)
!3777 = !DILocation(line: 353, column: 9, scope: !3748)
!3778 = !DILocation(line: 353, column: 2, scope: !3748)
!3779 = !DILocation(line: 354, column: 1, scope: !3748)
!3780 = !DILocalVariable(name: "x", arg: 1, scope: !2491, file: !770, line: 85, type: !768)
!3781 = !DILocation(line: 85, column: 57, scope: !2491)
!3782 = !DILocation(line: 87, column: 2, scope: !2491)
!3783 = !DILocation(line: 87, column: 5, scope: !2491)
!3784 = !DILocation(line: 87, column: 10, scope: !2491)
!3785 = !DILocation(line: 88, column: 2, scope: !2491)
!3786 = !DILocation(line: 88, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !2491, file: !770, line: 88, column: 2)
!3788 = !DILocation(line: 89, column: 1, scope: !2491)
!3789 = distinct !DISubprogram(name: "acpi_data_node_release", scope: !3, file: !3, line: 73, type: !210, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3790 = !DILocalVariable(name: "kobj", arg: 1, scope: !3789, file: !3, line: 73, type: !144)
!3791 = !DILocation(line: 73, column: 52, scope: !3789)
!3792 = !DILocalVariable(name: "dn", scope: !3789, file: !3, line: 75, type: !2431)
!3793 = !DILocation(line: 75, column: 25, scope: !3789)
!3794 = !DILocalVariable(name: "__mptr", scope: !3795, file: !3, line: 75, type: !71)
!3795 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 75, column: 30)
!3796 = !DILocation(line: 75, column: 30, scope: !3795)
!3797 = !DILocation(line: 75, column: 30, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 75, column: 30)
!3799 = !DILocation(line: 76, column: 12, scope: !3789)
!3800 = !DILocation(line: 76, column: 16, scope: !3789)
!3801 = !DILocation(line: 76, column: 2, scope: !3789)
!3802 = !DILocation(line: 77, column: 1, scope: !3789)
!3803 = distinct !DISubprogram(name: "acpi_data_node_attr_show", scope: !3, file: !3, line: 60, type: !220, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3804 = !DILocalVariable(name: "kobj", arg: 1, scope: !3803, file: !3, line: 60, type: !144)
!3805 = !DILocation(line: 60, column: 57, scope: !3803)
!3806 = !DILocalVariable(name: "attr", arg: 2, scope: !3803, file: !3, line: 61, type: !227)
!3807 = !DILocation(line: 61, column: 24, scope: !3803)
!3808 = !DILocalVariable(name: "buf", arg: 3, scope: !3803, file: !3, line: 61, type: !90)
!3809 = !DILocation(line: 61, column: 36, scope: !3803)
!3810 = !DILocalVariable(name: "dn", scope: !3803, file: !3, line: 63, type: !2431)
!3811 = !DILocation(line: 63, column: 25, scope: !3803)
!3812 = !DILocalVariable(name: "__mptr", scope: !3813, file: !3, line: 63, type: !71)
!3813 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 63, column: 30)
!3814 = !DILocation(line: 63, column: 30, scope: !3813)
!3815 = !DILocation(line: 63, column: 30, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 63, column: 30)
!3817 = !DILocalVariable(name: "dn_attr", scope: !3803, file: !3, line: 64, type: !2442)
!3818 = !DILocation(line: 64, column: 30, scope: !3803)
!3819 = !DILocalVariable(name: "__mptr", scope: !3820, file: !3, line: 64, type: !71)
!3820 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 64, column: 40)
!3821 = !DILocation(line: 64, column: 40, scope: !3820)
!3822 = !DILocation(line: 64, column: 40, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 64, column: 40)
!3824 = !DILocation(line: 66, column: 9, scope: !3803)
!3825 = !DILocation(line: 66, column: 18, scope: !3803)
!3826 = !DILocation(line: 66, column: 25, scope: !3803)
!3827 = !DILocation(line: 66, column: 34, scope: !3803)
!3828 = !DILocation(line: 66, column: 39, scope: !3803)
!3829 = !DILocation(line: 66, column: 43, scope: !3803)
!3830 = !DILocation(line: 66, column: 2, scope: !3803)
!3831 = distinct !DISubprogram(name: "data_node_show_path", scope: !3, file: !3, line: 45, type: !2448, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !165)
!3832 = !DILocalVariable(name: "dn", arg: 1, scope: !3831, file: !3, line: 45, type: !2431)
!3833 = !DILocation(line: 45, column: 59, scope: !3831)
!3834 = !DILocalVariable(name: "buf", arg: 2, scope: !3831, file: !3, line: 45, type: !90)
!3835 = !DILocation(line: 45, column: 69, scope: !3831)
!3836 = !DILocation(line: 47, column: 9, scope: !3831)
!3837 = !DILocation(line: 47, column: 13, scope: !3831)
!3838 = !DILocation(line: 47, column: 39, scope: !3831)
!3839 = !DILocation(line: 47, column: 43, scope: !3831)
!3840 = !DILocation(line: 47, column: 51, scope: !3831)
!3841 = !DILocation(line: 47, column: 22, scope: !3831)
!3842 = !DILocation(line: 47, column: 2, scope: !3831)
