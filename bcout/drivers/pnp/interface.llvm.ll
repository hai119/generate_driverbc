; ModuleID = '../bcout/drivers/pnp/interface.llvm.bc'
source_filename = "drivers/pnp/interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.vm_struct = type opaque
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
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.pnp_info_buffer = type { i8*, i8*, i64, i64, i32, i32 }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.39 }
%union.anon.39 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }

@pnp_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @pnp_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !0
@pnp_dev_groups = dso_local global [2 x %struct.attribute_group*] [%struct.attribute_group* @pnp_dev_group, %struct.attribute_group* null], align 16, !dbg !2112
@pnp_dev_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_resources, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_options, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2115
@dev_attr_resources = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @resources_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @resources_store }, align 8, !dbg !2118
@dev_attr_options = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @options_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2132
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2134
@.str = private unnamed_addr constant [10 x i8] c"resources\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"state = %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" disabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" %#llx-%#llx%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" window\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"in use; can't configure\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@pnp_res_mutex = external dso_local global %struct.mutex, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Dependent: %02i - Priority %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"%sport %#llx-%#llx, align %#llx, size %#llx, %i-bit address decoding\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"%sMemory %#llx-%#llx, align %#llx, size %#llx\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c", writeable\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c", cacheable\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c", range-length\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c", shadowable\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c", expansion ROM\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"8-bit&16-bit\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"32-bit\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"16-bit\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"%sirq \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"2/9\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c" High-Edge\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c" Low-Edge\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" High-Level\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c" Low-Level\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%sdma \00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c" master\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" byte-count\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" word-count\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"type-A\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"type-B\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"type-F\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resources_show(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2141 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %buffer = alloca %struct.pnp_info_buffer*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %res = alloca %struct.resource*, align 8
  %ret = alloca i32, align 4
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.pnp_resource*, align 8
  %__mptr30 = alloca i8*, align 8
  %tmp35 = alloca %struct.pnp_resource*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !2142, metadata !DIExpression()), !dbg !2143
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2144, metadata !DIExpression()), !dbg !2145
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2150, metadata !DIExpression()), !dbg !2152
  %0 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !2152
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2152
  store i8* %1, i8** %__mptr, align 8, !dbg !2152
  br label %do.body, !dbg !2152

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2153

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2152
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2152
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2152
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2153
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2152
  store %struct.pnp_dev* %4, %struct.pnp_dev** %dev, align 8, !dbg !2149
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer, metadata !2155, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2171, metadata !DIExpression()), !dbg !2172
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2173
  %tobool = icmp ne %struct.pnp_dev* %5, null, !dbg !2173
  br i1 %tobool, label %if.end, label %if.then, !dbg !2175

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !2176
  br label %return, !dbg !2176

if.end:                                           ; preds = %do.end
  %call = call i8* @pnp_alloc(i64 40) #6, !dbg !2177
  %6 = bitcast i8* %call to %struct.pnp_info_buffer*, !dbg !2177
  store %struct.pnp_info_buffer* %6, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2178
  %7 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2179
  %tobool1 = icmp ne %struct.pnp_info_buffer* %7, null, !dbg !2179
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2181

if.then2:                                         ; preds = %if.end
  store i64 -12, i64* %retval, align 8, !dbg !2182
  br label %return, !dbg !2182

if.end3:                                          ; preds = %if.end
  %8 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2183
  %len = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %8, i32 0, i32 3, !dbg !2184
  store i64 4096, i64* %len, align 8, !dbg !2185
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !2186
  %10 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2187
  %buffer4 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %10, i32 0, i32 0, !dbg !2188
  store i8* %9, i8** %buffer4, align 8, !dbg !2189
  %11 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2190
  %buffer5 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %11, i32 0, i32 0, !dbg !2191
  %12 = load i8*, i8** %buffer5, align 8, !dbg !2191
  %13 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2192
  %curr = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %13, i32 0, i32 1, !dbg !2193
  store i8* %12, i8** %curr, align 8, !dbg !2194
  %14 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2195
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2196
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 13, !dbg !2197
  %16 = load i32, i32* %active, align 8, !dbg !2197
  %tobool6 = icmp ne i32 %16, 0, !dbg !2196
  %17 = zext i1 %tobool6 to i64, !dbg !2196
  %cond = select i1 %tobool6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), !dbg !2196
  %call7 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %cond) #6, !dbg !2198
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2199, metadata !DIExpression()), !dbg !2202
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2202
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 16, !dbg !2202
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !2202
  %19 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2202
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !2202
  store i8* %20, i8** %__mptr8, align 8, !dbg !2202
  br label %do.body9, !dbg !2202

do.body9:                                         ; preds = %if.end3
  br label %do.end10, !dbg !2203

do.end10:                                         ; preds = %do.body9
  %21 = load i8*, i8** %__mptr8, align 8, !dbg !2202
  %add.ptr12 = getelementptr i8, i8* %21, i64 0, !dbg !2202
  %22 = bitcast i8* %add.ptr12 to %struct.pnp_resource*, !dbg !2202
  store %struct.pnp_resource* %22, %struct.pnp_resource** %tmp11, align 8, !dbg !2203
  %23 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp11, align 8, !dbg !2202
  store %struct.pnp_resource* %23, %struct.pnp_resource** %pnp_res, align 8, !dbg !2205
  br label %for.cond, !dbg !2205

for.cond:                                         ; preds = %do.end34, %do.end10
  %24 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2206
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %24, i32 0, i32 0, !dbg !2206
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2206
  %resources13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 16, !dbg !2206
  %cmp = icmp eq %struct.list_head* %list, %resources13, !dbg !2206
  %lnot = xor i1 %cmp, true, !dbg !2206
  br i1 %lnot, label %for.body, label %for.end, !dbg !2205

for.body:                                         ; preds = %for.cond
  %26 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2208
  %res14 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %26, i32 0, i32 1, !dbg !2210
  store %struct.resource* %res14, %struct.resource** %res, align 8, !dbg !2211
  %27 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2212
  %28 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2213
  %call15 = call i8* @pnp_resource_type_name(%struct.resource* %28) #6, !dbg !2214
  %call16 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %27, i8* %call15) #6, !dbg !2215
  %29 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2216
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 3, !dbg !2218
  %30 = load i64, i64* %flags, align 8, !dbg !2218
  %and = and i64 %30, 268435456, !dbg !2219
  %tobool17 = icmp ne i64 %and, 0, !dbg !2219
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !2220

if.then18:                                        ; preds = %for.body
  %31 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2221
  %call19 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2223
  br label %for.inc, !dbg !2224

if.end20:                                         ; preds = %for.body
  %32 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2225
  %call21 = call i64 @pnp_resource_type(%struct.resource* %32) #6, !dbg !2226
  switch i64 %call21, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb
    i64 4096, label %sw.bb
    i64 1024, label %sw.bb27
    i64 2048, label %sw.bb27
  ], !dbg !2227

sw.bb:                                            ; preds = %if.end20, %if.end20, %if.end20
  %33 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2228
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2230
  %start = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0, !dbg !2231
  %35 = load i64, i64* %start, align 8, !dbg !2231
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2232
  %end = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 1, !dbg !2233
  %37 = load i64, i64* %end, align 8, !dbg !2233
  %38 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2234
  %flags22 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 3, !dbg !2235
  %39 = load i64, i64* %flags22, align 8, !dbg !2235
  %and23 = and i64 %39, 2097152, !dbg !2236
  %tobool24 = icmp ne i64 %and23, 0, !dbg !2234
  %40 = zext i1 %tobool24 to i64, !dbg !2234
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !2234
  %call26 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %35, i64 %37, i8* %cond25) #6, !dbg !2237
  br label %sw.epilog, !dbg !2238

sw.bb27:                                          ; preds = %if.end20, %if.end20
  %41 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2239
  %42 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2240
  %start28 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0, !dbg !2241
  %43 = load i64, i64* %start28, align 8, !dbg !2241
  %call29 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %43) #6, !dbg !2242
  br label %sw.epilog, !dbg !2243

sw.epilog:                                        ; preds = %if.end20, %sw.bb27, %sw.bb
  br label %for.inc, !dbg !2244

for.inc:                                          ; preds = %sw.epilog, %if.then18
  call void @llvm.dbg.declare(metadata i8** %__mptr30, metadata !2245, metadata !DIExpression()), !dbg !2247
  %44 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2247
  %list31 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %44, i32 0, i32 0, !dbg !2247
  %next32 = getelementptr inbounds %struct.list_head, %struct.list_head* %list31, i32 0, i32 0, !dbg !2247
  %45 = load %struct.list_head*, %struct.list_head** %next32, align 8, !dbg !2247
  %46 = bitcast %struct.list_head* %45 to i8*, !dbg !2247
  store i8* %46, i8** %__mptr30, align 8, !dbg !2247
  br label %do.body33, !dbg !2247

do.body33:                                        ; preds = %for.inc
  br label %do.end34, !dbg !2248

do.end34:                                         ; preds = %do.body33
  %47 = load i8*, i8** %__mptr30, align 8, !dbg !2247
  %add.ptr36 = getelementptr i8, i8* %47, i64 0, !dbg !2247
  %48 = bitcast i8* %add.ptr36 to %struct.pnp_resource*, !dbg !2247
  store %struct.pnp_resource* %48, %struct.pnp_resource** %tmp35, align 8, !dbg !2248
  %49 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp35, align 8, !dbg !2247
  store %struct.pnp_resource* %49, %struct.pnp_resource** %pnp_res, align 8, !dbg !2206
  br label %for.cond, !dbg !2206, !llvm.loop !2250

for.end:                                          ; preds = %for.cond
  %50 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2252
  %curr37 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %50, i32 0, i32 1, !dbg !2253
  %51 = load i8*, i8** %curr37, align 8, !dbg !2253
  %52 = load i8*, i8** %buf.addr, align 8, !dbg !2254
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64, !dbg !2255
  %sub.ptr.rhs.cast = ptrtoint i8* %52 to i64, !dbg !2255
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2255
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2256
  store i32 %conv, i32* %ret, align 4, !dbg !2257
  %53 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2258
  %54 = bitcast %struct.pnp_info_buffer* %53 to i8*, !dbg !2258
  call void @kfree(i8* %54) #6, !dbg !2259
  %55 = load i32, i32* %ret, align 4, !dbg !2260
  %conv38 = sext i32 %55 to i64, !dbg !2260
  store i64 %conv38, i64* %retval, align 8, !dbg !2261
  br label %return, !dbg !2261

return:                                           ; preds = %for.end, %if.then2, %if.then
  %56 = load i64, i64* %retval, align 8, !dbg !2262
  ret i64 %56, !dbg !2262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resources_store(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %ubuf, i64 %count) #0 !dbg !2263 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %ubuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %buf = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %flags = alloca i64, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !2264, metadata !DIExpression()), !dbg !2265
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2266, metadata !DIExpression()), !dbg !2267
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !2268, metadata !DIExpression()), !dbg !2269
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !2270, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !2272, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2274, metadata !DIExpression()), !dbg !2276
  %0 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !2276
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2276
  store i8* %1, i8** %__mptr, align 8, !dbg !2276
  br label %do.body, !dbg !2276

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2277

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2276
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2276
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2276
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2277
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2276
  store %struct.pnp_dev* %4, %struct.pnp_dev** %dev, align 8, !dbg !2273
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !2279, metadata !DIExpression()), !dbg !2280
  %5 = load i8*, i8** %ubuf.addr, align 8, !dbg !2281
  store i8* %5, i8** %buf, align 8, !dbg !2280
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2282, metadata !DIExpression()), !dbg !2283
  store i32 0, i32* %retval1, align 4, !dbg !2283
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2284
  %status = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 3, !dbg !2286
  %7 = load i32, i32* %status, align 4, !dbg !2286
  %and = and i32 %7, 1, !dbg !2287
  %tobool = icmp ne i32 %and, 0, !dbg !2287
  br i1 %tobool, label %if.then, label %if.end, !dbg !2288

if.then:                                          ; preds = %do.end
  store i32 -16, i32* %retval1, align 4, !dbg !2289
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2291
  %dev2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 0, !dbg !2291
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !2291
  br label %done, !dbg !2292

if.end:                                           ; preds = %do.end
  %9 = load i8*, i8** %buf, align 8, !dbg !2293
  %call = call i8* @skip_spaces(i8* %9) #6, !dbg !2294
  store i8* %call, i8** %buf, align 8, !dbg !2295
  %10 = load i8*, i8** %buf, align 8, !dbg !2296
  %call3 = call i32 @strncasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 7) #6, !dbg !2298
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2298
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2299

if.then5:                                         ; preds = %if.end
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2300
  %call6 = call i32 @pnp_disable_dev(%struct.pnp_dev* %11) #6, !dbg !2302
  store i32 %call6, i32* %retval1, align 4, !dbg !2303
  br label %done, !dbg !2304

if.end7:                                          ; preds = %if.end
  %12 = load i8*, i8** %buf, align 8, !dbg !2305
  %call8 = call i32 @strncasecmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 8) #6, !dbg !2307
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2307
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2308

if.then10:                                        ; preds = %if.end7
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2309
  %call11 = call i32 @pnp_activate_dev(%struct.pnp_dev* %13) #6, !dbg !2311
  store i32 %call11, i32* %retval1, align 4, !dbg !2312
  br label %done, !dbg !2313

if.end12:                                         ; preds = %if.end7
  %14 = load i8*, i8** %buf, align 8, !dbg !2314
  %call13 = call i32 @strncasecmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 4) #6, !dbg !2316
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2316
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !2317

if.then15:                                        ; preds = %if.end12
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2318
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 13, !dbg !2321
  %16 = load i32, i32* %active, align 8, !dbg !2321
  %tobool16 = icmp ne i32 %16, 0, !dbg !2318
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2322

if.then17:                                        ; preds = %if.then15
  br label %done, !dbg !2323

if.end18:                                         ; preds = %if.then15
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2324
  %call19 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %17) #6, !dbg !2325
  store i32 %call19, i32* %retval1, align 4, !dbg !2326
  br label %done, !dbg !2327

if.end20:                                         ; preds = %if.end12
  %18 = load i8*, i8** %buf, align 8, !dbg !2328
  %call21 = call i32 @strncasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4) #6, !dbg !2330
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2330
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !2331

if.then23:                                        ; preds = %if.end20
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2332
  %active24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 13, !dbg !2335
  %20 = load i32, i32* %active24, align 8, !dbg !2335
  %tobool25 = icmp ne i32 %20, 0, !dbg !2332
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2336

if.then26:                                        ; preds = %if.then23
  br label %done, !dbg !2337

if.end27:                                         ; preds = %if.then23
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2338
  call void @pnp_init_resources(%struct.pnp_dev* %21) #6, !dbg !2339
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2340
  %call28 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %22) #6, !dbg !2341
  store i32 %call28, i32* %retval1, align 4, !dbg !2342
  br label %done, !dbg !2343

if.end29:                                         ; preds = %if.end20
  %23 = load i8*, i8** %buf, align 8, !dbg !2344
  %call30 = call i32 @strncasecmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 5) #6, !dbg !2346
  %tobool31 = icmp ne i32 %call30, 0, !dbg !2346
  br i1 %tobool31, label %if.end37, label %if.then32, !dbg !2347

if.then32:                                        ; preds = %if.end29
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2348
  %active33 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 13, !dbg !2351
  %25 = load i32, i32* %active33, align 8, !dbg !2351
  %tobool34 = icmp ne i32 %25, 0, !dbg !2348
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2352

if.then35:                                        ; preds = %if.then32
  br label %done, !dbg !2353

if.end36:                                         ; preds = %if.then32
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2354
  call void @pnp_init_resources(%struct.pnp_dev* %26) #6, !dbg !2355
  br label %done, !dbg !2356

if.end37:                                         ; preds = %if.end29
  %27 = load i8*, i8** %buf, align 8, !dbg !2357
  %call38 = call i32 @strncasecmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 3) #6, !dbg !2359
  %tobool39 = icmp ne i32 %call38, 0, !dbg !2359
  br i1 %tobool39, label %if.end49, label %if.then40, !dbg !2360

if.then40:                                        ; preds = %if.end37
  call void @mutex_lock(%struct.mutex* @pnp_res_mutex) #6, !dbg !2361
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2363
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 8, !dbg !2363
  %29 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !2363
  %get = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %29, i32 0, i32 2, !dbg !2363
  %30 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %get, align 8, !dbg !2363
  %tobool41 = icmp ne i32 (%struct.pnp_dev*)* %30, null, !dbg !2363
  br i1 %tobool41, label %land.lhs.true, label %if.end48, !dbg !2363

land.lhs.true:                                    ; preds = %if.then40
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2363
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %31, i32 0, i32 14, !dbg !2363
  %32 = load i32, i32* %capabilities, align 4, !dbg !2363
  %and42 = and i32 %32, 1, !dbg !2363
  %tobool43 = icmp ne i32 %and42, 0, !dbg !2363
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !2365

if.then44:                                        ; preds = %land.lhs.true
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2366
  %protocol45 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %33, i32 0, i32 8, !dbg !2367
  %34 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol45, align 8, !dbg !2367
  %get46 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %34, i32 0, i32 2, !dbg !2368
  %35 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %get46, align 8, !dbg !2368
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2369
  %call47 = call i32 %35(%struct.pnp_dev* %36) #6, !dbg !2366
  br label %if.end48, !dbg !2366

if.end48:                                         ; preds = %if.then44, %land.lhs.true, %if.then40
  call void @mutex_unlock(%struct.mutex* @pnp_res_mutex) #6, !dbg !2370
  br label %done, !dbg !2371

if.end49:                                         ; preds = %if.end37
  %37 = load i8*, i8** %buf, align 8, !dbg !2372
  %call50 = call i32 @strncasecmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3) #6, !dbg !2374
  %tobool51 = icmp ne i32 %call50, 0, !dbg !2374
  br i1 %tobool51, label %if.end103, label %if.then52, !dbg !2375

if.then52:                                        ; preds = %if.end49
  call void @llvm.dbg.declare(metadata i64* %start, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.declare(metadata i64* %end, metadata !2379, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2381, metadata !DIExpression()), !dbg !2382
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2383
  %active53 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 13, !dbg !2385
  %39 = load i32, i32* %active53, align 8, !dbg !2385
  %tobool54 = icmp ne i32 %39, 0, !dbg !2383
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !2386

if.then55:                                        ; preds = %if.then52
  br label %done, !dbg !2387

if.end56:                                         ; preds = %if.then52
  %40 = load i8*, i8** %buf, align 8, !dbg !2388
  %add.ptr57 = getelementptr i8, i8* %40, i64 3, !dbg !2388
  store i8* %add.ptr57, i8** %buf, align 8, !dbg !2388
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2389
  call void @pnp_init_resources(%struct.pnp_dev* %41) #6, !dbg !2390
  call void @mutex_lock(%struct.mutex* @pnp_res_mutex) #6, !dbg !2391
  br label %while.body, !dbg !2392

while.body:                                       ; preds = %if.end56, %if.end102
  %42 = load i8*, i8** %buf, align 8, !dbg !2393
  %call58 = call i8* @skip_spaces(i8* %42) #6, !dbg !2395
  store i8* %call58, i8** %buf, align 8, !dbg !2396
  %43 = load i8*, i8** %buf, align 8, !dbg !2397
  %call59 = call i32 @strncasecmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i64 2) #6, !dbg !2399
  %tobool60 = icmp ne i32 %call59, 0, !dbg !2399
  br i1 %tobool60, label %if.else, label %if.then61, !dbg !2400

if.then61:                                        ; preds = %while.body
  %44 = load i8*, i8** %buf, align 8, !dbg !2401
  %add.ptr62 = getelementptr i8, i8* %44, i64 2, !dbg !2403
  %call63 = call i8* @pnp_get_resource_value(i8* %add.ptr62, i64 256, i64* %start, i64* %end, i64* %flags) #6, !dbg !2404
  store i8* %call63, i8** %buf, align 8, !dbg !2405
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2406
  %46 = load i64, i64* %start, align 8, !dbg !2407
  %47 = load i64, i64* %end, align 8, !dbg !2408
  %48 = load i64, i64* %flags, align 8, !dbg !2409
  %conv = trunc i64 %48 to i32, !dbg !2409
  %call64 = call %struct.pnp_resource* @pnp_add_io_resource(%struct.pnp_dev* %45, i64 %46, i64 %47, i32 %conv) #6, !dbg !2410
  br label %if.end102, !dbg !2411

if.else:                                          ; preds = %while.body
  %49 = load i8*, i8** %buf, align 8, !dbg !2412
  %call65 = call i32 @strncasecmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 3) #6, !dbg !2414
  %tobool66 = icmp ne i32 %call65, 0, !dbg !2414
  br i1 %tobool66, label %if.else72, label %if.then67, !dbg !2415

if.then67:                                        ; preds = %if.else
  %50 = load i8*, i8** %buf, align 8, !dbg !2416
  %add.ptr68 = getelementptr i8, i8* %50, i64 3, !dbg !2418
  %call69 = call i8* @pnp_get_resource_value(i8* %add.ptr68, i64 512, i64* %start, i64* %end, i64* %flags) #6, !dbg !2419
  store i8* %call69, i8** %buf, align 8, !dbg !2420
  %51 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2421
  %52 = load i64, i64* %start, align 8, !dbg !2422
  %53 = load i64, i64* %end, align 8, !dbg !2423
  %54 = load i64, i64* %flags, align 8, !dbg !2424
  %conv70 = trunc i64 %54 to i32, !dbg !2424
  %call71 = call %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev* %51, i64 %52, i64 %53, i32 %conv70) #6, !dbg !2425
  br label %if.end101, !dbg !2426

if.else72:                                        ; preds = %if.else
  %55 = load i8*, i8** %buf, align 8, !dbg !2427
  %call73 = call i32 @strncasecmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 3) #6, !dbg !2429
  %tobool74 = icmp ne i32 %call73, 0, !dbg !2429
  br i1 %tobool74, label %if.else81, label %if.then75, !dbg !2430

if.then75:                                        ; preds = %if.else72
  %56 = load i8*, i8** %buf, align 8, !dbg !2431
  %add.ptr76 = getelementptr i8, i8* %56, i64 3, !dbg !2433
  %call77 = call i8* @pnp_get_resource_value(i8* %add.ptr76, i64 1024, i64* %start, i64* null, i64* %flags) #6, !dbg !2434
  store i8* %call77, i8** %buf, align 8, !dbg !2435
  %57 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2436
  %58 = load i64, i64* %start, align 8, !dbg !2437
  %conv78 = trunc i64 %58 to i32, !dbg !2437
  %59 = load i64, i64* %flags, align 8, !dbg !2438
  %conv79 = trunc i64 %59 to i32, !dbg !2438
  %call80 = call %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev* %57, i32 %conv78, i32 %conv79) #6, !dbg !2439
  br label %if.end100, !dbg !2440

if.else81:                                        ; preds = %if.else72
  %60 = load i8*, i8** %buf, align 8, !dbg !2441
  %call82 = call i32 @strncasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64 3) #6, !dbg !2443
  %tobool83 = icmp ne i32 %call82, 0, !dbg !2443
  br i1 %tobool83, label %if.else90, label %if.then84, !dbg !2444

if.then84:                                        ; preds = %if.else81
  %61 = load i8*, i8** %buf, align 8, !dbg !2445
  %add.ptr85 = getelementptr i8, i8* %61, i64 3, !dbg !2447
  %call86 = call i8* @pnp_get_resource_value(i8* %add.ptr85, i64 2048, i64* %start, i64* null, i64* %flags) #6, !dbg !2448
  store i8* %call86, i8** %buf, align 8, !dbg !2449
  %62 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2450
  %63 = load i64, i64* %start, align 8, !dbg !2451
  %conv87 = trunc i64 %63 to i32, !dbg !2451
  %64 = load i64, i64* %flags, align 8, !dbg !2452
  %conv88 = trunc i64 %64 to i32, !dbg !2452
  %call89 = call %struct.pnp_resource* @pnp_add_dma_resource(%struct.pnp_dev* %62, i32 %conv87, i32 %conv88) #6, !dbg !2453
  br label %if.end99, !dbg !2454

if.else90:                                        ; preds = %if.else81
  %65 = load i8*, i8** %buf, align 8, !dbg !2455
  %call91 = call i32 @strncasecmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3) #6, !dbg !2457
  %tobool92 = icmp ne i32 %call91, 0, !dbg !2457
  br i1 %tobool92, label %if.else97, label %if.then93, !dbg !2458

if.then93:                                        ; preds = %if.else90
  %66 = load i8*, i8** %buf, align 8, !dbg !2459
  %add.ptr94 = getelementptr i8, i8* %66, i64 3, !dbg !2461
  %call95 = call i8* @pnp_get_resource_value(i8* %add.ptr94, i64 4096, i64* %start, i64* %end, i64* null) #6, !dbg !2462
  store i8* %call95, i8** %buf, align 8, !dbg !2463
  %67 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2464
  %68 = load i64, i64* %start, align 8, !dbg !2465
  %69 = load i64, i64* %end, align 8, !dbg !2466
  %call96 = call %struct.pnp_resource* @pnp_add_bus_resource(%struct.pnp_dev* %67, i64 %68, i64 %69) #6, !dbg !2467
  br label %if.end98, !dbg !2468

if.else97:                                        ; preds = %if.else90
  br label %while.end, !dbg !2469

if.end98:                                         ; preds = %if.then93
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then84
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then75
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then67
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then61
  br label %while.body, !dbg !2392, !llvm.loop !2470

while.end:                                        ; preds = %if.else97
  call void @mutex_unlock(%struct.mutex* @pnp_res_mutex) #6, !dbg !2472
  br label %done, !dbg !2473

if.end103:                                        ; preds = %if.end49
  br label %done, !dbg !2474

done:                                             ; preds = %if.end103, %while.end, %if.then55, %if.end48, %if.end36, %if.then35, %if.end27, %if.then26, %if.end18, %if.then17, %if.then10, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !2475), !dbg !2476
  %70 = load i32, i32* %retval1, align 4, !dbg !2477
  %cmp = icmp slt i32 %70, 0, !dbg !2479
  br i1 %cmp, label %if.then105, label %if.end107, !dbg !2480

if.then105:                                       ; preds = %done
  %71 = load i32, i32* %retval1, align 4, !dbg !2481
  %conv106 = sext i32 %71 to i64, !dbg !2481
  store i64 %conv106, i64* %retval, align 8, !dbg !2482
  br label %return, !dbg !2482

if.end107:                                        ; preds = %done
  %72 = load i64, i64* %count.addr, align 8, !dbg !2483
  store i64 %72, i64* %retval, align 8, !dbg !2484
  br label %return, !dbg !2484

return:                                           ; preds = %if.end107, %if.then105
  %73 = load i64, i64* %retval, align 8, !dbg !2485
  ret i64 %73, !dbg !2485
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i8* @pnp_alloc(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_printf(%struct.pnp_info_buffer* %buffer, i8* %fmt, ...) #0 !dbg !2486 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %res = alloca i32, align 4
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !2493, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2506, metadata !DIExpression()), !dbg !2507
  %0 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2508
  %stop = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %0, i32 0, i32 4, !dbg !2510
  %1 = load i32, i32* %stop, align 8, !dbg !2510
  %tobool = icmp ne i32 %1, 0, !dbg !2508
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2511

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2512
  %error = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %2, i32 0, i32 5, !dbg !2513
  %3 = load i32, i32* %error, align 4, !dbg !2513
  %tobool1 = icmp ne i32 %3, 0, !dbg !2512
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2514

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2515
  br label %return, !dbg !2515

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2516
  %arraydecay2 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2516
  call void @llvm.va_start(i8* %arraydecay2), !dbg !2516
  %4 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2517
  %curr = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %4, i32 0, i32 1, !dbg !2518
  %5 = load i8*, i8** %curr, align 8, !dbg !2518
  %6 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2519
  %len = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %6, i32 0, i32 3, !dbg !2520
  %7 = load i64, i64* %len, align 8, !dbg !2520
  %8 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2521
  %size = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %8, i32 0, i32 2, !dbg !2522
  %9 = load i64, i64* %size, align 8, !dbg !2522
  %sub = sub i64 %7, %9, !dbg !2523
  %10 = load i8*, i8** %fmt.addr, align 8, !dbg !2524
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2525
  %call = call i32 @vsnprintf(i8* %5, i64 %sub, i8* %10, %struct.__va_list_tag* %arraydecay3) #6, !dbg !2526
  store i32 %call, i32* %res, align 4, !dbg !2527
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2528
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !2528
  call void @llvm.va_end(i8* %arraydecay45), !dbg !2528
  %11 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2529
  %size6 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %11, i32 0, i32 2, !dbg !2531
  %12 = load i64, i64* %size6, align 8, !dbg !2531
  %13 = load i32, i32* %res, align 4, !dbg !2532
  %conv = sext i32 %13 to i64, !dbg !2532
  %add = add i64 %12, %conv, !dbg !2533
  %14 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2534
  %len7 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %14, i32 0, i32 3, !dbg !2535
  %15 = load i64, i64* %len7, align 8, !dbg !2535
  %cmp = icmp uge i64 %add, %15, !dbg !2536
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !2537

if.then9:                                         ; preds = %if.end
  %16 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2538
  %stop10 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %16, i32 0, i32 4, !dbg !2540
  store i32 1, i32* %stop10, align 8, !dbg !2541
  store i32 0, i32* %retval, align 4, !dbg !2542
  br label %return, !dbg !2542

if.end11:                                         ; preds = %if.end
  %17 = load i32, i32* %res, align 4, !dbg !2543
  %18 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2544
  %curr12 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %18, i32 0, i32 1, !dbg !2545
  %19 = load i8*, i8** %curr12, align 8, !dbg !2546
  %idx.ext = sext i32 %17 to i64, !dbg !2546
  %add.ptr = getelementptr i8, i8* %19, i64 %idx.ext, !dbg !2546
  store i8* %add.ptr, i8** %curr12, align 8, !dbg !2546
  %20 = load i32, i32* %res, align 4, !dbg !2547
  %conv13 = sext i32 %20 to i64, !dbg !2547
  %21 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2548
  %size14 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %21, i32 0, i32 2, !dbg !2549
  %22 = load i64, i64* %size14, align 8, !dbg !2550
  %add15 = add i64 %22, %conv13, !dbg !2550
  store i64 %add15, i64* %size14, align 8, !dbg !2550
  %23 = load i32, i32* %res, align 4, !dbg !2551
  store i32 %23, i32* %retval, align 4, !dbg !2552
  br label %return, !dbg !2552

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !2553
  ret i32 %24, !dbg !2553
}

; Function Attrs: noredzone
declare dso_local i8* @pnp_resource_type_name(%struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i64 @pnp_resource_type(%struct.resource*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @skip_spaces(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_disable_dev(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_activate_dev(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_auto_config_dev(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pnp_init_resources(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pnp_get_resource_value(i8* %buf, i64 %type, i64* %start, i64* %end, i64* %flags) #0 !dbg !2554 {
entry:
  %buf.addr = alloca i8*, align 8
  %type.addr = alloca i64, align 8
  %start.addr = alloca i64*, align 8
  %end.addr = alloca i64*, align 8
  %flags.addr = alloca i64*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  store i64 %type, i64* %type.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type.addr, metadata !2560, metadata !DIExpression()), !dbg !2561
  store i64* %start, i64** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %start.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i64* %end, i64** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %end.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  %0 = load i64*, i64** %start.addr, align 8, !dbg !2568
  %tobool = icmp ne i64* %0, null, !dbg !2568
  br i1 %tobool, label %if.then, label %if.end, !dbg !2570

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** %start.addr, align 8, !dbg !2571
  store i64 0, i64* %1, align 8, !dbg !2572
  br label %if.end, !dbg !2573

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64*, i64** %end.addr, align 8, !dbg !2574
  %tobool1 = icmp ne i64* %2, null, !dbg !2574
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2576

if.then2:                                         ; preds = %if.end
  %3 = load i64*, i64** %end.addr, align 8, !dbg !2577
  store i64 0, i64* %3, align 8, !dbg !2578
  br label %if.end3, !dbg !2579

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64*, i64** %flags.addr, align 8, !dbg !2580
  %tobool4 = icmp ne i64* %4, null, !dbg !2580
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2582

if.then5:                                         ; preds = %if.end3
  %5 = load i64*, i64** %flags.addr, align 8, !dbg !2583
  store i64 0, i64* %5, align 8, !dbg !2584
  br label %if.end6, !dbg !2585

if.end6:                                          ; preds = %if.then5, %if.end3
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !2586
  %call = call i8* @skip_spaces(i8* %6) #6, !dbg !2587
  store i8* %call, i8** %buf.addr, align 8, !dbg !2588
  %7 = load i64*, i64** %start.addr, align 8, !dbg !2589
  %tobool7 = icmp ne i64* %7, null, !dbg !2589
  br i1 %tobool7, label %if.then8, label %if.end19, !dbg !2591

if.then8:                                         ; preds = %if.end6
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !2592
  %call9 = call i64 @simple_strtoull(i8* %8, i8** %buf.addr, i32 0) #6, !dbg !2594
  %9 = load i64*, i64** %start.addr, align 8, !dbg !2595
  store i64 %call9, i64* %9, align 8, !dbg !2596
  %10 = load i64*, i64** %end.addr, align 8, !dbg !2597
  %tobool10 = icmp ne i64* %10, null, !dbg !2597
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !2599

if.then11:                                        ; preds = %if.then8
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !2600
  %call12 = call i8* @skip_spaces(i8* %11) #6, !dbg !2602
  store i8* %call12, i8** %buf.addr, align 8, !dbg !2603
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2604
  %13 = load i8, i8* %12, align 1, !dbg !2606
  %conv = sext i8 %13 to i32, !dbg !2606
  %cmp = icmp eq i32 %conv, 45, !dbg !2607
  br i1 %cmp, label %if.then14, label %if.else, !dbg !2608

if.then14:                                        ; preds = %if.then11
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !2609
  %add.ptr = getelementptr i8, i8* %14, i64 1, !dbg !2611
  %call15 = call i8* @skip_spaces(i8* %add.ptr) #6, !dbg !2612
  store i8* %call15, i8** %buf.addr, align 8, !dbg !2613
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !2614
  %call16 = call i64 @simple_strtoull(i8* %15, i8** %buf.addr, i32 0) #6, !dbg !2615
  %16 = load i64*, i64** %end.addr, align 8, !dbg !2616
  store i64 %call16, i64* %16, align 8, !dbg !2617
  br label %if.end17, !dbg !2618

if.else:                                          ; preds = %if.then11
  %17 = load i64*, i64** %start.addr, align 8, !dbg !2619
  %18 = load i64, i64* %17, align 8, !dbg !2620
  %19 = load i64*, i64** %end.addr, align 8, !dbg !2621
  store i64 %18, i64* %19, align 8, !dbg !2622
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  br label %if.end18, !dbg !2623

if.end18:                                         ; preds = %if.end17, %if.then8
  br label %if.end19, !dbg !2624

if.end19:                                         ; preds = %if.end18, %if.end6
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !2625
  ret i8* %20, !dbg !2626
}

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_io_resource(%struct.pnp_dev*, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_bus_resource(%struct.pnp_dev*, i64, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @options_show(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2627 {
entry:
  %retval = alloca i64, align 8
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %buffer = alloca %struct.pnp_info_buffer*, align 8
  %option = alloca %struct.pnp_option*, align 8
  %ret = alloca i32, align 4
  %dep = alloca i32, align 4
  %set = alloca i32, align 4
  %indent = alloca i8*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.pnp_option*, align 8
  %__mptr21 = alloca i8*, align 8
  %tmp26 = alloca %struct.pnp_option*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !2628, metadata !DIExpression()), !dbg !2629
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !2634, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2636, metadata !DIExpression()), !dbg !2638
  %0 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !2638
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2638
  store i8* %1, i8** %__mptr, align 8, !dbg !2638
  br label %do.body, !dbg !2638

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2639

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2638
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2638
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2638
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2639
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2638
  store %struct.pnp_dev* %4, %struct.pnp_dev** %dev, align 8, !dbg !2635
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer, metadata !2641, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2645, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.declare(metadata i32* %dep, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i32 0, i32* %dep, align 4, !dbg !2648
  call void @llvm.dbg.declare(metadata i32* %set, metadata !2649, metadata !DIExpression()), !dbg !2650
  store i32 0, i32* %set, align 4, !dbg !2650
  call void @llvm.dbg.declare(metadata i8** %indent, metadata !2651, metadata !DIExpression()), !dbg !2652
  %call = call i8* @pnp_alloc(i64 40) #6, !dbg !2653
  %5 = bitcast i8* %call to %struct.pnp_info_buffer*, !dbg !2653
  store %struct.pnp_info_buffer* %5, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2654
  %6 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2655
  %tobool = icmp ne %struct.pnp_info_buffer* %6, null, !dbg !2655
  br i1 %tobool, label %if.end, label %if.then, !dbg !2657

if.then:                                          ; preds = %do.end
  store i64 -12, i64* %retval, align 8, !dbg !2658
  br label %return, !dbg !2658

if.end:                                           ; preds = %do.end
  %7 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2659
  %len = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %7, i32 0, i32 3, !dbg !2660
  store i64 4096, i64* %len, align 8, !dbg !2661
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !2662
  %9 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2663
  %buffer1 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %9, i32 0, i32 0, !dbg !2664
  store i8* %8, i8** %buffer1, align 8, !dbg !2665
  %10 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2666
  %buffer2 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %10, i32 0, i32 0, !dbg !2667
  %11 = load i8*, i8** %buffer2, align 8, !dbg !2667
  %12 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2668
  %curr = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %12, i32 0, i32 1, !dbg !2669
  store i8* %11, i8** %curr, align 8, !dbg !2670
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2671, metadata !DIExpression()), !dbg !2674
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2674
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 17, !dbg !2674
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !2674
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2674
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !2674
  store i8* %15, i8** %__mptr3, align 8, !dbg !2674
  br label %do.body4, !dbg !2674

do.body4:                                         ; preds = %if.end
  br label %do.end5, !dbg !2675

do.end5:                                          ; preds = %do.body4
  %16 = load i8*, i8** %__mptr3, align 8, !dbg !2674
  %add.ptr7 = getelementptr i8, i8* %16, i64 0, !dbg !2674
  %17 = bitcast i8* %add.ptr7 to %struct.pnp_option*, !dbg !2674
  store %struct.pnp_option* %17, %struct.pnp_option** %tmp6, align 8, !dbg !2675
  %18 = load %struct.pnp_option*, %struct.pnp_option** %tmp6, align 8, !dbg !2674
  store %struct.pnp_option* %18, %struct.pnp_option** %option, align 8, !dbg !2677
  br label %for.cond, !dbg !2677

for.cond:                                         ; preds = %do.end25, %do.end5
  %19 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2678
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %19, i32 0, i32 0, !dbg !2678
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !2678
  %options8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %20, i32 0, i32 17, !dbg !2678
  %cmp = icmp eq %struct.list_head* %list, %options8, !dbg !2678
  %lnot = xor i1 %cmp, true, !dbg !2678
  br i1 %lnot, label %for.body, label %for.end, !dbg !2677

for.body:                                         ; preds = %for.cond
  %21 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2680
  %call9 = call i32 @pnp_option_is_dependent(%struct.pnp_option* %21) #6, !dbg !2683
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2683
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !2684

if.then11:                                        ; preds = %for.body
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8** %indent, align 8, !dbg !2685
  %22 = load i32, i32* %dep, align 4, !dbg !2687
  %tobool12 = icmp ne i32 %22, 0, !dbg !2687
  br i1 %tobool12, label %lor.lhs.false, label %if.then15, !dbg !2689

lor.lhs.false:                                    ; preds = %if.then11
  %23 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2690
  %call13 = call i32 @pnp_option_set(%struct.pnp_option* %23) #6, !dbg !2691
  %24 = load i32, i32* %set, align 4, !dbg !2692
  %cmp14 = icmp ne i32 %call13, %24, !dbg !2693
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !2694

if.then15:                                        ; preds = %lor.lhs.false, %if.then11
  %25 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2695
  %call16 = call i32 @pnp_option_set(%struct.pnp_option* %25) #6, !dbg !2697
  store i32 %call16, i32* %set, align 4, !dbg !2698
  store i32 1, i32* %dep, align 4, !dbg !2699
  %26 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2700
  %27 = load i32, i32* %set, align 4, !dbg !2701
  %28 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2702
  %call17 = call i8* @pnp_option_priority_name(%struct.pnp_option* %28) #6, !dbg !2703
  %call18 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 %27, i8* %call17) #6, !dbg !2704
  br label %if.end19, !dbg !2705

if.end19:                                         ; preds = %if.then15, %lor.lhs.false
  br label %if.end20, !dbg !2706

if.else:                                          ; preds = %for.body
  store i32 0, i32* %dep, align 4, !dbg !2707
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %indent, align 8, !dbg !2709
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end19
  %29 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2710
  %30 = load i8*, i8** %indent, align 8, !dbg !2711
  %31 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2712
  call void @pnp_print_option(%struct.pnp_info_buffer* %29, i8* %30, %struct.pnp_option* %31) #6, !dbg !2713
  br label %for.inc, !dbg !2714

for.inc:                                          ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i8** %__mptr21, metadata !2715, metadata !DIExpression()), !dbg !2717
  %32 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2717
  %list22 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %32, i32 0, i32 0, !dbg !2717
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %list22, i32 0, i32 0, !dbg !2717
  %33 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !2717
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !2717
  store i8* %34, i8** %__mptr21, align 8, !dbg !2717
  br label %do.body24, !dbg !2717

do.body24:                                        ; preds = %for.inc
  br label %do.end25, !dbg !2718

do.end25:                                         ; preds = %do.body24
  %35 = load i8*, i8** %__mptr21, align 8, !dbg !2717
  %add.ptr27 = getelementptr i8, i8* %35, i64 0, !dbg !2717
  %36 = bitcast i8* %add.ptr27 to %struct.pnp_option*, !dbg !2717
  store %struct.pnp_option* %36, %struct.pnp_option** %tmp26, align 8, !dbg !2718
  %37 = load %struct.pnp_option*, %struct.pnp_option** %tmp26, align 8, !dbg !2717
  store %struct.pnp_option* %37, %struct.pnp_option** %option, align 8, !dbg !2678
  br label %for.cond, !dbg !2678, !llvm.loop !2720

for.end:                                          ; preds = %for.cond
  %38 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2722
  %curr28 = getelementptr inbounds %struct.pnp_info_buffer, %struct.pnp_info_buffer* %38, i32 0, i32 1, !dbg !2723
  %39 = load i8*, i8** %curr28, align 8, !dbg !2723
  %40 = load i8*, i8** %buf.addr, align 8, !dbg !2724
  %sub.ptr.lhs.cast = ptrtoint i8* %39 to i64, !dbg !2725
  %sub.ptr.rhs.cast = ptrtoint i8* %40 to i64, !dbg !2725
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2725
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !2726
  store i32 %conv, i32* %ret, align 4, !dbg !2727
  %41 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer, align 8, !dbg !2728
  %42 = bitcast %struct.pnp_info_buffer* %41 to i8*, !dbg !2728
  call void @kfree(i8* %42) #6, !dbg !2729
  %43 = load i32, i32* %ret, align 4, !dbg !2730
  %conv29 = sext i32 %43 to i64, !dbg !2730
  store i64 %conv29, i64* %retval, align 8, !dbg !2731
  br label %return, !dbg !2731

return:                                           ; preds = %for.end, %if.then
  %44 = load i64, i64* %retval, align 8, !dbg !2732
  ret i64 %44, !dbg !2732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_is_dependent(%struct.pnp_option* %option) #0 !dbg !2733 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2738
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2739
  %1 = load i32, i32* %flags, align 8, !dbg !2739
  %and = and i32 %1, -2147483648, !dbg !2740
  %tobool = icmp ne i32 %and, 0, !dbg !2738
  %2 = zext i1 %tobool to i64, !dbg !2738
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2738
  ret i32 %cond, !dbg !2741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_set(%struct.pnp_option* %option) #0 !dbg !2742 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2747
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2748
  %1 = load i32, i32* %flags, align 8, !dbg !2748
  %shr = lshr i32 %1, 12, !dbg !2749
  %and = and i32 %shr, 65535, !dbg !2750
  ret i32 %and, !dbg !2751
}

; Function Attrs: noredzone
declare dso_local i8* @pnp_option_priority_name(%struct.pnp_option*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_print_option(%struct.pnp_info_buffer* %buffer, i8* %space, %struct.pnp_option* %option) #0 !dbg !2752 {
entry:
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %space.addr = alloca i8*, align 8
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8* %space, i8** %space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %space.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2761
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 2, !dbg !2762
  %1 = load i64, i64* %type, align 8, !dbg !2762
  switch i64 %1, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb1
    i64 1024, label %sw.bb3
    i64 2048, label %sw.bb5
  ], !dbg !2763

sw.bb:                                            ; preds = %entry
  %2 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2764
  %3 = load i8*, i8** %space.addr, align 8, !dbg !2766
  %4 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2767
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %4, i32 0, i32 3, !dbg !2768
  %port = bitcast %union.anon.39* %u to %struct.pnp_port*, !dbg !2769
  call void @pnp_print_port(%struct.pnp_info_buffer* %2, i8* %3, %struct.pnp_port* %port) #6, !dbg !2770
  br label %sw.epilog, !dbg !2771

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2772
  %6 = load i8*, i8** %space.addr, align 8, !dbg !2773
  %7 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2774
  %u2 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %7, i32 0, i32 3, !dbg !2775
  %mem = bitcast %union.anon.39* %u2 to %struct.pnp_mem*, !dbg !2776
  call void @pnp_print_mem(%struct.pnp_info_buffer* %5, i8* %6, %struct.pnp_mem* %mem) #6, !dbg !2777
  br label %sw.epilog, !dbg !2778

sw.bb3:                                           ; preds = %entry
  %8 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2779
  %9 = load i8*, i8** %space.addr, align 8, !dbg !2780
  %10 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2781
  %u4 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %10, i32 0, i32 3, !dbg !2782
  %irq = bitcast %union.anon.39* %u4 to %struct.pnp_irq*, !dbg !2783
  call void @pnp_print_irq(%struct.pnp_info_buffer* %8, i8* %9, %struct.pnp_irq* %irq) #6, !dbg !2784
  br label %sw.epilog, !dbg !2785

sw.bb5:                                           ; preds = %entry
  %11 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2786
  %12 = load i8*, i8** %space.addr, align 8, !dbg !2787
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2788
  %u6 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %13, i32 0, i32 3, !dbg !2789
  %dma = bitcast %union.anon.39* %u6 to %struct.pnp_dma*, !dbg !2790
  call void @pnp_print_dma(%struct.pnp_info_buffer* %11, i8* %12, %struct.pnp_dma* %dma) #6, !dbg !2791
  br label %sw.epilog, !dbg !2792

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !2793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_print_port(%struct.pnp_info_buffer* %buffer, i8* %space, %struct.pnp_port* %port) #0 !dbg !2794 {
entry:
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %space.addr = alloca i8*, align 8
  %port.addr = alloca %struct.pnp_port*, align 8
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !2798, metadata !DIExpression()), !dbg !2799
  store i8* %space, i8** %space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %space.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  store %struct.pnp_port* %port, %struct.pnp_port** %port.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %port.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  %0 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2804
  %1 = load i8*, i8** %space.addr, align 8, !dbg !2805
  %2 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2806
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %2, i32 0, i32 0, !dbg !2807
  %3 = load i64, i64* %min, align 8, !dbg !2807
  %4 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2808
  %max = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %4, i32 0, i32 1, !dbg !2809
  %5 = load i64, i64* %max, align 8, !dbg !2809
  %6 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2810
  %align = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %6, i32 0, i32 2, !dbg !2811
  %7 = load i64, i64* %align, align 8, !dbg !2811
  %tobool = icmp ne i64 %7, 0, !dbg !2810
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2810

cond.true:                                        ; preds = %entry
  %8 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2812
  %align1 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %8, i32 0, i32 2, !dbg !2813
  %9 = load i64, i64* %align1, align 8, !dbg !2813
  %sub = sub i64 %9, 1, !dbg !2814
  br label %cond.end, !dbg !2810

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2810

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2810
  %10 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2815
  %size = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %10, i32 0, i32 3, !dbg !2816
  %11 = load i64, i64* %size, align 8, !dbg !2816
  %12 = load %struct.pnp_port*, %struct.pnp_port** %port.addr, align 8, !dbg !2817
  %flags = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %12, i32 0, i32 4, !dbg !2818
  %13 = load i8, i8* %flags, align 8, !dbg !2818
  %conv = zext i8 %13 to i32, !dbg !2817
  %and = and i32 %conv, 1, !dbg !2819
  %tobool2 = icmp ne i32 %and, 0, !dbg !2817
  %14 = zext i1 %tobool2 to i64, !dbg !2817
  %cond3 = select i1 %tobool2, i32 16, i32 10, !dbg !2817
  %call = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i8* %1, i64 %3, i64 %5, i64 %cond, i64 %11, i32 %cond3) #6, !dbg !2820
  ret void, !dbg !2821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_print_mem(%struct.pnp_info_buffer* %buffer, i8* %space, %struct.pnp_mem* %mem) #0 !dbg !2822 {
entry:
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %space.addr = alloca i8*, align 8
  %mem.addr = alloca %struct.pnp_mem*, align 8
  %s = alloca i8*, align 8
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i8* %space, i8** %space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %space.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  store %struct.pnp_mem* %mem, %struct.pnp_mem** %mem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_mem** %mem.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata i8** %s, metadata !2832, metadata !DIExpression()), !dbg !2833
  %0 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2834
  %1 = load i8*, i8** %space.addr, align 8, !dbg !2835
  %2 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2836
  %min = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %2, i32 0, i32 0, !dbg !2837
  %3 = load i64, i64* %min, align 8, !dbg !2837
  %4 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2838
  %max = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %4, i32 0, i32 1, !dbg !2839
  %5 = load i64, i64* %max, align 8, !dbg !2839
  %6 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2840
  %align = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %6, i32 0, i32 2, !dbg !2841
  %7 = load i64, i64* %align, align 8, !dbg !2841
  %8 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2842
  %size = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %8, i32 0, i32 3, !dbg !2843
  %9 = load i64, i64* %size, align 8, !dbg !2843
  %call = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i8* %1, i64 %3, i64 %5, i64 %7, i64 %9) #6, !dbg !2844
  %10 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2845
  %flags = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %10, i32 0, i32 4, !dbg !2847
  %11 = load i8, i8* %flags, align 8, !dbg !2847
  %conv = zext i8 %11 to i32, !dbg !2845
  %and = and i32 %conv, 1, !dbg !2848
  %tobool = icmp ne i32 %and, 0, !dbg !2848
  br i1 %tobool, label %if.then, label %if.end, !dbg !2849

if.then:                                          ; preds = %entry
  %12 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2850
  %call1 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !2851
  br label %if.end, !dbg !2851

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2852
  %flags2 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %13, i32 0, i32 4, !dbg !2854
  %14 = load i8, i8* %flags2, align 8, !dbg !2854
  %conv3 = zext i8 %14 to i32, !dbg !2852
  %and4 = and i32 %conv3, 2, !dbg !2855
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2855
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2856

if.then6:                                         ; preds = %if.end
  %15 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2857
  %call7 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2858
  br label %if.end8, !dbg !2858

if.end8:                                          ; preds = %if.then6, %if.end
  %16 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2859
  %flags9 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %16, i32 0, i32 4, !dbg !2861
  %17 = load i8, i8* %flags9, align 8, !dbg !2861
  %conv10 = zext i8 %17 to i32, !dbg !2859
  %and11 = and i32 %conv10, 4, !dbg !2862
  %tobool12 = icmp ne i32 %and11, 0, !dbg !2862
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2863

if.then13:                                        ; preds = %if.end8
  %18 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2864
  %call14 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2865
  br label %if.end15, !dbg !2865

if.end15:                                         ; preds = %if.then13, %if.end8
  %19 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2866
  %flags16 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %19, i32 0, i32 4, !dbg !2868
  %20 = load i8, i8* %flags16, align 8, !dbg !2868
  %conv17 = zext i8 %20 to i32, !dbg !2866
  %and18 = and i32 %conv17, 32, !dbg !2869
  %tobool19 = icmp ne i32 %and18, 0, !dbg !2869
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !2870

if.then20:                                        ; preds = %if.end15
  %21 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2871
  %call21 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !2872
  br label %if.end22, !dbg !2872

if.end22:                                         ; preds = %if.then20, %if.end15
  %22 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2873
  %flags23 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %22, i32 0, i32 4, !dbg !2875
  %23 = load i8, i8* %flags23, align 8, !dbg !2875
  %conv24 = zext i8 %23 to i32, !dbg !2873
  %and25 = and i32 %conv24, 64, !dbg !2876
  %tobool26 = icmp ne i32 %and25, 0, !dbg !2876
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !2877

if.then27:                                        ; preds = %if.end22
  %24 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2878
  %call28 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2879
  br label %if.end29, !dbg !2879

if.end29:                                         ; preds = %if.then27, %if.end22
  %25 = load %struct.pnp_mem*, %struct.pnp_mem** %mem.addr, align 8, !dbg !2880
  %flags30 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %25, i32 0, i32 4, !dbg !2881
  %26 = load i8, i8* %flags30, align 8, !dbg !2881
  %conv31 = zext i8 %26 to i32, !dbg !2880
  %and32 = and i32 %conv31, 24, !dbg !2882
  switch i32 %and32, label %sw.default [
    i32 0, label %sw.bb
    i32 16, label %sw.bb33
    i32 24, label %sw.bb34
  ], !dbg !2883

sw.bb:                                            ; preds = %if.end29
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8** %s, align 8, !dbg !2884
  br label %sw.epilog, !dbg !2886

sw.bb33:                                          ; preds = %if.end29
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8** %s, align 8, !dbg !2887
  br label %sw.epilog, !dbg !2888

sw.bb34:                                          ; preds = %if.end29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i8** %s, align 8, !dbg !2889
  br label %sw.epilog, !dbg !2890

sw.default:                                       ; preds = %if.end29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8** %s, align 8, !dbg !2891
  br label %sw.epilog, !dbg !2892

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb33, %sw.bb
  %27 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2893
  %28 = load i8*, i8** %s, align 8, !dbg !2894
  %call35 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* %28) #6, !dbg !2895
  ret void, !dbg !2896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_print_irq(%struct.pnp_info_buffer* %buffer, i8* %space, %struct.pnp_irq* %irq) #0 !dbg !2897 {
entry:
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %space.addr = alloca i8*, align 8
  %irq.addr = alloca %struct.pnp_irq*, align 8
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !2901, metadata !DIExpression()), !dbg !2902
  store i8* %space, i8** %space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %space.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store %struct.pnp_irq* %irq, %struct.pnp_irq** %irq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata i32* %first, metadata !2907, metadata !DIExpression()), !dbg !2908
  store i32 1, i32* %first, align 4, !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2909, metadata !DIExpression()), !dbg !2910
  %0 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2911
  %1 = load i8*, i8** %space.addr, align 8, !dbg !2912
  %call = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %1) #6, !dbg !2913
  store i32 0, i32* %i, align 4, !dbg !2914
  br label %for.cond, !dbg !2916

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !2917
  %cmp = icmp slt i32 %2, 256, !dbg !2919
  br i1 %cmp, label %for.body, label %for.end, !dbg !2920

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !2921
  %conv = sext i32 %3 to i64, !dbg !2921
  %4 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2923
  %map = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %4, i32 0, i32 0, !dbg !2924
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map, i32 0, i32 0, !dbg !2925
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !2923
  %call1 = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #6, !dbg !2926
  br i1 %call1, label %if.then, label %if.end13, !dbg !2927

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %first, align 4, !dbg !2928
  %tobool = icmp ne i32 %5, 0, !dbg !2928
  br i1 %tobool, label %if.else, label %if.then2, !dbg !2931

if.then2:                                         ; preds = %if.then
  %6 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2932
  %call3 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !2934
  br label %if.end, !dbg !2935

if.else:                                          ; preds = %if.then
  store i32 0, i32* %first, align 4, !dbg !2936
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %7 = load i32, i32* %i, align 4, !dbg !2938
  %cmp4 = icmp eq i32 %7, 2, !dbg !2940
  br i1 %cmp4, label %if.then8, label %lor.lhs.false, !dbg !2941

lor.lhs.false:                                    ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !2942
  %cmp6 = icmp eq i32 %8, 9, !dbg !2943
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !2944

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2945
  %call9 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2946
  br label %if.end12, !dbg !2946

if.else10:                                        ; preds = %lor.lhs.false
  %10 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2947
  %11 = load i32, i32* %i, align 4, !dbg !2948
  %call11 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32 %11) #6, !dbg !2949
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8
  br label %if.end13, !dbg !2950

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc, !dbg !2951

for.inc:                                          ; preds = %if.end13
  %12 = load i32, i32* %i, align 4, !dbg !2952
  %inc = add i32 %12, 1, !dbg !2952
  store i32 %inc, i32* %i, align 4, !dbg !2952
  br label %for.cond, !dbg !2953, !llvm.loop !2954

for.end:                                          ; preds = %for.cond
  %13 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2956
  %map14 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %13, i32 0, i32 0, !dbg !2958
  %bits15 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map14, i32 0, i32 0, !dbg !2959
  %arraydecay16 = getelementptr inbounds [4 x i64], [4 x i64]* %bits15, i64 0, i64 0, !dbg !2956
  %call17 = call i32 @bitmap_empty(i64* %arraydecay16, i32 256) #6, !dbg !2960
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2960
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !2961

if.then19:                                        ; preds = %for.end
  %14 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2962
  %call20 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !2963
  br label %if.end21, !dbg !2963

if.end21:                                         ; preds = %if.then19, %for.end
  %15 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2964
  %flags = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %15, i32 0, i32 1, !dbg !2966
  %16 = load i8, i8* %flags, align 8, !dbg !2966
  %conv22 = zext i8 %16 to i32, !dbg !2964
  %and = and i32 %conv22, 1, !dbg !2967
  %tobool23 = icmp ne i32 %and, 0, !dbg !2967
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !2968

if.then24:                                        ; preds = %if.end21
  %17 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2969
  %call25 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !2970
  br label %if.end26, !dbg !2970

if.end26:                                         ; preds = %if.then24, %if.end21
  %18 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2971
  %flags27 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %18, i32 0, i32 1, !dbg !2973
  %19 = load i8, i8* %flags27, align 8, !dbg !2973
  %conv28 = zext i8 %19 to i32, !dbg !2971
  %and29 = and i32 %conv28, 2, !dbg !2974
  %tobool30 = icmp ne i32 %and29, 0, !dbg !2974
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !2975

if.then31:                                        ; preds = %if.end26
  %20 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2976
  %call32 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !2977
  br label %if.end33, !dbg !2977

if.end33:                                         ; preds = %if.then31, %if.end26
  %21 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2978
  %flags34 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %21, i32 0, i32 1, !dbg !2980
  %22 = load i8, i8* %flags34, align 8, !dbg !2980
  %conv35 = zext i8 %22 to i32, !dbg !2978
  %and36 = and i32 %conv35, 4, !dbg !2981
  %tobool37 = icmp ne i32 %and36, 0, !dbg !2981
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2982

if.then38:                                        ; preds = %if.end33
  %23 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2983
  %call39 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !2984
  br label %if.end40, !dbg !2984

if.end40:                                         ; preds = %if.then38, %if.end33
  %24 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2985
  %flags41 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %24, i32 0, i32 1, !dbg !2987
  %25 = load i8, i8* %flags41, align 8, !dbg !2987
  %conv42 = zext i8 %25 to i32, !dbg !2985
  %and43 = and i32 %conv42, 8, !dbg !2988
  %tobool44 = icmp ne i32 %and43, 0, !dbg !2988
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !2989

if.then45:                                        ; preds = %if.end40
  %26 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2990
  %call46 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0)) #6, !dbg !2991
  br label %if.end47, !dbg !2991

if.end47:                                         ; preds = %if.then45, %if.end40
  %27 = load %struct.pnp_irq*, %struct.pnp_irq** %irq.addr, align 8, !dbg !2992
  %flags48 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %27, i32 0, i32 1, !dbg !2994
  %28 = load i8, i8* %flags48, align 8, !dbg !2994
  %conv49 = zext i8 %28 to i32, !dbg !2992
  %and50 = and i32 %conv49, 32, !dbg !2995
  %tobool51 = icmp ne i32 %and50, 0, !dbg !2995
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !2996

if.then52:                                        ; preds = %if.end47
  %29 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2997
  %call53 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #6, !dbg !2998
  br label %if.end54, !dbg !2998

if.end54:                                         ; preds = %if.then52, %if.end47
  %30 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !2999
  %call55 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !3000
  ret void, !dbg !3001
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_print_dma(%struct.pnp_info_buffer* %buffer, i8* %space, %struct.pnp_dma* %dma) #0 !dbg !3002 {
entry:
  %buffer.addr = alloca %struct.pnp_info_buffer*, align 8
  %space.addr = alloca i8*, align 8
  %dma.addr = alloca %struct.pnp_dma*, align 8
  %first = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  store %struct.pnp_info_buffer* %buffer, %struct.pnp_info_buffer** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_info_buffer** %buffer.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i8* %space, i8** %space.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %space.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  store %struct.pnp_dma* %dma, %struct.pnp_dma** %dma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %dma.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.declare(metadata i32* %first, metadata !3012, metadata !DIExpression()), !dbg !3013
  store i32 1, i32* %first, align 4, !dbg !3013
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.declare(metadata i8** %s, metadata !3016, metadata !DIExpression()), !dbg !3017
  %0 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3018
  %1 = load i8*, i8** %space.addr, align 8, !dbg !3019
  %call = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* %1) #6, !dbg !3020
  store i32 0, i32* %i, align 4, !dbg !3021
  br label %for.cond, !dbg !3023

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3024
  %cmp = icmp slt i32 %2, 8, !dbg !3026
  br i1 %cmp, label %for.body, label %for.end, !dbg !3027

for.body:                                         ; preds = %for.cond
  %3 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3028
  %map = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %3, i32 0, i32 0, !dbg !3030
  %4 = load i8, i8* %map, align 1, !dbg !3030
  %conv = zext i8 %4 to i32, !dbg !3028
  %5 = load i32, i32* %i, align 4, !dbg !3031
  %shl = shl i32 1, %5, !dbg !3032
  %and = and i32 %conv, %shl, !dbg !3033
  %tobool = icmp ne i32 %and, 0, !dbg !3033
  br i1 %tobool, label %if.then, label %if.end5, !dbg !3034

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %first, align 4, !dbg !3035
  %tobool1 = icmp ne i32 %6, 0, !dbg !3035
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3038

if.then2:                                         ; preds = %if.then
  %7 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3039
  %call3 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !3041
  br label %if.end, !dbg !3042

if.else:                                          ; preds = %if.then
  store i32 0, i32* %first, align 4, !dbg !3043
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %8 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3045
  %9 = load i32, i32* %i, align 4, !dbg !3046
  %call4 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i32 %9) #6, !dbg !3047
  br label %if.end5, !dbg !3048

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3049

for.inc:                                          ; preds = %if.end5
  %10 = load i32, i32* %i, align 4, !dbg !3050
  %inc = add i32 %10, 1, !dbg !3050
  store i32 %inc, i32* %i, align 4, !dbg !3050
  br label %for.cond, !dbg !3051, !llvm.loop !3052

for.end:                                          ; preds = %for.cond
  %11 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3054
  %map6 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %11, i32 0, i32 0, !dbg !3056
  %12 = load i8, i8* %map6, align 1, !dbg !3056
  %tobool7 = icmp ne i8 %12, 0, !dbg !3054
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3057

if.then8:                                         ; preds = %for.end
  %13 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3058
  %call9 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3059
  br label %if.end10, !dbg !3059

if.end10:                                         ; preds = %if.then8, %for.end
  %14 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3060
  %flags = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %14, i32 0, i32 1, !dbg !3061
  %15 = load i8, i8* %flags, align 1, !dbg !3061
  %conv11 = zext i8 %15 to i32, !dbg !3060
  %and12 = and i32 %conv11, 3, !dbg !3062
  switch i32 %and12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ], !dbg !3063

sw.bb:                                            ; preds = %if.end10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8** %s, align 8, !dbg !3064
  br label %sw.epilog, !dbg !3066

sw.bb13:                                          ; preds = %if.end10
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8** %s, align 8, !dbg !3067
  br label %sw.epilog, !dbg !3068

sw.default:                                       ; preds = %if.end10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8** %s, align 8, !dbg !3069
  br label %sw.epilog, !dbg !3070

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  %16 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3071
  %17 = load i8*, i8** %s, align 8, !dbg !3072
  %call14 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* %17) #6, !dbg !3073
  %18 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3074
  %flags15 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %18, i32 0, i32 1, !dbg !3076
  %19 = load i8, i8* %flags15, align 1, !dbg !3076
  %conv16 = zext i8 %19 to i32, !dbg !3074
  %and17 = and i32 %conv16, 4, !dbg !3077
  %tobool18 = icmp ne i32 %and17, 0, !dbg !3077
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3078

if.then19:                                        ; preds = %sw.epilog
  %20 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3079
  %call20 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !3080
  br label %if.end21, !dbg !3080

if.end21:                                         ; preds = %if.then19, %sw.epilog
  %21 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3081
  %flags22 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %21, i32 0, i32 1, !dbg !3083
  %22 = load i8, i8* %flags22, align 1, !dbg !3083
  %conv23 = zext i8 %22 to i32, !dbg !3081
  %and24 = and i32 %conv23, 8, !dbg !3084
  %tobool25 = icmp ne i32 %and24, 0, !dbg !3084
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !3085

if.then26:                                        ; preds = %if.end21
  %23 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3086
  %call27 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !3087
  br label %if.end28, !dbg !3087

if.end28:                                         ; preds = %if.then26, %if.end21
  %24 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3088
  %flags29 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %24, i32 0, i32 1, !dbg !3090
  %25 = load i8, i8* %flags29, align 1, !dbg !3090
  %conv30 = zext i8 %25 to i32, !dbg !3088
  %and31 = and i32 %conv30, 16, !dbg !3091
  %tobool32 = icmp ne i32 %and31, 0, !dbg !3091
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !3092

if.then33:                                        ; preds = %if.end28
  %26 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3093
  %call34 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0)) #6, !dbg !3094
  br label %if.end35, !dbg !3094

if.end35:                                         ; preds = %if.then33, %if.end28
  %27 = load %struct.pnp_dma*, %struct.pnp_dma** %dma.addr, align 8, !dbg !3095
  %flags36 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %27, i32 0, i32 1, !dbg !3096
  %28 = load i8, i8* %flags36, align 1, !dbg !3096
  %conv37 = zext i8 %28 to i32, !dbg !3095
  %and38 = and i32 %conv37, 192, !dbg !3097
  switch i32 %and38, label %sw.default42 [
    i32 64, label %sw.bb39
    i32 128, label %sw.bb40
    i32 192, label %sw.bb41
  ], !dbg !3098

sw.bb39:                                          ; preds = %if.end35
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8** %s, align 8, !dbg !3099
  br label %sw.epilog43, !dbg !3101

sw.bb40:                                          ; preds = %if.end35
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8** %s, align 8, !dbg !3102
  br label %sw.epilog43, !dbg !3103

sw.bb41:                                          ; preds = %if.end35
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8** %s, align 8, !dbg !3104
  br label %sw.epilog43, !dbg !3105

sw.default42:                                     ; preds = %if.end35
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8** %s, align 8, !dbg !3106
  br label %sw.epilog43, !dbg !3107

sw.epilog43:                                      ; preds = %sw.default42, %sw.bb41, %sw.bb40, %sw.bb39
  %29 = load %struct.pnp_info_buffer*, %struct.pnp_info_buffer** %buffer.addr, align 8, !dbg !3108
  %30 = load i8*, i8** %s, align 8, !dbg !3109
  %call44 = call i32 (%struct.pnp_info_buffer*, i8*, ...) @pnp_printf(%struct.pnp_info_buffer* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* %30) #6, !dbg !3110
  ret void, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3112 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3119, metadata !DIExpression()), !dbg !3122
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3124, metadata !DIExpression()), !dbg !3125
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3126, metadata !DIExpression()), !dbg !3127
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3128, metadata !DIExpression()), !dbg !3130
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3132, metadata !DIExpression()), !dbg !3133
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3134, metadata !DIExpression()), !dbg !3142
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3144, metadata !DIExpression()), !dbg !3145
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3150
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3151
  %div = sdiv i64 %1, 64, !dbg !3151
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3152
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3150
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3153
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3154
  %conv.i = trunc i64 %4 to i32, !dbg !3154
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !3155
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3156
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3156
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !3156
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3157
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3157
  br i1 %8, label %cond.true, label %cond.false, !dbg !3157

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3157
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3157
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3158
  %and.i = and i64 %11, 63, !dbg !3159
  %shl.i = shl i64 1, %and.i, !dbg !3160
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3161
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3162
  %shr.i = ashr i64 %13, 6, !dbg !3163
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3161
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3161
  %and1.i = and i64 %shl.i, %14, !dbg !3164
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3165
  %conv = zext i1 %cmp.i to i32, !dbg !3157
  br label %cond.end, !dbg !3157

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3157
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3157
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3166
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3167
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #3, !dbg !3168, !srcloc !3169
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3168
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3170
  %tobool.i = trunc i8 %20 to i1, !dbg !3170
  %conv2 = zext i1 %tobool.i to i32, !dbg !3157
  br label %cond.end, !dbg !3157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3157
  %tobool = icmp ne i32 %cond, 0, !dbg !3157
  ret i1 %tobool, !dbg !3171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_empty(i64* %src, i32 %nbits) #0 !dbg !3172 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !3178, metadata !DIExpression()), !dbg !3179
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !3182
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3182
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3182

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !3182
  %cmp = icmp ule i32 %2, 64, !dbg !3182
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3182

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !3182
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3182
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3184

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src.addr, align 8, !dbg !3185
  %5 = load i64, i64* %4, align 8, !dbg !3186
  %6 = load i32, i32* %nbits.addr, align 4, !dbg !3187
  %sub = sub i32 0, %6, !dbg !3187
  %and = and i32 %sub, 63, !dbg !3187
  %sh_prom = zext i32 %and to i64, !dbg !3187
  %shr = lshr i64 -1, %sh_prom, !dbg !3187
  %and3 = and i64 %5, %shr, !dbg !3188
  %tobool = icmp ne i64 %and3, 0, !dbg !3189
  %lnot = xor i1 %tobool, true, !dbg !3189
  %lnot.ext = zext i1 %lnot to i32, !dbg !3189
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !3190
  br label %return, !dbg !3190

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i64*, i64** %src.addr, align 8, !dbg !3191
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !3192
  %conv = zext i32 %8 to i64, !dbg !3192
  %call = call i64 @find_first_bit(i64* %7, i64 %conv) #6, !dbg !3193
  %9 = load i32, i32* %nbits.addr, align 4, !dbg !3194
  %conv4 = zext i32 %9 to i64, !dbg !3194
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !3195
  %conv6 = zext i1 %cmp5 to i32, !dbg !3195
  store i32 %conv6, i32* %retval, align 4, !dbg !3196
  br label %return, !dbg !3196

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3197
  ret i32 %10, !dbg !3197
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3198 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3202, metadata !DIExpression()), !dbg !3203
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3204, metadata !DIExpression()), !dbg !3205
  ret i1 true, !dbg !3206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3207 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  ret void, !dbg !3217
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_show(%struct.device* %dmdev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3218 {
entry:
  %dmdev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %pos = alloca %struct.pnp_id*, align 8
  store %struct.device* %dmdev, %struct.device** %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dmdev.addr, metadata !3219, metadata !DIExpression()), !dbg !3220
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.declare(metadata i8** %str, metadata !3225, metadata !DIExpression()), !dbg !3226
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3227
  store i8* %0, i8** %str, align 8, !dbg !3226
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3230, metadata !DIExpression()), !dbg !3232
  %1 = load %struct.device*, %struct.device** %dmdev.addr, align 8, !dbg !3232
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3232
  store i8* %2, i8** %__mptr, align 8, !dbg !3232
  br label %do.body, !dbg !3232

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3233

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3232
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3232
  %4 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !3232
  store %struct.pnp_dev* %4, %struct.pnp_dev** %tmp, align 8, !dbg !3233
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !3232
  store %struct.pnp_dev* %5, %struct.pnp_dev** %dev, align 8, !dbg !3229
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %pos, metadata !3235, metadata !DIExpression()), !dbg !3236
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3237
  %id = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 12, !dbg !3238
  %7 = load %struct.pnp_id*, %struct.pnp_id** %id, align 8, !dbg !3238
  store %struct.pnp_id* %7, %struct.pnp_id** %pos, align 8, !dbg !3236
  br label %while.cond, !dbg !3239

while.cond:                                       ; preds = %while.body, %do.end
  %8 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !3240
  %tobool = icmp ne %struct.pnp_id* %8, null, !dbg !3239
  br i1 %tobool, label %while.body, label %while.end, !dbg !3239

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %str, align 8, !dbg !3241
  %10 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !3243
  %id1 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %10, i32 0, i32 0, !dbg !3244
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %id1, i64 0, i64 0, !dbg !3243
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* %arraydecay) #6, !dbg !3245
  %11 = load i8*, i8** %str, align 8, !dbg !3246
  %idx.ext = sext i32 %call to i64, !dbg !3246
  %add.ptr2 = getelementptr i8, i8* %11, i64 %idx.ext, !dbg !3246
  store i8* %add.ptr2, i8** %str, align 8, !dbg !3246
  %12 = load %struct.pnp_id*, %struct.pnp_id** %pos, align 8, !dbg !3247
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %12, i32 0, i32 1, !dbg !3248
  %13 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !3248
  store %struct.pnp_id* %13, %struct.pnp_id** %pos, align 8, !dbg !3249
  br label %while.cond, !dbg !3239, !llvm.loop !3250

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %str, align 8, !dbg !3252
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !3253
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64, !dbg !3254
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64, !dbg !3254
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3254
  ret i64 %sub.ptr.sub, !dbg !3255
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2136, !2137, !2138, !2139}
!llvm.ident = !{!2140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_dev_group", scope: !2, file: !3, line: 462, type: !185, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/interface.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !{!56, !57, !2050, !252, !2070, !2110}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !59, line: 243, size: 7488, elements: !60)
!59 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1944, !1971, !1997, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !58, file: !59, line: 244, baseType: !62, size: 5568)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !63)
!63 = !{!64, !1544, !1546, !1549, !1550, !1601, !1698, !1699, !1700, !1701, !1702, !1711, !1816, !1829, !1832, !1833, !1837, !1839, !1840, !1841, !1845, !1851, !1852, !1855, !1859, !1862, !1865, !1866, !1867, !1868, !1900, !1901, !1902, !1905, !1908, !1909, !1910, !1911}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !62, file: !30, line: 462, baseType: !65, size: 512)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !66, line: 64, size: 512, elements: !67)
!66 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !72, !79, !81, !142, !1380, !1534, !1539, !1540, !1541, !1542, !1543}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 65, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !65, file: !66, line: 66, baseType: !73, size: 128, offset: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 178, size: 128, elements: !75)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !73, file: !74, line: 179, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !73, file: !74, line: 179, baseType: !77, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !65, file: !66, line: 67, baseType: !80, size: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !65, file: !66, line: 68, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !66, line: 192, size: 704, elements: !84)
!84 = !{!85, !86, !102, !103}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !83, file: !66, line: 193, baseType: !73, size: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !83, file: !66, line: 194, baseType: !87, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !88, line: 83, baseType: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !88, line: 71, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !88, line: 72, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !88, line: 72, elements: !93)
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !92, file: !88, line: 73, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 20, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !95, file: !88, line: 21, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !99, line: 25, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 25, elements: !101)
!101 = !{}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !83, file: !66, line: 195, baseType: !65, size: 512, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !83, file: !66, line: 196, baseType: !104, size: 64, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !66, line: 156, size: 192, elements: !107)
!107 = !{!108, !114, !119}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !106, file: !66, line: 157, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !82, !80}
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !66, line: 158, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!69, !82, !80}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !106, file: !66, line: 159, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!113, !82, !80, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !66, line: 148, size: 20736, elements: !126)
!126 = !{!127, !132, !136, !137, !141}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !125, file: !66, line: 149, baseType: !128, size: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 192, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!130 = !{!131}
!131 = !DISubrange(count: 3)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !125, file: !66, line: 150, baseType: !133, size: 4096, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 4096, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !125, file: !66, line: 151, baseType: !113, size: 32, offset: 4288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !125, file: !66, line: 152, baseType: !138, size: 16384, offset: 4320)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16384, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 2048)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !125, file: !66, line: 153, baseType: !113, size: 32, offset: 20704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !65, file: !66, line: 69, baseType: !143, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !66, line: 138, size: 448, elements: !145)
!145 = !{!146, !150, !180, !182, !1326, !1359, !1363}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !144, file: !66, line: 139, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !80}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !144, file: !66, line: 140, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !154, line: 230, size: 128, elements: !155)
!154 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !172}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !153, file: !154, line: 231, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !80, !165, !129}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !74, line: 60, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !162, line: 73, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !162, line: 15, baseType: !164)
!164 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !154, line: 30, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !154, line: 31, baseType: !69, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !166, file: !154, line: 32, baseType: !170, size: 16, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !74, line: 19, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !153, file: !154, line: 232, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!160, !80, !165, !69, !176}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 55, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !162, line: 72, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !162, line: 16, baseType: !179)
!179 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !144, file: !66, line: 141, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !144, file: !66, line: 142, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !154, line: 84, size: 320, elements: !187)
!187 = !{!188, !189, !193, !1323, !1324}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !186, file: !154, line: 85, baseType: !69, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !186, file: !154, line: 86, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!170, !80, !165, !113}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !186, file: !154, line: 88, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!170, !80, !197, !113}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !154, line: 168, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !213, !214}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !198, file: !154, line: 169, baseType: !166, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !154, line: 170, baseType: !176, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !198, file: !154, line: 171, baseType: !56, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !198, file: !154, line: 172, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!160, !207, !80, !197, !129, !210, !176}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !209, line: 526, flags: DIFlagFwdDecl)
!209 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !74, line: 46, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !162, line: 88, baseType: !212)
!212 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !198, file: !154, line: 174, baseType: !204, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !198, file: !154, line: 176, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!113, !207, !80, !197, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !220, line: 305, size: 1472, elements: !221)
!220 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !223, !224, !225, !226, !234, !235, !1297, !1303, !1304, !1309, !1310, !1313, !1317, !1318, !1319, !1320, !1321}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !219, file: !220, line: 308, baseType: !179, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !219, file: !220, line: 309, baseType: !179, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !219, file: !220, line: 313, baseType: !218, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !219, file: !220, line: 313, baseType: !218, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !219, file: !220, line: 315, baseType: !227, size: 192, align: 64, offset: 256)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !228, line: 24, size: 192, align: 64, elements: !229)
!228 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !227, file: !228, line: 25, baseType: !179, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !227, file: !228, line: 26, baseType: !232, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !227, file: !228, line: 27, baseType: !232, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !219, file: !220, line: 323, baseType: !179, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !219, file: !220, line: 327, baseType: !236, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !220, line: 388, size: 7296, elements: !238)
!238 = !{!239, !1293}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !220, line: 389, baseType: !240, size: 7296)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !220, line: 389, size: 7296, elements: !241)
!241 = !{!242, !243, !247, !253, !257, !258, !259, !260, !261, !269, !274, !275, !276, !277, !286, !287, !288, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !331, !334, !366, !367, !1263, !1264, !1267, !1271, !1272, !1275, !1276, !1277, !1280, !1292}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !240, file: !220, line: 390, baseType: !218, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !240, file: !220, line: 391, baseType: !244, size: 64, offset: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !228, line: 31, size: 64, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !244, file: !228, line: 32, baseType: !232, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !240, file: !220, line: 392, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !249, line: 23, baseType: !250)
!249 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !251, line: 31, baseType: !252)
!251 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!252 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !240, file: !220, line: 394, baseType: !254, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!179, !207, !179, !179, !179, !179}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !240, file: !220, line: 398, baseType: !179, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !240, file: !220, line: 399, baseType: !179, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !240, file: !220, line: 405, baseType: !179, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !240, file: !220, line: 406, baseType: !179, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !240, file: !220, line: 407, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !209, line: 286, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 286, size: 64, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !264, file: !209, line: 286, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !268, line: 18, baseType: !179)
!268 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!269 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !240, file: !220, line: 416, baseType: !270, size: 32, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 168, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 166, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !271, file: !74, line: 167, baseType: !113, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !240, file: !220, line: 428, baseType: !270, size: 32, offset: 608)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !240, file: !220, line: 437, baseType: !270, size: 32, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !240, file: !220, line: 447, baseType: !270, size: 32, offset: 672)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !240, file: !220, line: 450, baseType: !278, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !279, line: 13, baseType: !280)
!279 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 175, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 173, size: 64, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !281, file: !74, line: 174, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !249, line: 22, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !251, line: 30, baseType: !212)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !240, file: !220, line: 452, baseType: !113, size: 32, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !240, file: !220, line: 454, baseType: !87, offset: 800)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !240, file: !220, line: 457, baseType: !289, size: 256, offset: 832)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !290, line: 35, size: 256, elements: !291)
!290 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !289, file: !290, line: 36, baseType: !278, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !290, line: 42, baseType: !278, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !289, file: !290, line: 46, baseType: !295, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 29, baseType: !95)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !289, file: !290, line: 47, baseType: !73, size: 128, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !240, file: !220, line: 459, baseType: !73, size: 128, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !240, file: !220, line: 466, baseType: !179, size: 64, offset: 1216)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !240, file: !220, line: 467, baseType: !179, size: 64, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !240, file: !220, line: 469, baseType: !179, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !240, file: !220, line: 470, baseType: !179, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !240, file: !220, line: 471, baseType: !280, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !240, file: !220, line: 472, baseType: !179, size: 64, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !240, file: !220, line: 473, baseType: !179, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !240, file: !220, line: 474, baseType: !179, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !240, file: !220, line: 475, baseType: !179, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !240, file: !220, line: 477, baseType: !87, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !240, file: !220, line: 478, baseType: !179, size: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !240, file: !220, line: 478, baseType: !179, size: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !240, file: !220, line: 478, baseType: !179, size: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !240, file: !220, line: 478, baseType: !179, size: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !240, file: !220, line: 479, baseType: !179, size: 64, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !240, file: !220, line: 479, baseType: !179, size: 64, offset: 2112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !240, file: !220, line: 479, baseType: !179, size: 64, offset: 2176)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !240, file: !220, line: 480, baseType: !179, size: 64, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !240, file: !220, line: 480, baseType: !179, size: 64, offset: 2304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !240, file: !220, line: 480, baseType: !179, size: 64, offset: 2368)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !240, file: !220, line: 480, baseType: !179, size: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !240, file: !220, line: 482, baseType: !320, size: 2816, offset: 2496)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 2816, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 44)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !240, file: !220, line: 488, baseType: !324, size: 256, offset: 5312)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !325, line: 60, size: 256, elements: !326)
!325 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !325, line: 61, baseType: !328, size: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 4)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !240, file: !220, line: 490, baseType: !332, size: 64, offset: 5568)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !220, line: 490, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !240, file: !220, line: 493, baseType: !335, size: 896, offset: 5632)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !336, line: 53, baseType: !337)
!336 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 13, size: 896, elements: !338)
!338 = !{!339, !340, !341, !342, !345, !346, !353, !354, !358, !359, !362}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !337, file: !336, line: 18, baseType: !248, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !337, file: !336, line: 28, baseType: !280, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !337, file: !336, line: 31, baseType: !289, size: 256, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !337, file: !336, line: 32, baseType: !343, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !336, line: 32, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !337, file: !336, line: 37, baseType: !171, size: 16, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !337, file: !336, line: 40, baseType: !347, size: 192, offset: 512)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !348, line: 53, size: 192, elements: !349)
!348 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !351, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !347, file: !348, line: 54, baseType: !278, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !347, file: !348, line: 55, baseType: !87, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !347, file: !348, line: 59, baseType: !73, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !337, file: !336, line: 41, baseType: !56, size: 64, offset: 704)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !337, file: !336, line: 42, baseType: !355, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !336, line: 42, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !337, file: !336, line: 44, baseType: !270, size: 32, offset: 832)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !337, file: !336, line: 50, baseType: !360, size: 16, offset: 864)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !249, line: 19, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !251, line: 24, baseType: !171)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !337, file: !336, line: 51, baseType: !363, size: 16, offset: 880)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !249, line: 18, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !251, line: 23, baseType: !365)
!365 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !240, file: !220, line: 495, baseType: !179, size: 64, offset: 6528)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !240, file: !220, line: 497, baseType: !368, size: 64, offset: 6592)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !220, line: 381, size: 384, elements: !370)
!370 = !{!371, !372, !1262}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !369, file: !220, line: 382, baseType: !270, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !369, file: !220, line: 383, baseType: !373, size: 128, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !220, line: 376, size: 128, elements: !374)
!374 = !{!375, !1260}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !373, file: !220, line: 377, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !378, line: 640, size: 48640, elements: !379)
!378 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !388, !390, !391, !397, !398, !399, !400, !401, !402, !403, !404, !408, !426, !437, !532, !533, !534, !545, !546, !548, !549, !550, !551, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !630, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !686, !688, !689, !690, !702, !704, !705, !706, !707, !708, !714, !715, !716, !717, !718, !719, !720, !732, !737, !741, !742, !743, !746, !750, !753, !756, !759, !762, !765, !768, !771, !777, !778, !779, !785, !786, !787, !788, !789, !798, !799, !800, !801, !802, !807, !808, !809, !812, !813, !816, !819, !822, !825, !828, !831, !832, !912, !915, !918, !919, !922, !923, !924, !930, !931, !932, !945, !946, !947, !959, !964, !967, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !377, file: !378, line: 646, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !382, line: 56, size: 128, elements: !383)
!382 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !382, line: 57, baseType: !179, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !381, file: !382, line: 58, baseType: !386, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !249, line: 21, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !251, line: 27, baseType: !7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !378, line: 649, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !164)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !377, file: !378, line: 657, baseType: !56, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !377, file: !378, line: 658, baseType: !392, size: 32, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !393, line: 113, baseType: !394)
!393 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !393, line: 111, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !394, file: !393, line: 112, baseType: !270, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !378, line: 660, baseType: !7, size: 32, offset: 288)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !377, file: !378, line: 661, baseType: !7, size: 32, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !377, file: !378, line: 684, baseType: !113, size: 32, offset: 352)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !377, file: !378, line: 686, baseType: !113, size: 32, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !377, file: !378, line: 687, baseType: !113, size: 32, offset: 416)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !377, file: !378, line: 688, baseType: !113, size: 32, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !377, file: !378, line: 689, baseType: !7, size: 32, offset: 480)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !377, file: !378, line: 691, baseType: !405, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !378, line: 691, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !377, file: !378, line: 692, baseType: !409, size: 832, offset: 576)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !378, line: 451, size: 832, elements: !410)
!410 = !{!411, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !409, file: !378, line: 453, baseType: !412, size: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !378, line: 325, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !412, file: !378, line: 326, baseType: !179, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !412, file: !378, line: 327, baseType: !386, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !409, file: !378, line: 454, baseType: !227, size: 192, align: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !409, file: !378, line: 455, baseType: !73, size: 128, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !409, file: !378, line: 456, baseType: !7, size: 32, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !409, file: !378, line: 458, baseType: !248, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !409, file: !378, line: 459, baseType: !248, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !409, file: !378, line: 460, baseType: !248, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !409, file: !378, line: 461, baseType: !248, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !409, file: !378, line: 463, baseType: !248, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !409, file: !378, line: 465, baseType: !425, offset: 832)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !378, line: 415, elements: !101)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !377, file: !378, line: 693, baseType: !427, size: 384, offset: 1408)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !378, line: 489, size: 384, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !427, file: !378, line: 490, baseType: !73, size: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !427, file: !378, line: 491, baseType: !179, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !427, file: !378, line: 492, baseType: !179, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !427, file: !378, line: 493, baseType: !7, size: 32, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !427, file: !378, line: 494, baseType: !171, size: 16, offset: 288)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !427, file: !378, line: 495, baseType: !171, size: 16, offset: 304)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !427, file: !378, line: 497, baseType: !436, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !377, file: !378, line: 697, baseType: !438, size: 1792, offset: 1792)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !378, line: 507, size: 1792, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !529, !530}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !438, file: !378, line: 508, baseType: !227, size: 192, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !438, file: !378, line: 515, baseType: !248, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !438, file: !378, line: 516, baseType: !248, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !438, file: !378, line: 517, baseType: !248, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !438, file: !378, line: 518, baseType: !248, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !438, file: !378, line: 519, baseType: !248, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !438, file: !378, line: 526, baseType: !284, size: 64, offset: 512)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !438, file: !378, line: 527, baseType: !248, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !378, line: 528, baseType: !7, size: 32, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !438, file: !378, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !438, file: !378, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !438, file: !378, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !438, file: !378, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !438, file: !378, line: 563, baseType: !454, size: 512, offset: 704)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !455)
!455 = !{!456, !464, !465, !470, !522, !526, !527, !528}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !13, line: 119, baseType: !457, size: 256)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !458, line: 9, size: 256, elements: !459)
!458 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !458, line: 10, baseType: !227, size: 192, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !457, file: !458, line: 11, baseType: !462, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !463, line: 29, baseType: !284)
!463 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !454, file: !13, line: 120, baseType: !462, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !454, file: !13, line: 121, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!12, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !454, file: !13, line: 122, baseType: !471, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !473)
!473 = !{!474, !494, !495, !498, !508, !509, !517, !521}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !472, file: !13, line: 160, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !13, line: 215, baseType: !295)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !476, file: !13, line: 216, baseType: !7, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !476, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !476, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !476, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !476, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !476, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !476, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !476, file: !13, line: 233, baseType: !462, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !476, file: !13, line: 234, baseType: !469, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !476, file: !13, line: 235, baseType: !462, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !476, file: !13, line: 236, baseType: !469, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !476, file: !13, line: 237, baseType: !491, size: 4096, offset: 512)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 4096, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 8)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !472, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !472, file: !13, line: 162, baseType: !496, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !74, line: 27, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !162, line: 96, baseType: !113)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !472, file: !13, line: 163, baseType: !499, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !500, line: 276, baseType: !501)
!500 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !500, line: 276, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !501, file: !500, line: 276, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !500, line: 70, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !500, line: 65, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !505, file: !500, line: 66, baseType: !7, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !472, file: !13, line: 164, baseType: !469, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !472, file: !13, line: 165, baseType: !510, size: 128, offset: 256)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !458, line: 14, size: 128, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !510, file: !458, line: 15, baseType: !513, size: 128)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !228, line: 125, size: 128, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !513, file: !228, line: 126, baseType: !244, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !513, file: !228, line: 127, baseType: !232, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !472, file: !13, line: 166, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!462}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !472, file: !13, line: 167, baseType: !462, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !454, file: !13, line: 123, baseType: !523, size: 8, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !249, line: 17, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !251, line: 21, baseType: !525)
!525 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !454, file: !13, line: 124, baseType: !523, size: 8, offset: 456)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !454, file: !13, line: 125, baseType: !523, size: 8, offset: 464)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !454, file: !13, line: 126, baseType: !523, size: 8, offset: 472)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !438, file: !378, line: 572, baseType: !454, size: 512, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !438, file: !378, line: 580, baseType: !531, size: 64, offset: 1728)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !377, file: !378, line: 721, baseType: !7, size: 32, offset: 3584)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !377, file: !378, line: 722, baseType: !113, size: 32, offset: 3616)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !377, file: !378, line: 723, baseType: !535, size: 64, offset: 3648)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !538, line: 17, baseType: !539)
!538 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !538, line: 17, size: 64, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !539, file: !538, line: 17, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 1)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !377, file: !378, line: 724, baseType: !537, size: 64, offset: 3712)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !377, file: !378, line: 749, baseType: !547, offset: 3776)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !378, line: 290, elements: !101)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !377, file: !378, line: 751, baseType: !73, size: 128, offset: 3776)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !377, file: !378, line: 757, baseType: !236, size: 64, offset: 3904)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !377, file: !378, line: 758, baseType: !236, size: 64, offset: 3968)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !377, file: !378, line: 761, baseType: !552, size: 320, offset: 4032)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !325, line: 34, size: 320, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !552, file: !325, line: 35, baseType: !248, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !552, file: !325, line: 36, baseType: !556, size: 256, offset: 64)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !329)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !377, file: !378, line: 766, baseType: !113, size: 32, offset: 4352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !377, file: !378, line: 767, baseType: !113, size: 32, offset: 4384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !377, file: !378, line: 768, baseType: !113, size: 32, offset: 4416)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !377, file: !378, line: 770, baseType: !113, size: 32, offset: 4448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !377, file: !378, line: 772, baseType: !179, size: 64, offset: 4480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !377, file: !378, line: 775, baseType: !7, size: 32, offset: 4544)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !377, file: !378, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !377, file: !378, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !377, file: !378, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !377, file: !378, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !377, file: !378, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !377, file: !378, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !377, file: !378, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !377, file: !378, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !377, file: !378, line: 831, baseType: !179, size: 64, offset: 4672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !377, file: !378, line: 833, baseType: !573, size: 384, offset: 4736)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !574)
!574 = !{!575, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !573, file: !18, line: 26, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!164, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !18, line: 27, baseType: !581, size: 320, offset: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !18, line: 27, size: 320, elements: !582)
!582 = !{!583, !593, !620}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !581, file: !18, line: 36, baseType: !584, size: 320)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !18, line: 29, size: 320, elements: !585)
!585 = !{!586, !588, !589, !590, !591, !592}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !584, file: !18, line: 30, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !584, file: !18, line: 31, baseType: !386, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !18, line: 32, baseType: !386, size: 32, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !584, file: !18, line: 33, baseType: !386, size: 32, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !584, file: !18, line: 34, baseType: !248, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !584, file: !18, line: 35, baseType: !587, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !581, file: !18, line: 46, baseType: !594, size: 192)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !18, line: 38, size: 192, elements: !595)
!595 = !{!596, !597, !598, !619}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !594, file: !18, line: 39, baseType: !496, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !18, line: 41, baseType: !599, size: 64, offset: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !18, line: 41, size: 64, elements: !600)
!600 = !{!601, !609}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !599, file: !18, line: 42, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !604, line: 7, size: 128, elements: !605)
!604 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!605 = !{!606, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !603, file: !604, line: 8, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !162, line: 93, baseType: !212)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !603, file: !604, line: 9, baseType: !212, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !599, file: !18, line: 43, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !612, line: 7, size: 64, elements: !613)
!612 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !618}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !611, file: !612, line: 8, baseType: !615, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !612, line: 5, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !249, line: 20, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !251, line: 26, baseType: !113)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !611, file: !612, line: 9, baseType: !616, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !594, file: !18, line: 45, baseType: !248, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !581, file: !18, line: 54, baseType: !621, size: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !18, line: 48, size: 256, elements: !622)
!622 = !{!623, !626, !627, !628, !629}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !621, file: !18, line: 49, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !621, file: !18, line: 50, baseType: !113, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !621, file: !18, line: 51, baseType: !113, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !621, file: !18, line: 52, baseType: !179, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !621, file: !18, line: 53, baseType: !179, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !377, file: !378, line: 835, baseType: !631, size: 32, offset: 5120)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !74, line: 22, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !162, line: 28, baseType: !113)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !377, file: !378, line: 836, baseType: !631, size: 32, offset: 5152)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !377, file: !378, line: 840, baseType: !179, size: 64, offset: 5184)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !377, file: !378, line: 849, baseType: !376, size: 64, offset: 5248)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !377, file: !378, line: 852, baseType: !376, size: 64, offset: 5312)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !377, file: !378, line: 857, baseType: !73, size: 128, offset: 5376)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !377, file: !378, line: 858, baseType: !73, size: 128, offset: 5504)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !377, file: !378, line: 859, baseType: !376, size: 64, offset: 5632)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !377, file: !378, line: 867, baseType: !73, size: 128, offset: 5696)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !377, file: !378, line: 868, baseType: !73, size: 128, offset: 5824)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !377, file: !378, line: 871, baseType: !643, size: 64, offset: 5952)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !645, line: 59, size: 768, elements: !646)
!645 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!646 = !{!647, !648, !649, !650, !661, !662, !669, !678}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !644, file: !645, line: 61, baseType: !392, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !644, file: !645, line: 62, baseType: !7, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !644, file: !645, line: 63, baseType: !87, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !644, file: !645, line: 65, baseType: !651, size: 256, offset: 64)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 256, elements: !329)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !74, line: 182, size: 64, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !652, file: !74, line: 183, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !74, line: 186, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !74, line: 187, baseType: !655, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !656, file: !74, line: 187, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !644, file: !645, line: 66, baseType: !652, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !644, file: !645, line: 68, baseType: !663, size: 128, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !664, line: 40, baseType: !665)
!664 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !664, line: 36, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !665, file: !664, line: 37, baseType: !87)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !665, file: !664, line: 38, baseType: !73, size: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !644, file: !645, line: 69, baseType: !670, size: 128, align: 64, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !74, line: 216, size: 128, align: 64, elements: !671)
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !74, line: 217, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !670, file: !74, line: 218, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !673}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !644, file: !645, line: 70, baseType: !679, size: 128, offset: 640)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 128, elements: !543)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !645, line: 54, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !680, file: !645, line: 55, baseType: !113, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !680, file: !645, line: 56, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !645, line: 56, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !377, file: !378, line: 872, baseType: !687, size: 512, offset: 6016)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 512, elements: !329)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !377, file: !378, line: 873, baseType: !73, size: 128, offset: 6528)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !377, file: !378, line: 874, baseType: !73, size: 128, offset: 6656)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !377, file: !378, line: 876, baseType: !691, size: 64, offset: 6784)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !693, line: 26, size: 192, elements: !694)
!693 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !692, file: !693, line: 27, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !692, file: !693, line: 28, baseType: !697, size: 128, offset: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !698, line: 43, size: 128, elements: !699)
!698 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !697, file: !698, line: 44, baseType: !295)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !697, file: !698, line: 45, baseType: !73, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !377, file: !378, line: 879, baseType: !703, size: 64, offset: 6848)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !377, file: !378, line: 882, baseType: !703, size: 64, offset: 6912)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !377, file: !378, line: 884, baseType: !248, size: 64, offset: 6976)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !377, file: !378, line: 885, baseType: !248, size: 64, offset: 7040)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !377, file: !378, line: 890, baseType: !248, size: 64, offset: 7104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !377, file: !378, line: 891, baseType: !709, size: 128, offset: 7168)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !378, line: 242, size: 128, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !709, file: !378, line: 244, baseType: !248, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !709, file: !378, line: 245, baseType: !248, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !378, line: 246, baseType: !295, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !377, file: !378, line: 900, baseType: !179, size: 64, offset: 7296)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !377, file: !378, line: 901, baseType: !179, size: 64, offset: 7360)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !377, file: !378, line: 904, baseType: !248, size: 64, offset: 7424)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !377, file: !378, line: 907, baseType: !248, size: 64, offset: 7488)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !377, file: !378, line: 910, baseType: !179, size: 64, offset: 7552)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !377, file: !378, line: 911, baseType: !179, size: 64, offset: 7616)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !377, file: !378, line: 914, baseType: !721, size: 640, offset: 7680)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !722, line: 123, size: 640, elements: !723)
!722 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !730, !731}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !721, file: !722, line: 124, baseType: !725, size: 576)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 576, elements: !130)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !722, line: 108, size: 192, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !726, file: !722, line: 109, baseType: !248, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !726, file: !722, line: 110, baseType: !510, size: 128, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !721, file: !722, line: 125, baseType: !7, size: 32, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !721, file: !722, line: 126, baseType: !7, size: 32, offset: 608)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !377, file: !378, line: 917, baseType: !733, size: 192, offset: 8320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !722, line: 134, size: 192, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !733, file: !722, line: 135, baseType: !670, size: 128, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !733, file: !722, line: 136, baseType: !7, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !377, file: !378, line: 923, baseType: !738, size: 64, offset: 8512)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !378, line: 923, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !377, file: !378, line: 926, baseType: !738, size: 64, offset: 8576)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !377, file: !378, line: 929, baseType: !738, size: 64, offset: 8640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !377, file: !378, line: 933, baseType: !744, size: 64, offset: 8704)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !378, line: 933, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !377, file: !378, line: 943, baseType: !747, size: 128, offset: 8768)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !748)
!748 = !{!749}
!749 = !DISubrange(count: 16)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !377, file: !378, line: 945, baseType: !751, size: 64, offset: 8896)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !378, line: 49, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !377, file: !378, line: 956, baseType: !754, size: 64, offset: 8960)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !378, line: 45, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !377, file: !378, line: 959, baseType: !757, size: 64, offset: 9024)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !378, line: 959, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !377, file: !378, line: 962, baseType: !760, size: 64, offset: 9088)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !378, line: 66, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !377, file: !378, line: 966, baseType: !763, size: 64, offset: 9152)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !378, line: 50, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !377, file: !378, line: 969, baseType: !766, size: 64, offset: 9216)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !722, line: 223, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !377, file: !378, line: 970, baseType: !769, size: 64, offset: 9280)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !378, line: 62, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !377, file: !378, line: 971, baseType: !772, size: 64, offset: 9344)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !773, line: 25, baseType: !774)
!773 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !773, line: 23, size: 64, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !774, file: !773, line: 24, baseType: !542, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !377, file: !378, line: 972, baseType: !772, size: 64, offset: 9408)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !377, file: !378, line: 974, baseType: !772, size: 64, offset: 9472)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !377, file: !378, line: 975, baseType: !780, size: 192, offset: 9536)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !781, line: 30, size: 192, elements: !782)
!781 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !780, file: !781, line: 31, baseType: !73, size: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !780, file: !781, line: 32, baseType: !772, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !377, file: !378, line: 976, baseType: !179, size: 64, offset: 9728)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !377, file: !378, line: 977, baseType: !176, size: 64, offset: 9792)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !377, file: !378, line: 978, baseType: !7, size: 32, offset: 9856)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !377, file: !378, line: 980, baseType: !673, size: 64, offset: 9920)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !377, file: !378, line: 989, baseType: !790, size: 128, offset: 9984)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !791, line: 35, size: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !790, file: !791, line: 36, baseType: !113, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !790, file: !791, line: 37, baseType: !270, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !790, file: !791, line: 38, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !791, line: 23, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !377, file: !378, line: 992, baseType: !248, size: 64, offset: 10112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !377, file: !378, line: 993, baseType: !248, size: 64, offset: 10176)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !377, file: !378, line: 996, baseType: !87, offset: 10240)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !377, file: !378, line: 999, baseType: !295, offset: 10240)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !377, file: !378, line: 1001, baseType: !803, size: 64, offset: 10240)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !378, line: 636, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !378, line: 637, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !377, file: !378, line: 1005, baseType: !513, size: 128, offset: 10304)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !377, file: !378, line: 1007, baseType: !376, size: 64, offset: 10432)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !377, file: !378, line: 1009, baseType: !810, size: 64, offset: 10496)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !378, line: 1009, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !377, file: !378, line: 1043, baseType: !56, size: 64, offset: 10560)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !377, file: !378, line: 1046, baseType: !814, size: 64, offset: 10624)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !378, line: 41, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !377, file: !378, line: 1050, baseType: !817, size: 64, offset: 10688)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !378, line: 42, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !377, file: !378, line: 1054, baseType: !820, size: 64, offset: 10752)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !378, line: 55, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !377, file: !378, line: 1056, baseType: !823, size: 64, offset: 10816)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !378, line: 40, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !377, file: !378, line: 1058, baseType: !826, size: 64, offset: 10880)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !378, line: 47, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !377, file: !378, line: 1061, baseType: !829, size: 64, offset: 10944)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !378, line: 43, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !377, file: !378, line: 1064, baseType: !179, size: 64, offset: 11008)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !377, file: !378, line: 1065, baseType: !833, size: 64, offset: 11072)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !781, line: 14, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !781, line: 12, size: 384, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !781, line: 13, baseType: !838, size: 384)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !781, line: 13, size: 384, elements: !839)
!839 = !{!840, !841, !842, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !838, file: !781, line: 13, baseType: !113, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !838, file: !781, line: 13, baseType: !113, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !838, file: !781, line: 13, baseType: !113, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !838, file: !781, line: 13, baseType: !844, size: 256, offset: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !845, line: 32, size: 256, elements: !846)
!845 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!846 = !{!847, !853, !866, !872, !881, !901, !906}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !844, file: !845, line: 37, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 34, size: 64, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !848, file: !845, line: 35, baseType: !632, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !848, file: !845, line: 36, baseType: !852, size: 32, offset: 32)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !162, line: 49, baseType: !7)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !844, file: !845, line: 45, baseType: !854, size: 192)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 40, size: 192, elements: !855)
!855 = !{!856, !858, !859, !865}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !854, file: !845, line: 41, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !162, line: 95, baseType: !113)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !854, file: !845, line: 42, baseType: !113, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !854, file: !845, line: 43, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !845, line: 11, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !845, line: 8, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !861, file: !845, line: 9, baseType: !113, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !861, file: !845, line: 10, baseType: !56, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !854, file: !845, line: 44, baseType: !113, size: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !844, file: !845, line: 52, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 48, size: 128, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !867, file: !845, line: 49, baseType: !632, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !867, file: !845, line: 50, baseType: !852, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !867, file: !845, line: 51, baseType: !860, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !844, file: !845, line: 61, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 55, size: 256, elements: !874)
!874 = !{!875, !876, !877, !878, !880}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !873, file: !845, line: 56, baseType: !632, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !873, file: !845, line: 57, baseType: !852, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !873, file: !845, line: 58, baseType: !113, size: 32, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !873, file: !845, line: 59, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !162, line: 94, baseType: !163)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !873, file: !845, line: 60, baseType: !879, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !844, file: !845, line: 95, baseType: !882, size: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 64, size: 256, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !882, file: !845, line: 65, baseType: !56, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !845, line: 77, baseType: !886, size: 192, offset: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !845, line: 77, size: 192, elements: !887)
!887 = !{!888, !889, !896}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !886, file: !845, line: 82, baseType: !365, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !886, file: !845, line: 88, baseType: !890, size: 192)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !845, line: 84, size: 192, elements: !891)
!891 = !{!892, !894, !895}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !890, file: !845, line: 85, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !492)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !890, file: !845, line: 86, baseType: !56, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !890, file: !845, line: 87, baseType: !56, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !886, file: !845, line: 93, baseType: !897, size: 96)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !845, line: 90, size: 96, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !897, file: !845, line: 91, baseType: !893, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !897, file: !845, line: 92, baseType: !387, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !844, file: !845, line: 101, baseType: !902, size: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 98, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !902, file: !845, line: 99, baseType: !164, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !902, file: !845, line: 100, baseType: !113, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !844, file: !845, line: 108, baseType: !907, size: 128)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !845, line: 104, size: 128, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !907, file: !845, line: 105, baseType: !56, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !907, file: !845, line: 106, baseType: !113, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !907, file: !845, line: 107, baseType: !7, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !377, file: !378, line: 1067, baseType: !913, offset: 11136)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !914, line: 12, elements: !101)
!914 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!915 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !377, file: !378, line: 1099, baseType: !916, size: 64, offset: 11136)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !378, line: 56, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !377, file: !378, line: 1103, baseType: !73, size: 128, offset: 11200)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !377, file: !378, line: 1104, baseType: !920, size: 64, offset: 11328)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !378, line: 46, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !377, file: !378, line: 1105, baseType: !347, size: 192, offset: 11392)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !377, file: !378, line: 1106, baseType: !7, size: 32, offset: 11584)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !377, file: !378, line: 1109, baseType: !925, size: 128, offset: 11648)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 128, elements: !928)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !378, line: 51, flags: DIFlagFwdDecl)
!928 = !{!929}
!929 = !DISubrange(count: 2)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !377, file: !378, line: 1110, baseType: !347, size: 192, offset: 11776)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !377, file: !378, line: 1111, baseType: !73, size: 128, offset: 11968)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !377, file: !378, line: 1173, baseType: !933, size: 64, offset: 12096)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !935, line: 62, size: 256, align: 256, elements: !936)
!935 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!936 = !{!937, !938, !939, !944}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !934, file: !935, line: 75, baseType: !387, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !934, file: !935, line: 90, baseType: !387, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !934, file: !935, line: 124, baseType: !940, size: 64, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !935, line: 109, size: 64, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !940, file: !935, line: 110, baseType: !250, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !940, file: !935, line: 112, baseType: !250, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !935, line: 144, baseType: !387, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !377, file: !378, line: 1174, baseType: !386, size: 32, offset: 12160)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !377, file: !378, line: 1179, baseType: !179, size: 64, offset: 12224)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !377, file: !378, line: 1182, baseType: !948, size: 128, offset: 12288)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !325, line: 76, size: 128, elements: !949)
!949 = !{!950, !955, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !948, file: !325, line: 85, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !952, line: 7, size: 64, elements: !953)
!952 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !951, file: !952, line: 12, baseType: !539, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !948, file: !325, line: 88, baseType: !956, size: 8, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 30, baseType: !957)
!957 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !948, file: !325, line: 95, baseType: !956, size: 8, offset: 72)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !378, line: 1184, baseType: !960, size: 128, offset: 12416)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !378, line: 1184, size: 128, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !960, file: !378, line: 1185, baseType: !392, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !960, file: !378, line: 1186, baseType: !670, size: 128, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !377, file: !378, line: 1190, baseType: !965, size: 64, offset: 12544)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !378, line: 53, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !377, file: !378, line: 1192, baseType: !968, size: 128, offset: 12608)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !325, line: 64, size: 128, elements: !969)
!969 = !{!970, !1063, !1064}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !968, file: !325, line: 65, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !220, line: 68, size: 512, align: 128, elements: !973)
!973 = !{!974, !975, !1055, !1062}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !220, line: 69, baseType: !179, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !220, line: 77, baseType: !976, size: 320, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !220, line: 77, size: 320, elements: !977)
!977 = !{!978, !987, !992, !1020, !1028, !1034, !1047, !1054}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 78, baseType: !979, size: 320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 78, size: 320, elements: !980)
!980 = !{!981, !982, !985, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !979, file: !220, line: 84, baseType: !73, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !979, file: !220, line: 86, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !220, line: 26, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !979, file: !220, line: 87, baseType: !179, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !979, file: !220, line: 94, baseType: !179, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 96, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 96, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !988, file: !220, line: 101, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !74, line: 143, baseType: !248)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 103, baseType: !993, size: 320)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 103, size: 320, elements: !994)
!994 = !{!995, !1005, !1008, !1009}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !220, line: 104, baseType: !996, size: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !220, line: 104, size: 128, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !996, file: !220, line: 105, baseType: !73, size: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !220, line: 106, baseType: !1000, size: 128)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !220, line: 106, size: 128, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1000, file: !220, line: 107, baseType: !971, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1000, file: !220, line: 109, baseType: !113, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1000, file: !220, line: 110, baseType: !113, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !993, file: !220, line: 117, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !220, line: 117, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !993, file: !220, line: 119, baseType: !56, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !220, line: 120, baseType: !1010, size: 64, offset: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !220, line: 120, size: 64, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1010, file: !220, line: 121, baseType: !56, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1010, file: !220, line: 122, baseType: !179, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !220, line: 123, baseType: !1015, size: 32)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !220, line: 123, size: 32, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1015, file: !220, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1015, file: !220, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1015, file: !220, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 130, baseType: !1021, size: 192)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 130, size: 192, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1021, file: !220, line: 131, baseType: !179, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1021, file: !220, line: 134, baseType: !525, size: 8, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1021, file: !220, line: 135, baseType: !525, size: 8, offset: 72)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1021, file: !220, line: 136, baseType: !270, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1021, file: !220, line: 137, baseType: !7, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 139, baseType: !1029, size: 256)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 139, size: 256, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1029, file: !220, line: 140, baseType: !179, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1029, file: !220, line: 141, baseType: !270, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1029, file: !220, line: 143, baseType: !73, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 145, baseType: !1035, size: 256)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 145, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1040, !1041, !1046}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1035, file: !220, line: 146, baseType: !179, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1035, file: !220, line: 147, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !209, line: 509, baseType: !971)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1035, file: !220, line: 148, baseType: !179, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !220, line: 149, baseType: !1042, size: 64, offset: 192)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !220, line: 149, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1042, file: !220, line: 150, baseType: !236, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1042, file: !220, line: 151, baseType: !270, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1035, file: !220, line: 156, baseType: !87, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !220, line: 159, baseType: !1048, size: 128)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !220, line: 159, size: 128, elements: !1049)
!1049 = !{!1050, !1053}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1048, file: !220, line: 161, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !220, line: 161, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1048, file: !220, line: 162, baseType: !56, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !976, file: !220, line: 176, baseType: !670, size: 128, align: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !220, line: 179, baseType: !1056, size: 32, offset: 384)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !220, line: 179, size: 32, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1056, file: !220, line: 184, baseType: !270, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1056, file: !220, line: 192, baseType: !7, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1056, file: !220, line: 194, baseType: !7, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1056, file: !220, line: 195, baseType: !113, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !972, file: !220, line: 199, baseType: !270, size: 32, offset: 416)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !968, file: !325, line: 67, baseType: !387, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !968, file: !325, line: 68, baseType: !387, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !377, file: !378, line: 1206, baseType: !113, size: 32, offset: 12736)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !377, file: !378, line: 1207, baseType: !113, size: 32, offset: 12768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !377, file: !378, line: 1209, baseType: !179, size: 64, offset: 12800)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !377, file: !378, line: 1219, baseType: !248, size: 64, offset: 12864)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !377, file: !378, line: 1220, baseType: !248, size: 64, offset: 12928)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !377, file: !378, line: 1317, baseType: !113, size: 32, offset: 12992)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !377, file: !378, line: 1319, baseType: !376, size: 64, offset: 13056)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !377, file: !378, line: 1322, baseType: !1073, size: 64, offset: 13120)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !378, line: 1322, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !377, file: !378, line: 1326, baseType: !392, size: 32, offset: 13184)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !377, file: !378, line: 1342, baseType: !56, size: 64, offset: 13248)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !377, file: !378, line: 1343, baseType: !250, size: 64, offset: 13312)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !377, file: !378, line: 1344, baseType: !248, size: 64, offset: 13376)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !377, file: !378, line: 1345, baseType: !250, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !377, file: !378, line: 1346, baseType: !250, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !377, file: !378, line: 1347, baseType: !250, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !377, file: !378, line: 1348, baseType: !670, size: 128, align: 64, offset: 13504)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !377, file: !378, line: 1358, baseType: !1084, size: 34816, offset: 13824)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1085, line: 485, size: 34816, elements: !1086)
!1085 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1116, !1117, !1118, !1119, !1120, !1121, !1124, !1125, !1126}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1084, file: !1085, line: 487, baseType: !1088, size: 192)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 192, elements: !130)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1090, line: 16, size: 64, elements: !1091)
!1090 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1089, file: !1090, line: 17, baseType: !360, size: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1089, file: !1090, line: 18, baseType: !360, size: 16, offset: 16)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1089, file: !1090, line: 19, baseType: !360, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1089, file: !1090, line: 19, baseType: !360, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1089, file: !1090, line: 19, baseType: !360, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1089, file: !1090, line: 19, baseType: !360, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1089, file: !1090, line: 19, baseType: !360, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1089, file: !1090, line: 20, baseType: !360, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1089, file: !1090, line: 20, baseType: !360, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1089, file: !1090, line: 20, baseType: !360, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1089, file: !1090, line: 20, baseType: !360, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1089, file: !1090, line: 20, baseType: !360, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1089, file: !1090, line: 20, baseType: !360, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1084, file: !1085, line: 491, baseType: !179, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1084, file: !1085, line: 495, baseType: !171, size: 16, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1084, file: !1085, line: 496, baseType: !171, size: 16, offset: 272)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1084, file: !1085, line: 497, baseType: !171, size: 16, offset: 288)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1084, file: !1085, line: 498, baseType: !171, size: 16, offset: 304)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1084, file: !1085, line: 502, baseType: !179, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1084, file: !1085, line: 503, baseType: !179, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1084, file: !1085, line: 514, baseType: !1113, size: 256, offset: 448)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 256, elements: !329)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1085, line: 483, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1084, file: !1085, line: 516, baseType: !179, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1084, file: !1085, line: 518, baseType: !179, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1084, file: !1085, line: 520, baseType: !179, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1084, file: !1085, line: 521, baseType: !179, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1084, file: !1085, line: 522, baseType: !179, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1084, file: !1085, line: 528, baseType: !1122, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1085, line: 10, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1084, file: !1085, line: 535, baseType: !179, size: 64, offset: 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1084, file: !1085, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1084, file: !1085, line: 540, baseType: !1127, size: 33280, offset: 1536)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1128, line: 317, size: 33280, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1127, file: !1128, line: 330, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1127, file: !1128, line: 337, baseType: !179, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1127, file: !1128, line: 348, baseType: !1133, size: 32768, offset: 512)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1128, line: 304, size: 32768, elements: !1134)
!1134 = !{!1135, !1150, !1189, !1239, !1256}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1133, file: !1128, line: 305, baseType: !1136, size: 896)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1128, line: 12, size: 896, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1149}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1136, file: !1128, line: 13, baseType: !386, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1136, file: !1128, line: 14, baseType: !386, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1136, file: !1128, line: 15, baseType: !386, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1136, file: !1128, line: 16, baseType: !386, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1136, file: !1128, line: 17, baseType: !386, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1136, file: !1128, line: 18, baseType: !386, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1136, file: !1128, line: 19, baseType: !386, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1136, file: !1128, line: 22, baseType: !1146, size: 640, offset: 224)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 640, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 20)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1136, file: !1128, line: 25, baseType: !386, size: 32, offset: 864)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1133, file: !1128, line: 306, baseType: !1151, size: 4096, align: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1128, line: 34, size: 4096, align: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1172, !1173, !1174, !1178, !1180, !1184}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1151, file: !1128, line: 35, baseType: !360, size: 16)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1151, file: !1128, line: 36, baseType: !360, size: 16, offset: 16)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1151, file: !1128, line: 37, baseType: !360, size: 16, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1151, file: !1128, line: 38, baseType: !360, size: 16, offset: 48)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1128, line: 39, baseType: !1158, size: 128, offset: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1128, line: 39, size: 128, elements: !1159)
!1159 = !{!1160, !1165}
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1128, line: 40, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1128, line: 40, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1161, file: !1128, line: 41, baseType: !248, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1161, file: !1128, line: 42, baseType: !248, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1128, line: 44, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1128, line: 44, size: 128, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1166, file: !1128, line: 45, baseType: !386, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1166, file: !1128, line: 46, baseType: !386, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1166, file: !1128, line: 47, baseType: !386, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1166, file: !1128, line: 48, baseType: !386, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1151, file: !1128, line: 51, baseType: !386, size: 32, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1151, file: !1128, line: 52, baseType: !386, size: 32, offset: 224)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1151, file: !1128, line: 55, baseType: !1175, size: 1024, offset: 256)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 1024, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1151, file: !1128, line: 58, baseType: !1179, size: 2048, offset: 1280)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 2048, elements: !134)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1151, file: !1128, line: 60, baseType: !1181, size: 384, offset: 3328)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 12)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1128, line: 62, baseType: !1185, size: 384, offset: 3712)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1128, line: 62, size: 384, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1185, file: !1128, line: 63, baseType: !1181, size: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1185, file: !1128, line: 64, baseType: !1181, size: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1133, file: !1128, line: 307, baseType: !1190, size: 1088)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1128, line: 79, size: 1088, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1238}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1128, line: 80, baseType: !386, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1128, line: 81, baseType: !386, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1128, line: 82, baseType: !386, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1190, file: !1128, line: 83, baseType: !386, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1190, file: !1128, line: 84, baseType: !386, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1190, file: !1128, line: 85, baseType: !386, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1190, file: !1128, line: 86, baseType: !386, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1128, line: 88, baseType: !1146, size: 640, offset: 224)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1190, file: !1128, line: 89, baseType: !523, size: 8, offset: 864)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1190, file: !1128, line: 90, baseType: !523, size: 8, offset: 872)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1190, file: !1128, line: 91, baseType: !523, size: 8, offset: 880)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1190, file: !1128, line: 92, baseType: !523, size: 8, offset: 888)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1190, file: !1128, line: 93, baseType: !523, size: 8, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1190, file: !1128, line: 94, baseType: !523, size: 8, offset: 904)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1190, file: !1128, line: 95, baseType: !1207, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1209, line: 11, size: 128, elements: !1210)
!1209 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1208, file: !1209, line: 12, baseType: !164, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1208, file: !1209, line: 13, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1215, line: 56, size: 1344, elements: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1214, file: !1215, line: 61, baseType: !179, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1214, file: !1215, line: 62, baseType: !179, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1214, file: !1215, line: 63, baseType: !179, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1214, file: !1215, line: 64, baseType: !179, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1214, file: !1215, line: 65, baseType: !179, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1214, file: !1215, line: 66, baseType: !179, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1214, file: !1215, line: 68, baseType: !179, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1214, file: !1215, line: 69, baseType: !179, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1214, file: !1215, line: 70, baseType: !179, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1214, file: !1215, line: 71, baseType: !179, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1214, file: !1215, line: 72, baseType: !179, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1214, file: !1215, line: 73, baseType: !179, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1214, file: !1215, line: 74, baseType: !179, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1214, file: !1215, line: 75, baseType: !179, size: 64, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1214, file: !1215, line: 76, baseType: !179, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1214, file: !1215, line: 81, baseType: !179, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1214, file: !1215, line: 83, baseType: !179, size: 64, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1214, file: !1215, line: 84, baseType: !179, size: 64, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 85, baseType: !179, size: 64, offset: 1152)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1214, file: !1215, line: 86, baseType: !179, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1214, file: !1215, line: 87, baseType: !179, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1190, file: !1128, line: 96, baseType: !386, size: 32, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1133, file: !1128, line: 308, baseType: !1240, size: 4608, align: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1128, line: 289, size: 4608, align: 512, elements: !1241)
!1241 = !{!1242, !1243, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1240, file: !1128, line: 290, baseType: !1151, size: 4096, align: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1240, file: !1128, line: 291, baseType: !1244, size: 512, offset: 4096)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1128, line: 268, size: 512, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1244, file: !1128, line: 269, baseType: !248, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1244, file: !1128, line: 270, baseType: !248, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1244, file: !1128, line: 271, baseType: !1249, size: 384, offset: 128)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 384, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 6)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1240, file: !1128, line: 292, baseType: !1253, offset: 4608)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1133, file: !1128, line: 309, baseType: !1257, size: 32768)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 32768, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 4096)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !220, line: 378, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !369, file: !220, line: 384, baseType: !692, size: 192, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !240, file: !220, line: 500, baseType: !87, offset: 6656)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !240, file: !220, line: 501, baseType: !1265, size: 64, offset: 6656)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !220, line: 387, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !240, file: !220, line: 516, baseType: !1268, size: 64, offset: 6720)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1270, line: 18, flags: DIFlagFwdDecl)
!1270 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !240, file: !220, line: 519, baseType: !207, size: 64, offset: 6784)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !240, file: !220, line: 521, baseType: !1273, size: 64, offset: 6848)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !220, line: 521, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !240, file: !220, line: 545, baseType: !270, size: 32, offset: 6912)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !240, file: !220, line: 548, baseType: !956, size: 8, offset: 6944)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !240, file: !220, line: 550, baseType: !1278, offset: 6952)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1279, line: 142, elements: !101)
!1279 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !240, file: !220, line: 554, baseType: !1281, size: 256, offset: 6976)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1282, line: 102, size: 256, elements: !1283)
!1282 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1281, file: !1282, line: 103, baseType: !278, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1281, file: !1282, line: 104, baseType: !73, size: 128, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1281, file: !1282, line: 105, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1282, line: 21, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !240, file: !220, line: 557, baseType: !386, size: 32, offset: 7232)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !237, file: !220, line: 565, baseType: !1294, offset: 7296)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: -1)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !219, file: !220, line: 333, baseType: !1298, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !209, line: 284, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !209, line: 284, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1299, file: !209, line: 284, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !268, line: 19, baseType: !179)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !219, file: !220, line: 334, baseType: !179, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !219, file: !220, line: 343, baseType: !1305, size: 256, offset: 704)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !219, file: !220, line: 340, size: 256, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1305, file: !220, line: 341, baseType: !227, size: 192, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1305, file: !220, line: 342, baseType: !179, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !219, file: !220, line: 351, baseType: !73, size: 128, offset: 960)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !219, file: !220, line: 353, baseType: !1311, size: 64, offset: 1088)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !220, line: 353, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !219, file: !220, line: 356, baseType: !1314, size: 64, offset: 1152)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !220, line: 356, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !219, file: !220, line: 359, baseType: !179, size: 64, offset: 1216)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !219, file: !220, line: 361, baseType: !207, size: 64, offset: 1280)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !219, file: !220, line: 362, baseType: !56, size: 64, offset: 1344)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !219, file: !220, line: 365, baseType: !278, size: 64, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !219, file: !220, line: 373, baseType: !1322, offset: 1472)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !220, line: 296, elements: !101)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !186, file: !154, line: 90, baseType: !181, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !186, file: !154, line: 91, baseType: !1325, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !144, file: !66, line: 143, baseType: !1327, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1330, !80}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !1333)
!1333 = !{!1334, !1335, !1339, !1343, !1351, !1355}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1332, file: !6, line: 40, baseType: !5, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1332, file: !6, line: 41, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!956}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1332, file: !6, line: 42, baseType: !1340, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!56}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1332, file: !6, line: 43, baseType: !1344, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1347, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1332, file: !6, line: 44, baseType: !1352, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1347}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1332, file: !6, line: 45, baseType: !1356, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !56}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !144, file: !66, line: 144, baseType: !1360, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1347, !80}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !144, file: !66, line: 145, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !80, !1367, !1373}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1270, line: 23, baseType: !1369)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 21, size: 32, elements: !1370)
!1370 = !{!1371}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1369, file: !1270, line: 22, baseType: !1372, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !74, line: 32, baseType: !852)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1270, line: 28, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1270, line: 26, size: 32, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1375, file: !1270, line: 27, baseType: !1378, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !74, line: 33, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !162, line: 50, baseType: !7)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !65, file: !66, line: 70, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1383, line: 123, size: 1024, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1527, !1528, !1529, !1530, !1531}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1382, file: !1383, line: 124, baseType: !270, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1382, file: !1383, line: 125, baseType: !270, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1382, file: !1383, line: 135, baseType: !1381, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1382, file: !1383, line: 136, baseType: !69, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1382, file: !1383, line: 138, baseType: !227, size: 192, align: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1382, file: !1383, line: 140, baseType: !1347, size: 64, offset: 384)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1382, file: !1383, line: 141, baseType: !7, size: 32, offset: 448)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1383, line: 142, baseType: !1393, size: 256, offset: 512)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1382, file: !1383, line: 142, size: 256, elements: !1394)
!1394 = !{!1395, !1450, !1454}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1393, file: !1383, line: 143, baseType: !1396, size: 192)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1383, line: 91, size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1396, file: !1383, line: 92, baseType: !179, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1396, file: !1383, line: 94, baseType: !244, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1396, file: !1383, line: 100, baseType: !1401, size: 64, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1383, line: 180, size: 704, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1420, !1421, !1422, !1448, !1449}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1402, file: !1383, line: 182, baseType: !1381, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1383, line: 183, baseType: !7, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1402, file: !1383, line: 186, baseType: !1407, size: 192, offset: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1408, line: 19, size: 192, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1418, !1419}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1407, file: !1408, line: 20, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1412, line: 292, size: 128, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1417}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1411, file: !1412, line: 293, baseType: !87)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1411, file: !1412, line: 295, baseType: !1416, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !74, line: 148, baseType: !7)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1411, file: !1412, line: 296, baseType: !56, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1407, file: !1408, line: 21, baseType: !7, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1407, file: !1408, line: 22, baseType: !7, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1402, file: !1383, line: 187, baseType: !386, size: 32, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1402, file: !1383, line: 188, baseType: !386, size: 32, offset: 352)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1402, file: !1383, line: 189, baseType: !1423, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1383, line: 168, size: 320, elements: !1425)
!1425 = !{!1426, !1432, !1436, !1440, !1444}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1424, file: !1383, line: 169, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!113, !1430, !1401}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !209, line: 539, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1424, file: !1383, line: 171, baseType: !1433, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!113, !1381, !69, !170}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1424, file: !1383, line: 173, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!113, !1381}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1424, file: !1383, line: 174, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!113, !1381, !1381, !69}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1424, file: !1383, line: 176, baseType: !1445, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!113, !1430, !1381, !1401}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1402, file: !1383, line: 192, baseType: !73, size: 128, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1402, file: !1383, line: 194, baseType: !663, size: 128, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1393, file: !1383, line: 144, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1383, line: 103, size: 64, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1451, file: !1383, line: 104, baseType: !1381, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1393, file: !1383, line: 145, baseType: !1455, size: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1383, line: 107, size: 256, elements: !1456)
!1456 = !{!1457, !1522, !1525, !1526}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1455, file: !1383, line: 108, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1383, line: 217, size: 768, elements: !1461)
!1461 = !{!1462, !1482, !1486, !1490, !1495, !1499, !1503, !1507, !1508, !1509, !1510, !1518}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1460, file: !1383, line: 222, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!113, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1383, line: 197, size: 1088, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1467, file: !1383, line: 199, baseType: !1381, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1467, file: !1383, line: 200, baseType: !207, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1467, file: !1383, line: 201, baseType: !1430, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1467, file: !1383, line: 202, baseType: !56, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1467, file: !1383, line: 205, baseType: !347, size: 192, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1467, file: !1383, line: 206, baseType: !347, size: 192, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1467, file: !1383, line: 207, baseType: !113, size: 32, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1467, file: !1383, line: 208, baseType: !73, size: 128, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1467, file: !1383, line: 209, baseType: !129, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1467, file: !1383, line: 211, baseType: !176, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1467, file: !1383, line: 212, baseType: !956, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1467, file: !1383, line: 213, baseType: !956, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1467, file: !1383, line: 214, baseType: !1314, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1460, file: !1383, line: 223, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1466}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1460, file: !1383, line: 236, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!113, !1430, !56}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1460, file: !1383, line: 238, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!56, !1430, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1460, file: !1383, line: 239, baseType: !1496, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!56, !1430, !56, !1494}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1460, file: !1383, line: 240, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !1430, !56}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1460, file: !1383, line: 242, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!160, !1466, !129, !176, !210}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1460, file: !1383, line: 252, baseType: !176, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1460, file: !1383, line: 259, baseType: !956, size: 8, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1460, file: !1383, line: 260, baseType: !1504, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1460, file: !1383, line: 263, baseType: !1511, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !1466, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1515, line: 52, baseType: !7)
!1515 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1383, line: 27, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1460, file: !1383, line: 266, baseType: !1519, size: 64, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!113, !1466, !218}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1455, file: !1383, line: 109, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1383, line: 31, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1455, file: !1383, line: 110, baseType: !210, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1455, file: !1383, line: 111, baseType: !1381, size: 64, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1382, file: !1383, line: 148, baseType: !56, size: 64, offset: 768)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1382, file: !1383, line: 154, baseType: !248, size: 64, offset: 832)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 156, baseType: !171, size: 16, offset: 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1382, file: !1383, line: 157, baseType: !170, size: 16, offset: 912)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1382, file: !1383, line: 158, baseType: !1532, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1383, line: 32, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !65, file: !66, line: 71, baseType: !1535, size: 32, offset: 448)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1536, line: 19, size: 32, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1535, file: !1536, line: 20, baseType: !392, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !65, file: !66, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !65, file: !66, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !65, file: !66, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !65, file: !66, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !65, file: !66, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !62, file: !30, line: 463, baseType: !1545, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !62, file: !30, line: 465, baseType: !1547, size: 64, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !62, file: !30, line: 467, baseType: !69, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !30, line: 468, baseType: !1551, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1561, !1566, !1570}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1553, file: !30, line: 88, baseType: !69, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1553, file: !30, line: 89, baseType: !183, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1553, file: !30, line: 90, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!113, !1545, !124}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1553, file: !30, line: 91, baseType: !1562, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!129, !1545, !1565, !1367, !1373}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1553, file: !30, line: 93, baseType: !1567, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1545}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1553, file: !30, line: 95, baseType: !1571, size: 64, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1574)
!1574 = !{!1575, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1573, file: !37, line: 279, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!113, !1545}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1573, file: !37, line: 280, baseType: !1567, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1573, file: !37, line: 281, baseType: !1576, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1573, file: !37, line: 282, baseType: !1576, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1573, file: !37, line: 283, baseType: !1576, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1573, file: !37, line: 284, baseType: !1576, size: 64, offset: 320)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1573, file: !37, line: 285, baseType: !1576, size: 64, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1573, file: !37, line: 286, baseType: !1576, size: 64, offset: 448)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1573, file: !37, line: 287, baseType: !1576, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1573, file: !37, line: 288, baseType: !1576, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1573, file: !37, line: 289, baseType: !1576, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1573, file: !37, line: 290, baseType: !1576, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1573, file: !37, line: 291, baseType: !1576, size: 64, offset: 768)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1573, file: !37, line: 292, baseType: !1576, size: 64, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1573, file: !37, line: 293, baseType: !1576, size: 64, offset: 896)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1573, file: !37, line: 294, baseType: !1576, size: 64, offset: 960)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1573, file: !37, line: 295, baseType: !1576, size: 64, offset: 1024)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1573, file: !37, line: 296, baseType: !1576, size: 64, offset: 1088)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1573, file: !37, line: 297, baseType: !1576, size: 64, offset: 1152)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1573, file: !37, line: 298, baseType: !1576, size: 64, offset: 1216)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1573, file: !37, line: 299, baseType: !1576, size: 64, offset: 1280)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1573, file: !37, line: 300, baseType: !1576, size: 64, offset: 1344)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1573, file: !37, line: 301, baseType: !1576, size: 64, offset: 1408)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !62, file: !30, line: 470, baseType: !1602, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1604, line: 82, size: 1408, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1691, !1694, !1697}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1603, file: !1604, line: 83, baseType: !69, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1603, file: !1604, line: 84, baseType: !69, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1603, file: !1604, line: 85, baseType: !1545, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1603, file: !1604, line: 86, baseType: !183, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1603, file: !1604, line: 87, baseType: !183, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1603, file: !1604, line: 88, baseType: !183, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1603, file: !1604, line: 90, baseType: !1613, size: 64, offset: 384)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!113, !1545, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1625, !1626, !1627, !1628, !1642, !1655, !1656, !1657, !1658, !1659, !1667, !1668, !1669, !1670, !1671, !1672}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1617, file: !24, line: 96, baseType: !69, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1617, file: !24, line: 97, baseType: !1602, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1617, file: !24, line: 99, baseType: !1622, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1624, line: 76, flags: DIFlagFwdDecl)
!1624 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1617, file: !24, line: 100, baseType: !69, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1617, file: !24, line: 102, baseType: !956, size: 8, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1617, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1617, file: !24, line: 105, baseType: !1629, size: 64, offset: 320)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1632, line: 262, size: 1600, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1636, !1637, !1641}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1631, file: !1632, line: 263, baseType: !1635, size: 256)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, elements: !1176)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1631, file: !1632, line: 264, baseType: !1635, size: 256, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1631, file: !1632, line: 265, baseType: !1638, size: 1024, offset: 512)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1631, file: !1632, line: 266, baseType: !1347, size: 64, offset: 1536)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1617, file: !24, line: 106, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1645)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1632, line: 210, size: 256, elements: !1646)
!1646 = !{!1647, !1651, !1653, !1654}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1645, file: !1632, line: 211, baseType: !1648, size: 72)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 72, elements: !1649)
!1649 = !{!1650}
!1650 = !DISubrange(count: 9)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1645, file: !1632, line: 212, baseType: !1652, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1632, line: 14, baseType: !179)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1645, file: !1632, line: 213, baseType: !387, size: 32, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1645, file: !1632, line: 214, baseType: !387, size: 32, offset: 224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1617, file: !24, line: 108, baseType: !1576, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1617, file: !24, line: 109, baseType: !1567, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1617, file: !24, line: 110, baseType: !1576, size: 64, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1617, file: !24, line: 111, baseType: !1567, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1617, file: !24, line: 112, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!113, !1545, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1664, file: !37, line: 51, baseType: !113, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1617, file: !24, line: 113, baseType: !1576, size: 64, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1617, file: !24, line: 114, baseType: !183, size: 64, offset: 832)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1617, file: !24, line: 115, baseType: !183, size: 64, offset: 896)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1617, file: !24, line: 117, baseType: !1571, size: 64, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1617, file: !24, line: 118, baseType: !1567, size: 64, offset: 1024)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1617, file: !24, line: 120, baseType: !1673, size: 64, offset: 1088)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1603, file: !1604, line: 91, baseType: !1558, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1603, file: !1604, line: 92, baseType: !1576, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1603, file: !1604, line: 93, baseType: !1567, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1603, file: !1604, line: 94, baseType: !1576, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1603, file: !1604, line: 95, baseType: !1567, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1603, file: !1604, line: 97, baseType: !1576, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1603, file: !1604, line: 98, baseType: !1576, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1603, file: !1604, line: 100, baseType: !1660, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1603, file: !1604, line: 101, baseType: !1576, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1603, file: !1604, line: 103, baseType: !1576, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1603, file: !1604, line: 105, baseType: !1576, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1603, file: !1604, line: 107, baseType: !1571, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1603, file: !1604, line: 109, baseType: !1688, size: 64, offset: 1216)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1604, line: 109, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1603, file: !1604, line: 111, baseType: !1692, size: 64, offset: 1280)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1604, line: 111, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1603, file: !1604, line: 112, baseType: !1695, offset: 1344)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1696, line: 187, elements: !101)
!1696 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1603, file: !1604, line: 114, baseType: !956, size: 8, offset: 1344)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !62, file: !30, line: 471, baseType: !1616, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !62, file: !30, line: 473, baseType: !56, size: 64, offset: 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !62, file: !30, line: 475, baseType: !56, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !62, file: !30, line: 480, baseType: !347, size: 192, offset: 1024)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !62, file: !30, line: 484, baseType: !1703, size: 576, offset: 1216)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1703, file: !30, line: 362, baseType: !73, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1703, file: !30, line: 363, baseType: !73, size: 128, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1703, file: !30, line: 364, baseType: !73, size: 128, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1703, file: !30, line: 365, baseType: !73, size: 128, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1703, file: !30, line: 366, baseType: !956, size: 8, offset: 512)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1703, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !62, file: !30, line: 485, baseType: !1712, size: 2304, offset: 1792)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1809, !1813}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1712, file: !37, line: 566, baseType: !1663, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1712, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1712, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1712, file: !37, line: 569, baseType: !956, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1712, file: !37, line: 570, baseType: !956, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1712, file: !37, line: 571, baseType: !956, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1712, file: !37, line: 572, baseType: !956, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1712, file: !37, line: 573, baseType: !956, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1712, file: !37, line: 574, baseType: !956, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1712, file: !37, line: 575, baseType: !956, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1712, file: !37, line: 576, baseType: !956, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1712, file: !37, line: 577, baseType: !386, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1712, file: !37, line: 578, baseType: !87, offset: 96)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1712, file: !37, line: 580, baseType: !73, size: 128, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1712, file: !37, line: 581, baseType: !692, size: 192, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1712, file: !37, line: 582, baseType: !1730, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1732, line: 43, size: 1472, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1741, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1731, file: !1732, line: 44, baseType: !69, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1731, file: !1732, line: 45, baseType: !113, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1731, file: !1732, line: 46, baseType: !73, size: 128, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !1732, line: 47, baseType: !87, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1731, file: !1732, line: 48, baseType: !1739, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1731, file: !1732, line: 49, baseType: !1742, size: 320, offset: 320)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1743, line: 11, size: 320, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1744 = !{!1745, !1746, !1747, !1752}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1742, file: !1743, line: 16, baseType: !656, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1742, file: !1743, line: 17, baseType: !179, size: 64, offset: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1742, file: !1743, line: 18, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 19, baseType: !386, size: 32, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1731, file: !1732, line: 50, baseType: !179, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1731, file: !1732, line: 51, baseType: !462, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1731, file: !1732, line: 52, baseType: !462, size: 64, offset: 768)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1731, file: !1732, line: 53, baseType: !462, size: 64, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1731, file: !1732, line: 54, baseType: !462, size: 64, offset: 896)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1731, file: !1732, line: 55, baseType: !462, size: 64, offset: 960)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1731, file: !1732, line: 56, baseType: !179, size: 64, offset: 1024)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1731, file: !1732, line: 57, baseType: !179, size: 64, offset: 1088)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1731, file: !1732, line: 58, baseType: !179, size: 64, offset: 1152)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1731, file: !1732, line: 59, baseType: !179, size: 64, offset: 1216)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1731, file: !1732, line: 60, baseType: !179, size: 64, offset: 1280)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1731, file: !1732, line: 61, baseType: !1545, size: 64, offset: 1344)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1731, file: !1732, line: 62, baseType: !956, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1731, file: !1732, line: 63, baseType: !956, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1712, file: !37, line: 583, baseType: !956, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1712, file: !37, line: 584, baseType: !956, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1712, file: !37, line: 585, baseType: !956, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1712, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1712, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1712, file: !37, line: 592, baseType: !454, size: 512, offset: 576)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1712, file: !37, line: 593, baseType: !248, size: 64, offset: 1088)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1712, file: !37, line: 594, baseType: !1281, size: 256, offset: 1152)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1712, file: !37, line: 595, baseType: !663, size: 128, offset: 1408)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1712, file: !37, line: 596, baseType: !1739, size: 64, offset: 1536)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1712, file: !37, line: 597, baseType: !270, size: 32, offset: 1600)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1712, file: !37, line: 598, baseType: !270, size: 32, offset: 1632)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1712, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1712, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1712, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1712, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1712, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1712, file: !37, line: 604, baseType: !956, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1712, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1712, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1712, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1712, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1712, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1712, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1712, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1712, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1712, file: !37, line: 613, baseType: !113, size: 32, offset: 1792)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1712, file: !37, line: 614, baseType: !113, size: 32, offset: 1824)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1712, file: !37, line: 615, baseType: !248, size: 64, offset: 1856)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1712, file: !37, line: 616, baseType: !248, size: 64, offset: 1920)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1712, file: !37, line: 617, baseType: !248, size: 64, offset: 1984)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1712, file: !37, line: 618, baseType: !248, size: 64, offset: 2048)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1712, file: !37, line: 620, baseType: !1800, size: 64, offset: 2112)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !37, line: 537, baseType: !87)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1801, file: !37, line: 538, baseType: !7, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1801, file: !37, line: 540, baseType: !73, size: 128, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1801, file: !37, line: 543, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1712, file: !37, line: 621, baseType: !1810, size: 64, offset: 2176)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1545, !616}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1712, file: !37, line: 622, baseType: !1814, size: 64, offset: 2240)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !62, file: !30, line: 486, baseType: !1817, size: 64, offset: 4096)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1826, !1827, !1828}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1818, file: !37, line: 643, baseType: !1573, size: 1472)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1818, file: !37, line: 644, baseType: !1576, size: 64, offset: 1472)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1818, file: !37, line: 645, baseType: !1823, size: 64, offset: 1536)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1545, !956}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1818, file: !37, line: 646, baseType: !1576, size: 64, offset: 1600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1818, file: !37, line: 647, baseType: !1567, size: 64, offset: 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1818, file: !37, line: 648, baseType: !1567, size: 64, offset: 1728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !62, file: !30, line: 493, baseType: !1830, size: 64, offset: 4160)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !62, file: !30, line: 499, baseType: !73, size: 128, offset: 4224)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !62, file: !30, line: 502, baseType: !1834, size: 64, offset: 4352)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1836)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !62, file: !30, line: 504, baseType: !1838, size: 64, offset: 4416)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !62, file: !30, line: 505, baseType: !248, size: 64, offset: 4480)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !62, file: !30, line: 510, baseType: !248, size: 64, offset: 4544)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !62, file: !30, line: 511, baseType: !1842, size: 64, offset: 4608)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !62, file: !30, line: 513, baseType: !1846, size: 64, offset: 4672)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1848)
!1848 = !{!1849, !1850}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1847, file: !30, line: 293, baseType: !7, size: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1847, file: !30, line: 294, baseType: !179, size: 64, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !62, file: !30, line: 515, baseType: !73, size: 128, offset: 4736)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !62, file: !30, line: 526, baseType: !1853, offset: 4864)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1854, line: 5, elements: !101)
!1854 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !62, file: !30, line: 528, baseType: !1856, size: 64, offset: 4864)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1858, line: 14, flags: DIFlagFwdDecl)
!1858 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !62, file: !30, line: 529, baseType: !1860, size: 64, offset: 4928)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1604, line: 22, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !62, file: !30, line: 534, baseType: !1863, size: 32, offset: 4992)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !74, line: 16, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !74, line: 13, baseType: !386)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !62, file: !30, line: 535, baseType: !386, size: 32, offset: 5024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !62, file: !30, line: 537, baseType: !87, offset: 5056)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !62, file: !30, line: 538, baseType: !73, size: 128, offset: 5056)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !62, file: !30, line: 540, baseType: !1869, size: 64, offset: 5184)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1871, line: 54, size: 960, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1883, !1887, !1888, !1889, !1890, !1894, !1898, !1899}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1870, file: !1871, line: 55, baseType: !69, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1870, file: !1871, line: 56, baseType: !1622, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1870, file: !1871, line: 58, baseType: !183, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1870, file: !1871, line: 59, baseType: !183, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1870, file: !1871, line: 60, baseType: !80, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1870, file: !1871, line: 62, baseType: !1558, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1870, file: !1871, line: 63, baseType: !1880, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!129, !1545, !1565}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1870, file: !1871, line: 65, baseType: !1884, size: 64, offset: 448)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1869}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1870, file: !1871, line: 66, baseType: !1567, size: 64, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1870, file: !1871, line: 68, baseType: !1576, size: 64, offset: 576)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1870, file: !1871, line: 70, baseType: !1330, size: 64, offset: 640)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1870, file: !1871, line: 71, baseType: !1891, size: 64, offset: 704)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1347, !1545}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1870, file: !1871, line: 73, baseType: !1895, size: 64, offset: 768)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1545, !1367, !1373}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1870, file: !1871, line: 75, baseType: !1571, size: 64, offset: 832)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1870, file: !1871, line: 77, baseType: !1692, size: 64, offset: 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !62, file: !30, line: 541, baseType: !183, size: 64, offset: 5248)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !62, file: !30, line: 543, baseType: !1567, size: 64, offset: 5312)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !62, file: !30, line: 544, baseType: !1903, size: 64, offset: 5376)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !62, file: !30, line: 545, baseType: !1906, size: 64, offset: 5440)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !62, file: !30, line: 547, baseType: !956, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !62, file: !30, line: 548, baseType: !956, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !62, file: !30, line: 549, baseType: !956, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !62, file: !30, line: 550, baseType: !956, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !58, file: !59, line: 245, baseType: !248, size: 64, offset: 5568)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !58, file: !59, line: 246, baseType: !7, size: 32, offset: 5632)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !58, file: !59, line: 247, baseType: !113, size: 32, offset: 5664)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !58, file: !59, line: 249, baseType: !73, size: 128, offset: 5696)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !58, file: !59, line: 250, baseType: !73, size: 128, offset: 5824)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !58, file: !59, line: 251, baseType: !73, size: 128, offset: 5952)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !58, file: !59, line: 252, baseType: !73, size: 128, offset: 6080)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !58, file: !59, line: 254, baseType: !1920, size: 64, offset: 6208)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !59, line: 411, size: 6464, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1929, !1930, !1931, !1935, !1939, !1940, !1941, !1942, !1943}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1921, file: !59, line: 412, baseType: !73, size: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1921, file: !59, line: 413, baseType: !129, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1921, file: !59, line: 416, baseType: !1926, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!113, !57}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1921, file: !59, line: 417, baseType: !1926, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1921, file: !59, line: 418, baseType: !1926, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1921, file: !59, line: 421, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!956, !57}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1921, file: !59, line: 422, baseType: !1936, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!113, !57, !1663}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1921, file: !59, line: 423, baseType: !1926, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1921, file: !59, line: 426, baseType: !525, size: 8, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1921, file: !59, line: 427, baseType: !62, size: 5568, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1921, file: !59, line: 428, baseType: !73, size: 128, offset: 6208)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1921, file: !59, line: 429, baseType: !73, size: 128, offset: 6336)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !58, file: !59, line: 255, baseType: !1945, size: 64, offset: 6272)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !59, line: 202, size: 6720, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951, !1952, !1953, !1954, !1960, !1964, !1965, !1966, !1967, !1968}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1946, file: !59, line: 203, baseType: !62, size: 5568)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1946, file: !59, line: 204, baseType: !525, size: 8, offset: 5568)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1946, file: !59, line: 205, baseType: !73, size: 128, offset: 5632)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1946, file: !59, line: 206, baseType: !73, size: 128, offset: 5760)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1946, file: !59, line: 207, baseType: !73, size: 128, offset: 5888)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1946, file: !59, line: 209, baseType: !1920, size: 64, offset: 6016)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1946, file: !59, line: 210, baseType: !1955, size: 64, offset: 6080)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !59, line: 369, size: 128, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1956, file: !59, line: 370, baseType: !893, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1956, file: !59, line: 371, baseType: !1955, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1946, file: !59, line: 212, baseType: !1961, size: 400, offset: 6144)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 400, elements: !1962)
!1962 = !{!1963}
!1963 = !DISubrange(count: 50)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1946, file: !59, line: 213, baseType: !525, size: 8, offset: 6544)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1946, file: !59, line: 214, baseType: !525, size: 8, offset: 6552)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1946, file: !59, line: 215, baseType: !7, size: 32, offset: 6560)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1946, file: !59, line: 216, baseType: !525, size: 8, offset: 6592)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1946, file: !59, line: 217, baseType: !1969, size: 64, offset: 6656)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !59, line: 217, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !58, file: !59, line: 256, baseType: !1972, size: 64, offset: 6336)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !59, line: 374, size: 1664, elements: !1974)
!1974 = !{!1975, !1976, !1984, !1985, !1989, !1993, !1994, !1995, !1996}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !59, line: 375, baseType: !69, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1973, file: !59, line: 376, baseType: !1977, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1632, line: 220, size: 128, elements: !1980)
!1980 = !{!1981, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1979, file: !1632, line: 221, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 64, elements: !492)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1979, file: !1632, line: 222, baseType: !1652, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !59, line: 377, baseType: !7, size: 32, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1973, file: !59, line: 378, baseType: !1986, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!113, !57, !1977}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1973, file: !59, line: 379, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !57}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1973, file: !59, line: 380, baseType: !1990, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1973, file: !59, line: 381, baseType: !1936, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1973, file: !59, line: 382, baseType: !1926, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1973, file: !59, line: 383, baseType: !1617, size: 1152, offset: 512)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !58, file: !59, line: 257, baseType: !1998, size: 64, offset: 6400)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !59, line: 226, size: 256, elements: !2000)
!2000 = !{!2001, !2002, !2038, !2039}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1999, file: !59, line: 227, baseType: !1945, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1999, file: !59, line: 228, baseType: !2003, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !59, line: 388, size: 2240, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2020, !2021, !2025, !2029, !2033, !2037}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2004, file: !59, line: 389, baseType: !73, size: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !59, line: 390, baseType: !129, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2004, file: !59, line: 391, baseType: !2009, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1632, line: 225, size: 640, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2011, file: !1632, line: 226, baseType: !1982, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2011, file: !1632, line: 227, baseType: !1652, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2011, file: !1632, line: 230, baseType: !2016, size: 512, offset: 128)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 512, elements: !492)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !1632, line: 228, size: 64, elements: !2018)
!2018 = !{!2019}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2017, file: !1632, line: 229, baseType: !1982, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !59, line: 392, baseType: !7, size: 32, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2004, file: !59, line: 393, baseType: !2022, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!113, !1998, !2009}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2004, file: !59, line: 395, baseType: !2026, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !1998}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2004, file: !59, line: 396, baseType: !2030, size: 64, offset: 448)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!113, !1998, !1663}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2004, file: !59, line: 397, baseType: !2034, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!113, !1998}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2004, file: !59, line: 398, baseType: !1973, size: 1664, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1999, file: !59, line: 229, baseType: !56, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1999, file: !59, line: 230, baseType: !1663, size: 32, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !58, file: !59, line: 259, baseType: !1955, size: 64, offset: 6464)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !58, file: !59, line: 261, baseType: !113, size: 32, offset: 6528)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !58, file: !59, line: 262, baseType: !113, size: 32, offset: 6560)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !58, file: !59, line: 263, baseType: !7, size: 32, offset: 6592)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !58, file: !59, line: 264, baseType: !73, size: 128, offset: 6656)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !58, file: !59, line: 265, baseType: !73, size: 128, offset: 6784)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !59, line: 267, baseType: !1961, size: 400, offset: 6912)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !59, line: 268, baseType: !113, size: 32, offset: 7328)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !58, file: !59, line: 269, baseType: !1969, size: 64, offset: 7360)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !59, line: 270, baseType: !56, size: 64, offset: 7424)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !2052, line: 156, size: 640, elements: !2053)
!2052 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2051, file: !2052, line: 157, baseType: !73, size: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2051, file: !2052, line: 158, baseType: !2056, size: 512, offset: 128)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2057, line: 20, size: 512, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059, !2062, !2063, !2064, !2065, !2066, !2068, !2069}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2056, file: !2057, line: 21, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !74, line: 158, baseType: !2061)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !74, line: 153, baseType: !248)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2056, file: !2057, line: 22, baseType: !2060, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2056, file: !2057, line: 23, baseType: !69, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2056, file: !2057, line: 24, baseType: !179, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2056, file: !2057, line: 25, baseType: !179, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2056, file: !2057, line: 26, baseType: !2067, size: 64, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2056, file: !2057, line: 26, baseType: !2067, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2056, file: !2057, line: 26, baseType: !2067, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !2052, line: 68, size: 576, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2071, file: !2052, line: 69, baseType: !73, size: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2071, file: !2052, line: 70, baseType: !7, size: 32, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2071, file: !2052, line: 72, baseType: !179, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2071, file: !2052, line: 78, baseType: !2077, size: 320, offset: 256)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2052, line: 73, size: 320, elements: !2078)
!2078 = !{!2079, !2087, !2097, !2102}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2077, file: !2052, line: 74, baseType: !2080, size: 320)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !2052, line: 28, size: 320, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2080, file: !2052, line: 29, baseType: !2060, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2080, file: !2052, line: 30, baseType: !2060, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2080, file: !2052, line: 31, baseType: !2060, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2080, file: !2052, line: 32, baseType: !2060, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2052, line: 33, baseType: !525, size: 8, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2077, file: !2052, line: 75, baseType: !2088, size: 320)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !2052, line: 39, size: 320, elements: !2089)
!2089 = !{!2090, !2096}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2088, file: !2052, line: 40, baseType: !2091, size: 256)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !2052, line: 37, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2052, line: 37, size: 256, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2092, file: !2052, line: 37, baseType: !2095, size: 256)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !329)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !2052, line: 41, baseType: !525, size: 8, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2077, file: !2052, line: 76, baseType: !2098, size: 16)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !2052, line: 44, size: 16, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2098, file: !2052, line: 45, baseType: !525, size: 8)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2098, file: !2052, line: 46, baseType: !525, size: 8, offset: 8)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2077, file: !2052, line: 77, baseType: !2103, size: 320)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !2052, line: 49, size: 320, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2108, !2109}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2103, file: !2052, line: 50, baseType: !2060, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2103, file: !2052, line: 51, baseType: !2060, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2103, file: !2052, line: 52, baseType: !2060, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2103, file: !2052, line: 53, baseType: !2060, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2052, line: 54, baseType: !525, size: 8, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!2111 = !{!2112, !0, !2115, !2118, !2132, !2134}
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "pnp_dev_groups", scope: !2, file: !3, line: 466, type: !2114, isLocal: false, isDefinition: true)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !928)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(name: "pnp_dev_attrs", scope: !2, file: !3, line: 455, type: !2117, isLocal: true, isDefinition: true)
!2117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 256, elements: !329)
!2118 = !DIGlobalVariableExpression(var: !2119, expr: !DIExpression())
!2119 = distinct !DIGlobalVariable(name: "dev_attr_resources", scope: !2, file: !3, line: 438, type: !2120, isLocal: true, isDefinition: true)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2121)
!2121 = !{!2122, !2123, !2128}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2120, file: !30, line: 100, baseType: !166, size: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2120, file: !30, line: 101, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!160, !1545, !2127, !129}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2120, file: !30, line: 103, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!160, !1545, !2127, !69, !176}
!2132 = !DIGlobalVariableExpression(var: !2133, expr: !DIExpression())
!2133 = distinct !DIGlobalVariable(name: "dev_attr_options", scope: !2, file: !3, line: 245, type: !2120, isLocal: true, isDefinition: true)
!2134 = !DIGlobalVariableExpression(var: !2135, expr: !DIExpression())
!2135 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 453, type: !2120, isLocal: true, isDefinition: true)
!2136 = !{i32 7, !"Dwarf Version", i32 4}
!2137 = !{i32 2, !"Debug Info Version", i32 3}
!2138 = !{i32 1, !"wchar_size", i32 2}
!2139 = !{i32 1, !"Code Model", i32 2}
!2140 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2141 = distinct !DISubprogram(name: "resources_show", scope: !3, file: !3, line: 247, type: !2125, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2142 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2141, file: !3, line: 247, type: !1545)
!2143 = !DILocation(line: 247, column: 46, scope: !2141)
!2144 = !DILocalVariable(name: "attr", arg: 2, scope: !2141, file: !3, line: 248, type: !2127)
!2145 = !DILocation(line: 248, column: 35, scope: !2141)
!2146 = !DILocalVariable(name: "buf", arg: 3, scope: !2141, file: !3, line: 248, type: !129)
!2147 = !DILocation(line: 248, column: 47, scope: !2141)
!2148 = !DILocalVariable(name: "dev", scope: !2141, file: !3, line: 250, type: !57)
!2149 = !DILocation(line: 250, column: 18, scope: !2141)
!2150 = !DILocalVariable(name: "__mptr", scope: !2151, file: !3, line: 250, type: !56)
!2151 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 250, column: 24)
!2152 = !DILocation(line: 250, column: 24, scope: !2151)
!2153 = !DILocation(line: 250, column: 24, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 250, column: 24)
!2155 = !DILocalVariable(name: "buffer", scope: !2141, file: !3, line: 251, type: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_info_buffer_t", file: !3, line: 34, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_info_buffer", file: !3, line: 25, size: 320, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2158, file: !3, line: 26, baseType: !129, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !2158, file: !3, line: 27, baseType: !129, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2158, file: !3, line: 28, baseType: !179, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2158, file: !3, line: 29, baseType: !179, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2158, file: !3, line: 30, baseType: !113, size: 32, offset: 256)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2158, file: !3, line: 31, baseType: !113, size: 32, offset: 288)
!2166 = !DILocation(line: 251, column: 21, scope: !2141)
!2167 = !DILocalVariable(name: "pnp_res", scope: !2141, file: !3, line: 252, type: !2050)
!2168 = !DILocation(line: 252, column: 23, scope: !2141)
!2169 = !DILocalVariable(name: "res", scope: !2141, file: !3, line: 253, type: !2067)
!2170 = !DILocation(line: 253, column: 19, scope: !2141)
!2171 = !DILocalVariable(name: "ret", scope: !2141, file: !3, line: 254, type: !113)
!2172 = !DILocation(line: 254, column: 6, scope: !2141)
!2173 = !DILocation(line: 256, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 256, column: 6)
!2175 = !DILocation(line: 256, column: 6, scope: !2141)
!2176 = !DILocation(line: 257, column: 3, scope: !2174)
!2177 = !DILocation(line: 259, column: 11, scope: !2141)
!2178 = !DILocation(line: 259, column: 9, scope: !2141)
!2179 = !DILocation(line: 260, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 260, column: 6)
!2181 = !DILocation(line: 260, column: 6, scope: !2141)
!2182 = !DILocation(line: 261, column: 3, scope: !2180)
!2183 = !DILocation(line: 263, column: 2, scope: !2141)
!2184 = !DILocation(line: 263, column: 10, scope: !2141)
!2185 = !DILocation(line: 263, column: 14, scope: !2141)
!2186 = !DILocation(line: 264, column: 19, scope: !2141)
!2187 = !DILocation(line: 264, column: 2, scope: !2141)
!2188 = !DILocation(line: 264, column: 10, scope: !2141)
!2189 = !DILocation(line: 264, column: 17, scope: !2141)
!2190 = !DILocation(line: 265, column: 17, scope: !2141)
!2191 = !DILocation(line: 265, column: 25, scope: !2141)
!2192 = !DILocation(line: 265, column: 2, scope: !2141)
!2193 = !DILocation(line: 265, column: 10, scope: !2141)
!2194 = !DILocation(line: 265, column: 15, scope: !2141)
!2195 = !DILocation(line: 267, column: 13, scope: !2141)
!2196 = !DILocation(line: 267, column: 37, scope: !2141)
!2197 = !DILocation(line: 267, column: 42, scope: !2141)
!2198 = !DILocation(line: 267, column: 2, scope: !2141)
!2199 = !DILocalVariable(name: "__mptr", scope: !2200, file: !3, line: 269, type: !56)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 269, column: 2)
!2201 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 269, column: 2)
!2202 = !DILocation(line: 269, column: 2, scope: !2200)
!2203 = !DILocation(line: 269, column: 2, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 269, column: 2)
!2205 = !DILocation(line: 269, column: 2, scope: !2201)
!2206 = !DILocation(line: 269, column: 2, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 269, column: 2)
!2208 = !DILocation(line: 270, column: 10, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 269, column: 54)
!2210 = !DILocation(line: 270, column: 19, scope: !2209)
!2211 = !DILocation(line: 270, column: 7, scope: !2209)
!2212 = !DILocation(line: 272, column: 14, scope: !2209)
!2213 = !DILocation(line: 272, column: 45, scope: !2209)
!2214 = !DILocation(line: 272, column: 22, scope: !2209)
!2215 = !DILocation(line: 272, column: 3, scope: !2209)
!2216 = !DILocation(line: 274, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 274, column: 7)
!2218 = !DILocation(line: 274, column: 12, scope: !2217)
!2219 = !DILocation(line: 274, column: 18, scope: !2217)
!2220 = !DILocation(line: 274, column: 7, scope: !2209)
!2221 = !DILocation(line: 275, column: 15, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 274, column: 41)
!2223 = !DILocation(line: 275, column: 4, scope: !2222)
!2224 = !DILocation(line: 276, column: 4, scope: !2222)
!2225 = !DILocation(line: 279, column: 29, scope: !2209)
!2226 = !DILocation(line: 279, column: 11, scope: !2209)
!2227 = !DILocation(line: 279, column: 3, scope: !2209)
!2228 = !DILocation(line: 283, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 279, column: 35)
!2230 = !DILocation(line: 284, column: 29, scope: !2229)
!2231 = !DILocation(line: 284, column: 34, scope: !2229)
!2232 = !DILocation(line: 285, column: 29, scope: !2229)
!2233 = !DILocation(line: 285, column: 34, scope: !2229)
!2234 = !DILocation(line: 286, column: 8, scope: !2229)
!2235 = !DILocation(line: 286, column: 13, scope: !2229)
!2236 = !DILocation(line: 286, column: 19, scope: !2229)
!2237 = !DILocation(line: 283, column: 4, scope: !2229)
!2238 = !DILocation(line: 288, column: 4, scope: !2229)
!2239 = !DILocation(line: 291, column: 15, scope: !2229)
!2240 = !DILocation(line: 292, column: 29, scope: !2229)
!2241 = !DILocation(line: 292, column: 34, scope: !2229)
!2242 = !DILocation(line: 291, column: 4, scope: !2229)
!2243 = !DILocation(line: 293, column: 4, scope: !2229)
!2244 = !DILocation(line: 295, column: 2, scope: !2209)
!2245 = !DILocalVariable(name: "__mptr", scope: !2246, file: !3, line: 269, type: !56)
!2246 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 269, column: 2)
!2247 = !DILocation(line: 269, column: 2, scope: !2246)
!2248 = !DILocation(line: 269, column: 2, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 269, column: 2)
!2250 = distinct !{!2250, !2205, !2251}
!2251 = !DILocation(line: 295, column: 2, scope: !2201)
!2252 = !DILocation(line: 297, column: 9, scope: !2141)
!2253 = !DILocation(line: 297, column: 17, scope: !2141)
!2254 = !DILocation(line: 297, column: 24, scope: !2141)
!2255 = !DILocation(line: 297, column: 22, scope: !2141)
!2256 = !DILocation(line: 297, column: 8, scope: !2141)
!2257 = !DILocation(line: 297, column: 6, scope: !2141)
!2258 = !DILocation(line: 298, column: 8, scope: !2141)
!2259 = !DILocation(line: 298, column: 2, scope: !2141)
!2260 = !DILocation(line: 299, column: 9, scope: !2141)
!2261 = !DILocation(line: 299, column: 2, scope: !2141)
!2262 = !DILocation(line: 300, column: 1, scope: !2141)
!2263 = distinct !DISubprogram(name: "resources_store", scope: !3, file: !3, line: 335, type: !2130, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2264 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2263, file: !3, line: 335, type: !1545)
!2265 = !DILocation(line: 335, column: 47, scope: !2263)
!2266 = !DILocalVariable(name: "attr", arg: 2, scope: !2263, file: !3, line: 336, type: !2127)
!2267 = !DILocation(line: 336, column: 36, scope: !2263)
!2268 = !DILocalVariable(name: "ubuf", arg: 3, scope: !2263, file: !3, line: 336, type: !69)
!2269 = !DILocation(line: 336, column: 54, scope: !2263)
!2270 = !DILocalVariable(name: "count", arg: 4, scope: !2263, file: !3, line: 337, type: !176)
!2271 = !DILocation(line: 337, column: 18, scope: !2263)
!2272 = !DILocalVariable(name: "dev", scope: !2263, file: !3, line: 339, type: !57)
!2273 = !DILocation(line: 339, column: 18, scope: !2263)
!2274 = !DILocalVariable(name: "__mptr", scope: !2275, file: !3, line: 339, type: !56)
!2275 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 339, column: 24)
!2276 = !DILocation(line: 339, column: 24, scope: !2275)
!2277 = !DILocation(line: 339, column: 24, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 339, column: 24)
!2279 = !DILocalVariable(name: "buf", scope: !2263, file: !3, line: 340, type: !129)
!2280 = !DILocation(line: 340, column: 8, scope: !2263)
!2281 = !DILocation(line: 340, column: 22, scope: !2263)
!2282 = !DILocalVariable(name: "retval", scope: !2263, file: !3, line: 341, type: !113)
!2283 = !DILocation(line: 341, column: 6, scope: !2263)
!2284 = !DILocation(line: 343, column: 6, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 343, column: 6)
!2286 = !DILocation(line: 343, column: 11, scope: !2285)
!2287 = !DILocation(line: 343, column: 18, scope: !2285)
!2288 = !DILocation(line: 343, column: 6, scope: !2263)
!2289 = !DILocation(line: 344, column: 10, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 343, column: 34)
!2291 = !DILocation(line: 345, column: 3, scope: !2290)
!2292 = !DILocation(line: 346, column: 3, scope: !2290)
!2293 = !DILocation(line: 349, column: 20, scope: !2263)
!2294 = !DILocation(line: 349, column: 8, scope: !2263)
!2295 = !DILocation(line: 349, column: 6, scope: !2263)
!2296 = !DILocation(line: 350, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 350, column: 6)
!2298 = !DILocation(line: 350, column: 7, scope: !2297)
!2299 = !DILocation(line: 350, column: 6, scope: !2263)
!2300 = !DILocation(line: 351, column: 28, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 350, column: 39)
!2302 = !DILocation(line: 351, column: 12, scope: !2301)
!2303 = !DILocation(line: 351, column: 10, scope: !2301)
!2304 = !DILocation(line: 352, column: 3, scope: !2301)
!2305 = !DILocation(line: 354, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 354, column: 6)
!2307 = !DILocation(line: 354, column: 7, scope: !2306)
!2308 = !DILocation(line: 354, column: 6, scope: !2263)
!2309 = !DILocation(line: 355, column: 29, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 354, column: 40)
!2311 = !DILocation(line: 355, column: 12, scope: !2310)
!2312 = !DILocation(line: 355, column: 10, scope: !2310)
!2313 = !DILocation(line: 356, column: 3, scope: !2310)
!2314 = !DILocation(line: 358, column: 19, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 358, column: 6)
!2316 = !DILocation(line: 358, column: 7, scope: !2315)
!2317 = !DILocation(line: 358, column: 6, scope: !2263)
!2318 = !DILocation(line: 359, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 359, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 358, column: 36)
!2321 = !DILocation(line: 359, column: 12, scope: !2319)
!2322 = !DILocation(line: 359, column: 7, scope: !2320)
!2323 = !DILocation(line: 360, column: 4, scope: !2319)
!2324 = !DILocation(line: 361, column: 32, scope: !2320)
!2325 = !DILocation(line: 361, column: 12, scope: !2320)
!2326 = !DILocation(line: 361, column: 10, scope: !2320)
!2327 = !DILocation(line: 362, column: 3, scope: !2320)
!2328 = !DILocation(line: 364, column: 19, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 364, column: 6)
!2330 = !DILocation(line: 364, column: 7, scope: !2329)
!2331 = !DILocation(line: 364, column: 6, scope: !2263)
!2332 = !DILocation(line: 365, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 365, column: 7)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 364, column: 36)
!2335 = !DILocation(line: 365, column: 12, scope: !2333)
!2336 = !DILocation(line: 365, column: 7, scope: !2334)
!2337 = !DILocation(line: 366, column: 4, scope: !2333)
!2338 = !DILocation(line: 367, column: 22, scope: !2334)
!2339 = !DILocation(line: 367, column: 3, scope: !2334)
!2340 = !DILocation(line: 368, column: 32, scope: !2334)
!2341 = !DILocation(line: 368, column: 12, scope: !2334)
!2342 = !DILocation(line: 368, column: 10, scope: !2334)
!2343 = !DILocation(line: 369, column: 3, scope: !2334)
!2344 = !DILocation(line: 371, column: 19, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 371, column: 6)
!2346 = !DILocation(line: 371, column: 7, scope: !2345)
!2347 = !DILocation(line: 371, column: 6, scope: !2263)
!2348 = !DILocation(line: 372, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 372, column: 7)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 371, column: 37)
!2351 = !DILocation(line: 372, column: 12, scope: !2349)
!2352 = !DILocation(line: 372, column: 7, scope: !2350)
!2353 = !DILocation(line: 373, column: 4, scope: !2349)
!2354 = !DILocation(line: 374, column: 22, scope: !2350)
!2355 = !DILocation(line: 374, column: 3, scope: !2350)
!2356 = !DILocation(line: 375, column: 3, scope: !2350)
!2357 = !DILocation(line: 377, column: 19, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 377, column: 6)
!2359 = !DILocation(line: 377, column: 7, scope: !2358)
!2360 = !DILocation(line: 377, column: 6, scope: !2263)
!2361 = !DILocation(line: 378, column: 3, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 377, column: 35)
!2363 = !DILocation(line: 379, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 379, column: 7)
!2365 = !DILocation(line: 379, column: 7, scope: !2362)
!2366 = !DILocation(line: 380, column: 4, scope: !2364)
!2367 = !DILocation(line: 380, column: 9, scope: !2364)
!2368 = !DILocation(line: 380, column: 19, scope: !2364)
!2369 = !DILocation(line: 380, column: 23, scope: !2364)
!2370 = !DILocation(line: 381, column: 3, scope: !2362)
!2371 = !DILocation(line: 382, column: 3, scope: !2362)
!2372 = !DILocation(line: 384, column: 19, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 384, column: 6)
!2374 = !DILocation(line: 384, column: 7, scope: !2373)
!2375 = !DILocation(line: 384, column: 6, scope: !2263)
!2376 = !DILocalVariable(name: "start", scope: !2377, file: !3, line: 385, type: !2060)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 384, column: 35)
!2378 = !DILocation(line: 385, column: 19, scope: !2377)
!2379 = !DILocalVariable(name: "end", scope: !2377, file: !3, line: 386, type: !2060)
!2380 = !DILocation(line: 386, column: 19, scope: !2377)
!2381 = !DILocalVariable(name: "flags", scope: !2377, file: !3, line: 387, type: !179)
!2382 = !DILocation(line: 387, column: 17, scope: !2377)
!2383 = !DILocation(line: 389, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 389, column: 7)
!2385 = !DILocation(line: 389, column: 12, scope: !2384)
!2386 = !DILocation(line: 389, column: 7, scope: !2377)
!2387 = !DILocation(line: 390, column: 4, scope: !2384)
!2388 = !DILocation(line: 391, column: 7, scope: !2377)
!2389 = !DILocation(line: 392, column: 22, scope: !2377)
!2390 = !DILocation(line: 392, column: 3, scope: !2377)
!2391 = !DILocation(line: 393, column: 3, scope: !2377)
!2392 = !DILocation(line: 394, column: 3, scope: !2377)
!2393 = !DILocation(line: 395, column: 22, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 394, column: 13)
!2395 = !DILocation(line: 395, column: 10, scope: !2394)
!2396 = !DILocation(line: 395, column: 8, scope: !2394)
!2397 = !DILocation(line: 396, column: 21, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 396, column: 8)
!2399 = !DILocation(line: 396, column: 9, scope: !2398)
!2400 = !DILocation(line: 396, column: 8, scope: !2394)
!2401 = !DILocation(line: 397, column: 34, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 396, column: 36)
!2403 = !DILocation(line: 397, column: 38, scope: !2402)
!2404 = !DILocation(line: 397, column: 11, scope: !2402)
!2405 = !DILocation(line: 397, column: 9, scope: !2402)
!2406 = !DILocation(line: 401, column: 25, scope: !2402)
!2407 = !DILocation(line: 401, column: 30, scope: !2402)
!2408 = !DILocation(line: 401, column: 37, scope: !2402)
!2409 = !DILocation(line: 401, column: 42, scope: !2402)
!2410 = !DILocation(line: 401, column: 5, scope: !2402)
!2411 = !DILocation(line: 402, column: 4, scope: !2402)
!2412 = !DILocation(line: 402, column: 28, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 402, column: 15)
!2414 = !DILocation(line: 402, column: 16, scope: !2413)
!2415 = !DILocation(line: 402, column: 15, scope: !2398)
!2416 = !DILocation(line: 403, column: 34, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 402, column: 44)
!2418 = !DILocation(line: 403, column: 38, scope: !2417)
!2419 = !DILocation(line: 403, column: 11, scope: !2417)
!2420 = !DILocation(line: 403, column: 9, scope: !2417)
!2421 = !DILocation(line: 407, column: 26, scope: !2417)
!2422 = !DILocation(line: 407, column: 31, scope: !2417)
!2423 = !DILocation(line: 407, column: 38, scope: !2417)
!2424 = !DILocation(line: 407, column: 43, scope: !2417)
!2425 = !DILocation(line: 407, column: 5, scope: !2417)
!2426 = !DILocation(line: 408, column: 4, scope: !2417)
!2427 = !DILocation(line: 408, column: 28, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 408, column: 15)
!2429 = !DILocation(line: 408, column: 16, scope: !2428)
!2430 = !DILocation(line: 408, column: 15, scope: !2413)
!2431 = !DILocation(line: 409, column: 34, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 408, column: 44)
!2433 = !DILocation(line: 409, column: 38, scope: !2432)
!2434 = !DILocation(line: 409, column: 11, scope: !2432)
!2435 = !DILocation(line: 409, column: 9, scope: !2432)
!2436 = !DILocation(line: 413, column: 26, scope: !2432)
!2437 = !DILocation(line: 413, column: 31, scope: !2432)
!2438 = !DILocation(line: 413, column: 38, scope: !2432)
!2439 = !DILocation(line: 413, column: 5, scope: !2432)
!2440 = !DILocation(line: 414, column: 4, scope: !2432)
!2441 = !DILocation(line: 414, column: 28, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 414, column: 15)
!2443 = !DILocation(line: 414, column: 16, scope: !2442)
!2444 = !DILocation(line: 414, column: 15, scope: !2428)
!2445 = !DILocation(line: 415, column: 34, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 414, column: 44)
!2447 = !DILocation(line: 415, column: 38, scope: !2446)
!2448 = !DILocation(line: 415, column: 11, scope: !2446)
!2449 = !DILocation(line: 415, column: 9, scope: !2446)
!2450 = !DILocation(line: 419, column: 26, scope: !2446)
!2451 = !DILocation(line: 419, column: 31, scope: !2446)
!2452 = !DILocation(line: 419, column: 38, scope: !2446)
!2453 = !DILocation(line: 419, column: 5, scope: !2446)
!2454 = !DILocation(line: 420, column: 4, scope: !2446)
!2455 = !DILocation(line: 420, column: 28, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 420, column: 15)
!2457 = !DILocation(line: 420, column: 16, scope: !2456)
!2458 = !DILocation(line: 420, column: 15, scope: !2442)
!2459 = !DILocation(line: 421, column: 34, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 420, column: 44)
!2461 = !DILocation(line: 421, column: 38, scope: !2460)
!2462 = !DILocation(line: 421, column: 11, scope: !2460)
!2463 = !DILocation(line: 421, column: 9, scope: !2460)
!2464 = !DILocation(line: 425, column: 26, scope: !2460)
!2465 = !DILocation(line: 425, column: 31, scope: !2460)
!2466 = !DILocation(line: 425, column: 38, scope: !2460)
!2467 = !DILocation(line: 425, column: 5, scope: !2460)
!2468 = !DILocation(line: 426, column: 4, scope: !2460)
!2469 = !DILocation(line: 427, column: 5, scope: !2456)
!2470 = distinct !{!2470, !2392, !2471}
!2471 = !DILocation(line: 428, column: 3, scope: !2377)
!2472 = !DILocation(line: 429, column: 3, scope: !2377)
!2473 = !DILocation(line: 430, column: 3, scope: !2377)
!2474 = !DILocation(line: 384, column: 32, scope: !2373)
!2475 = !DILabel(scope: !2263, name: "done", file: !3, line: 433)
!2476 = !DILocation(line: 433, column: 1, scope: !2263)
!2477 = !DILocation(line: 434, column: 6, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 434, column: 6)
!2479 = !DILocation(line: 434, column: 13, scope: !2478)
!2480 = !DILocation(line: 434, column: 6, scope: !2263)
!2481 = !DILocation(line: 435, column: 10, scope: !2478)
!2482 = !DILocation(line: 435, column: 3, scope: !2478)
!2483 = !DILocation(line: 436, column: 9, scope: !2263)
!2484 = !DILocation(line: 436, column: 2, scope: !2263)
!2485 = !DILocation(line: 437, column: 1, scope: !2263)
!2486 = distinct !DISubprogram(name: "pnp_printf", scope: !3, file: !3, line: 36, type: !2487, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!113, !2156, !129, null}
!2489 = !DILocalVariable(name: "buffer", arg: 1, scope: !2486, file: !3, line: 36, type: !2156)
!2490 = !DILocation(line: 36, column: 43, scope: !2486)
!2491 = !DILocalVariable(name: "fmt", arg: 2, scope: !2486, file: !3, line: 36, type: !129)
!2492 = !DILocation(line: 36, column: 57, scope: !2486)
!2493 = !DILocalVariable(name: "args", scope: !2486, file: !3, line: 38, type: !2494)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2495, line: 99, baseType: !2496)
!2495 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2495, line: 40, baseType: !2497)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 38, baseType: !2498)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 192, elements: !543)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 38, size: 192, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2499, file: !3, line: 38, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2499, file: !3, line: 38, baseType: !7, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2499, file: !3, line: 38, baseType: !56, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2499, file: !3, line: 38, baseType: !56, size: 64, offset: 128)
!2505 = !DILocation(line: 38, column: 10, scope: !2486)
!2506 = !DILocalVariable(name: "res", scope: !2486, file: !3, line: 39, type: !113)
!2507 = !DILocation(line: 39, column: 6, scope: !2486)
!2508 = !DILocation(line: 41, column: 6, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 41, column: 6)
!2510 = !DILocation(line: 41, column: 14, scope: !2509)
!2511 = !DILocation(line: 41, column: 19, scope: !2509)
!2512 = !DILocation(line: 41, column: 22, scope: !2509)
!2513 = !DILocation(line: 41, column: 30, scope: !2509)
!2514 = !DILocation(line: 41, column: 6, scope: !2486)
!2515 = !DILocation(line: 42, column: 3, scope: !2509)
!2516 = !DILocation(line: 43, column: 2, scope: !2486)
!2517 = !DILocation(line: 44, column: 18, scope: !2486)
!2518 = !DILocation(line: 44, column: 26, scope: !2486)
!2519 = !DILocation(line: 44, column: 32, scope: !2486)
!2520 = !DILocation(line: 44, column: 40, scope: !2486)
!2521 = !DILocation(line: 44, column: 46, scope: !2486)
!2522 = !DILocation(line: 44, column: 54, scope: !2486)
!2523 = !DILocation(line: 44, column: 44, scope: !2486)
!2524 = !DILocation(line: 44, column: 60, scope: !2486)
!2525 = !DILocation(line: 44, column: 65, scope: !2486)
!2526 = !DILocation(line: 44, column: 8, scope: !2486)
!2527 = !DILocation(line: 44, column: 6, scope: !2486)
!2528 = !DILocation(line: 45, column: 2, scope: !2486)
!2529 = !DILocation(line: 46, column: 6, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 46, column: 6)
!2531 = !DILocation(line: 46, column: 14, scope: !2530)
!2532 = !DILocation(line: 46, column: 21, scope: !2530)
!2533 = !DILocation(line: 46, column: 19, scope: !2530)
!2534 = !DILocation(line: 46, column: 28, scope: !2530)
!2535 = !DILocation(line: 46, column: 36, scope: !2530)
!2536 = !DILocation(line: 46, column: 25, scope: !2530)
!2537 = !DILocation(line: 46, column: 6, scope: !2486)
!2538 = !DILocation(line: 47, column: 3, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 46, column: 41)
!2540 = !DILocation(line: 47, column: 11, scope: !2539)
!2541 = !DILocation(line: 47, column: 16, scope: !2539)
!2542 = !DILocation(line: 48, column: 3, scope: !2539)
!2543 = !DILocation(line: 50, column: 18, scope: !2486)
!2544 = !DILocation(line: 50, column: 2, scope: !2486)
!2545 = !DILocation(line: 50, column: 10, scope: !2486)
!2546 = !DILocation(line: 50, column: 15, scope: !2486)
!2547 = !DILocation(line: 51, column: 18, scope: !2486)
!2548 = !DILocation(line: 51, column: 2, scope: !2486)
!2549 = !DILocation(line: 51, column: 10, scope: !2486)
!2550 = !DILocation(line: 51, column: 15, scope: !2486)
!2551 = !DILocation(line: 52, column: 9, scope: !2486)
!2552 = !DILocation(line: 52, column: 2, scope: !2486)
!2553 = !DILocation(line: 53, column: 1, scope: !2486)
!2554 = distinct !DISubprogram(name: "pnp_get_resource_value", scope: !3, file: !3, line: 302, type: !2555, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!129, !129, !179, !2557, !2557, !2110}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2558 = !DILocalVariable(name: "buf", arg: 1, scope: !2554, file: !3, line: 302, type: !129)
!2559 = !DILocation(line: 302, column: 43, scope: !2554)
!2560 = !DILocalVariable(name: "type", arg: 2, scope: !2554, file: !3, line: 303, type: !179)
!2561 = !DILocation(line: 303, column: 23, scope: !2554)
!2562 = !DILocalVariable(name: "start", arg: 3, scope: !2554, file: !3, line: 304, type: !2557)
!2563 = !DILocation(line: 304, column: 26, scope: !2554)
!2564 = !DILocalVariable(name: "end", arg: 4, scope: !2554, file: !3, line: 305, type: !2557)
!2565 = !DILocation(line: 305, column: 26, scope: !2554)
!2566 = !DILocalVariable(name: "flags", arg: 5, scope: !2554, file: !3, line: 306, type: !2110)
!2567 = !DILocation(line: 306, column: 24, scope: !2554)
!2568 = !DILocation(line: 308, column: 6, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 308, column: 6)
!2570 = !DILocation(line: 308, column: 6, scope: !2554)
!2571 = !DILocation(line: 309, column: 4, scope: !2569)
!2572 = !DILocation(line: 309, column: 10, scope: !2569)
!2573 = !DILocation(line: 309, column: 3, scope: !2569)
!2574 = !DILocation(line: 310, column: 6, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 310, column: 6)
!2576 = !DILocation(line: 310, column: 6, scope: !2554)
!2577 = !DILocation(line: 311, column: 4, scope: !2575)
!2578 = !DILocation(line: 311, column: 8, scope: !2575)
!2579 = !DILocation(line: 311, column: 3, scope: !2575)
!2580 = !DILocation(line: 312, column: 6, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 312, column: 6)
!2582 = !DILocation(line: 312, column: 6, scope: !2554)
!2583 = !DILocation(line: 313, column: 4, scope: !2581)
!2584 = !DILocation(line: 313, column: 10, scope: !2581)
!2585 = !DILocation(line: 313, column: 3, scope: !2581)
!2586 = !DILocation(line: 317, column: 20, scope: !2554)
!2587 = !DILocation(line: 317, column: 8, scope: !2554)
!2588 = !DILocation(line: 317, column: 6, scope: !2554)
!2589 = !DILocation(line: 318, column: 6, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 318, column: 6)
!2591 = !DILocation(line: 318, column: 6, scope: !2554)
!2592 = !DILocation(line: 319, column: 28, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 318, column: 13)
!2594 = !DILocation(line: 319, column: 12, scope: !2593)
!2595 = !DILocation(line: 319, column: 4, scope: !2593)
!2596 = !DILocation(line: 319, column: 10, scope: !2593)
!2597 = !DILocation(line: 320, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 320, column: 7)
!2599 = !DILocation(line: 320, column: 7, scope: !2593)
!2600 = !DILocation(line: 321, column: 22, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 320, column: 12)
!2602 = !DILocation(line: 321, column: 10, scope: !2601)
!2603 = !DILocation(line: 321, column: 8, scope: !2601)
!2604 = !DILocation(line: 322, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 322, column: 8)
!2606 = !DILocation(line: 322, column: 8, scope: !2605)
!2607 = !DILocation(line: 322, column: 13, scope: !2605)
!2608 = !DILocation(line: 322, column: 8, scope: !2601)
!2609 = !DILocation(line: 323, column: 23, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 322, column: 21)
!2611 = !DILocation(line: 323, column: 27, scope: !2610)
!2612 = !DILocation(line: 323, column: 11, scope: !2610)
!2613 = !DILocation(line: 323, column: 9, scope: !2610)
!2614 = !DILocation(line: 324, column: 28, scope: !2610)
!2615 = !DILocation(line: 324, column: 12, scope: !2610)
!2616 = !DILocation(line: 324, column: 6, scope: !2610)
!2617 = !DILocation(line: 324, column: 10, scope: !2610)
!2618 = !DILocation(line: 325, column: 4, scope: !2610)
!2619 = !DILocation(line: 326, column: 13, scope: !2605)
!2620 = !DILocation(line: 326, column: 12, scope: !2605)
!2621 = !DILocation(line: 326, column: 6, scope: !2605)
!2622 = !DILocation(line: 326, column: 10, scope: !2605)
!2623 = !DILocation(line: 327, column: 3, scope: !2601)
!2624 = !DILocation(line: 328, column: 2, scope: !2593)
!2625 = !DILocation(line: 332, column: 9, scope: !2554)
!2626 = !DILocation(line: 332, column: 2, scope: !2554)
!2627 = distinct !DISubprogram(name: "options_show", scope: !3, file: !3, line: 207, type: !2125, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2628 = !DILocalVariable(name: "dmdev", arg: 1, scope: !2627, file: !3, line: 207, type: !1545)
!2629 = !DILocation(line: 207, column: 44, scope: !2627)
!2630 = !DILocalVariable(name: "attr", arg: 2, scope: !2627, file: !3, line: 207, type: !2127)
!2631 = !DILocation(line: 207, column: 76, scope: !2627)
!2632 = !DILocalVariable(name: "buf", arg: 3, scope: !2627, file: !3, line: 208, type: !129)
!2633 = !DILocation(line: 208, column: 14, scope: !2627)
!2634 = !DILocalVariable(name: "dev", scope: !2627, file: !3, line: 210, type: !57)
!2635 = !DILocation(line: 210, column: 18, scope: !2627)
!2636 = !DILocalVariable(name: "__mptr", scope: !2637, file: !3, line: 210, type: !56)
!2637 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 210, column: 24)
!2638 = !DILocation(line: 210, column: 24, scope: !2637)
!2639 = !DILocation(line: 210, column: 24, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 210, column: 24)
!2641 = !DILocalVariable(name: "buffer", scope: !2627, file: !3, line: 211, type: !2156)
!2642 = !DILocation(line: 211, column: 21, scope: !2627)
!2643 = !DILocalVariable(name: "option", scope: !2627, file: !3, line: 212, type: !2070)
!2644 = !DILocation(line: 212, column: 21, scope: !2627)
!2645 = !DILocalVariable(name: "ret", scope: !2627, file: !3, line: 213, type: !113)
!2646 = !DILocation(line: 213, column: 6, scope: !2627)
!2647 = !DILocalVariable(name: "dep", scope: !2627, file: !3, line: 213, type: !113)
!2648 = !DILocation(line: 213, column: 11, scope: !2627)
!2649 = !DILocalVariable(name: "set", scope: !2627, file: !3, line: 213, type: !113)
!2650 = !DILocation(line: 213, column: 20, scope: !2627)
!2651 = !DILocalVariable(name: "indent", scope: !2627, file: !3, line: 214, type: !129)
!2652 = !DILocation(line: 214, column: 8, scope: !2627)
!2653 = !DILocation(line: 216, column: 11, scope: !2627)
!2654 = !DILocation(line: 216, column: 9, scope: !2627)
!2655 = !DILocation(line: 217, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 217, column: 6)
!2657 = !DILocation(line: 217, column: 6, scope: !2627)
!2658 = !DILocation(line: 218, column: 3, scope: !2656)
!2659 = !DILocation(line: 220, column: 2, scope: !2627)
!2660 = !DILocation(line: 220, column: 10, scope: !2627)
!2661 = !DILocation(line: 220, column: 14, scope: !2627)
!2662 = !DILocation(line: 221, column: 19, scope: !2627)
!2663 = !DILocation(line: 221, column: 2, scope: !2627)
!2664 = !DILocation(line: 221, column: 10, scope: !2627)
!2665 = !DILocation(line: 221, column: 17, scope: !2627)
!2666 = !DILocation(line: 222, column: 17, scope: !2627)
!2667 = !DILocation(line: 222, column: 25, scope: !2627)
!2668 = !DILocation(line: 222, column: 2, scope: !2627)
!2669 = !DILocation(line: 222, column: 10, scope: !2627)
!2670 = !DILocation(line: 222, column: 15, scope: !2627)
!2671 = !DILocalVariable(name: "__mptr", scope: !2672, file: !3, line: 224, type: !56)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 224, column: 2)
!2673 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 224, column: 2)
!2674 = !DILocation(line: 224, column: 2, scope: !2672)
!2675 = !DILocation(line: 224, column: 2, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 224, column: 2)
!2677 = !DILocation(line: 224, column: 2, scope: !2673)
!2678 = !DILocation(line: 224, column: 2, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 224, column: 2)
!2680 = !DILocation(line: 225, column: 31, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 225, column: 7)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 224, column: 51)
!2683 = !DILocation(line: 225, column: 7, scope: !2681)
!2684 = !DILocation(line: 225, column: 7, scope: !2682)
!2685 = !DILocation(line: 226, column: 11, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 225, column: 40)
!2687 = !DILocation(line: 227, column: 9, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 227, column: 8)
!2689 = !DILocation(line: 227, column: 13, scope: !2688)
!2690 = !DILocation(line: 227, column: 31, scope: !2688)
!2691 = !DILocation(line: 227, column: 16, scope: !2688)
!2692 = !DILocation(line: 227, column: 42, scope: !2688)
!2693 = !DILocation(line: 227, column: 39, scope: !2688)
!2694 = !DILocation(line: 227, column: 8, scope: !2686)
!2695 = !DILocation(line: 228, column: 26, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 227, column: 47)
!2697 = !DILocation(line: 228, column: 11, scope: !2696)
!2698 = !DILocation(line: 228, column: 9, scope: !2696)
!2699 = !DILocation(line: 229, column: 9, scope: !2696)
!2700 = !DILocation(line: 230, column: 16, scope: !2696)
!2701 = !DILocation(line: 231, column: 26, scope: !2696)
!2702 = !DILocation(line: 232, column: 34, scope: !2696)
!2703 = !DILocation(line: 232, column: 9, scope: !2696)
!2704 = !DILocation(line: 230, column: 5, scope: !2696)
!2705 = !DILocation(line: 233, column: 4, scope: !2696)
!2706 = !DILocation(line: 234, column: 3, scope: !2686)
!2707 = !DILocation(line: 235, column: 8, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 234, column: 10)
!2709 = !DILocation(line: 236, column: 11, scope: !2708)
!2710 = !DILocation(line: 238, column: 20, scope: !2682)
!2711 = !DILocation(line: 238, column: 28, scope: !2682)
!2712 = !DILocation(line: 238, column: 36, scope: !2682)
!2713 = !DILocation(line: 238, column: 3, scope: !2682)
!2714 = !DILocation(line: 239, column: 2, scope: !2682)
!2715 = !DILocalVariable(name: "__mptr", scope: !2716, file: !3, line: 224, type: !56)
!2716 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 224, column: 2)
!2717 = !DILocation(line: 224, column: 2, scope: !2716)
!2718 = !DILocation(line: 224, column: 2, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 224, column: 2)
!2720 = distinct !{!2720, !2677, !2721}
!2721 = !DILocation(line: 239, column: 2, scope: !2673)
!2722 = !DILocation(line: 241, column: 9, scope: !2627)
!2723 = !DILocation(line: 241, column: 17, scope: !2627)
!2724 = !DILocation(line: 241, column: 24, scope: !2627)
!2725 = !DILocation(line: 241, column: 22, scope: !2627)
!2726 = !DILocation(line: 241, column: 8, scope: !2627)
!2727 = !DILocation(line: 241, column: 6, scope: !2627)
!2728 = !DILocation(line: 242, column: 8, scope: !2627)
!2729 = !DILocation(line: 242, column: 2, scope: !2627)
!2730 = !DILocation(line: 243, column: 9, scope: !2627)
!2731 = !DILocation(line: 243, column: 2, scope: !2627)
!2732 = !DILocation(line: 244, column: 1, scope: !2627)
!2733 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !2052, file: !2052, line: 94, type: !2734, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!113, !2070}
!2736 = !DILocalVariable(name: "option", arg: 1, scope: !2733, file: !2052, line: 94, type: !2070)
!2737 = !DILocation(line: 94, column: 62, scope: !2733)
!2738 = !DILocation(line: 96, column: 9, scope: !2733)
!2739 = !DILocation(line: 96, column: 17, scope: !2733)
!2740 = !DILocation(line: 96, column: 23, scope: !2733)
!2741 = !DILocation(line: 96, column: 2, scope: !2733)
!2742 = distinct !DISubprogram(name: "pnp_option_set", scope: !2052, file: !2052, line: 99, type: !2743, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!7, !2070}
!2745 = !DILocalVariable(name: "option", arg: 1, scope: !2742, file: !2052, line: 99, type: !2070)
!2746 = !DILocation(line: 99, column: 62, scope: !2742)
!2747 = !DILocation(line: 101, column: 10, scope: !2742)
!2748 = !DILocation(line: 101, column: 18, scope: !2742)
!2749 = !DILocation(line: 101, column: 24, scope: !2742)
!2750 = !DILocation(line: 101, column: 49, scope: !2742)
!2751 = !DILocation(line: 101, column: 2, scope: !2742)
!2752 = distinct !DISubprogram(name: "pnp_print_option", scope: !3, file: !3, line: 188, type: !2753, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !2156, !129, !2070}
!2755 = !DILocalVariable(name: "buffer", arg: 1, scope: !2752, file: !3, line: 188, type: !2156)
!2756 = !DILocation(line: 188, column: 50, scope: !2752)
!2757 = !DILocalVariable(name: "space", arg: 2, scope: !2752, file: !3, line: 188, type: !129)
!2758 = !DILocation(line: 188, column: 64, scope: !2752)
!2759 = !DILocalVariable(name: "option", arg: 3, scope: !2752, file: !3, line: 189, type: !2070)
!2760 = !DILocation(line: 189, column: 28, scope: !2752)
!2761 = !DILocation(line: 191, column: 10, scope: !2752)
!2762 = !DILocation(line: 191, column: 18, scope: !2752)
!2763 = !DILocation(line: 191, column: 2, scope: !2752)
!2764 = !DILocation(line: 193, column: 18, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 191, column: 24)
!2766 = !DILocation(line: 193, column: 26, scope: !2765)
!2767 = !DILocation(line: 193, column: 34, scope: !2765)
!2768 = !DILocation(line: 193, column: 42, scope: !2765)
!2769 = !DILocation(line: 193, column: 44, scope: !2765)
!2770 = !DILocation(line: 193, column: 3, scope: !2765)
!2771 = !DILocation(line: 194, column: 3, scope: !2765)
!2772 = !DILocation(line: 196, column: 17, scope: !2765)
!2773 = !DILocation(line: 196, column: 25, scope: !2765)
!2774 = !DILocation(line: 196, column: 33, scope: !2765)
!2775 = !DILocation(line: 196, column: 41, scope: !2765)
!2776 = !DILocation(line: 196, column: 43, scope: !2765)
!2777 = !DILocation(line: 196, column: 3, scope: !2765)
!2778 = !DILocation(line: 197, column: 3, scope: !2765)
!2779 = !DILocation(line: 199, column: 17, scope: !2765)
!2780 = !DILocation(line: 199, column: 25, scope: !2765)
!2781 = !DILocation(line: 199, column: 33, scope: !2765)
!2782 = !DILocation(line: 199, column: 41, scope: !2765)
!2783 = !DILocation(line: 199, column: 43, scope: !2765)
!2784 = !DILocation(line: 199, column: 3, scope: !2765)
!2785 = !DILocation(line: 200, column: 3, scope: !2765)
!2786 = !DILocation(line: 202, column: 17, scope: !2765)
!2787 = !DILocation(line: 202, column: 25, scope: !2765)
!2788 = !DILocation(line: 202, column: 33, scope: !2765)
!2789 = !DILocation(line: 202, column: 41, scope: !2765)
!2790 = !DILocation(line: 202, column: 43, scope: !2765)
!2791 = !DILocation(line: 202, column: 3, scope: !2765)
!2792 = !DILocation(line: 203, column: 3, scope: !2765)
!2793 = !DILocation(line: 205, column: 1, scope: !2752)
!2794 = distinct !DISubprogram(name: "pnp_print_port", scope: !3, file: !3, line: 55, type: !2795, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2156, !129, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2798 = !DILocalVariable(name: "buffer", arg: 1, scope: !2794, file: !3, line: 55, type: !2156)
!2799 = !DILocation(line: 55, column: 48, scope: !2794)
!2800 = !DILocalVariable(name: "space", arg: 2, scope: !2794, file: !3, line: 55, type: !129)
!2801 = !DILocation(line: 55, column: 62, scope: !2794)
!2802 = !DILocalVariable(name: "port", arg: 3, scope: !2794, file: !3, line: 56, type: !2797)
!2803 = !DILocation(line: 56, column: 24, scope: !2794)
!2804 = !DILocation(line: 58, column: 13, scope: !2794)
!2805 = !DILocation(line: 59, column: 35, scope: !2794)
!2806 = !DILocation(line: 60, column: 27, scope: !2794)
!2807 = !DILocation(line: 60, column: 33, scope: !2794)
!2808 = !DILocation(line: 61, column: 27, scope: !2794)
!2809 = !DILocation(line: 61, column: 33, scope: !2794)
!2810 = !DILocation(line: 62, column: 6, scope: !2794)
!2811 = !DILocation(line: 62, column: 12, scope: !2794)
!2812 = !DILocation(line: 62, column: 42, scope: !2794)
!2813 = !DILocation(line: 62, column: 48, scope: !2794)
!2814 = !DILocation(line: 62, column: 54, scope: !2794)
!2815 = !DILocation(line: 63, column: 27, scope: !2794)
!2816 = !DILocation(line: 63, column: 33, scope: !2794)
!2817 = !DILocation(line: 64, column: 6, scope: !2794)
!2818 = !DILocation(line: 64, column: 12, scope: !2794)
!2819 = !DILocation(line: 64, column: 18, scope: !2794)
!2820 = !DILocation(line: 58, column: 2, scope: !2794)
!2821 = !DILocation(line: 65, column: 1, scope: !2794)
!2822 = distinct !DISubprogram(name: "pnp_print_mem", scope: !3, file: !3, line: 152, type: !2823, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2156, !129, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2826 = !DILocalVariable(name: "buffer", arg: 1, scope: !2822, file: !3, line: 152, type: !2156)
!2827 = !DILocation(line: 152, column: 47, scope: !2822)
!2828 = !DILocalVariable(name: "space", arg: 2, scope: !2822, file: !3, line: 152, type: !129)
!2829 = !DILocation(line: 152, column: 61, scope: !2822)
!2830 = !DILocalVariable(name: "mem", arg: 3, scope: !2822, file: !3, line: 153, type: !2825)
!2831 = !DILocation(line: 153, column: 22, scope: !2822)
!2832 = !DILocalVariable(name: "s", scope: !2822, file: !3, line: 155, type: !129)
!2833 = !DILocation(line: 155, column: 8, scope: !2822)
!2834 = !DILocation(line: 157, column: 13, scope: !2822)
!2835 = !DILocation(line: 158, column: 6, scope: !2822)
!2836 = !DILocation(line: 158, column: 34, scope: !2822)
!2837 = !DILocation(line: 158, column: 39, scope: !2822)
!2838 = !DILocation(line: 159, column: 27, scope: !2822)
!2839 = !DILocation(line: 159, column: 32, scope: !2822)
!2840 = !DILocation(line: 160, column: 27, scope: !2822)
!2841 = !DILocation(line: 160, column: 32, scope: !2822)
!2842 = !DILocation(line: 161, column: 27, scope: !2822)
!2843 = !DILocation(line: 161, column: 32, scope: !2822)
!2844 = !DILocation(line: 157, column: 2, scope: !2822)
!2845 = !DILocation(line: 162, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 162, column: 6)
!2847 = !DILocation(line: 162, column: 11, scope: !2846)
!2848 = !DILocation(line: 162, column: 17, scope: !2846)
!2849 = !DILocation(line: 162, column: 6, scope: !2822)
!2850 = !DILocation(line: 163, column: 14, scope: !2846)
!2851 = !DILocation(line: 163, column: 3, scope: !2846)
!2852 = !DILocation(line: 164, column: 6, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 164, column: 6)
!2854 = !DILocation(line: 164, column: 11, scope: !2853)
!2855 = !DILocation(line: 164, column: 17, scope: !2853)
!2856 = !DILocation(line: 164, column: 6, scope: !2822)
!2857 = !DILocation(line: 165, column: 14, scope: !2853)
!2858 = !DILocation(line: 165, column: 3, scope: !2853)
!2859 = !DILocation(line: 166, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 166, column: 6)
!2861 = !DILocation(line: 166, column: 11, scope: !2860)
!2862 = !DILocation(line: 166, column: 17, scope: !2860)
!2863 = !DILocation(line: 166, column: 6, scope: !2822)
!2864 = !DILocation(line: 167, column: 14, scope: !2860)
!2865 = !DILocation(line: 167, column: 3, scope: !2860)
!2866 = !DILocation(line: 168, column: 6, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 168, column: 6)
!2868 = !DILocation(line: 168, column: 11, scope: !2867)
!2869 = !DILocation(line: 168, column: 17, scope: !2867)
!2870 = !DILocation(line: 168, column: 6, scope: !2822)
!2871 = !DILocation(line: 169, column: 14, scope: !2867)
!2872 = !DILocation(line: 169, column: 3, scope: !2867)
!2873 = !DILocation(line: 170, column: 6, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 170, column: 6)
!2875 = !DILocation(line: 170, column: 11, scope: !2874)
!2876 = !DILocation(line: 170, column: 17, scope: !2874)
!2877 = !DILocation(line: 170, column: 6, scope: !2822)
!2878 = !DILocation(line: 171, column: 14, scope: !2874)
!2879 = !DILocation(line: 171, column: 3, scope: !2874)
!2880 = !DILocation(line: 172, column: 10, scope: !2822)
!2881 = !DILocation(line: 172, column: 15, scope: !2822)
!2882 = !DILocation(line: 172, column: 21, scope: !2822)
!2883 = !DILocation(line: 172, column: 2, scope: !2822)
!2884 = !DILocation(line: 174, column: 5, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 172, column: 49)
!2886 = !DILocation(line: 175, column: 3, scope: !2885)
!2887 = !DILocation(line: 177, column: 5, scope: !2885)
!2888 = !DILocation(line: 178, column: 3, scope: !2885)
!2889 = !DILocation(line: 180, column: 5, scope: !2885)
!2890 = !DILocation(line: 181, column: 3, scope: !2885)
!2891 = !DILocation(line: 183, column: 5, scope: !2885)
!2892 = !DILocation(line: 184, column: 2, scope: !2885)
!2893 = !DILocation(line: 185, column: 13, scope: !2822)
!2894 = !DILocation(line: 185, column: 31, scope: !2822)
!2895 = !DILocation(line: 185, column: 2, scope: !2822)
!2896 = !DILocation(line: 186, column: 1, scope: !2822)
!2897 = distinct !DISubprogram(name: "pnp_print_irq", scope: !3, file: !3, line: 67, type: !2898, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2156, !129, !2900}
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2901 = !DILocalVariable(name: "buffer", arg: 1, scope: !2897, file: !3, line: 67, type: !2156)
!2902 = !DILocation(line: 67, column: 47, scope: !2897)
!2903 = !DILocalVariable(name: "space", arg: 2, scope: !2897, file: !3, line: 67, type: !129)
!2904 = !DILocation(line: 67, column: 61, scope: !2897)
!2905 = !DILocalVariable(name: "irq", arg: 3, scope: !2897, file: !3, line: 68, type: !2900)
!2906 = !DILocation(line: 68, column: 22, scope: !2897)
!2907 = !DILocalVariable(name: "first", scope: !2897, file: !3, line: 70, type: !113)
!2908 = !DILocation(line: 70, column: 6, scope: !2897)
!2909 = !DILocalVariable(name: "i", scope: !2897, file: !3, line: 70, type: !113)
!2910 = !DILocation(line: 70, column: 17, scope: !2897)
!2911 = !DILocation(line: 72, column: 13, scope: !2897)
!2912 = !DILocation(line: 72, column: 31, scope: !2897)
!2913 = !DILocation(line: 72, column: 2, scope: !2897)
!2914 = !DILocation(line: 73, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 73, column: 2)
!2916 = !DILocation(line: 73, column: 7, scope: !2915)
!2917 = !DILocation(line: 73, column: 14, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 73, column: 2)
!2919 = !DILocation(line: 73, column: 16, scope: !2918)
!2920 = !DILocation(line: 73, column: 2, scope: !2915)
!2921 = !DILocation(line: 74, column: 16, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 74, column: 7)
!2923 = !DILocation(line: 74, column: 19, scope: !2922)
!2924 = !DILocation(line: 74, column: 24, scope: !2922)
!2925 = !DILocation(line: 74, column: 28, scope: !2922)
!2926 = !DILocation(line: 74, column: 7, scope: !2922)
!2927 = !DILocation(line: 74, column: 7, scope: !2918)
!2928 = !DILocation(line: 75, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 75, column: 8)
!2930 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 74, column: 35)
!2931 = !DILocation(line: 75, column: 8, scope: !2930)
!2932 = !DILocation(line: 76, column: 16, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 75, column: 16)
!2934 = !DILocation(line: 76, column: 5, scope: !2933)
!2935 = !DILocation(line: 77, column: 4, scope: !2933)
!2936 = !DILocation(line: 78, column: 11, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 77, column: 11)
!2938 = !DILocation(line: 80, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 80, column: 8)
!2940 = !DILocation(line: 80, column: 10, scope: !2939)
!2941 = !DILocation(line: 80, column: 15, scope: !2939)
!2942 = !DILocation(line: 80, column: 18, scope: !2939)
!2943 = !DILocation(line: 80, column: 20, scope: !2939)
!2944 = !DILocation(line: 80, column: 8, scope: !2930)
!2945 = !DILocation(line: 81, column: 16, scope: !2939)
!2946 = !DILocation(line: 81, column: 5, scope: !2939)
!2947 = !DILocation(line: 83, column: 16, scope: !2939)
!2948 = !DILocation(line: 83, column: 30, scope: !2939)
!2949 = !DILocation(line: 83, column: 5, scope: !2939)
!2950 = !DILocation(line: 84, column: 3, scope: !2930)
!2951 = !DILocation(line: 74, column: 32, scope: !2922)
!2952 = !DILocation(line: 73, column: 31, scope: !2918)
!2953 = !DILocation(line: 73, column: 2, scope: !2918)
!2954 = distinct !{!2954, !2920, !2955}
!2955 = !DILocation(line: 84, column: 3, scope: !2915)
!2956 = !DILocation(line: 85, column: 19, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 85, column: 6)
!2958 = !DILocation(line: 85, column: 24, scope: !2957)
!2959 = !DILocation(line: 85, column: 28, scope: !2957)
!2960 = !DILocation(line: 85, column: 6, scope: !2957)
!2961 = !DILocation(line: 85, column: 6, scope: !2897)
!2962 = !DILocation(line: 86, column: 14, scope: !2957)
!2963 = !DILocation(line: 86, column: 3, scope: !2957)
!2964 = !DILocation(line: 87, column: 6, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 87, column: 6)
!2966 = !DILocation(line: 87, column: 11, scope: !2965)
!2967 = !DILocation(line: 87, column: 17, scope: !2965)
!2968 = !DILocation(line: 87, column: 6, scope: !2897)
!2969 = !DILocation(line: 88, column: 14, scope: !2965)
!2970 = !DILocation(line: 88, column: 3, scope: !2965)
!2971 = !DILocation(line: 89, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 89, column: 6)
!2973 = !DILocation(line: 89, column: 11, scope: !2972)
!2974 = !DILocation(line: 89, column: 17, scope: !2972)
!2975 = !DILocation(line: 89, column: 6, scope: !2897)
!2976 = !DILocation(line: 90, column: 14, scope: !2972)
!2977 = !DILocation(line: 90, column: 3, scope: !2972)
!2978 = !DILocation(line: 91, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 91, column: 6)
!2980 = !DILocation(line: 91, column: 11, scope: !2979)
!2981 = !DILocation(line: 91, column: 17, scope: !2979)
!2982 = !DILocation(line: 91, column: 6, scope: !2897)
!2983 = !DILocation(line: 92, column: 14, scope: !2979)
!2984 = !DILocation(line: 92, column: 3, scope: !2979)
!2985 = !DILocation(line: 93, column: 6, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 93, column: 6)
!2987 = !DILocation(line: 93, column: 11, scope: !2986)
!2988 = !DILocation(line: 93, column: 17, scope: !2986)
!2989 = !DILocation(line: 93, column: 6, scope: !2897)
!2990 = !DILocation(line: 94, column: 14, scope: !2986)
!2991 = !DILocation(line: 94, column: 3, scope: !2986)
!2992 = !DILocation(line: 95, column: 6, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 95, column: 6)
!2994 = !DILocation(line: 95, column: 11, scope: !2993)
!2995 = !DILocation(line: 95, column: 17, scope: !2993)
!2996 = !DILocation(line: 95, column: 6, scope: !2897)
!2997 = !DILocation(line: 96, column: 14, scope: !2993)
!2998 = !DILocation(line: 96, column: 3, scope: !2993)
!2999 = !DILocation(line: 97, column: 13, scope: !2897)
!3000 = !DILocation(line: 97, column: 2, scope: !2897)
!3001 = !DILocation(line: 98, column: 1, scope: !2897)
!3002 = distinct !DISubprogram(name: "pnp_print_dma", scope: !3, file: !3, line: 100, type: !3003, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !2156, !129, !3005}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!3006 = !DILocalVariable(name: "buffer", arg: 1, scope: !3002, file: !3, line: 100, type: !2156)
!3007 = !DILocation(line: 100, column: 47, scope: !3002)
!3008 = !DILocalVariable(name: "space", arg: 2, scope: !3002, file: !3, line: 100, type: !129)
!3009 = !DILocation(line: 100, column: 61, scope: !3002)
!3010 = !DILocalVariable(name: "dma", arg: 3, scope: !3002, file: !3, line: 101, type: !3005)
!3011 = !DILocation(line: 101, column: 22, scope: !3002)
!3012 = !DILocalVariable(name: "first", scope: !3002, file: !3, line: 103, type: !113)
!3013 = !DILocation(line: 103, column: 6, scope: !3002)
!3014 = !DILocalVariable(name: "i", scope: !3002, file: !3, line: 103, type: !113)
!3015 = !DILocation(line: 103, column: 17, scope: !3002)
!3016 = !DILocalVariable(name: "s", scope: !3002, file: !3, line: 104, type: !129)
!3017 = !DILocation(line: 104, column: 8, scope: !3002)
!3018 = !DILocation(line: 106, column: 13, scope: !3002)
!3019 = !DILocation(line: 106, column: 31, scope: !3002)
!3020 = !DILocation(line: 106, column: 2, scope: !3002)
!3021 = !DILocation(line: 107, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 107, column: 2)
!3023 = !DILocation(line: 107, column: 7, scope: !3022)
!3024 = !DILocation(line: 107, column: 14, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 107, column: 2)
!3026 = !DILocation(line: 107, column: 16, scope: !3025)
!3027 = !DILocation(line: 107, column: 2, scope: !3022)
!3028 = !DILocation(line: 108, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 108, column: 7)
!3030 = !DILocation(line: 108, column: 12, scope: !3029)
!3031 = !DILocation(line: 108, column: 24, scope: !3029)
!3032 = !DILocation(line: 108, column: 21, scope: !3029)
!3033 = !DILocation(line: 108, column: 16, scope: !3029)
!3034 = !DILocation(line: 108, column: 7, scope: !3025)
!3035 = !DILocation(line: 109, column: 9, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 109, column: 8)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 108, column: 28)
!3038 = !DILocation(line: 109, column: 8, scope: !3037)
!3039 = !DILocation(line: 110, column: 16, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 109, column: 16)
!3041 = !DILocation(line: 110, column: 5, scope: !3040)
!3042 = !DILocation(line: 111, column: 4, scope: !3040)
!3043 = !DILocation(line: 112, column: 11, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 111, column: 11)
!3045 = !DILocation(line: 114, column: 15, scope: !3037)
!3046 = !DILocation(line: 114, column: 29, scope: !3037)
!3047 = !DILocation(line: 114, column: 4, scope: !3037)
!3048 = !DILocation(line: 115, column: 3, scope: !3037)
!3049 = !DILocation(line: 108, column: 25, scope: !3029)
!3050 = !DILocation(line: 107, column: 22, scope: !3025)
!3051 = !DILocation(line: 107, column: 2, scope: !3025)
!3052 = distinct !{!3052, !3027, !3053}
!3053 = !DILocation(line: 115, column: 3, scope: !3022)
!3054 = !DILocation(line: 116, column: 7, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 116, column: 6)
!3056 = !DILocation(line: 116, column: 12, scope: !3055)
!3057 = !DILocation(line: 116, column: 6, scope: !3002)
!3058 = !DILocation(line: 117, column: 14, scope: !3055)
!3059 = !DILocation(line: 117, column: 3, scope: !3055)
!3060 = !DILocation(line: 118, column: 10, scope: !3002)
!3061 = !DILocation(line: 118, column: 15, scope: !3002)
!3062 = !DILocation(line: 118, column: 21, scope: !3002)
!3063 = !DILocation(line: 118, column: 2, scope: !3002)
!3064 = !DILocation(line: 120, column: 5, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 118, column: 49)
!3066 = !DILocation(line: 121, column: 3, scope: !3065)
!3067 = !DILocation(line: 123, column: 5, scope: !3065)
!3068 = !DILocation(line: 124, column: 3, scope: !3065)
!3069 = !DILocation(line: 126, column: 5, scope: !3065)
!3070 = !DILocation(line: 127, column: 2, scope: !3065)
!3071 = !DILocation(line: 128, column: 13, scope: !3002)
!3072 = !DILocation(line: 128, column: 28, scope: !3002)
!3073 = !DILocation(line: 128, column: 2, scope: !3002)
!3074 = !DILocation(line: 129, column: 6, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 129, column: 6)
!3076 = !DILocation(line: 129, column: 11, scope: !3075)
!3077 = !DILocation(line: 129, column: 17, scope: !3075)
!3078 = !DILocation(line: 129, column: 6, scope: !3002)
!3079 = !DILocation(line: 130, column: 14, scope: !3075)
!3080 = !DILocation(line: 130, column: 3, scope: !3075)
!3081 = !DILocation(line: 131, column: 6, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 131, column: 6)
!3083 = !DILocation(line: 131, column: 11, scope: !3082)
!3084 = !DILocation(line: 131, column: 17, scope: !3082)
!3085 = !DILocation(line: 131, column: 6, scope: !3002)
!3086 = !DILocation(line: 132, column: 14, scope: !3082)
!3087 = !DILocation(line: 132, column: 3, scope: !3082)
!3088 = !DILocation(line: 133, column: 6, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 133, column: 6)
!3090 = !DILocation(line: 133, column: 11, scope: !3089)
!3091 = !DILocation(line: 133, column: 17, scope: !3089)
!3092 = !DILocation(line: 133, column: 6, scope: !3002)
!3093 = !DILocation(line: 134, column: 14, scope: !3089)
!3094 = !DILocation(line: 134, column: 3, scope: !3089)
!3095 = !DILocation(line: 135, column: 10, scope: !3002)
!3096 = !DILocation(line: 135, column: 15, scope: !3002)
!3097 = !DILocation(line: 135, column: 21, scope: !3002)
!3098 = !DILocation(line: 135, column: 2, scope: !3002)
!3099 = !DILocation(line: 137, column: 5, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 135, column: 50)
!3101 = !DILocation(line: 138, column: 3, scope: !3100)
!3102 = !DILocation(line: 140, column: 5, scope: !3100)
!3103 = !DILocation(line: 141, column: 3, scope: !3100)
!3104 = !DILocation(line: 143, column: 5, scope: !3100)
!3105 = !DILocation(line: 144, column: 3, scope: !3100)
!3106 = !DILocation(line: 146, column: 5, scope: !3100)
!3107 = !DILocation(line: 147, column: 3, scope: !3100)
!3108 = !DILocation(line: 149, column: 13, scope: !3002)
!3109 = !DILocation(line: 149, column: 30, scope: !3002)
!3110 = !DILocation(line: 149, column: 2, scope: !3002)
!3111 = !DILocation(line: 150, column: 1, scope: !3002)
!3112 = distinct !DISubprogram(name: "test_bit", scope: !3113, file: !3113, line: 132, type: !3114, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3113 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!956, !164, !3116}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3118)
!3118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!3119 = !DILocalVariable(name: "nr", arg: 1, scope: !3120, file: !3121, line: 210, type: !164)
!3120 = distinct !DISubprogram(name: "variable_test_bit", scope: !3121, file: !3121, line: 210, type: !3114, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3121 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3122 = !DILocation(line: 210, column: 52, scope: !3120, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 135, column: 9, scope: !3112)
!3124 = !DILocalVariable(name: "addr", arg: 2, scope: !3120, file: !3121, line: 210, type: !3116)
!3125 = !DILocation(line: 210, column: 86, scope: !3120, inlinedAt: !3123)
!3126 = !DILocalVariable(name: "oldbit", scope: !3120, file: !3121, line: 212, type: !956)
!3127 = !DILocation(line: 212, column: 7, scope: !3120, inlinedAt: !3123)
!3128 = !DILocalVariable(name: "nr", arg: 1, scope: !3129, file: !3121, line: 204, type: !164)
!3129 = distinct !DISubprogram(name: "constant_test_bit", scope: !3121, file: !3121, line: 204, type: !3114, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3130 = !DILocation(line: 204, column: 52, scope: !3129, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 135, column: 9, scope: !3112)
!3132 = !DILocalVariable(name: "addr", arg: 2, scope: !3129, file: !3121, line: 204, type: !3116)
!3133 = !DILocation(line: 204, column: 86, scope: !3129, inlinedAt: !3131)
!3134 = !DILocalVariable(name: "v", arg: 1, scope: !3135, file: !3136, line: 69, type: !3139)
!3135 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3136, file: !3136, line: 69, type: !3137, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3136 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !3139, !176}
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3141)
!3141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3142 = !DILocation(line: 69, column: 73, scope: !3135, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 134, column: 2, scope: !3112)
!3144 = !DILocalVariable(name: "size", arg: 2, scope: !3135, file: !3136, line: 69, type: !176)
!3145 = !DILocation(line: 69, column: 83, scope: !3135, inlinedAt: !3143)
!3146 = !DILocalVariable(name: "nr", arg: 1, scope: !3112, file: !3113, line: 132, type: !164)
!3147 = !DILocation(line: 132, column: 34, scope: !3112)
!3148 = !DILocalVariable(name: "addr", arg: 2, scope: !3112, file: !3113, line: 132, type: !3116)
!3149 = !DILocation(line: 132, column: 68, scope: !3112)
!3150 = !DILocation(line: 134, column: 25, scope: !3112)
!3151 = !DILocation(line: 134, column: 32, scope: !3112)
!3152 = !DILocation(line: 134, column: 30, scope: !3112)
!3153 = !DILocation(line: 71, column: 19, scope: !3135, inlinedAt: !3143)
!3154 = !DILocation(line: 71, column: 22, scope: !3135, inlinedAt: !3143)
!3155 = !DILocation(line: 71, column: 2, scope: !3135, inlinedAt: !3143)
!3156 = !DILocation(line: 72, column: 2, scope: !3135, inlinedAt: !3143)
!3157 = !DILocation(line: 135, column: 9, scope: !3112)
!3158 = !DILocation(line: 206, column: 19, scope: !3129, inlinedAt: !3131)
!3159 = !DILocation(line: 206, column: 22, scope: !3129, inlinedAt: !3131)
!3160 = !DILocation(line: 206, column: 15, scope: !3129, inlinedAt: !3131)
!3161 = !DILocation(line: 207, column: 4, scope: !3129, inlinedAt: !3131)
!3162 = !DILocation(line: 207, column: 9, scope: !3129, inlinedAt: !3131)
!3163 = !DILocation(line: 207, column: 12, scope: !3129, inlinedAt: !3131)
!3164 = !DILocation(line: 206, column: 44, scope: !3129, inlinedAt: !3131)
!3165 = !DILocation(line: 207, column: 37, scope: !3129, inlinedAt: !3131)
!3166 = !DILocation(line: 217, column: 33, scope: !3120, inlinedAt: !3123)
!3167 = !DILocation(line: 217, column: 46, scope: !3120, inlinedAt: !3123)
!3168 = !DILocation(line: 214, column: 2, scope: !3120, inlinedAt: !3123)
!3169 = !{i32 -2147041242, i32 -2147041182}
!3170 = !DILocation(line: 219, column: 9, scope: !3120, inlinedAt: !3123)
!3171 = !DILocation(line: 135, column: 2, scope: !3112)
!3172 = distinct !DISubprogram(name: "bitmap_empty", scope: !3173, file: !3173, line: 382, type: !3174, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3173 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!113, !3176, !7}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!3178 = !DILocalVariable(name: "src", arg: 1, scope: !3172, file: !3173, line: 382, type: !3176)
!3179 = !DILocation(line: 382, column: 53, scope: !3172)
!3180 = !DILocalVariable(name: "nbits", arg: 2, scope: !3172, file: !3173, line: 382, type: !7)
!3181 = !DILocation(line: 382, column: 67, scope: !3172)
!3182 = !DILocation(line: 384, column: 6, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3172, file: !3173, line: 384, column: 6)
!3184 = !DILocation(line: 384, column: 6, scope: !3172)
!3185 = !DILocation(line: 385, column: 14, scope: !3183)
!3186 = !DILocation(line: 385, column: 13, scope: !3183)
!3187 = !DILocation(line: 385, column: 20, scope: !3183)
!3188 = !DILocation(line: 385, column: 18, scope: !3183)
!3189 = !DILocation(line: 385, column: 10, scope: !3183)
!3190 = !DILocation(line: 385, column: 3, scope: !3183)
!3191 = !DILocation(line: 387, column: 24, scope: !3172)
!3192 = !DILocation(line: 387, column: 29, scope: !3172)
!3193 = !DILocation(line: 387, column: 9, scope: !3172)
!3194 = !DILocation(line: 387, column: 39, scope: !3172)
!3195 = !DILocation(line: 387, column: 36, scope: !3172)
!3196 = !DILocation(line: 387, column: 2, scope: !3172)
!3197 = !DILocation(line: 388, column: 1, scope: !3172)
!3198 = distinct !DISubprogram(name: "kasan_check_read", scope: !3199, file: !3199, line: 34, type: !3200, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3199 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!956, !3139, !7}
!3202 = !DILocalVariable(name: "p", arg: 1, scope: !3198, file: !3199, line: 34, type: !3139)
!3203 = !DILocation(line: 34, column: 58, scope: !3198)
!3204 = !DILocalVariable(name: "size", arg: 2, scope: !3198, file: !3199, line: 34, type: !7)
!3205 = !DILocation(line: 34, column: 74, scope: !3198)
!3206 = !DILocation(line: 36, column: 2, scope: !3198)
!3207 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3208, file: !3208, line: 178, type: !3209, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3208 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !3139, !176, !113}
!3211 = !DILocalVariable(name: "ptr", arg: 1, scope: !3207, file: !3208, line: 178, type: !3139)
!3212 = !DILocation(line: 178, column: 60, scope: !3207)
!3213 = !DILocalVariable(name: "size", arg: 2, scope: !3207, file: !3208, line: 178, type: !176)
!3214 = !DILocation(line: 178, column: 72, scope: !3207)
!3215 = !DILocalVariable(name: "type", arg: 3, scope: !3207, file: !3208, line: 179, type: !113)
!3216 = !DILocation(line: 179, column: 15, scope: !3207)
!3217 = !DILocation(line: 179, column: 23, scope: !3207)
!3218 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 440, type: !2125, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !101)
!3219 = !DILocalVariable(name: "dmdev", arg: 1, scope: !3218, file: !3, line: 440, type: !1545)
!3220 = !DILocation(line: 440, column: 39, scope: !3218)
!3221 = !DILocalVariable(name: "attr", arg: 2, scope: !3218, file: !3, line: 440, type: !2127)
!3222 = !DILocation(line: 440, column: 71, scope: !3218)
!3223 = !DILocalVariable(name: "buf", arg: 3, scope: !3218, file: !3, line: 441, type: !129)
!3224 = !DILocation(line: 441, column: 16, scope: !3218)
!3225 = !DILocalVariable(name: "str", scope: !3218, file: !3, line: 443, type: !129)
!3226 = !DILocation(line: 443, column: 8, scope: !3218)
!3227 = !DILocation(line: 443, column: 14, scope: !3218)
!3228 = !DILocalVariable(name: "dev", scope: !3218, file: !3, line: 444, type: !57)
!3229 = !DILocation(line: 444, column: 18, scope: !3218)
!3230 = !DILocalVariable(name: "__mptr", scope: !3231, file: !3, line: 444, type: !56)
!3231 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 444, column: 24)
!3232 = !DILocation(line: 444, column: 24, scope: !3231)
!3233 = !DILocation(line: 444, column: 24, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 444, column: 24)
!3235 = !DILocalVariable(name: "pos", scope: !3218, file: !3, line: 445, type: !1955)
!3236 = !DILocation(line: 445, column: 17, scope: !3218)
!3237 = !DILocation(line: 445, column: 23, scope: !3218)
!3238 = !DILocation(line: 445, column: 28, scope: !3218)
!3239 = !DILocation(line: 447, column: 2, scope: !3218)
!3240 = !DILocation(line: 447, column: 9, scope: !3218)
!3241 = !DILocation(line: 448, column: 18, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 447, column: 14)
!3243 = !DILocation(line: 448, column: 31, scope: !3242)
!3244 = !DILocation(line: 448, column: 36, scope: !3242)
!3245 = !DILocation(line: 448, column: 10, scope: !3242)
!3246 = !DILocation(line: 448, column: 7, scope: !3242)
!3247 = !DILocation(line: 449, column: 9, scope: !3242)
!3248 = !DILocation(line: 449, column: 14, scope: !3242)
!3249 = !DILocation(line: 449, column: 7, scope: !3242)
!3250 = distinct !{!3250, !3239, !3251}
!3251 = !DILocation(line: 450, column: 2, scope: !3218)
!3252 = !DILocation(line: 451, column: 10, scope: !3218)
!3253 = !DILocation(line: 451, column: 16, scope: !3218)
!3254 = !DILocation(line: 451, column: 14, scope: !3218)
!3255 = !DILocation(line: 451, column: 2, scope: !3218)
