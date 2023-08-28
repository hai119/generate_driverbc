; ModuleID = '../bcout/drivers/pnp/manager.llvm.bc'
source_filename = "drivers/pnp/manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, {}*, {}*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.39 }
%union.anon.39 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@pnp_res_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pnp_res_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pnp_res_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@pnp_debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"configuration not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to assign resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"activation not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"pnp_start_dev\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"activation failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"activated\0A\00", align 1
@console_suspend_enabled = external dso_local global i8, align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"disabling not supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"disable failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"pnp_assign_resources, try dependent set %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"pnp_assign_resources failed (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"pnp_assign_resources succeeded\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"  io %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  io %d disabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"  couldn't assign io %d (min %#llx max %#llx)\0A\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"  mem %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"  mem %d disabled\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"  couldn't assign mem %d (min %#llx max %#llx)\0A\00", align 1
@pnp_assign_irq.xtab = internal global [16 x i16] [i16 5, i16 10, i16 11, i16 12, i16 9, i16 14, i16 15, i16 7, i16 3, i16 4, i16 13, i16 0, i16 1, i16 6, i16 8, i16 2], align 16, !dbg !138
@.str.19 = private unnamed_addr constant [39 x i8] c"  irq %d already set to %d flags %#lx\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"  irq %d disabled\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"  irq %d disabled (optional)\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"  couldn't assign irq %d\0A\00", align 1
@pnp_assign_dma.xtab = internal global [8 x i16] [i16 1, i16 3, i16 5, i16 6, i16 7, i16 0, i16 2, i16 4], align 16, !dbg !2137
@.str.23 = private unnamed_addr constant [39 x i8] c"  dma %d already set to %d flags %#lx\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"  dma %d disabled\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"  couldn't assign dma %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_init_resources(%struct.pnp_dev* %dev) #0 !dbg !2149 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2150, metadata !DIExpression()), !dbg !2151
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2152
  call void @pnp_free_resources(%struct.pnp_dev* %0) #5, !dbg !2153
  ret void, !dbg !2154
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @pnp_free_resources(%struct.pnp_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_auto_config_dev(%struct.pnp_dev* %dev) #0 !dbg !2155 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2156, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2158, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2160, metadata !DIExpression()), !dbg !2161
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2162
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 13, !dbg !2162
  %1 = load i32, i32* %active, align 8, !dbg !2162
  %tobool = icmp ne i32 %1, 0, !dbg !2162
  br i1 %tobool, label %if.then, label %land.lhs.true, !dbg !2162

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2162
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 14, !dbg !2162
  %3 = load i32, i32* %capabilities, align 4, !dbg !2162
  %and = and i32 %3, 8, !dbg !2162
  %tobool1 = icmp ne i32 %and, 0, !dbg !2162
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !2164

if.then:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @pnp_debug, align 4, !dbg !2165
  %tobool2 = icmp ne i32 %4, 0, !dbg !2165
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2169

if.then3:                                         ; preds = %if.then
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2165
  %dev4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 0, !dbg !2165
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2165
  br label %if.end, !dbg !2165

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2165
  %6 = load i32, i32* %tmp, align 4, !dbg !2169
  store i32 -19, i32* %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

if.end5:                                          ; preds = %land.lhs.true
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2171
  %call = call i32 @pnp_assign_resources(%struct.pnp_dev* %7, i32 0) #5, !dbg !2172
  store i32 %call, i32* %ret, align 4, !dbg !2173
  %8 = load i32, i32* %ret, align 4, !dbg !2174
  %cmp = icmp eq i32 %8, 0, !dbg !2176
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2177

if.then6:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !2178
  br label %return, !dbg !2178

if.end7:                                          ; preds = %if.end5
  store i32 1, i32* %i, align 4, !dbg !2179
  br label %for.cond, !dbg !2181

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, i32* %i, align 4, !dbg !2182
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2184
  %num_dependent_sets = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 15, !dbg !2185
  %11 = load i32, i32* %num_dependent_sets, align 8, !dbg !2185
  %cmp8 = icmp ult i32 %9, %11, !dbg !2186
  br i1 %cmp8, label %for.body, label %for.end, !dbg !2187

for.body:                                         ; preds = %for.cond
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2188
  %13 = load i32, i32* %i, align 4, !dbg !2190
  %call9 = call i32 @pnp_assign_resources(%struct.pnp_dev* %12, i32 %13) #5, !dbg !2191
  store i32 %call9, i32* %ret, align 4, !dbg !2192
  %14 = load i32, i32* %ret, align 4, !dbg !2193
  %cmp10 = icmp eq i32 %14, 0, !dbg !2195
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2196

if.then11:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !2197
  br label %return, !dbg !2197

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !2198

for.inc:                                          ; preds = %if.end12
  %15 = load i32, i32* %i, align 4, !dbg !2199
  %inc = add i32 %15, 1, !dbg !2199
  store i32 %inc, i32* %i, align 4, !dbg !2199
  br label %for.cond, !dbg !2200, !llvm.loop !2201

for.end:                                          ; preds = %for.cond
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2203
  %dev13 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 0, !dbg !2203
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2203
  %17 = load i32, i32* %ret, align 4, !dbg !2204
  store i32 %17, i32* %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

return:                                           ; preds = %for.end, %if.then11, %if.then6, %if.end
  %18 = load i32, i32* %retval, align 4, !dbg !2206
  ret i32 %18, !dbg !2206
}

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_assign_resources(%struct.pnp_dev* %dev, i32 %set) #0 !dbg !2207 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %set.addr = alloca i32, align 4
  %option = alloca %struct.pnp_option*, align 8
  %nport = alloca i32, align 4
  %nmem = alloca i32, align 4
  %nirq = alloca i32, align 4
  %ndma = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.pnp_option*, align 8
  %__mptr25 = alloca i8*, align 8
  %tmp30 = alloca %struct.pnp_option*, align 8
  %tmp38 = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !2212, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.declare(metadata i32* %nport, metadata !2216, metadata !DIExpression()), !dbg !2217
  store i32 0, i32* %nport, align 4, !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %nmem, metadata !2218, metadata !DIExpression()), !dbg !2219
  store i32 0, i32* %nmem, align 4, !dbg !2219
  call void @llvm.dbg.declare(metadata i32* %nirq, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i32 0, i32* %nirq, align 4, !dbg !2221
  call void @llvm.dbg.declare(metadata i32* %ndma, metadata !2222, metadata !DIExpression()), !dbg !2223
  store i32 0, i32* %ndma, align 4, !dbg !2223
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2224, metadata !DIExpression()), !dbg !2225
  store i32 0, i32* %ret, align 4, !dbg !2225
  %0 = load i32, i32* @pnp_debug, align 4, !dbg !2226
  %tobool = icmp ne i32 %0, 0, !dbg !2226
  br i1 %tobool, label %if.then, label %if.end, !dbg !2229

if.then:                                          ; preds = %entry
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2226
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !2226
  %2 = load i32, i32* %set.addr, align 4, !dbg !2226
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %2) #6, !dbg !2226
  br label %if.end, !dbg !2226

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %tmp, align 4, !dbg !2226
  %3 = load i32, i32* %tmp, align 4, !dbg !2229
  call void @mutex_lock(%struct.mutex* @pnp_res_mutex) #5, !dbg !2230
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2231
  call void @pnp_clean_resource_table(%struct.pnp_dev* %4) #5, !dbg !2232
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2233, metadata !DIExpression()), !dbg !2236
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2236
  %options = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 17, !dbg !2236
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %options, i32 0, i32 0, !dbg !2236
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2236
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2236
  store i8* %7, i8** %__mptr, align 8, !dbg !2236
  br label %do.body, !dbg !2236

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2237

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2236
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !2236
  %9 = bitcast i8* %add.ptr to %struct.pnp_option*, !dbg !2236
  store %struct.pnp_option* %9, %struct.pnp_option** %tmp2, align 8, !dbg !2237
  %10 = load %struct.pnp_option*, %struct.pnp_option** %tmp2, align 8, !dbg !2236
  store %struct.pnp_option* %10, %struct.pnp_option** %option, align 8, !dbg !2239
  br label %for.cond, !dbg !2239

for.cond:                                         ; preds = %do.end29, %do.end
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2240
  %list = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %11, i32 0, i32 0, !dbg !2240
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2240
  %options3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 17, !dbg !2240
  %cmp = icmp eq %struct.list_head* %list, %options3, !dbg !2240
  %lnot = xor i1 %cmp, true, !dbg !2240
  br i1 %lnot, label %for.body, label %for.end, !dbg !2239

for.body:                                         ; preds = %for.cond
  %13 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2242
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %13) #5, !dbg !2245
  %tobool4 = icmp ne i32 %call, 0, !dbg !2245
  br i1 %tobool4, label %land.lhs.true, label %if.end8, !dbg !2246

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2247
  %call5 = call i32 @pnp_option_set(%struct.pnp_option* %14) #5, !dbg !2248
  %15 = load i32, i32* %set.addr, align 4, !dbg !2249
  %cmp6 = icmp ne i32 %call5, %15, !dbg !2250
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2251

if.then7:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !2252

if.end8:                                          ; preds = %land.lhs.true, %for.body
  %16 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2253
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %16, i32 0, i32 2, !dbg !2254
  %17 = load i64, i64* %type, align 8, !dbg !2254
  switch i64 %17, label %sw.default [
    i64 256, label %sw.bb
    i64 512, label %sw.bb10
    i64 1024, label %sw.bb14
    i64 2048, label %sw.bb18
  ], !dbg !2255

sw.bb:                                            ; preds = %if.end8
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2256
  %19 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2258
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %19, i32 0, i32 3, !dbg !2259
  %port = bitcast %union.anon.39* %u to %struct.pnp_port*, !dbg !2260
  %20 = load i32, i32* %nport, align 4, !dbg !2261
  %inc = add i32 %20, 1, !dbg !2261
  store i32 %inc, i32* %nport, align 4, !dbg !2261
  %call9 = call i32 @pnp_assign_port(%struct.pnp_dev* %18, %struct.pnp_port* %port, i32 %20) #5, !dbg !2262
  store i32 %call9, i32* %ret, align 4, !dbg !2263
  br label %sw.epilog, !dbg !2264

sw.bb10:                                          ; preds = %if.end8
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2265
  %22 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2266
  %u11 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %22, i32 0, i32 3, !dbg !2267
  %mem = bitcast %union.anon.39* %u11 to %struct.pnp_mem*, !dbg !2268
  %23 = load i32, i32* %nmem, align 4, !dbg !2269
  %inc12 = add i32 %23, 1, !dbg !2269
  store i32 %inc12, i32* %nmem, align 4, !dbg !2269
  %call13 = call i32 @pnp_assign_mem(%struct.pnp_dev* %21, %struct.pnp_mem* %mem, i32 %23) #5, !dbg !2270
  store i32 %call13, i32* %ret, align 4, !dbg !2271
  br label %sw.epilog, !dbg !2272

sw.bb14:                                          ; preds = %if.end8
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2273
  %25 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2274
  %u15 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %25, i32 0, i32 3, !dbg !2275
  %irq = bitcast %union.anon.39* %u15 to %struct.pnp_irq*, !dbg !2276
  %26 = load i32, i32* %nirq, align 4, !dbg !2277
  %inc16 = add i32 %26, 1, !dbg !2277
  store i32 %inc16, i32* %nirq, align 4, !dbg !2277
  %call17 = call i32 @pnp_assign_irq(%struct.pnp_dev* %24, %struct.pnp_irq* %irq, i32 %26) #5, !dbg !2278
  store i32 %call17, i32* %ret, align 4, !dbg !2279
  br label %sw.epilog, !dbg !2280

sw.bb18:                                          ; preds = %if.end8
  %27 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2281
  %28 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2282
  %u19 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %28, i32 0, i32 3, !dbg !2283
  %dma = bitcast %union.anon.39* %u19 to %struct.pnp_dma*, !dbg !2284
  %29 = load i32, i32* %ndma, align 4, !dbg !2285
  %inc20 = add i32 %29, 1, !dbg !2285
  store i32 %inc20, i32* %ndma, align 4, !dbg !2285
  %call21 = call i32 @pnp_assign_dma(%struct.pnp_dev* %27, %struct.pnp_dma* %dma, i32 %29) #5, !dbg !2286
  store i32 %call21, i32* %ret, align 4, !dbg !2287
  br label %sw.epilog, !dbg !2288

sw.default:                                       ; preds = %if.end8
  store i32 -22, i32* %ret, align 4, !dbg !2289
  br label %sw.epilog, !dbg !2290

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb
  %30 = load i32, i32* %ret, align 4, !dbg !2291
  %cmp22 = icmp slt i32 %30, 0, !dbg !2293
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2294

if.then23:                                        ; preds = %sw.epilog
  br label %for.end, !dbg !2295

if.end24:                                         ; preds = %sw.epilog
  br label %for.inc, !dbg !2296

for.inc:                                          ; preds = %if.end24, %if.then7
  call void @llvm.dbg.declare(metadata i8** %__mptr25, metadata !2297, metadata !DIExpression()), !dbg !2299
  %31 = load %struct.pnp_option*, %struct.pnp_option** %option, align 8, !dbg !2299
  %list26 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %31, i32 0, i32 0, !dbg !2299
  %next27 = getelementptr inbounds %struct.list_head, %struct.list_head* %list26, i32 0, i32 0, !dbg !2299
  %32 = load %struct.list_head*, %struct.list_head** %next27, align 8, !dbg !2299
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !2299
  store i8* %33, i8** %__mptr25, align 8, !dbg !2299
  br label %do.body28, !dbg !2299

do.body28:                                        ; preds = %for.inc
  br label %do.end29, !dbg !2300

do.end29:                                         ; preds = %do.body28
  %34 = load i8*, i8** %__mptr25, align 8, !dbg !2299
  %add.ptr31 = getelementptr i8, i8* %34, i64 0, !dbg !2299
  %35 = bitcast i8* %add.ptr31 to %struct.pnp_option*, !dbg !2299
  store %struct.pnp_option* %35, %struct.pnp_option** %tmp30, align 8, !dbg !2300
  %36 = load %struct.pnp_option*, %struct.pnp_option** %tmp30, align 8, !dbg !2299
  store %struct.pnp_option* %36, %struct.pnp_option** %option, align 8, !dbg !2240
  br label %for.cond, !dbg !2240, !llvm.loop !2302

for.end:                                          ; preds = %if.then23, %for.cond
  call void @mutex_unlock(%struct.mutex* @pnp_res_mutex) #5, !dbg !2304
  %37 = load i32, i32* %ret, align 4, !dbg !2305
  %cmp32 = icmp slt i32 %37, 0, !dbg !2307
  br i1 %cmp32, label %if.then33, label %if.else, !dbg !2308

if.then33:                                        ; preds = %for.end
  %38 = load i32, i32* @pnp_debug, align 4, !dbg !2309
  %tobool34 = icmp ne i32 %38, 0, !dbg !2309
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !2313

if.then35:                                        ; preds = %if.then33
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2309
  %dev36 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %39, i32 0, i32 0, !dbg !2309
  %40 = load i32, i32* %ret, align 4, !dbg !2309
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %40) #6, !dbg !2309
  br label %if.end37, !dbg !2309

if.end37:                                         ; preds = %if.then35, %if.then33
  store i32 0, i32* %tmp38, align 4, !dbg !2309
  %41 = load i32, i32* %tmp38, align 4, !dbg !2313
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2314
  call void @pnp_clean_resource_table(%struct.pnp_dev* %42) #5, !dbg !2315
  br label %if.end39, !dbg !2316

if.else:                                          ; preds = %for.end
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2317
  call void @dbg_pnp_show_resources(%struct.pnp_dev* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !2318
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.end37
  %44 = load i32, i32* %ret, align 4, !dbg !2319
  ret i32 %44, !dbg !2320
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_start_dev(%struct.pnp_dev* %dev) #0 !dbg !2321 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2322, metadata !DIExpression()), !dbg !2323
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2324
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 8, !dbg !2324
  %1 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !2324
  %set = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %1, i32 0, i32 3, !dbg !2324
  %2 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %set, align 8, !dbg !2324
  %tobool = icmp ne i32 (%struct.pnp_dev*)* %2, null, !dbg !2324
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !2324

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2324
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 14, !dbg !2324
  %4 = load i32, i32* %capabilities, align 4, !dbg !2324
  %and = and i32 %4, 2, !dbg !2324
  %tobool1 = icmp ne i32 %and, 0, !dbg !2324
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !2326

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2327
  %tobool2 = icmp ne i32 %5, 0, !dbg !2327
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2331

if.then3:                                         ; preds = %if.then
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2327
  %dev4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2327
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2327
  br label %if.end, !dbg !2327

if.end:                                           ; preds = %if.then3, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2327
  %7 = load i32, i32* %tmp, align 4, !dbg !2331
  store i32 -22, i32* %retval, align 4, !dbg !2332
  br label %return, !dbg !2332

if.end5:                                          ; preds = %land.lhs.true
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2333
  call void @dbg_pnp_show_resources(%struct.pnp_dev* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !2334
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2335
  %protocol6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 8, !dbg !2337
  %10 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol6, align 8, !dbg !2337
  %set7 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %10, i32 0, i32 3, !dbg !2338
  %11 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %set7, align 8, !dbg !2338
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2339
  %call = call i32 %11(%struct.pnp_dev* %12) #5, !dbg !2335
  %cmp = icmp slt i32 %call, 0, !dbg !2340
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !2341

if.then8:                                         ; preds = %if.end5
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2342
  %dev9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 0, !dbg !2342
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2342
  store i32 -5, i32* %retval, align 4, !dbg !2344
  br label %return, !dbg !2344

if.end10:                                         ; preds = %if.end5
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2345
  %dev11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0, !dbg !2345
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2345
  store i32 0, i32* %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

return:                                           ; preds = %if.end10, %if.then8, %if.end
  %15 = load i32, i32* %retval, align 4, !dbg !2347
  ret i32 %15, !dbg !2347
}

; Function Attrs: noredzone
declare dso_local void @dbg_pnp_show_resources(%struct.pnp_dev*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_stop_dev(%struct.pnp_dev* %dev) #0 !dbg !2348 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2349, metadata !DIExpression()), !dbg !2350
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2351
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 8, !dbg !2351
  %1 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !2351
  %disable = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %1, i32 0, i32 4, !dbg !2351
  %2 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %disable, align 8, !dbg !2351
  %tobool = icmp ne i32 (%struct.pnp_dev*)* %2, null, !dbg !2351
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !2351

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2351
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 14, !dbg !2351
  %4 = load i32, i32* %capabilities, align 4, !dbg !2351
  %and = and i32 %4, 4, !dbg !2351
  %tobool1 = icmp ne i32 %and, 0, !dbg !2351
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !2351

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2351
  %capabilities3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 14, !dbg !2351
  %6 = load i32, i32* %capabilities3, align 4, !dbg !2351
  %and4 = and i32 %6, 32, !dbg !2351
  %tobool5 = icmp ne i32 %and4, 0, !dbg !2351
  br i1 %tobool5, label %lor.lhs.false, label %if.end10, !dbg !2351

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %7 = load i8, i8* @console_suspend_enabled, align 1, !dbg !2351
  %tobool6 = trunc i8 %7 to i1, !dbg !2351
  br i1 %tobool6, label %if.end10, label %if.then, !dbg !2353

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %8 = load i32, i32* @pnp_debug, align 4, !dbg !2354
  %tobool7 = icmp ne i32 %8, 0, !dbg !2354
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !2358

if.then8:                                         ; preds = %if.then
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2354
  %dev9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 0, !dbg !2354
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2354
  br label %if.end, !dbg !2354

if.end:                                           ; preds = %if.then8, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2354
  %10 = load i32, i32* %tmp, align 4, !dbg !2358
  store i32 -22, i32* %retval, align 4, !dbg !2359
  br label %return, !dbg !2359

if.end10:                                         ; preds = %lor.lhs.false, %land.lhs.true2
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2360
  %protocol11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 8, !dbg !2362
  %12 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol11, align 8, !dbg !2362
  %disable12 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %12, i32 0, i32 4, !dbg !2363
  %13 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %disable12, align 8, !dbg !2363
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2364
  %call = call i32 %13(%struct.pnp_dev* %14) #5, !dbg !2360
  %cmp = icmp slt i32 %call, 0, !dbg !2365
  br i1 %cmp, label %if.then13, label %if.end15, !dbg !2366

if.then13:                                        ; preds = %if.end10
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2367
  %dev14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 0, !dbg !2367
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2367
  store i32 -5, i32* %retval, align 4, !dbg !2369
  br label %return, !dbg !2369

if.end15:                                         ; preds = %if.end10
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2370
  %dev16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 0, !dbg !2370
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2370
  store i32 0, i32* %retval, align 4, !dbg !2371
  br label %return, !dbg !2371

return:                                           ; preds = %if.end15, %if.then13, %if.end
  %17 = load i32, i32* %retval, align 4, !dbg !2372
  ret i32 %17, !dbg !2372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_activate_dev(%struct.pnp_dev* %dev) #0 !dbg !2373 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %error = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2376, metadata !DIExpression()), !dbg !2377
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2378
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 13, !dbg !2380
  %1 = load i32, i32* %active, align 8, !dbg !2380
  %tobool = icmp ne i32 %1, 0, !dbg !2378
  br i1 %tobool, label %if.then, label %if.end, !dbg !2381

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2382
  br label %return, !dbg !2382

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2383
  %call = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %2) #5, !dbg !2385
  %tobool1 = icmp ne i32 %call, 0, !dbg !2385
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2386

if.then2:                                         ; preds = %if.end
  store i32 -16, i32* %retval, align 4, !dbg !2387
  br label %return, !dbg !2387

if.end3:                                          ; preds = %if.end
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2388
  %call4 = call i32 @pnp_start_dev(%struct.pnp_dev* %3) #5, !dbg !2389
  store i32 %call4, i32* %error, align 4, !dbg !2390
  %4 = load i32, i32* %error, align 4, !dbg !2391
  %tobool5 = icmp ne i32 %4, 0, !dbg !2391
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2393

if.then6:                                         ; preds = %if.end3
  %5 = load i32, i32* %error, align 4, !dbg !2394
  store i32 %5, i32* %retval, align 4, !dbg !2395
  br label %return, !dbg !2395

if.end7:                                          ; preds = %if.end3
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2396
  %active8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 13, !dbg !2397
  store i32 1, i32* %active8, align 8, !dbg !2398
  store i32 0, i32* %retval, align 4, !dbg !2399
  br label %return, !dbg !2399

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2400
  ret i32 %7, !dbg !2400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_disable_dev(%struct.pnp_dev* %dev) #0 !dbg !2401 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %error = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2404, metadata !DIExpression()), !dbg !2405
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2406
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 13, !dbg !2408
  %1 = load i32, i32* %active, align 8, !dbg !2408
  %tobool = icmp ne i32 %1, 0, !dbg !2406
  br i1 %tobool, label %if.end, label %if.then, !dbg !2409

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2410
  br label %return, !dbg !2410

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2411
  %call = call i32 @pnp_stop_dev(%struct.pnp_dev* %2) #5, !dbg !2412
  store i32 %call, i32* %error, align 4, !dbg !2413
  %3 = load i32, i32* %error, align 4, !dbg !2414
  %tobool1 = icmp ne i32 %3, 0, !dbg !2414
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2416

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %error, align 4, !dbg !2417
  store i32 %4, i32* %retval, align 4, !dbg !2418
  br label %return, !dbg !2418

if.end3:                                          ; preds = %if.end
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2419
  %active4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 13, !dbg !2420
  store i32 0, i32* %active4, align 8, !dbg !2421
  call void @mutex_lock(%struct.mutex* @pnp_res_mutex) #5, !dbg !2422
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2423
  call void @pnp_clean_resource_table(%struct.pnp_dev* %6) #5, !dbg !2424
  call void @mutex_unlock(%struct.mutex* @pnp_res_mutex) #5, !dbg !2425
  store i32 0, i32* %retval, align 4, !dbg !2426
  br label %return, !dbg !2426

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2427
  ret i32 %7, !dbg !2427
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_clean_resource_table(%struct.pnp_dev* %dev) #0 !dbg !2428 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %tmp = alloca %struct.pnp_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.pnp_resource*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.pnp_resource*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !2431, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %tmp, metadata !2433, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2435, metadata !DIExpression()), !dbg !2438
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2438
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 16, !dbg !2438
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !2438
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2438
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2438
  store i8* %2, i8** %__mptr, align 8, !dbg !2438
  br label %do.body, !dbg !2438

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2439

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2438
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2438
  %4 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !2438
  store %struct.pnp_resource* %4, %struct.pnp_resource** %tmp1, align 8, !dbg !2439
  %5 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp1, align 8, !dbg !2438
  store %struct.pnp_resource* %5, %struct.pnp_resource** %pnp_res, align 8, !dbg !2441
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2442, metadata !DIExpression()), !dbg !2444
  %6 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2444
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %6, i32 0, i32 0, !dbg !2444
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !2444
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2444
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2444
  store i8* %8, i8** %__mptr2, align 8, !dbg !2444
  br label %do.body4, !dbg !2444

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2445

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !2444
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !2444
  %10 = bitcast i8* %add.ptr7 to %struct.pnp_resource*, !dbg !2444
  store %struct.pnp_resource* %10, %struct.pnp_resource** %tmp6, align 8, !dbg !2445
  %11 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp6, align 8, !dbg !2444
  store %struct.pnp_resource* %11, %struct.pnp_resource** %tmp, align 8, !dbg !2441
  br label %for.cond, !dbg !2441

for.cond:                                         ; preds = %do.end14, %do.end5
  %12 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2447
  %list8 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %12, i32 0, i32 0, !dbg !2447
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2447
  %resources9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 16, !dbg !2447
  %cmp = icmp eq %struct.list_head* %list8, %resources9, !dbg !2447
  %lnot = xor i1 %cmp, true, !dbg !2447
  br i1 %lnot, label %for.body, label %for.end, !dbg !2441

for.body:                                         ; preds = %for.cond
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2449
  %res = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %14, i32 0, i32 1, !dbg !2452
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !2453
  %15 = load i64, i64* %flags, align 8, !dbg !2453
  %and = and i64 %15, 1073741824, !dbg !2454
  %tobool = icmp ne i64 %and, 0, !dbg !2454
  br i1 %tobool, label %if.then, label %if.end, !dbg !2455

if.then:                                          ; preds = %for.body
  %16 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2456
  call void @pnp_free_resource(%struct.pnp_resource* %16) #5, !dbg !2457
  br label %if.end, !dbg !2457

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2458

for.inc:                                          ; preds = %if.end
  %17 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !2447
  store %struct.pnp_resource* %17, %struct.pnp_resource** %pnp_res, align 8, !dbg !2447
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !2459, metadata !DIExpression()), !dbg !2461
  %18 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp, align 8, !dbg !2461
  %list11 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %18, i32 0, i32 0, !dbg !2461
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %list11, i32 0, i32 0, !dbg !2461
  %19 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !2461
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !2461
  store i8* %20, i8** %__mptr10, align 8, !dbg !2461
  br label %do.body13, !dbg !2461

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !2462

do.end14:                                         ; preds = %do.body13
  %21 = load i8*, i8** %__mptr10, align 8, !dbg !2461
  %add.ptr16 = getelementptr i8, i8* %21, i64 0, !dbg !2461
  %22 = bitcast i8* %add.ptr16 to %struct.pnp_resource*, !dbg !2461
  store %struct.pnp_resource* %22, %struct.pnp_resource** %tmp15, align 8, !dbg !2462
  %23 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp15, align 8, !dbg !2461
  store %struct.pnp_resource* %23, %struct.pnp_resource** %tmp, align 8, !dbg !2447
  br label %for.cond, !dbg !2447, !llvm.loop !2464

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2466
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_is_dependent(%struct.pnp_option* %option) #0 !dbg !2467 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2470, metadata !DIExpression()), !dbg !2471
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2472
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2473
  %1 = load i32, i32* %flags, align 8, !dbg !2473
  %and = and i32 %1, -2147483648, !dbg !2474
  %tobool = icmp ne i32 %and, 0, !dbg !2472
  %2 = zext i1 %tobool to i64, !dbg !2472
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2472
  ret i32 %cond, !dbg !2475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_set(%struct.pnp_option* %option) #0 !dbg !2476 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2479, metadata !DIExpression()), !dbg !2480
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2481
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2482
  %1 = load i32, i32* %flags, align 8, !dbg !2482
  %shr = lshr i32 %1, 12, !dbg !2483
  %and = and i32 %shr, 65535, !dbg !2484
  ret i32 %and, !dbg !2485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_assign_port(%struct.pnp_dev* %dev, %struct.pnp_port* %rule, i32 %idx) #0 !dbg !2486 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %rule.addr = alloca %struct.pnp_port*, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %local_res = alloca %struct.resource, align 8
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2490, metadata !DIExpression()), !dbg !2491
  store %struct.pnp_port* %rule, %struct.pnp_port** %rule.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %rule.addr, metadata !2492, metadata !DIExpression()), !dbg !2493
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.declare(metadata %struct.resource* %local_res, metadata !2498, metadata !DIExpression()), !dbg !2499
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2500
  %1 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2501
  %flags = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %1, i32 0, i32 4, !dbg !2502
  %2 = load i8, i8* %flags, align 8, !dbg !2502
  %3 = load i32, i32* %idx.addr, align 4, !dbg !2503
  %call = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %0, i8 zeroext %2, i64 256, i32 %3) #5, !dbg !2504
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2505
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2506
  %tobool = icmp ne %struct.resource* %4, null, !dbg !2506
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2508

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2509
  %tobool1 = icmp ne i32 %5, 0, !dbg !2509
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2513

if.then2:                                         ; preds = %if.then
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2509
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2509
  %7 = load i32, i32* %idx.addr, align 4, !dbg !2509
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2509
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !2509
  %9 = load i64, i64* %start, align 8, !dbg !2509
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2509
  %end = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !2509
  %11 = load i64, i64* %end, align 8, !dbg !2509
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2509
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !2509
  %13 = load i64, i64* %flags4, align 8, !dbg !2509
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %7, i64 %9, i64 %11, i64 %13) #6, !dbg !2509
  br label %if.end, !dbg !2509

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2509
  %14 = load i32, i32* %tmp, align 4, !dbg !2513
  store i32 0, i32* %retval, align 4, !dbg !2514
  br label %return, !dbg !2514

if.end5:                                          ; preds = %entry
  store %struct.resource* %local_res, %struct.resource** %res, align 8, !dbg !2515
  %15 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2516
  %flags6 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %15, i32 0, i32 4, !dbg !2517
  %16 = load i8, i8* %flags6, align 8, !dbg !2517
  %conv = zext i8 %16 to i32, !dbg !2516
  %or = or i32 %conv, 1073741824, !dbg !2518
  %conv7 = sext i32 %or to i64, !dbg !2516
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2519
  %flags8 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3, !dbg !2520
  store i64 %conv7, i64* %flags8, align 8, !dbg !2521
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2522
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0, !dbg !2523
  store i64 0, i64* %start9, align 8, !dbg !2524
  %19 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2525
  %end10 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1, !dbg !2526
  store i64 0, i64* %end10, align 8, !dbg !2527
  %20 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2528
  %size = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %20, i32 0, i32 3, !dbg !2530
  %21 = load i64, i64* %size, align 8, !dbg !2530
  %tobool11 = icmp ne i64 %21, 0, !dbg !2528
  br i1 %tobool11, label %if.end20, label %if.then12, !dbg !2531

if.then12:                                        ; preds = %if.end5
  %22 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2532
  %flags13 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 3, !dbg !2534
  %23 = load i64, i64* %flags13, align 8, !dbg !2535
  %or14 = or i64 %23, 268435456, !dbg !2535
  store i64 %or14, i64* %flags13, align 8, !dbg !2535
  %24 = load i32, i32* @pnp_debug, align 4, !dbg !2536
  %tobool15 = icmp ne i32 %24, 0, !dbg !2536
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2539

if.then16:                                        ; preds = %if.then12
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2536
  %dev17 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 0, !dbg !2536
  %26 = load i32, i32* %idx.addr, align 4, !dbg !2536
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %26) #6, !dbg !2536
  br label %if.end18, !dbg !2536

if.end18:                                         ; preds = %if.then16, %if.then12
  store i32 0, i32* %tmp19, align 4, !dbg !2536
  %27 = load i32, i32* %tmp19, align 4, !dbg !2539
  br label %__add, !dbg !2540

if.end20:                                         ; preds = %if.end5
  %28 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2541
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %28, i32 0, i32 0, !dbg !2542
  %29 = load i64, i64* %min, align 8, !dbg !2542
  %30 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2543
  %start21 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0, !dbg !2544
  store i64 %29, i64* %start21, align 8, !dbg !2545
  %31 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2546
  %start22 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0, !dbg !2547
  %32 = load i64, i64* %start22, align 8, !dbg !2547
  %33 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2548
  %size23 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %33, i32 0, i32 3, !dbg !2549
  %34 = load i64, i64* %size23, align 8, !dbg !2549
  %add = add i64 %32, %34, !dbg !2550
  %sub = sub i64 %add, 1, !dbg !2551
  %35 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2552
  %end24 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1, !dbg !2553
  store i64 %sub, i64* %end24, align 8, !dbg !2554
  br label %while.cond, !dbg !2555

while.cond:                                       ; preds = %if.end46, %if.end20
  %36 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2556
  %37 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2557
  %call25 = call i32 @pnp_check_port(%struct.pnp_dev* %36, %struct.resource* %37) #5, !dbg !2558
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2559
  %lnot = xor i1 %tobool26, true, !dbg !2559
  br i1 %lnot, label %while.body, label %while.end, !dbg !2555

while.body:                                       ; preds = %while.cond
  %38 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2560
  %align = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %38, i32 0, i32 2, !dbg !2562
  %39 = load i64, i64* %align, align 8, !dbg !2562
  %40 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2563
  %start27 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0, !dbg !2564
  %41 = load i64, i64* %start27, align 8, !dbg !2565
  %add28 = add i64 %41, %39, !dbg !2565
  store i64 %add28, i64* %start27, align 8, !dbg !2565
  %42 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2566
  %start29 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0, !dbg !2567
  %43 = load i64, i64* %start29, align 8, !dbg !2567
  %44 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2568
  %size30 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %44, i32 0, i32 3, !dbg !2569
  %45 = load i64, i64* %size30, align 8, !dbg !2569
  %add31 = add i64 %43, %45, !dbg !2570
  %sub32 = sub i64 %add31, 1, !dbg !2571
  %46 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2572
  %end33 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 1, !dbg !2573
  store i64 %sub32, i64* %end33, align 8, !dbg !2574
  %47 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2575
  %start34 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0, !dbg !2577
  %48 = load i64, i64* %start34, align 8, !dbg !2577
  %49 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2578
  %max = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %49, i32 0, i32 1, !dbg !2579
  %50 = load i64, i64* %max, align 8, !dbg !2579
  %cmp = icmp ugt i64 %48, %50, !dbg !2580
  br i1 %cmp, label %if.then38, label %lor.lhs.false, !dbg !2581

lor.lhs.false:                                    ; preds = %while.body
  %51 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2582
  %align36 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %51, i32 0, i32 2, !dbg !2583
  %52 = load i64, i64* %align36, align 8, !dbg !2583
  %tobool37 = icmp ne i64 %52, 0, !dbg !2582
  br i1 %tobool37, label %if.end46, label %if.then38, !dbg !2584

if.then38:                                        ; preds = %lor.lhs.false, %while.body
  %53 = load i32, i32* @pnp_debug, align 4, !dbg !2585
  %tobool39 = icmp ne i32 %53, 0, !dbg !2585
  br i1 %tobool39, label %if.then40, label %if.end44, !dbg !2589

if.then40:                                        ; preds = %if.then38
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2585
  %dev41 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %54, i32 0, i32 0, !dbg !2585
  %55 = load i32, i32* %idx.addr, align 4, !dbg !2585
  %56 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2585
  %min42 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %56, i32 0, i32 0, !dbg !2585
  %57 = load i64, i64* %min42, align 8, !dbg !2585
  %58 = load %struct.pnp_port*, %struct.pnp_port** %rule.addr, align 8, !dbg !2585
  %max43 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %58, i32 0, i32 1, !dbg !2585
  %59 = load i64, i64* %max43, align 8, !dbg !2585
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 %55, i64 %57, i64 %59) #6, !dbg !2585
  br label %if.end44, !dbg !2585

if.end44:                                         ; preds = %if.then40, %if.then38
  store i32 0, i32* %tmp45, align 4, !dbg !2585
  %60 = load i32, i32* %tmp45, align 4, !dbg !2589
  store i32 -16, i32* %retval, align 4, !dbg !2590
  br label %return, !dbg !2590

if.end46:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2555, !llvm.loop !2591

while.end:                                        ; preds = %while.cond
  br label %__add, !dbg !2555

__add:                                            ; preds = %while.end, %if.end18
  call void @llvm.dbg.label(metadata !2593), !dbg !2594
  %61 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2595
  %62 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2596
  %start47 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0, !dbg !2597
  %63 = load i64, i64* %start47, align 8, !dbg !2597
  %64 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2598
  %end48 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 1, !dbg !2599
  %65 = load i64, i64* %end48, align 8, !dbg !2599
  %66 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2600
  %flags49 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 3, !dbg !2601
  %67 = load i64, i64* %flags49, align 8, !dbg !2601
  %conv50 = trunc i64 %67 to i32, !dbg !2600
  %call51 = call %struct.pnp_resource* @pnp_add_io_resource(%struct.pnp_dev* %61, i64 %63, i64 %65, i32 %conv50) #5, !dbg !2602
  store i32 0, i32* %retval, align 4, !dbg !2603
  br label %return, !dbg !2603

return:                                           ; preds = %__add, %if.end44, %if.end
  %68 = load i32, i32* %retval, align 4, !dbg !2604
  ret i32 %68, !dbg !2604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_assign_mem(%struct.pnp_dev* %dev, %struct.pnp_mem* %rule, i32 %idx) #0 !dbg !2605 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %rule.addr = alloca %struct.pnp_mem*, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %local_res = alloca %struct.resource, align 8
  %tmp = alloca i32, align 4
  %tmp42 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  store %struct.pnp_mem* %rule, %struct.pnp_mem** %rule.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_mem** %rule.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2613, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.declare(metadata %struct.resource* %local_res, metadata !2617, metadata !DIExpression()), !dbg !2618
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2619
  %1 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2620
  %flags = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %1, i32 0, i32 4, !dbg !2621
  %2 = load i8, i8* %flags, align 8, !dbg !2621
  %3 = load i32, i32* %idx.addr, align 4, !dbg !2622
  %call = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %0, i8 zeroext %2, i64 512, i32 %3) #5, !dbg !2623
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2624
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2625
  %tobool = icmp ne %struct.resource* %4, null, !dbg !2625
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2627

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2628
  %tobool1 = icmp ne i32 %5, 0, !dbg !2628
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2632

if.then2:                                         ; preds = %if.then
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2628
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2628
  %7 = load i32, i32* %idx.addr, align 4, !dbg !2628
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2628
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !2628
  %9 = load i64, i64* %start, align 8, !dbg !2628
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2628
  %end = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1, !dbg !2628
  %11 = load i64, i64* %end, align 8, !dbg !2628
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2628
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !2628
  %13 = load i64, i64* %flags4, align 8, !dbg !2628
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 %7, i64 %9, i64 %11, i64 %13) #6, !dbg !2628
  br label %if.end, !dbg !2628

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2628
  %14 = load i32, i32* %tmp, align 4, !dbg !2632
  store i32 0, i32* %retval, align 4, !dbg !2633
  br label %return, !dbg !2633

if.end5:                                          ; preds = %entry
  store %struct.resource* %local_res, %struct.resource** %res, align 8, !dbg !2634
  %15 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2635
  %flags6 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %15, i32 0, i32 4, !dbg !2636
  %16 = load i8, i8* %flags6, align 8, !dbg !2636
  %conv = zext i8 %16 to i32, !dbg !2635
  %or = or i32 %conv, 1073741824, !dbg !2637
  %conv7 = sext i32 %or to i64, !dbg !2635
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2638
  %flags8 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3, !dbg !2639
  store i64 %conv7, i64* %flags8, align 8, !dbg !2640
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2641
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0, !dbg !2642
  store i64 0, i64* %start9, align 8, !dbg !2643
  %19 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2644
  %end10 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1, !dbg !2645
  store i64 0, i64* %end10, align 8, !dbg !2646
  %20 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2647
  %flags11 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %20, i32 0, i32 4, !dbg !2649
  %21 = load i8, i8* %flags11, align 8, !dbg !2649
  %conv12 = zext i8 %21 to i32, !dbg !2647
  %and = and i32 %conv12, 1, !dbg !2650
  %tobool13 = icmp ne i32 %and, 0, !dbg !2650
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2651

if.then14:                                        ; preds = %if.end5
  %22 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2652
  %flags15 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 3, !dbg !2653
  %23 = load i64, i64* %flags15, align 8, !dbg !2654
  %or16 = or i64 %23, 16384, !dbg !2654
  store i64 %or16, i64* %flags15, align 8, !dbg !2654
  br label %if.end17, !dbg !2652

if.end17:                                         ; preds = %if.then14, %if.end5
  %24 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2655
  %flags18 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %24, i32 0, i32 4, !dbg !2657
  %25 = load i8, i8* %flags18, align 8, !dbg !2657
  %conv19 = zext i8 %25 to i32, !dbg !2655
  %and20 = and i32 %conv19, 4, !dbg !2658
  %tobool21 = icmp ne i32 %and20, 0, !dbg !2658
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !2659

if.then22:                                        ; preds = %if.end17
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2660
  %flags23 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 3, !dbg !2661
  %27 = load i64, i64* %flags23, align 8, !dbg !2662
  %or24 = or i64 %27, 65536, !dbg !2662
  store i64 %or24, i64* %flags23, align 8, !dbg !2662
  br label %if.end25, !dbg !2660

if.end25:                                         ; preds = %if.then22, %if.end17
  %28 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2663
  %flags26 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %28, i32 0, i32 4, !dbg !2665
  %29 = load i8, i8* %flags26, align 8, !dbg !2665
  %conv27 = zext i8 %29 to i32, !dbg !2663
  %and28 = and i32 %conv27, 32, !dbg !2666
  %tobool29 = icmp ne i32 %and28, 0, !dbg !2666
  br i1 %tobool29, label %if.then30, label %if.end33, !dbg !2667

if.then30:                                        ; preds = %if.end25
  %30 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2668
  %flags31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 3, !dbg !2669
  %31 = load i64, i64* %flags31, align 8, !dbg !2670
  %or32 = or i64 %31, 131072, !dbg !2670
  store i64 %or32, i64* %flags31, align 8, !dbg !2670
  br label %if.end33, !dbg !2668

if.end33:                                         ; preds = %if.then30, %if.end25
  %32 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2671
  %size = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %32, i32 0, i32 3, !dbg !2673
  %33 = load i64, i64* %size, align 8, !dbg !2673
  %tobool34 = icmp ne i64 %33, 0, !dbg !2671
  br i1 %tobool34, label %if.end43, label %if.then35, !dbg !2674

if.then35:                                        ; preds = %if.end33
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2675
  %flags36 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 3, !dbg !2677
  %35 = load i64, i64* %flags36, align 8, !dbg !2678
  %or37 = or i64 %35, 268435456, !dbg !2678
  store i64 %or37, i64* %flags36, align 8, !dbg !2678
  %36 = load i32, i32* @pnp_debug, align 4, !dbg !2679
  %tobool38 = icmp ne i32 %36, 0, !dbg !2679
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !2682

if.then39:                                        ; preds = %if.then35
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2679
  %dev40 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %37, i32 0, i32 0, !dbg !2679
  %38 = load i32, i32* %idx.addr, align 4, !dbg !2679
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %38) #6, !dbg !2679
  br label %if.end41, !dbg !2679

if.end41:                                         ; preds = %if.then39, %if.then35
  store i32 0, i32* %tmp42, align 4, !dbg !2679
  %39 = load i32, i32* %tmp42, align 4, !dbg !2682
  br label %__add, !dbg !2683

if.end43:                                         ; preds = %if.end33
  %40 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2684
  %min = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %40, i32 0, i32 0, !dbg !2685
  %41 = load i64, i64* %min, align 8, !dbg !2685
  %42 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2686
  %start44 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0, !dbg !2687
  store i64 %41, i64* %start44, align 8, !dbg !2688
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2689
  %start45 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0, !dbg !2690
  %44 = load i64, i64* %start45, align 8, !dbg !2690
  %45 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2691
  %size46 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %45, i32 0, i32 3, !dbg !2692
  %46 = load i64, i64* %size46, align 8, !dbg !2692
  %add = add i64 %44, %46, !dbg !2693
  %sub = sub i64 %add, 1, !dbg !2694
  %47 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2695
  %end47 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1, !dbg !2696
  store i64 %sub, i64* %end47, align 8, !dbg !2697
  br label %while.cond, !dbg !2698

while.cond:                                       ; preds = %if.end69, %if.end43
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2699
  %49 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2700
  %call48 = call i32 @pnp_check_mem(%struct.pnp_dev* %48, %struct.resource* %49) #5, !dbg !2701
  %tobool49 = icmp ne i32 %call48, 0, !dbg !2702
  %lnot = xor i1 %tobool49, true, !dbg !2702
  br i1 %lnot, label %while.body, label %while.end, !dbg !2698

while.body:                                       ; preds = %while.cond
  %50 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2703
  %align = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %50, i32 0, i32 2, !dbg !2705
  %51 = load i64, i64* %align, align 8, !dbg !2705
  %52 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2706
  %start50 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0, !dbg !2707
  %53 = load i64, i64* %start50, align 8, !dbg !2708
  %add51 = add i64 %53, %51, !dbg !2708
  store i64 %add51, i64* %start50, align 8, !dbg !2708
  %54 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2709
  %start52 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0, !dbg !2710
  %55 = load i64, i64* %start52, align 8, !dbg !2710
  %56 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2711
  %size53 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %56, i32 0, i32 3, !dbg !2712
  %57 = load i64, i64* %size53, align 8, !dbg !2712
  %add54 = add i64 %55, %57, !dbg !2713
  %sub55 = sub i64 %add54, 1, !dbg !2714
  %58 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2715
  %end56 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 1, !dbg !2716
  store i64 %sub55, i64* %end56, align 8, !dbg !2717
  %59 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2718
  %start57 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0, !dbg !2720
  %60 = load i64, i64* %start57, align 8, !dbg !2720
  %61 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2721
  %max = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %61, i32 0, i32 1, !dbg !2722
  %62 = load i64, i64* %max, align 8, !dbg !2722
  %cmp = icmp ugt i64 %60, %62, !dbg !2723
  br i1 %cmp, label %if.then61, label %lor.lhs.false, !dbg !2724

lor.lhs.false:                                    ; preds = %while.body
  %63 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2725
  %align59 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %63, i32 0, i32 2, !dbg !2726
  %64 = load i64, i64* %align59, align 8, !dbg !2726
  %tobool60 = icmp ne i64 %64, 0, !dbg !2725
  br i1 %tobool60, label %if.end69, label %if.then61, !dbg !2727

if.then61:                                        ; preds = %lor.lhs.false, %while.body
  %65 = load i32, i32* @pnp_debug, align 4, !dbg !2728
  %tobool62 = icmp ne i32 %65, 0, !dbg !2728
  br i1 %tobool62, label %if.then63, label %if.end67, !dbg !2732

if.then63:                                        ; preds = %if.then61
  %66 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2728
  %dev64 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %66, i32 0, i32 0, !dbg !2728
  %67 = load i32, i32* %idx.addr, align 4, !dbg !2728
  %68 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2728
  %min65 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %68, i32 0, i32 0, !dbg !2728
  %69 = load i64, i64* %min65, align 8, !dbg !2728
  %70 = load %struct.pnp_mem*, %struct.pnp_mem** %rule.addr, align 8, !dbg !2728
  %max66 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %70, i32 0, i32 1, !dbg !2728
  %71 = load i64, i64* %max66, align 8, !dbg !2728
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev64, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 %67, i64 %69, i64 %71) #6, !dbg !2728
  br label %if.end67, !dbg !2728

if.end67:                                         ; preds = %if.then63, %if.then61
  store i32 0, i32* %tmp68, align 4, !dbg !2728
  %72 = load i32, i32* %tmp68, align 4, !dbg !2732
  store i32 -16, i32* %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

if.end69:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !2698, !llvm.loop !2734

while.end:                                        ; preds = %while.cond
  br label %__add, !dbg !2698

__add:                                            ; preds = %while.end, %if.end41
  call void @llvm.dbg.label(metadata !2736), !dbg !2737
  %73 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2738
  %74 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2739
  %start70 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0, !dbg !2740
  %75 = load i64, i64* %start70, align 8, !dbg !2740
  %76 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2741
  %end71 = getelementptr inbounds %struct.resource, %struct.resource* %76, i32 0, i32 1, !dbg !2742
  %77 = load i64, i64* %end71, align 8, !dbg !2742
  %78 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2743
  %flags72 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 3, !dbg !2744
  %79 = load i64, i64* %flags72, align 8, !dbg !2744
  %conv73 = trunc i64 %79 to i32, !dbg !2743
  %call74 = call %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev* %73, i64 %75, i64 %77, i32 %conv73) #5, !dbg !2745
  store i32 0, i32* %retval, align 4, !dbg !2746
  br label %return, !dbg !2746

return:                                           ; preds = %__add, %if.end67, %if.end
  %80 = load i32, i32* %retval, align 4, !dbg !2747
  ret i32 %80, !dbg !2747
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_assign_irq(%struct.pnp_dev* %dev, %struct.pnp_irq* %rule, i32 %idx) #0 !dbg !140 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %rule.addr = alloca %struct.pnp_irq*, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %local_res = alloca %struct.resource, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  store %struct.pnp_irq* %rule, %struct.pnp_irq** %rule.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %rule.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.declare(metadata %struct.resource* %local_res, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2758, metadata !DIExpression()), !dbg !2759
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2760
  %1 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2761
  %flags = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %1, i32 0, i32 1, !dbg !2762
  %2 = load i8, i8* %flags, align 8, !dbg !2762
  %3 = load i32, i32* %idx.addr, align 4, !dbg !2763
  %call = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %0, i8 zeroext %2, i64 1024, i32 %3) #5, !dbg !2764
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2765
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2766
  %tobool = icmp ne %struct.resource* %4, null, !dbg !2766
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2768

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2769
  %tobool1 = icmp ne i32 %5, 0, !dbg !2769
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2773

if.then2:                                         ; preds = %if.then
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2769
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2769
  %7 = load i32, i32* %idx.addr, align 4, !dbg !2769
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2769
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !2769
  %9 = load i64, i64* %start, align 8, !dbg !2769
  %conv = trunc i64 %9 to i32, !dbg !2769
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2769
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3, !dbg !2769
  %11 = load i64, i64* %flags4, align 8, !dbg !2769
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i32 %7, i32 %conv, i64 %11) #6, !dbg !2769
  br label %if.end, !dbg !2769

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2769
  %12 = load i32, i32* %tmp, align 4, !dbg !2773
  store i32 0, i32* %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

if.end5:                                          ; preds = %entry
  store %struct.resource* %local_res, %struct.resource** %res, align 8, !dbg !2775
  %13 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2776
  %flags6 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %13, i32 0, i32 1, !dbg !2777
  %14 = load i8, i8* %flags6, align 8, !dbg !2777
  %conv7 = zext i8 %14 to i32, !dbg !2776
  %or = or i32 %conv7, 1073741824, !dbg !2778
  %conv8 = sext i32 %or to i64, !dbg !2776
  %15 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2779
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 3, !dbg !2780
  store i64 %conv8, i64* %flags9, align 8, !dbg !2781
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2782
  %start10 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0, !dbg !2783
  store i64 -1, i64* %start10, align 8, !dbg !2784
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2785
  %end = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1, !dbg !2786
  store i64 -1, i64* %end, align 8, !dbg !2787
  %18 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2788
  %map = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %18, i32 0, i32 0, !dbg !2790
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map, i32 0, i32 0, !dbg !2791
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !2788
  %call11 = call i32 @bitmap_empty(i64* %arraydecay, i32 256) #5, !dbg !2792
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2792
  br i1 %tobool12, label %if.then13, label %if.end21, !dbg !2793

if.then13:                                        ; preds = %if.end5
  %19 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2794
  %flags14 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 3, !dbg !2796
  %20 = load i64, i64* %flags14, align 8, !dbg !2797
  %or15 = or i64 %20, 268435456, !dbg !2797
  store i64 %or15, i64* %flags14, align 8, !dbg !2797
  %21 = load i32, i32* @pnp_debug, align 4, !dbg !2798
  %tobool16 = icmp ne i32 %21, 0, !dbg !2798
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !2801

if.then17:                                        ; preds = %if.then13
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2798
  %dev18 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 0, !dbg !2798
  %23 = load i32, i32* %idx.addr, align 4, !dbg !2798
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %23) #6, !dbg !2798
  br label %if.end19, !dbg !2798

if.end19:                                         ; preds = %if.then17, %if.then13
  store i32 0, i32* %tmp20, align 4, !dbg !2798
  %24 = load i32, i32* %tmp20, align 4, !dbg !2801
  br label %__add, !dbg !2802

if.end21:                                         ; preds = %if.end5
  %25 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2803
  %map22 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %25, i32 0, i32 0, !dbg !2804
  %bits23 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map22, i32 0, i32 0, !dbg !2805
  %arraydecay24 = getelementptr inbounds [4 x i64], [4 x i64]* %bits23, i64 0, i64 0, !dbg !2803
  %call25 = call i64 @find_next_bit(i64* %arraydecay24, i64 256, i64 16) #5, !dbg !2806
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2807
  %start26 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0, !dbg !2808
  store i64 %call25, i64* %start26, align 8, !dbg !2809
  %27 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2810
  %start27 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0, !dbg !2812
  %28 = load i64, i64* %start27, align 8, !dbg !2812
  %cmp = icmp ult i64 %28, 256, !dbg !2813
  br i1 %cmp, label %if.then29, label %if.end32, !dbg !2814

if.then29:                                        ; preds = %if.end21
  %29 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2815
  %start30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0, !dbg !2817
  %30 = load i64, i64* %start30, align 8, !dbg !2817
  %31 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2818
  %end31 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 1, !dbg !2819
  store i64 %30, i64* %end31, align 8, !dbg !2820
  br label %__add, !dbg !2821

if.end32:                                         ; preds = %if.end21
  store i32 0, i32* %i, align 4, !dbg !2822
  br label %for.cond, !dbg !2824

for.cond:                                         ; preds = %for.inc, %if.end32
  %32 = load i32, i32* %i, align 4, !dbg !2825
  %cmp33 = icmp slt i32 %32, 16, !dbg !2827
  br i1 %cmp33, label %for.body, label %for.end, !dbg !2828

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4, !dbg !2829
  %idxprom = sext i32 %33 to i64, !dbg !2832
  %arrayidx = getelementptr [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %idxprom, !dbg !2832
  %34 = load i16, i16* %arrayidx, align 2, !dbg !2832
  %conv35 = zext i16 %34 to i64, !dbg !2832
  %35 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2833
  %map36 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %35, i32 0, i32 0, !dbg !2834
  %bits37 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map36, i32 0, i32 0, !dbg !2835
  %arraydecay38 = getelementptr inbounds [4 x i64], [4 x i64]* %bits37, i64 0, i64 0, !dbg !2833
  %call39 = call zeroext i1 @test_bit(i64 %conv35, i64* %arraydecay38) #5, !dbg !2836
  br i1 %call39, label %if.then40, label %if.end50, !dbg !2837

if.then40:                                        ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !2838
  %idxprom41 = sext i32 %36 to i64, !dbg !2840
  %arrayidx42 = getelementptr [16 x i16], [16 x i16]* @pnp_assign_irq.xtab, i64 0, i64 %idxprom41, !dbg !2840
  %37 = load i16, i16* %arrayidx42, align 2, !dbg !2840
  %conv43 = zext i16 %37 to i64, !dbg !2840
  %38 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2841
  %end44 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 1, !dbg !2842
  store i64 %conv43, i64* %end44, align 8, !dbg !2843
  %39 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2844
  %start45 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0, !dbg !2845
  store i64 %conv43, i64* %start45, align 8, !dbg !2846
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2847
  %41 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2849
  %call46 = call i32 @pnp_check_irq(%struct.pnp_dev* %40, %struct.resource* %41) #5, !dbg !2850
  %tobool47 = icmp ne i32 %call46, 0, !dbg !2850
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !2851

if.then48:                                        ; preds = %if.then40
  br label %__add, !dbg !2852

if.end49:                                         ; preds = %if.then40
  br label %if.end50, !dbg !2853

if.end50:                                         ; preds = %if.end49, %for.body
  br label %for.inc, !dbg !2854

for.inc:                                          ; preds = %if.end50
  %42 = load i32, i32* %i, align 4, !dbg !2855
  %inc = add i32 %42, 1, !dbg !2855
  store i32 %inc, i32* %i, align 4, !dbg !2855
  br label %for.cond, !dbg !2856, !llvm.loop !2857

for.end:                                          ; preds = %for.cond
  %43 = load %struct.pnp_irq*, %struct.pnp_irq** %rule.addr, align 8, !dbg !2859
  %flags51 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %43, i32 0, i32 1, !dbg !2861
  %44 = load i8, i8* %flags51, align 8, !dbg !2861
  %conv52 = zext i8 %44 to i32, !dbg !2859
  %and = and i32 %conv52, 32, !dbg !2862
  %tobool53 = icmp ne i32 %and, 0, !dbg !2862
  br i1 %tobool53, label %if.then54, label %if.end64, !dbg !2863

if.then54:                                        ; preds = %for.end
  %45 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2864
  %start55 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0, !dbg !2866
  store i64 -1, i64* %start55, align 8, !dbg !2867
  %46 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2868
  %end56 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 1, !dbg !2869
  store i64 -1, i64* %end56, align 8, !dbg !2870
  %47 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2871
  %flags57 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 3, !dbg !2872
  %48 = load i64, i64* %flags57, align 8, !dbg !2873
  %or58 = or i64 %48, 268435456, !dbg !2873
  store i64 %or58, i64* %flags57, align 8, !dbg !2873
  %49 = load i32, i32* @pnp_debug, align 4, !dbg !2874
  %tobool59 = icmp ne i32 %49, 0, !dbg !2874
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !2877

if.then60:                                        ; preds = %if.then54
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2874
  %dev61 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %50, i32 0, i32 0, !dbg !2874
  %51 = load i32, i32* %idx.addr, align 4, !dbg !2874
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %51) #6, !dbg !2874
  br label %if.end62, !dbg !2874

if.end62:                                         ; preds = %if.then60, %if.then54
  store i32 0, i32* %tmp63, align 4, !dbg !2874
  %52 = load i32, i32* %tmp63, align 4, !dbg !2877
  br label %__add, !dbg !2878

if.end64:                                         ; preds = %for.end
  %53 = load i32, i32* @pnp_debug, align 4, !dbg !2879
  %tobool65 = icmp ne i32 %53, 0, !dbg !2879
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !2882

if.then66:                                        ; preds = %if.end64
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2879
  %dev67 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %54, i32 0, i32 0, !dbg !2879
  %55 = load i32, i32* %idx.addr, align 4, !dbg !2879
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %55) #6, !dbg !2879
  br label %if.end68, !dbg !2879

if.end68:                                         ; preds = %if.then66, %if.end64
  store i32 0, i32* %tmp69, align 4, !dbg !2879
  %56 = load i32, i32* %tmp69, align 4, !dbg !2882
  store i32 -16, i32* %retval, align 4, !dbg !2883
  br label %return, !dbg !2883

__add:                                            ; preds = %if.end62, %if.then48, %if.then29, %if.end19
  call void @llvm.dbg.label(metadata !2884), !dbg !2885
  %57 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2886
  %58 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2887
  %start70 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0, !dbg !2888
  %59 = load i64, i64* %start70, align 8, !dbg !2888
  %conv71 = trunc i64 %59 to i32, !dbg !2887
  %60 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2889
  %flags72 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 3, !dbg !2890
  %61 = load i64, i64* %flags72, align 8, !dbg !2890
  %conv73 = trunc i64 %61 to i32, !dbg !2889
  %call74 = call %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev* %57, i32 %conv71, i32 %conv73) #5, !dbg !2891
  store i32 0, i32* %retval, align 4, !dbg !2892
  br label %return, !dbg !2892

return:                                           ; preds = %__add, %if.end68, %if.end
  %62 = load i32, i32* %retval, align 4, !dbg !2893
  ret i32 %62, !dbg !2893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_assign_dma(%struct.pnp_dev* %dev, %struct.pnp_dma* %rule, i32 %idx) #0 !dbg !2139 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %rule.addr = alloca %struct.pnp_dma*, align 8
  %idx.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %local_res = alloca %struct.resource, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  store %struct.pnp_dma* %rule, %struct.pnp_dma** %rule.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %rule.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata %struct.resource* %local_res, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2906
  %1 = load %struct.pnp_dma*, %struct.pnp_dma** %rule.addr, align 8, !dbg !2907
  %flags = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %1, i32 0, i32 1, !dbg !2908
  %2 = load i8, i8* %flags, align 1, !dbg !2908
  %3 = load i32, i32* %idx.addr, align 4, !dbg !2909
  %call = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %0, i8 zeroext %2, i64 2048, i32 %3) #5, !dbg !2910
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2911
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2912
  %tobool = icmp ne %struct.resource* %4, null, !dbg !2912
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2914

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2915
  %tobool1 = icmp ne i32 %5, 0, !dbg !2915
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2919

if.then2:                                         ; preds = %if.then
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2915
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2915
  %7 = load i32, i32* %idx.addr, align 4, !dbg !2915
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2915
  %start = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !2915
  %9 = load i64, i64* %start, align 8, !dbg !2915
  %conv = trunc i64 %9 to i32, !dbg !2915
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2915
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3, !dbg !2915
  %11 = load i64, i64* %flags4, align 8, !dbg !2915
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i32 %7, i32 %conv, i64 %11) #6, !dbg !2915
  br label %if.end, !dbg !2915

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2915
  %12 = load i32, i32* %tmp, align 4, !dbg !2919
  store i32 0, i32* %retval, align 4, !dbg !2920
  br label %return, !dbg !2920

if.end5:                                          ; preds = %entry
  store %struct.resource* %local_res, %struct.resource** %res, align 8, !dbg !2921
  %13 = load %struct.pnp_dma*, %struct.pnp_dma** %rule.addr, align 8, !dbg !2922
  %flags6 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %13, i32 0, i32 1, !dbg !2923
  %14 = load i8, i8* %flags6, align 1, !dbg !2923
  %conv7 = zext i8 %14 to i32, !dbg !2922
  %or = or i32 %conv7, 1073741824, !dbg !2924
  %conv8 = sext i32 %or to i64, !dbg !2922
  %15 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2925
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 3, !dbg !2926
  store i64 %conv8, i64* %flags9, align 8, !dbg !2927
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2928
  %start10 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0, !dbg !2929
  store i64 -1, i64* %start10, align 8, !dbg !2930
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2931
  %end = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1, !dbg !2932
  store i64 -1, i64* %end, align 8, !dbg !2933
  %18 = load %struct.pnp_dma*, %struct.pnp_dma** %rule.addr, align 8, !dbg !2934
  %map = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %18, i32 0, i32 0, !dbg !2936
  %19 = load i8, i8* %map, align 1, !dbg !2936
  %tobool11 = icmp ne i8 %19, 0, !dbg !2934
  br i1 %tobool11, label %if.end20, label %if.then12, !dbg !2937

if.then12:                                        ; preds = %if.end5
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2938
  %flags13 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 3, !dbg !2940
  %21 = load i64, i64* %flags13, align 8, !dbg !2941
  %or14 = or i64 %21, 268435456, !dbg !2941
  store i64 %or14, i64* %flags13, align 8, !dbg !2941
  %22 = load i32, i32* @pnp_debug, align 4, !dbg !2942
  %tobool15 = icmp ne i32 %22, 0, !dbg !2942
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2945

if.then16:                                        ; preds = %if.then12
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2942
  %dev17 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %23, i32 0, i32 0, !dbg !2942
  %24 = load i32, i32* %idx.addr, align 4, !dbg !2942
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %24) #6, !dbg !2942
  br label %if.end18, !dbg !2942

if.end18:                                         ; preds = %if.then16, %if.then12
  store i32 0, i32* %tmp19, align 4, !dbg !2942
  %25 = load i32, i32* %tmp19, align 4, !dbg !2945
  br label %__add, !dbg !2946

if.end20:                                         ; preds = %if.end5
  store i32 0, i32* %i, align 4, !dbg !2947
  br label %for.cond, !dbg !2949

for.cond:                                         ; preds = %for.inc, %if.end20
  %26 = load i32, i32* %i, align 4, !dbg !2950
  %cmp = icmp slt i32 %26, 8, !dbg !2952
  br i1 %cmp, label %for.body, label %for.end, !dbg !2953

for.body:                                         ; preds = %for.cond
  %27 = load %struct.pnp_dma*, %struct.pnp_dma** %rule.addr, align 8, !dbg !2954
  %map22 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %27, i32 0, i32 0, !dbg !2957
  %28 = load i8, i8* %map22, align 1, !dbg !2957
  %conv23 = zext i8 %28 to i32, !dbg !2954
  %29 = load i32, i32* %i, align 4, !dbg !2958
  %idxprom = sext i32 %29 to i64, !dbg !2959
  %arrayidx = getelementptr [8 x i16], [8 x i16]* @pnp_assign_dma.xtab, i64 0, i64 %idxprom, !dbg !2959
  %30 = load i16, i16* %arrayidx, align 2, !dbg !2959
  %conv24 = zext i16 %30 to i32, !dbg !2959
  %shl = shl i32 1, %conv24, !dbg !2960
  %and = and i32 %conv23, %shl, !dbg !2961
  %tobool25 = icmp ne i32 %and, 0, !dbg !2961
  br i1 %tobool25, label %if.then26, label %if.end36, !dbg !2962

if.then26:                                        ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !dbg !2963
  %idxprom27 = sext i32 %31 to i64, !dbg !2965
  %arrayidx28 = getelementptr [8 x i16], [8 x i16]* @pnp_assign_dma.xtab, i64 0, i64 %idxprom27, !dbg !2965
  %32 = load i16, i16* %arrayidx28, align 2, !dbg !2965
  %conv29 = zext i16 %32 to i64, !dbg !2965
  %33 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2966
  %end30 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1, !dbg !2967
  store i64 %conv29, i64* %end30, align 8, !dbg !2968
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2969
  %start31 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0, !dbg !2970
  store i64 %conv29, i64* %start31, align 8, !dbg !2971
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2972
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2974
  %call32 = call i32 @pnp_check_dma(%struct.pnp_dev* %35, %struct.resource* %36) #5, !dbg !2975
  %tobool33 = icmp ne i32 %call32, 0, !dbg !2975
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2976

if.then34:                                        ; preds = %if.then26
  br label %__add, !dbg !2977

if.end35:                                         ; preds = %if.then26
  br label %if.end36, !dbg !2978

if.end36:                                         ; preds = %if.end35, %for.body
  br label %for.inc, !dbg !2979

for.inc:                                          ; preds = %if.end36
  %37 = load i32, i32* %i, align 4, !dbg !2980
  %inc = add i32 %37, 1, !dbg !2980
  store i32 %inc, i32* %i, align 4, !dbg !2980
  br label %for.cond, !dbg !2981, !llvm.loop !2982

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* @pnp_debug, align 4, !dbg !2984
  %tobool37 = icmp ne i32 %38, 0, !dbg !2984
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2987

if.then38:                                        ; preds = %for.end
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2984
  %dev39 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %39, i32 0, i32 0, !dbg !2984
  %40 = load i32, i32* %idx.addr, align 4, !dbg !2984
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.device* %dev39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %40) #6, !dbg !2984
  br label %if.end40, !dbg !2984

if.end40:                                         ; preds = %if.then38, %for.end
  store i32 0, i32* %tmp41, align 4, !dbg !2984
  %41 = load i32, i32* %tmp41, align 4, !dbg !2987
  store i32 -16, i32* %retval, align 4, !dbg !2988
  br label %return, !dbg !2988

__add:                                            ; preds = %if.then34, %if.end18
  call void @llvm.dbg.label(metadata !2989), !dbg !2990
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2991
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2992
  %start42 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0, !dbg !2993
  %44 = load i64, i64* %start42, align 8, !dbg !2993
  %conv43 = trunc i64 %44 to i32, !dbg !2992
  %45 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2994
  %flags44 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 3, !dbg !2995
  %46 = load i64, i64* %flags44, align 8, !dbg !2995
  %conv45 = trunc i64 %46 to i32, !dbg !2994
  %call46 = call %struct.pnp_resource* @pnp_add_dma_resource(%struct.pnp_dev* %42, i32 %conv43, i32 %conv45) #5, !dbg !2996
  store i32 0, i32* %retval, align 4, !dbg !2997
  br label %return, !dbg !2997

return:                                           ; preds = %__add, %if.end40, %if.end
  %47 = load i32, i32* %retval, align 4, !dbg !2998
  ret i32 %47, !dbg !2998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.resource* @pnp_find_resource(%struct.pnp_dev* %dev, i8 zeroext %rule, i64 %type, i32 %bar) #0 !dbg !2999 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %rule.addr = alloca i8, align 1
  %type.addr = alloca i64, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !3002, metadata !DIExpression()), !dbg !3003
  store i8 %rule, i8* %rule.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rule.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  store i64 %type, i64* %type.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !3012
  %1 = load i64, i64* %type.addr, align 8, !dbg !3013
  %2 = load i32, i32* %bar.addr, align 4, !dbg !3014
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 %1, i32 %2) #5, !dbg !3015
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !3011
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3016
  %tobool = icmp ne %struct.resource* %3, null, !dbg !3016
  br i1 %tobool, label %if.then, label %if.end, !dbg !3018

if.then:                                          ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3019
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !3021
  %5 = load i64, i64* %flags, align 8, !dbg !3022
  %and = and i64 %5, -256, !dbg !3022
  store i64 %and, i64* %flags, align 8, !dbg !3022
  %6 = load i8, i8* %rule.addr, align 1, !dbg !3023
  %conv = zext i8 %6 to i32, !dbg !3023
  %and1 = and i32 %conv, 255, !dbg !3024
  %conv2 = sext i32 %and1 to i64, !dbg !3023
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3025
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !3026
  %8 = load i64, i64* %flags3, align 8, !dbg !3027
  %or = or i64 %8, %conv2, !dbg !3027
  store i64 %or, i64* %flags3, align 8, !dbg !3027
  br label %if.end, !dbg !3028

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3029
  ret %struct.resource* %9, !dbg !3030
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_check_port(%struct.pnp_dev*, %struct.resource*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_io_resource(%struct.pnp_dev*, i64, i64, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_check_mem(%struct.pnp_dev*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_empty(i64* %src, i32 %nbits) #0 !dbg !3031 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !3041
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3041
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3041

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !3041
  %cmp = icmp ule i32 %2, 64, !dbg !3041
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3041

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !3041
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3041
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3043

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src.addr, align 8, !dbg !3044
  %5 = load i64, i64* %4, align 8, !dbg !3045
  %6 = load i32, i32* %nbits.addr, align 4, !dbg !3046
  %sub = sub i32 0, %6, !dbg !3046
  %and = and i32 %sub, 63, !dbg !3046
  %sh_prom = zext i32 %and to i64, !dbg !3046
  %shr = lshr i64 -1, %sh_prom, !dbg !3046
  %and3 = and i64 %5, %shr, !dbg !3047
  %tobool = icmp ne i64 %and3, 0, !dbg !3048
  %lnot = xor i1 %tobool, true, !dbg !3048
  %lnot.ext = zext i1 %lnot to i32, !dbg !3048
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !3049
  br label %return, !dbg !3049

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i64*, i64** %src.addr, align 8, !dbg !3050
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !3051
  %conv = zext i32 %8 to i64, !dbg !3051
  %call = call i64 @find_first_bit(i64* %7, i64 %conv) #5, !dbg !3052
  %9 = load i32, i32* %nbits.addr, align 4, !dbg !3053
  %conv4 = zext i32 %9 to i64, !dbg !3053
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !3054
  %conv6 = zext i1 %cmp5 to i32, !dbg !3054
  store i32 %conv6, i32* %retval, align 4, !dbg !3055
  br label %return, !dbg !3055

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3056
  ret i32 %10, !dbg !3056
}

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3057 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3064, metadata !DIExpression()), !dbg !3067
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3069, metadata !DIExpression()), !dbg !3070
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3071, metadata !DIExpression()), !dbg !3072
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3073, metadata !DIExpression()), !dbg !3075
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3077, metadata !DIExpression()), !dbg !3078
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3079, metadata !DIExpression()), !dbg !3087
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3089, metadata !DIExpression()), !dbg !3090
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3095
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3096
  %div = sdiv i64 %1, 64, !dbg !3096
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3097
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3095
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3098
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3099
  %conv.i = trunc i64 %4 to i32, !dbg !3099
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #7, !dbg !3100
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3101
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3101
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #7, !dbg !3101
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3102
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3102
  br i1 %8, label %cond.true, label %cond.false, !dbg !3102

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3102
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3102
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3103
  %and.i = and i64 %11, 63, !dbg !3104
  %shl.i = shl i64 1, %and.i, !dbg !3105
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3106
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3107
  %shr.i = ashr i64 %13, 6, !dbg !3108
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3106
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3106
  %and1.i = and i64 %shl.i, %14, !dbg !3109
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3110
  %conv = zext i1 %cmp.i to i32, !dbg !3102
  br label %cond.end, !dbg !3102

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3102
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3102
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3111
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3112
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !3113, !srcloc !3114
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3113
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3115
  %tobool.i = trunc i8 %20 to i1, !dbg !3115
  %conv2 = zext i1 %tobool.i to i32, !dbg !3102
  br label %cond.end, !dbg !3102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3102
  %tobool = icmp ne i32 %cond, 0, !dbg !3102
  ret i1 %tobool, !dbg !3116
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_check_irq(%struct.pnp_dev*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3117 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3121, metadata !DIExpression()), !dbg !3122
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3123, metadata !DIExpression()), !dbg !3124
  ret i1 true, !dbg !3125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3126 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  ret void, !dbg !3136
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_check_dma(%struct.pnp_dev*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.pnp_resource* @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @pnp_free_resource(%struct.pnp_resource*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { noredzone nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2144, !2145, !2146, !2147}
!llvm.ident = !{!2148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_res_mutex", scope: !2, file: !3, line: 20, type: !415, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/manager.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !{!56, !57, !84, !115, !116, !117}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !59, line: 68, size: 576, elements: !60)
!59 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !68, !69, !71}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !58, file: !59, line: 69, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !63, line: 178, size: 128, elements: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !63, line: 179, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !62, file: !63, line: 179, baseType: !66, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !59, line: 70, baseType: !7, size: 32, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !59, line: 72, baseType: !70, size: 64, offset: 192)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !58, file: !59, line: 78, baseType: !72, size: 320, offset: 256)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 73, size: 320, elements: !73)
!73 = !{!74, !90, !102, !107}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !72, file: !59, line: 74, baseType: !75, size: 320)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !59, line: 28, size: 320, elements: !76)
!76 = !{!77, !85, !86, !87, !88}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !75, file: !59, line: 29, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !63, line: 158, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !63, line: 153, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !81, line: 23, baseType: !82)
!81 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !83, line: 31, baseType: !84)
!83 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!84 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !75, file: !59, line: 30, baseType: !78, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !75, file: !59, line: 31, baseType: !78, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !75, file: !59, line: 32, baseType: !78, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !59, line: 33, baseType: !89, size: 8, offset: 256)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !72, file: !59, line: 75, baseType: !91, size: 320)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !59, line: 39, size: 320, elements: !92)
!92 = !{!93, !101}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !91, file: !59, line: 40, baseType: !94, size: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !59, line: 37, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 37, size: 256, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !95, file: !59, line: 37, baseType: !98, size: 256)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !59, line: 41, baseType: !89, size: 8, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !72, file: !59, line: 76, baseType: !103, size: 16)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !59, line: 44, size: 16, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !103, file: !59, line: 45, baseType: !89, size: 8)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !59, line: 46, baseType: !89, size: 8, offset: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !72, file: !59, line: 77, baseType: !108, size: 320)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !59, line: 49, size: 320, elements: !109)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !108, file: !59, line: 50, baseType: !78, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !108, file: !59, line: 51, baseType: !78, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !108, file: !59, line: 52, baseType: !78, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !108, file: !59, line: 53, baseType: !78, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !59, line: 54, baseType: !89, size: 8, offset: 256)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !59, line: 156, size: 640, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !118, file: !59, line: 157, baseType: !62, size: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !118, file: !59, line: 158, baseType: !122, size: 512, offset: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !123, line: 20, size: 512, elements: !124)
!123 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127, !131, !132, !133, !135, !136}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !122, file: !123, line: 21, baseType: !78, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !122, file: !123, line: 22, baseType: !78, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !123, line: 23, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !123, line: 24, baseType: !70, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !122, file: !123, line: 25, baseType: !70, size: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !123, line: 26, baseType: !134, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !122, file: !123, line: 26, baseType: !134, size: 64, offset: 384)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !122, file: !123, line: 26, baseType: !134, size: 64, offset: 448)
!137 = !{!0, !138, !2137}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "xtab", scope: !140, file: !3, line: 138, type: !2136, isLocal: true, isDefinition: true)
!140 = distinct !DISubprogram(name: "pnp_assign_irq", scope: !3, file: !3, line: 132, type: !141, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!141 = !DISubroutineType(types: !142)
!142 = !{!115, !143, !2135, !115}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !145, line: 243, size: 7488, elements: !146)
!145 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2029, !2056, !2082, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !144, file: !145, line: 244, baseType: !148, size: 5568)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !149)
!149 = !{!150, !1629, !1631, !1634, !1635, !1686, !1783, !1784, !1785, !1786, !1787, !1796, !1901, !1914, !1917, !1918, !1922, !1924, !1925, !1926, !1930, !1936, !1937, !1940, !1944, !1947, !1950, !1951, !1952, !1953, !1985, !1986, !1987, !1990, !1993, !1994, !1995, !1996}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !148, file: !30, line: 462, baseType: !151, size: 512)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !152, line: 64, size: 512, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156, !158, !218, !1465, !1619, !1624, !1625, !1626, !1627, !1628}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !152, line: 65, baseType: !128, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !151, file: !152, line: 66, baseType: !62, size: 128, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !152, line: 67, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !151, file: !152, line: 68, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !152, line: 192, size: 704, elements: !161)
!161 = !{!162, !163, !179, !180}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !160, file: !152, line: 193, baseType: !62, size: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !160, file: !152, line: 194, baseType: !164, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !165, line: 83, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !165, line: 71, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !165, line: 72, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !165, line: 72, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !169, file: !165, line: 73, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !165, line: 20, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !172, file: !165, line: 21, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !176, line: 25, baseType: !177)
!176 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 25, elements: !178)
!178 = !{}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !160, file: !152, line: 195, baseType: !151, size: 512, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !160, file: !152, line: 196, baseType: !181, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !152, line: 156, size: 192, elements: !184)
!184 = !{!185, !190, !195}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !183, file: !152, line: 157, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!115, !159, !157}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !152, line: 158, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!128, !159, !157}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !183, file: !152, line: 159, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!115, !159, !157, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !152, line: 148, size: 20736, elements: !202)
!202 = !{!203, !208, !212, !213, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !201, file: !152, line: 149, baseType: !204, size: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!206 = !{!207}
!207 = !DISubrange(count: 3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !201, file: !152, line: 150, baseType: !209, size: 4096, offset: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4096, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !201, file: !152, line: 151, baseType: !115, size: 32, offset: 4288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !152, line: 152, baseType: !214, size: 16384, offset: 4320)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 16384, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !201, file: !152, line: 153, baseType: !115, size: 32, offset: 20704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !151, file: !152, line: 69, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !152, line: 138, size: 448, elements: !221)
!221 = !{!222, !226, !255, !257, !1411, !1444, !1448}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !152, line: 139, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !157}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !220, file: !152, line: 140, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !230, line: 230, size: 128, elements: !231)
!230 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !248}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !229, file: !230, line: 231, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !157, !241, !205}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 60, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !238, line: 73, baseType: !239)
!238 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !238, line: 15, baseType: !240)
!240 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !230, line: 30, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !230, line: 31, baseType: !128, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !242, file: !230, line: 32, baseType: !246, size: 16, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !63, line: 19, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !229, file: !230, line: 232, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!236, !157, !241, !128, !252}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 55, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !238, line: 72, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !238, line: 16, baseType: !70)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !220, file: !152, line: 141, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !220, file: !152, line: 142, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !230, line: 84, size: 320, elements: !262)
!262 = !{!263, !264, !268, !1408, !1409}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !230, line: 85, baseType: !128, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !261, file: !230, line: 86, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!246, !157, !241, !115}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !261, file: !230, line: 88, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!246, !157, !272, !115}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !230, line: 168, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !288, !289}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !273, file: !230, line: 169, baseType: !242, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !230, line: 170, baseType: !252, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !273, file: !230, line: 171, baseType: !56, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !273, file: !230, line: 172, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!236, !282, !157, !272, !205, !285, !252}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !284, line: 526, flags: DIFlagFwdDecl)
!284 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !63, line: 46, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !238, line: 88, baseType: !287)
!287 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !273, file: !230, line: 174, baseType: !279, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !273, file: !230, line: 176, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!115, !282, !157, !272, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !295, line: 305, size: 1472, elements: !296)
!295 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !298, !299, !300, !301, !309, !310, !1382, !1388, !1389, !1394, !1395, !1398, !1402, !1403, !1404, !1405, !1406}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !294, file: !295, line: 308, baseType: !70, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !294, file: !295, line: 309, baseType: !70, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !294, file: !295, line: 313, baseType: !293, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !294, file: !295, line: 313, baseType: !293, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !294, file: !295, line: 315, baseType: !302, size: 192, align: 64, offset: 256)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !303, line: 24, size: 192, align: 64, elements: !304)
!303 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !306, !308}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !302, file: !303, line: 25, baseType: !70, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !302, file: !303, line: 26, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !302, file: !303, line: 27, baseType: !307, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !294, file: !295, line: 323, baseType: !70, size: 64, offset: 448)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !294, file: !295, line: 327, baseType: !311, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !295, line: 388, size: 7296, elements: !313)
!313 = !{!314, !1378}
!314 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !295, line: 389, baseType: !315, size: 7296)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !295, line: 389, size: 7296, elements: !316)
!316 = !{!317, !318, !322, !323, !327, !328, !329, !330, !331, !339, !344, !345, !346, !347, !356, !357, !358, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !393, !399, !402, !450, !451, !1348, !1349, !1352, !1356, !1357, !1360, !1361, !1362, !1365, !1377}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !315, file: !295, line: 390, baseType: !293, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !315, file: !295, line: 391, baseType: !319, size: 64, offset: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !303, line: 31, size: 64, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !319, file: !303, line: 32, baseType: !307, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !315, file: !295, line: 392, baseType: !80, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !315, file: !295, line: 394, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!70, !282, !70, !70, !70, !70}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !315, file: !295, line: 398, baseType: !70, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !315, file: !295, line: 399, baseType: !70, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !315, file: !295, line: 405, baseType: !70, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !315, file: !295, line: 406, baseType: !70, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !315, file: !295, line: 407, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !284, line: 286, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 286, size: 64, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !334, file: !284, line: 286, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !338, line: 18, baseType: !70)
!338 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !315, file: !295, line: 416, baseType: !340, size: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 168, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 166, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !341, file: !63, line: 167, baseType: !115, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !315, file: !295, line: 428, baseType: !340, size: 32, offset: 608)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !315, file: !295, line: 437, baseType: !340, size: 32, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !315, file: !295, line: 447, baseType: !340, size: 32, offset: 672)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !315, file: !295, line: 450, baseType: !348, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !349, line: 13, baseType: !350)
!349 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !63, line: 175, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 173, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !351, file: !63, line: 174, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !81, line: 22, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !83, line: 30, baseType: !287)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !315, file: !295, line: 452, baseType: !115, size: 32, offset: 768)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !315, file: !295, line: 454, baseType: !164, offset: 800)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !315, file: !295, line: 457, baseType: !359, size: 256, offset: 832)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !360, line: 35, size: 256, elements: !361)
!360 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362, !363, !364, !366}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !359, file: !360, line: 36, baseType: !348, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !359, file: !360, line: 42, baseType: !348, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !359, file: !360, line: 46, baseType: !365, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !165, line: 29, baseType: !172)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !359, file: !360, line: 47, baseType: !62, size: 128, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !315, file: !295, line: 459, baseType: !62, size: 128, offset: 1088)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !315, file: !295, line: 466, baseType: !70, size: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !315, file: !295, line: 467, baseType: !70, size: 64, offset: 1280)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !315, file: !295, line: 469, baseType: !70, size: 64, offset: 1344)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !315, file: !295, line: 470, baseType: !70, size: 64, offset: 1408)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !315, file: !295, line: 471, baseType: !350, size: 64, offset: 1472)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !315, file: !295, line: 472, baseType: !70, size: 64, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !315, file: !295, line: 473, baseType: !70, size: 64, offset: 1600)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !315, file: !295, line: 474, baseType: !70, size: 64, offset: 1664)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !315, file: !295, line: 475, baseType: !70, size: 64, offset: 1728)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !315, file: !295, line: 477, baseType: !164, offset: 1792)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !315, file: !295, line: 478, baseType: !70, size: 64, offset: 1792)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !315, file: !295, line: 478, baseType: !70, size: 64, offset: 1856)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !315, file: !295, line: 478, baseType: !70, size: 64, offset: 1920)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !315, file: !295, line: 478, baseType: !70, size: 64, offset: 1984)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !315, file: !295, line: 479, baseType: !70, size: 64, offset: 2048)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !315, file: !295, line: 479, baseType: !70, size: 64, offset: 2112)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !315, file: !295, line: 479, baseType: !70, size: 64, offset: 2176)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !315, file: !295, line: 480, baseType: !70, size: 64, offset: 2240)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !315, file: !295, line: 480, baseType: !70, size: 64, offset: 2304)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !315, file: !295, line: 480, baseType: !70, size: 64, offset: 2368)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !315, file: !295, line: 480, baseType: !70, size: 64, offset: 2432)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !315, file: !295, line: 482, baseType: !390, size: 2816, offset: 2496)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2816, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 44)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !315, file: !295, line: 488, baseType: !394, size: 256, offset: 5312)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !395, line: 60, size: 256, elements: !396)
!395 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !394, file: !395, line: 61, baseType: !398, size: 256)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !99)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !315, file: !295, line: 490, baseType: !400, size: 64, offset: 5568)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !295, line: 490, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !315, file: !295, line: 493, baseType: !403, size: 896, offset: 5632)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !404, line: 53, baseType: !405)
!404 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 13, size: 896, elements: !406)
!406 = !{!407, !408, !409, !410, !413, !414, !421, !422, !442, !443, !446}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !405, file: !404, line: 18, baseType: !80, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !405, file: !404, line: 28, baseType: !350, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !405, file: !404, line: 31, baseType: !359, size: 256, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !405, file: !404, line: 32, baseType: !411, size: 64, offset: 384)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !404, line: 32, flags: DIFlagFwdDecl)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !405, file: !404, line: 37, baseType: !247, size: 16, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !404, line: 40, baseType: !415, size: 192, offset: 512)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !416, line: 53, size: 192, elements: !417)
!416 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !419, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !415, file: !416, line: 54, baseType: !348, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !415, file: !416, line: 55, baseType: !164, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !415, file: !416, line: 59, baseType: !62, size: 128, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !405, file: !404, line: 41, baseType: !56, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !405, file: !404, line: 42, baseType: !423, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !426, line: 13, size: 896, elements: !427)
!426 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !425, file: !426, line: 14, baseType: !56, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !425, file: !426, line: 15, baseType: !70, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !425, file: !426, line: 17, baseType: !70, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !425, file: !426, line: 17, baseType: !70, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !425, file: !426, line: 19, baseType: !240, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !425, file: !426, line: 21, baseType: !240, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !425, file: !426, line: 22, baseType: !240, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !425, file: !426, line: 23, baseType: !240, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !425, file: !426, line: 24, baseType: !240, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !425, file: !426, line: 25, baseType: !240, size: 64, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !425, file: !426, line: 26, baseType: !240, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !425, file: !426, line: 27, baseType: !240, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !425, file: !426, line: 28, baseType: !240, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !425, file: !426, line: 29, baseType: !240, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !405, file: !404, line: 44, baseType: !340, size: 32, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !405, file: !404, line: 50, baseType: !444, size: 16, offset: 864)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !81, line: 19, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !83, line: 24, baseType: !247)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !405, file: !404, line: 51, baseType: !447, size: 16, offset: 880)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !81, line: 18, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !83, line: 23, baseType: !449)
!449 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !295, line: 495, baseType: !70, size: 64, offset: 6528)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !315, file: !295, line: 497, baseType: !452, size: 64, offset: 6592)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !295, line: 381, size: 384, elements: !454)
!454 = !{!455, !456, !1347}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !453, file: !295, line: 382, baseType: !340, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !453, file: !295, line: 383, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !295, line: 376, size: 128, elements: !458)
!458 = !{!459, !1345}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !457, file: !295, line: 377, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !462, line: 640, size: 48640, elements: !463)
!462 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !472, !474, !475, !481, !482, !483, !484, !485, !486, !487, !488, !492, !510, !521, !615, !616, !617, !628, !629, !631, !632, !633, !634, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !713, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !769, !771, !772, !773, !785, !787, !788, !789, !790, !791, !797, !798, !799, !800, !801, !802, !803, !815, !820, !825, !826, !827, !830, !834, !837, !840, !843, !846, !850, !853, !856, !862, !863, !864, !870, !871, !872, !873, !874, !883, !884, !885, !886, !887, !892, !893, !894, !897, !898, !901, !904, !907, !910, !913, !916, !917, !997, !1000, !1003, !1004, !1007, !1008, !1009, !1015, !1016, !1017, !1030, !1031, !1032, !1044, !1049, !1052, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !461, file: !462, line: 646, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !466, line: 56, size: 128, elements: !467)
!466 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !466, line: 57, baseType: !70, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !465, file: !466, line: 58, baseType: !470, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !81, line: 21, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !83, line: 27, baseType: !7)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !461, file: !462, line: 649, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !240)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !461, file: !462, line: 657, baseType: !56, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !461, file: !462, line: 658, baseType: !476, size: 32, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !477, line: 113, baseType: !478)
!477 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !477, line: 111, size: 32, elements: !479)
!479 = !{!480}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !478, file: !477, line: 112, baseType: !340, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !462, line: 660, baseType: !7, size: 32, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !461, file: !462, line: 661, baseType: !7, size: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !461, file: !462, line: 684, baseType: !115, size: 32, offset: 352)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !461, file: !462, line: 686, baseType: !115, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !461, file: !462, line: 687, baseType: !115, size: 32, offset: 416)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !461, file: !462, line: 688, baseType: !115, size: 32, offset: 448)
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
!498 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !496, file: !462, line: 326, baseType: !70, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !496, file: !462, line: 327, baseType: !470, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !493, file: !462, line: 454, baseType: !302, size: 192, align: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !493, file: !462, line: 455, baseType: !62, size: 128, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !493, file: !462, line: 456, baseType: !7, size: 32, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !493, file: !462, line: 458, baseType: !80, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !493, file: !462, line: 459, baseType: !80, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !493, file: !462, line: 460, baseType: !80, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !493, file: !462, line: 461, baseType: !80, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !493, file: !462, line: 463, baseType: !80, size: 64, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !493, file: !462, line: 465, baseType: !509, offset: 832)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !462, line: 415, elements: !178)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !461, file: !462, line: 693, baseType: !511, size: 384, offset: 1408)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !462, line: 489, size: 384, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !511, file: !462, line: 490, baseType: !62, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !511, file: !462, line: 491, baseType: !70, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !511, file: !462, line: 492, baseType: !70, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !511, file: !462, line: 493, baseType: !7, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !511, file: !462, line: 494, baseType: !247, size: 16, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !511, file: !462, line: 495, baseType: !247, size: 16, offset: 304)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !511, file: !462, line: 497, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !461, file: !462, line: 697, baseType: !522, size: 1792, offset: 1792)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !462, line: 507, size: 1792, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !612, !613}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !522, file: !462, line: 508, baseType: !302, size: 192, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !522, file: !462, line: 515, baseType: !80, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !522, file: !462, line: 516, baseType: !80, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !522, file: !462, line: 517, baseType: !80, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !522, file: !462, line: 518, baseType: !80, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !522, file: !462, line: 519, baseType: !80, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !522, file: !462, line: 526, baseType: !354, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !522, file: !462, line: 527, baseType: !80, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !462, line: 528, baseType: !7, size: 32, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !522, file: !462, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !522, file: !462, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !522, file: !462, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !522, file: !462, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !522, file: !462, line: 563, baseType: !538, size: 512, offset: 704)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !539)
!539 = !{!540, !548, !549, !554, !606, !609, !610, !611}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !538, file: !6, line: 119, baseType: !541, size: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !542, line: 9, size: 256, elements: !543)
!542 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !541, file: !542, line: 10, baseType: !302, size: 192, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !541, file: !542, line: 11, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !547, line: 29, baseType: !354)
!547 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !538, file: !6, line: 120, baseType: !546, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !538, file: !6, line: 121, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!5, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !538, file: !6, line: 122, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !557)
!557 = !{!558, !578, !579, !582, !592, !593, !601, !605}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !556, file: !6, line: 160, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !560, file: !6, line: 215, baseType: !365)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !560, file: !6, line: 216, baseType: !7, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !560, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !560, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !560, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !560, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !560, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !560, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !560, file: !6, line: 233, baseType: !546, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !560, file: !6, line: 234, baseType: !553, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !560, file: !6, line: 235, baseType: !546, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !560, file: !6, line: 236, baseType: !553, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !560, file: !6, line: 237, baseType: !575, size: 4096, offset: 512)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 4096, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 8)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !556, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !556, file: !6, line: 162, baseType: !580, size: 32, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !63, line: 27, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !238, line: 96, baseType: !115)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !556, file: !6, line: 163, baseType: !583, size: 32, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !584, line: 276, baseType: !585)
!584 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !584, line: 276, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !585, file: !584, line: 276, baseType: !588, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !584, line: 70, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !584, line: 65, size: 32, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !589, file: !584, line: 66, baseType: !7, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !556, file: !6, line: 164, baseType: !553, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !556, file: !6, line: 165, baseType: !594, size: 128, offset: 256)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !542, line: 14, size: 128, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !594, file: !542, line: 15, baseType: !597, size: 128)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !303, line: 125, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !597, file: !303, line: 126, baseType: !319, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !597, file: !303, line: 127, baseType: !307, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !556, file: !6, line: 166, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!546}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !556, file: !6, line: 167, baseType: !546, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !538, file: !6, line: 123, baseType: !607, size: 8, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !81, line: 17, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !83, line: 21, baseType: !89)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !538, file: !6, line: 124, baseType: !607, size: 8, offset: 456)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !538, file: !6, line: 125, baseType: !607, size: 8, offset: 464)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !538, file: !6, line: 126, baseType: !607, size: 8, offset: 472)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !522, file: !462, line: 572, baseType: !538, size: 512, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !522, file: !462, line: 580, baseType: !614, size: 64, offset: 1728)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !461, file: !462, line: 721, baseType: !7, size: 32, offset: 3584)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !461, file: !462, line: 722, baseType: !115, size: 32, offset: 3616)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !461, file: !462, line: 723, baseType: !618, size: 64, offset: 3648)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !621, line: 17, baseType: !622)
!621 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !621, line: 17, size: 64, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !622, file: !621, line: 17, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 1)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !461, file: !462, line: 724, baseType: !620, size: 64, offset: 3712)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !461, file: !462, line: 749, baseType: !630, offset: 3776)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !462, line: 290, elements: !178)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !461, file: !462, line: 751, baseType: !62, size: 128, offset: 3776)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !461, file: !462, line: 757, baseType: !311, size: 64, offset: 3904)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !461, file: !462, line: 758, baseType: !311, size: 64, offset: 3968)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !461, file: !462, line: 761, baseType: !635, size: 320, offset: 4032)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !395, line: 34, size: 320, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !635, file: !395, line: 35, baseType: !80, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !635, file: !395, line: 36, baseType: !639, size: 256, offset: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !99)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !461, file: !462, line: 766, baseType: !115, size: 32, offset: 4352)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !461, file: !462, line: 767, baseType: !115, size: 32, offset: 4384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !461, file: !462, line: 768, baseType: !115, size: 32, offset: 4416)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !461, file: !462, line: 770, baseType: !115, size: 32, offset: 4448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !461, file: !462, line: 772, baseType: !70, size: 64, offset: 4480)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !461, file: !462, line: 775, baseType: !7, size: 32, offset: 4544)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !461, file: !462, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !461, file: !462, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !461, file: !462, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !461, file: !462, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !461, file: !462, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !461, file: !462, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !461, file: !462, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !461, file: !462, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !461, file: !462, line: 831, baseType: !70, size: 64, offset: 4672)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !461, file: !462, line: 833, baseType: !656, size: 384, offset: 4736)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !657)
!657 = !{!658, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !656, file: !12, line: 26, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!240, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !12, line: 27, baseType: !664, size: 320, offset: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !12, line: 27, size: 320, elements: !665)
!665 = !{!666, !676, !703}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !664, file: !12, line: 36, baseType: !667, size: 320)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !12, line: 29, size: 320, elements: !668)
!668 = !{!669, !671, !672, !673, !674, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !667, file: !12, line: 30, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !667, file: !12, line: 31, baseType: !470, size: 32, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !12, line: 32, baseType: !470, size: 32, offset: 96)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !667, file: !12, line: 33, baseType: !470, size: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !667, file: !12, line: 34, baseType: !80, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !667, file: !12, line: 35, baseType: !670, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !664, file: !12, line: 46, baseType: !677, size: 192)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !12, line: 38, size: 192, elements: !678)
!678 = !{!679, !680, !681, !702}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !677, file: !12, line: 39, baseType: !580, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !12, line: 41, baseType: !682, size: 64, offset: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !12, line: 41, size: 64, elements: !683)
!683 = !{!684, !692}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !682, file: !12, line: 42, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !687, line: 7, size: 128, elements: !688)
!687 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !686, file: !687, line: 8, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !238, line: 93, baseType: !287)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !686, file: !687, line: 9, baseType: !287, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !682, file: !12, line: 43, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !695, line: 7, size: 64, elements: !696)
!695 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !701}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !694, file: !695, line: 8, baseType: !698, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !695, line: 5, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !81, line: 20, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !83, line: 26, baseType: !115)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !694, file: !695, line: 9, baseType: !699, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !677, file: !12, line: 45, baseType: !80, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !664, file: !12, line: 54, baseType: !704, size: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !12, line: 48, size: 256, elements: !705)
!705 = !{!706, !709, !710, !711, !712}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !704, file: !12, line: 49, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !704, file: !12, line: 50, baseType: !115, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !704, file: !12, line: 51, baseType: !115, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !704, file: !12, line: 52, baseType: !70, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !704, file: !12, line: 53, baseType: !70, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !461, file: !462, line: 835, baseType: !714, size: 32, offset: 5120)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !63, line: 22, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !238, line: 28, baseType: !115)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !461, file: !462, line: 836, baseType: !714, size: 32, offset: 5152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !461, file: !462, line: 840, baseType: !70, size: 64, offset: 5184)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !461, file: !462, line: 849, baseType: !460, size: 64, offset: 5248)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !461, file: !462, line: 852, baseType: !460, size: 64, offset: 5312)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !461, file: !462, line: 857, baseType: !62, size: 128, offset: 5376)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !461, file: !462, line: 858, baseType: !62, size: 128, offset: 5504)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !461, file: !462, line: 859, baseType: !460, size: 64, offset: 5632)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !461, file: !462, line: 867, baseType: !62, size: 128, offset: 5696)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !461, file: !462, line: 868, baseType: !62, size: 128, offset: 5824)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !461, file: !462, line: 871, baseType: !726, size: 64, offset: 5952)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !728, line: 59, size: 768, elements: !729)
!728 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !731, !732, !733, !744, !745, !752, !761}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !727, file: !728, line: 61, baseType: !476, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !727, file: !728, line: 62, baseType: !7, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !728, line: 63, baseType: !164, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !727, file: !728, line: 65, baseType: !734, size: 256, offset: 64)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 256, elements: !99)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !63, line: 182, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !735, file: !63, line: 183, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !63, line: 186, size: 128, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !63, line: 187, baseType: !738, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !739, file: !63, line: 187, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !727, file: !728, line: 66, baseType: !735, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !727, file: !728, line: 68, baseType: !746, size: 128, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !747, line: 40, baseType: !748)
!747 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !747, line: 36, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !747, line: 37, baseType: !164)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !748, file: !747, line: 38, baseType: !62, size: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !727, file: !728, line: 69, baseType: !753, size: 128, align: 64, offset: 512)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !63, line: 216, size: 128, align: 64, elements: !754)
!754 = !{!755, !757}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !753, file: !63, line: 217, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !753, file: !63, line: 218, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !756}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !727, file: !728, line: 70, baseType: !762, size: 128, offset: 640)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 128, elements: !626)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !728, line: 54, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !763, file: !728, line: 55, baseType: !115, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !763, file: !728, line: 56, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !728, line: 56, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !461, file: !462, line: 872, baseType: !770, size: 512, offset: 6016)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 512, elements: !99)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !461, file: !462, line: 873, baseType: !62, size: 128, offset: 6528)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !461, file: !462, line: 874, baseType: !62, size: 128, offset: 6656)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !461, file: !462, line: 876, baseType: !774, size: 64, offset: 6784)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !776, line: 26, size: 192, elements: !777)
!776 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !775, file: !776, line: 27, baseType: !7, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !775, file: !776, line: 28, baseType: !780, size: 128, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !781, line: 43, size: 128, elements: !782)
!781 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !780, file: !781, line: 44, baseType: !365)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !780, file: !781, line: 45, baseType: !62, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !461, file: !462, line: 879, baseType: !786, size: 64, offset: 6848)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !461, file: !462, line: 882, baseType: !786, size: 64, offset: 6912)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !461, file: !462, line: 884, baseType: !80, size: 64, offset: 6976)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !461, file: !462, line: 885, baseType: !80, size: 64, offset: 7040)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !461, file: !462, line: 890, baseType: !80, size: 64, offset: 7104)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !461, file: !462, line: 891, baseType: !792, size: 128, offset: 7168)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !462, line: 242, size: 128, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !792, file: !462, line: 244, baseType: !80, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !792, file: !462, line: 245, baseType: !80, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !792, file: !462, line: 246, baseType: !365, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !461, file: !462, line: 900, baseType: !70, size: 64, offset: 7296)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !461, file: !462, line: 901, baseType: !70, size: 64, offset: 7360)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !461, file: !462, line: 904, baseType: !80, size: 64, offset: 7424)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !461, file: !462, line: 907, baseType: !80, size: 64, offset: 7488)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !461, file: !462, line: 910, baseType: !70, size: 64, offset: 7552)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !461, file: !462, line: 911, baseType: !70, size: 64, offset: 7616)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !461, file: !462, line: 914, baseType: !804, size: 640, offset: 7680)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !805, line: 123, size: 640, elements: !806)
!805 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !813, !814}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !804, file: !805, line: 124, baseType: !808, size: 576)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 576, elements: !206)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !805, line: 108, size: 192, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !809, file: !805, line: 109, baseType: !80, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !809, file: !805, line: 110, baseType: !594, size: 128, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !804, file: !805, line: 125, baseType: !7, size: 32, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !804, file: !805, line: 126, baseType: !7, size: 32, offset: 608)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !461, file: !462, line: 917, baseType: !816, size: 192, offset: 8320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !805, line: 134, size: 192, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !816, file: !805, line: 135, baseType: !753, size: 128, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !816, file: !805, line: 136, baseType: !7, size: 32, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !461, file: !462, line: 923, baseType: !821, size: 64, offset: 8512)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !824, line: 11, flags: DIFlagFwdDecl)
!824 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !461, file: !462, line: 926, baseType: !821, size: 64, offset: 8576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !461, file: !462, line: 929, baseType: !821, size: 64, offset: 8640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !461, file: !462, line: 933, baseType: !828, size: 64, offset: 8704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !462, line: 933, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !461, file: !462, line: 943, baseType: !831, size: 128, offset: 8768)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !832)
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
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !849, line: 35, flags: DIFlagFwdDecl)
!849 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !461, file: !462, line: 969, baseType: !851, size: 64, offset: 9216)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !805, line: 223, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !461, file: !462, line: 970, baseType: !854, size: 64, offset: 9280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !462, line: 62, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !461, file: !462, line: 971, baseType: !857, size: 64, offset: 9344)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !858, line: 25, baseType: !859)
!858 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 23, size: 64, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !859, file: !858, line: 24, baseType: !625, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !461, file: !462, line: 972, baseType: !857, size: 64, offset: 9408)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !461, file: !462, line: 974, baseType: !857, size: 64, offset: 9472)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !461, file: !462, line: 975, baseType: !865, size: 192, offset: 9536)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !866, line: 30, size: 192, elements: !867)
!866 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !865, file: !866, line: 31, baseType: !62, size: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !865, file: !866, line: 32, baseType: !857, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !461, file: !462, line: 976, baseType: !70, size: 64, offset: 9728)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !461, file: !462, line: 977, baseType: !252, size: 64, offset: 9792)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !461, file: !462, line: 978, baseType: !7, size: 32, offset: 9856)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !461, file: !462, line: 980, baseType: !756, size: 64, offset: 9920)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !461, file: !462, line: 989, baseType: !875, size: 128, offset: 9984)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !876, line: 35, size: 128, elements: !877)
!876 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !875, file: !876, line: 36, baseType: !115, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !875, file: !876, line: 37, baseType: !340, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !875, file: !876, line: 38, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !876, line: 23, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !461, file: !462, line: 992, baseType: !80, size: 64, offset: 10112)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !461, file: !462, line: 993, baseType: !80, size: 64, offset: 10176)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !461, file: !462, line: 996, baseType: !164, offset: 10240)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !461, file: !462, line: 999, baseType: !365, offset: 10240)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !461, file: !462, line: 1001, baseType: !888, size: 64, offset: 10240)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !462, line: 636, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !888, file: !462, line: 637, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !461, file: !462, line: 1005, baseType: !597, size: 128, offset: 10304)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !461, file: !462, line: 1007, baseType: !460, size: 64, offset: 10432)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !461, file: !462, line: 1009, baseType: !895, size: 64, offset: 10496)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !462, line: 1009, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !461, file: !462, line: 1043, baseType: !56, size: 64, offset: 10560)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !461, file: !462, line: 1046, baseType: !899, size: 64, offset: 10624)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !462, line: 41, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !461, file: !462, line: 1050, baseType: !902, size: 64, offset: 10688)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !462, line: 42, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !461, file: !462, line: 1054, baseType: !905, size: 64, offset: 10752)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !462, line: 55, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !461, file: !462, line: 1056, baseType: !908, size: 64, offset: 10816)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !462, line: 40, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !461, file: !462, line: 1058, baseType: !911, size: 64, offset: 10880)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !462, line: 47, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !461, file: !462, line: 1061, baseType: !914, size: 64, offset: 10944)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !462, line: 43, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !461, file: !462, line: 1064, baseType: !70, size: 64, offset: 11008)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !461, file: !462, line: 1065, baseType: !918, size: 64, offset: 11072)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !866, line: 14, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !866, line: 12, size: 384, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !866, line: 13, baseType: !923, size: 384)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !920, file: !866, line: 13, size: 384, elements: !924)
!924 = !{!925, !926, !927, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !923, file: !866, line: 13, baseType: !115, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !923, file: !866, line: 13, baseType: !115, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !923, file: !866, line: 13, baseType: !115, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !923, file: !866, line: 13, baseType: !929, size: 256, offset: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !930, line: 32, size: 256, elements: !931)
!930 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!931 = !{!932, !938, !951, !957, !966, !986, !991}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !929, file: !930, line: 37, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 34, size: 64, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !933, file: !930, line: 35, baseType: !715, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !933, file: !930, line: 36, baseType: !937, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !238, line: 49, baseType: !7)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !929, file: !930, line: 45, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 40, size: 192, elements: !940)
!940 = !{!941, !943, !944, !950}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !939, file: !930, line: 41, baseType: !942, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !238, line: 95, baseType: !115)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !939, file: !930, line: 42, baseType: !115, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !939, file: !930, line: 43, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !930, line: 11, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !930, line: 8, size: 64, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !946, file: !930, line: 9, baseType: !115, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !946, file: !930, line: 10, baseType: !56, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !939, file: !930, line: 44, baseType: !115, size: 32, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !929, file: !930, line: 52, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 48, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !952, file: !930, line: 49, baseType: !715, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !952, file: !930, line: 50, baseType: !937, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !952, file: !930, line: 51, baseType: !945, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !929, file: !930, line: 61, baseType: !958, size: 256)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 55, size: 256, elements: !959)
!959 = !{!960, !961, !962, !963, !965}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !958, file: !930, line: 56, baseType: !715, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !958, file: !930, line: 57, baseType: !937, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !958, file: !930, line: 58, baseType: !115, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !958, file: !930, line: 59, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !238, line: 94, baseType: !239)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !958, file: !930, line: 60, baseType: !964, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !929, file: !930, line: 95, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 64, size: 256, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !967, file: !930, line: 65, baseType: !56, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !930, line: 77, baseType: !971, size: 192, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !930, line: 77, size: 192, elements: !972)
!972 = !{!973, !974, !981}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !971, file: !930, line: 82, baseType: !449, size: 16)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !971, file: !930, line: 88, baseType: !975, size: 192)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !930, line: 84, size: 192, elements: !976)
!976 = !{!977, !979, !980}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !975, file: !930, line: 85, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !975, file: !930, line: 86, baseType: !56, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !975, file: !930, line: 87, baseType: !56, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !971, file: !930, line: 93, baseType: !982, size: 96)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !930, line: 90, size: 96, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !982, file: !930, line: 91, baseType: !978, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !982, file: !930, line: 92, baseType: !471, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !929, file: !930, line: 101, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 98, size: 128, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !987, file: !930, line: 99, baseType: !240, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !987, file: !930, line: 100, baseType: !115, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !929, file: !930, line: 108, baseType: !992, size: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !930, line: 104, size: 128, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !992, file: !930, line: 105, baseType: !56, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !992, file: !930, line: 106, baseType: !115, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !992, file: !930, line: 107, baseType: !7, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !461, file: !462, line: 1067, baseType: !998, offset: 11136)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !999, line: 12, elements: !178)
!999 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !461, file: !462, line: 1099, baseType: !1001, size: 64, offset: 11136)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !462, line: 56, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !461, file: !462, line: 1103, baseType: !62, size: 128, offset: 11200)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !461, file: !462, line: 1104, baseType: !1005, size: 64, offset: 11328)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !462, line: 46, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !461, file: !462, line: 1105, baseType: !415, size: 192, offset: 11392)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !461, file: !462, line: 1106, baseType: !7, size: 32, offset: 11584)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !461, file: !462, line: 1109, baseType: !1010, size: 128, offset: 11648)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1011, size: 128, elements: !1013)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !462, line: 51, flags: DIFlagFwdDecl)
!1013 = !{!1014}
!1014 = !DISubrange(count: 2)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !461, file: !462, line: 1110, baseType: !415, size: 192, offset: 11776)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !461, file: !462, line: 1111, baseType: !62, size: 128, offset: 11968)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !461, file: !462, line: 1173, baseType: !1018, size: 64, offset: 12096)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1020, line: 62, size: 256, align: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022, !1023, !1024, !1029}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1019, file: !1020, line: 75, baseType: !471, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1019, file: !1020, line: 90, baseType: !471, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1019, file: !1020, line: 124, baseType: !1025, size: 64, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1019, file: !1020, line: 109, size: 64, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1025, file: !1020, line: 110, baseType: !82, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1025, file: !1020, line: 112, baseType: !82, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1019, file: !1020, line: 144, baseType: !471, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !461, file: !462, line: 1174, baseType: !470, size: 32, offset: 12160)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !461, file: !462, line: 1179, baseType: !70, size: 64, offset: 12224)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !461, file: !462, line: 1182, baseType: !1033, size: 128, offset: 12288)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !395, line: 76, size: 128, elements: !1034)
!1034 = !{!1035, !1040, !1043}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1033, file: !395, line: 85, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1037, line: 7, size: 64, elements: !1038)
!1037 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1036, file: !1037, line: 12, baseType: !622, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1033, file: !395, line: 88, baseType: !1041, size: 8, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 30, baseType: !1042)
!1042 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1033, file: !395, line: 95, baseType: !1041, size: 8, offset: 72)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !462, line: 1184, baseType: !1045, size: 128, offset: 12416)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !462, line: 1184, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1045, file: !462, line: 1185, baseType: !476, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1045, file: !462, line: 1186, baseType: !753, size: 128, align: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !461, file: !462, line: 1190, baseType: !1050, size: 64, offset: 12544)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !462, line: 53, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !461, file: !462, line: 1192, baseType: !1053, size: 128, offset: 12608)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !395, line: 64, size: 128, elements: !1054)
!1054 = !{!1055, !1148, !1149}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1053, file: !395, line: 65, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !295, line: 68, size: 512, align: 128, elements: !1058)
!1058 = !{!1059, !1060, !1140, !1147}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !295, line: 69, baseType: !70, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !295, line: 77, baseType: !1061, size: 320, offset: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1057, file: !295, line: 77, size: 320, elements: !1062)
!1062 = !{!1063, !1072, !1077, !1105, !1113, !1119, !1132, !1139}
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 78, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 78, size: 320, elements: !1065)
!1065 = !{!1066, !1067, !1070, !1071}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1064, file: !295, line: 84, baseType: !62, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1064, file: !295, line: 86, baseType: !1068, size: 64, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !295, line: 26, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1064, file: !295, line: 87, baseType: !70, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1064, file: !295, line: 94, baseType: !70, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 96, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 96, size: 64, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1073, file: !295, line: 101, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !63, line: 143, baseType: !80)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 103, baseType: !1078, size: 320)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 103, size: 320, elements: !1079)
!1079 = !{!1080, !1090, !1093, !1094}
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !295, line: 104, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !295, line: 104, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1081, file: !295, line: 105, baseType: !62, size: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !295, line: 106, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !295, line: 106, size: 128, elements: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1085, file: !295, line: 107, baseType: !1056, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1085, file: !295, line: 109, baseType: !115, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1085, file: !295, line: 110, baseType: !115, size: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1078, file: !295, line: 117, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !295, line: 117, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1078, file: !295, line: 119, baseType: !56, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !295, line: 120, baseType: !1095, size: 64, offset: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !295, line: 120, size: 64, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1095, file: !295, line: 121, baseType: !56, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1095, file: !295, line: 122, baseType: !70, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !295, line: 123, baseType: !1100, size: 32)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1095, file: !295, line: 123, size: 32, elements: !1101)
!1101 = !{!1102, !1103, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1100, file: !295, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1100, file: !295, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1100, file: !295, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 130, baseType: !1106, size: 192)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 130, size: 192, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1106, file: !295, line: 131, baseType: !70, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1106, file: !295, line: 134, baseType: !89, size: 8, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1106, file: !295, line: 135, baseType: !89, size: 8, offset: 72)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1106, file: !295, line: 136, baseType: !340, size: 32, offset: 96)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1106, file: !295, line: 137, baseType: !7, size: 32, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 139, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 139, size: 256, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1114, file: !295, line: 140, baseType: !70, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1114, file: !295, line: 141, baseType: !340, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1114, file: !295, line: 143, baseType: !62, size: 128, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 145, baseType: !1120, size: 256)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 145, size: 256, elements: !1121)
!1121 = !{!1122, !1123, !1125, !1126, !1131}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1120, file: !295, line: 146, baseType: !70, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1120, file: !295, line: 147, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !284, line: 509, baseType: !1056)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1120, file: !295, line: 148, baseType: !70, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !295, line: 149, baseType: !1127, size: 64, offset: 192)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !295, line: 149, size: 64, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1127, file: !295, line: 150, baseType: !311, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1127, file: !295, line: 151, baseType: !340, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1120, file: !295, line: 156, baseType: !164, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1061, file: !295, line: 159, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !295, line: 159, size: 128, elements: !1134)
!1134 = !{!1135, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1133, file: !295, line: 161, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !295, line: 161, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1133, file: !295, line: 162, baseType: !56, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1061, file: !295, line: 176, baseType: !753, size: 128, align: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !295, line: 179, baseType: !1141, size: 32, offset: 384)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1057, file: !295, line: 179, size: 32, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1141, file: !295, line: 184, baseType: !340, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1141, file: !295, line: 192, baseType: !7, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1141, file: !295, line: 194, baseType: !7, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1141, file: !295, line: 195, baseType: !115, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1057, file: !295, line: 199, baseType: !340, size: 32, offset: 416)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1053, file: !395, line: 67, baseType: !471, size: 32, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1053, file: !395, line: 68, baseType: !471, size: 32, offset: 96)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !461, file: !462, line: 1206, baseType: !115, size: 32, offset: 12736)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !461, file: !462, line: 1207, baseType: !115, size: 32, offset: 12768)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !461, file: !462, line: 1209, baseType: !70, size: 64, offset: 12800)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !461, file: !462, line: 1219, baseType: !80, size: 64, offset: 12864)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !461, file: !462, line: 1220, baseType: !80, size: 64, offset: 12928)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !461, file: !462, line: 1317, baseType: !115, size: 32, offset: 12992)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !461, file: !462, line: 1319, baseType: !460, size: 64, offset: 13056)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !461, file: !462, line: 1322, baseType: !1158, size: 64, offset: 13120)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !462, line: 1322, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !461, file: !462, line: 1326, baseType: !476, size: 32, offset: 13184)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !461, file: !462, line: 1342, baseType: !56, size: 64, offset: 13248)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !461, file: !462, line: 1343, baseType: !82, size: 64, offset: 13312)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !461, file: !462, line: 1344, baseType: !80, size: 64, offset: 13376)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !461, file: !462, line: 1345, baseType: !82, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !461, file: !462, line: 1346, baseType: !82, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !461, file: !462, line: 1347, baseType: !82, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !461, file: !462, line: 1348, baseType: !753, size: 128, align: 64, offset: 13504)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !461, file: !462, line: 1358, baseType: !1169, size: 34816, offset: 13824)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1170, line: 485, size: 34816, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1201, !1202, !1203, !1204, !1205, !1206, !1209, !1210, !1211}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1169, file: !1170, line: 487, baseType: !1173, size: 192)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1174, size: 192, elements: !206)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1175, line: 16, size: 64, elements: !1176)
!1175 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1174, file: !1175, line: 17, baseType: !444, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1174, file: !1175, line: 18, baseType: !444, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1174, file: !1175, line: 19, baseType: !444, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1174, file: !1175, line: 19, baseType: !444, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1174, file: !1175, line: 19, baseType: !444, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1174, file: !1175, line: 19, baseType: !444, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1174, file: !1175, line: 19, baseType: !444, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1174, file: !1175, line: 20, baseType: !444, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1174, file: !1175, line: 20, baseType: !444, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1174, file: !1175, line: 20, baseType: !444, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1174, file: !1175, line: 20, baseType: !444, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1174, file: !1175, line: 20, baseType: !444, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1174, file: !1175, line: 20, baseType: !444, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1169, file: !1170, line: 491, baseType: !70, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1169, file: !1170, line: 495, baseType: !247, size: 16, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1169, file: !1170, line: 496, baseType: !247, size: 16, offset: 272)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1169, file: !1170, line: 497, baseType: !247, size: 16, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1169, file: !1170, line: 498, baseType: !247, size: 16, offset: 304)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1169, file: !1170, line: 502, baseType: !70, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1169, file: !1170, line: 503, baseType: !70, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1169, file: !1170, line: 514, baseType: !1198, size: 256, offset: 448)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 256, elements: !99)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1170, line: 483, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1169, file: !1170, line: 516, baseType: !70, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1169, file: !1170, line: 518, baseType: !70, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1169, file: !1170, line: 520, baseType: !70, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1169, file: !1170, line: 521, baseType: !70, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1169, file: !1170, line: 522, baseType: !70, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1169, file: !1170, line: 528, baseType: !1207, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1170, line: 10, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1169, file: !1170, line: 535, baseType: !70, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1169, file: !1170, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1169, file: !1170, line: 540, baseType: !1212, size: 33280, offset: 1536)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1213, line: 317, size: 33280, elements: !1214)
!1213 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1212, file: !1213, line: 330, baseType: !7, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1212, file: !1213, line: 337, baseType: !70, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1212, file: !1213, line: 348, baseType: !1218, size: 32768, offset: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1213, line: 304, size: 32768, elements: !1219)
!1219 = !{!1220, !1235, !1274, !1324, !1341}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1218, file: !1213, line: 305, baseType: !1221, size: 896)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1213, line: 12, size: 896, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1234}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1221, file: !1213, line: 13, baseType: !470, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1221, file: !1213, line: 14, baseType: !470, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1221, file: !1213, line: 15, baseType: !470, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1221, file: !1213, line: 16, baseType: !470, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1221, file: !1213, line: 17, baseType: !470, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1221, file: !1213, line: 18, baseType: !470, size: 32, offset: 160)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1221, file: !1213, line: 19, baseType: !470, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1221, file: !1213, line: 22, baseType: !1231, size: 640, offset: 224)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 640, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 20)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1221, file: !1213, line: 25, baseType: !470, size: 32, offset: 864)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1218, file: !1213, line: 306, baseType: !1236, size: 4096, align: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1213, line: 34, size: 4096, align: 128, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1257, !1258, !1259, !1263, !1265, !1269}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1236, file: !1213, line: 35, baseType: !444, size: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1236, file: !1213, line: 36, baseType: !444, size: 16, offset: 16)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1236, file: !1213, line: 37, baseType: !444, size: 16, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1236, file: !1213, line: 38, baseType: !444, size: 16, offset: 48)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1213, line: 39, baseType: !1243, size: 128, offset: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !1213, line: 39, size: 128, elements: !1244)
!1244 = !{!1245, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1213, line: 40, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1213, line: 40, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1246, file: !1213, line: 41, baseType: !80, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1246, file: !1213, line: 42, baseType: !80, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !1213, line: 44, baseType: !1251, size: 128)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !1213, line: 44, size: 128, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1251, file: !1213, line: 45, baseType: !470, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1251, file: !1213, line: 46, baseType: !470, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1251, file: !1213, line: 47, baseType: !470, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1251, file: !1213, line: 48, baseType: !470, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1236, file: !1213, line: 51, baseType: !470, size: 32, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1236, file: !1213, line: 52, baseType: !470, size: 32, offset: 224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1236, file: !1213, line: 55, baseType: !1260, size: 1024, offset: 256)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 1024, elements: !1261)
!1261 = !{!1262}
!1262 = !DISubrange(count: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1236, file: !1213, line: 58, baseType: !1264, size: 2048, offset: 1280)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 2048, elements: !210)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1236, file: !1213, line: 60, baseType: !1266, size: 384, offset: 3328)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 384, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 12)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1213, line: 62, baseType: !1270, size: 384, offset: 3712)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !1213, line: 62, size: 384, elements: !1271)
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1270, file: !1213, line: 63, baseType: !1266, size: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1270, file: !1213, line: 64, baseType: !1266, size: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1218, file: !1213, line: 307, baseType: !1275, size: 1088)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1213, line: 79, size: 1088, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1323}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1275, file: !1213, line: 80, baseType: !470, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1275, file: !1213, line: 81, baseType: !470, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1275, file: !1213, line: 82, baseType: !470, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1275, file: !1213, line: 83, baseType: !470, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1275, file: !1213, line: 84, baseType: !470, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1275, file: !1213, line: 85, baseType: !470, size: 32, offset: 160)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1275, file: !1213, line: 86, baseType: !470, size: 32, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1275, file: !1213, line: 88, baseType: !1231, size: 640, offset: 224)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1275, file: !1213, line: 89, baseType: !607, size: 8, offset: 864)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1275, file: !1213, line: 90, baseType: !607, size: 8, offset: 872)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1275, file: !1213, line: 91, baseType: !607, size: 8, offset: 880)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1275, file: !1213, line: 92, baseType: !607, size: 8, offset: 888)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1275, file: !1213, line: 93, baseType: !607, size: 8, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1275, file: !1213, line: 94, baseType: !607, size: 8, offset: 904)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1275, file: !1213, line: 95, baseType: !1292, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1294, line: 11, size: 128, elements: !1295)
!1294 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1293, file: !1294, line: 12, baseType: !240, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1293, file: !1294, line: 13, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1300, line: 56, size: 1344, elements: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1299, file: !1300, line: 61, baseType: !70, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1299, file: !1300, line: 62, baseType: !70, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1299, file: !1300, line: 63, baseType: !70, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1299, file: !1300, line: 64, baseType: !70, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1299, file: !1300, line: 65, baseType: !70, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1299, file: !1300, line: 66, baseType: !70, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1299, file: !1300, line: 68, baseType: !70, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1299, file: !1300, line: 69, baseType: !70, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1299, file: !1300, line: 70, baseType: !70, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1299, file: !1300, line: 71, baseType: !70, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1299, file: !1300, line: 72, baseType: !70, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1299, file: !1300, line: 73, baseType: !70, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1299, file: !1300, line: 74, baseType: !70, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1299, file: !1300, line: 75, baseType: !70, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1299, file: !1300, line: 76, baseType: !70, size: 64, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1299, file: !1300, line: 81, baseType: !70, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1299, file: !1300, line: 83, baseType: !70, size: 64, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1299, file: !1300, line: 84, baseType: !70, size: 64, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !1300, line: 85, baseType: !70, size: 64, offset: 1152)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1299, file: !1300, line: 86, baseType: !70, size: 64, offset: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1299, file: !1300, line: 87, baseType: !70, size: 64, offset: 1280)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1275, file: !1213, line: 96, baseType: !470, size: 32, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1218, file: !1213, line: 308, baseType: !1325, size: 4608, align: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1213, line: 289, size: 4608, align: 512, elements: !1326)
!1326 = !{!1327, !1328, !1337}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1325, file: !1213, line: 290, baseType: !1236, size: 4096, align: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1325, file: !1213, line: 291, baseType: !1329, size: 512, offset: 4096)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1213, line: 268, size: 512, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1329, file: !1213, line: 269, baseType: !80, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1329, file: !1213, line: 270, baseType: !80, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1329, file: !1213, line: 271, baseType: !1334, size: 384, offset: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 384, elements: !1335)
!1335 = !{!1336}
!1336 = !DISubrange(count: 6)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1325, file: !1213, line: 292, baseType: !1338, offset: 4608)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 0)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1218, file: !1213, line: 309, baseType: !1342, size: 32768)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32768, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 4096)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !295, line: 378, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !453, file: !295, line: 384, baseType: !775, size: 192, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !315, file: !295, line: 500, baseType: !164, offset: 6656)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !315, file: !295, line: 501, baseType: !1350, size: 64, offset: 6656)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !295, line: 387, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !315, file: !295, line: 516, baseType: !1353, size: 64, offset: 6720)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1355, line: 18, flags: DIFlagFwdDecl)
!1355 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !315, file: !295, line: 519, baseType: !282, size: 64, offset: 6784)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !315, file: !295, line: 521, baseType: !1358, size: 64, offset: 6848)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !295, line: 521, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !315, file: !295, line: 545, baseType: !340, size: 32, offset: 6912)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !315, file: !295, line: 548, baseType: !1041, size: 8, offset: 6944)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !315, file: !295, line: 550, baseType: !1363, offset: 6952)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1364, line: 142, elements: !178)
!1364 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !315, file: !295, line: 554, baseType: !1366, size: 256, offset: 6976)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1367, line: 102, size: 256, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1366, file: !1367, line: 103, baseType: !348, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1366, file: !1367, line: 104, baseType: !62, size: 128, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1366, file: !1367, line: 105, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1367, line: 21, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !315, file: !295, line: 557, baseType: !470, size: 32, offset: 7232)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !312, file: !295, line: 565, baseType: !1379, offset: 7296)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: -1)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !294, file: !295, line: 333, baseType: !1383, size: 64, offset: 576)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !284, line: 284, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !284, line: 284, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1384, file: !284, line: 284, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !338, line: 19, baseType: !70)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !294, file: !295, line: 334, baseType: !70, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !294, file: !295, line: 343, baseType: !1390, size: 256, offset: 704)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !295, line: 340, size: 256, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1390, file: !295, line: 341, baseType: !302, size: 192, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1390, file: !295, line: 342, baseType: !70, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !294, file: !295, line: 351, baseType: !62, size: 128, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !294, file: !295, line: 353, baseType: !1396, size: 64, offset: 1088)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !295, line: 353, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !294, file: !295, line: 356, baseType: !1399, size: 64, offset: 1152)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !295, line: 356, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !294, file: !295, line: 359, baseType: !70, size: 64, offset: 1216)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !294, file: !295, line: 361, baseType: !282, size: 64, offset: 1280)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !294, file: !295, line: 362, baseType: !56, size: 64, offset: 1344)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !294, file: !295, line: 365, baseType: !348, size: 64, offset: 1408)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !294, file: !295, line: 373, baseType: !1407, offset: 1472)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !295, line: 296, elements: !178)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !261, file: !230, line: 90, baseType: !256, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !261, file: !230, line: 91, baseType: !1410, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !220, file: !152, line: 143, baseType: !1412, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!1415, !157}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1424, !1428, !1436, !1440}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !18, line: 40, baseType: !17, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1417, file: !18, line: 41, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1041}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1417, file: !18, line: 42, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!56}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1417, file: !18, line: 43, baseType: !1429, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!1432, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1417, file: !18, line: 44, baseType: !1437, size: 64, offset: 256)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!1432}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1417, file: !18, line: 45, baseType: !1441, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !56}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !220, file: !152, line: 144, baseType: !1445, size: 64, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1432, !157}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !220, file: !152, line: 145, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !157, !1452, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1355, line: 23, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 21, size: 32, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1454, file: !1355, line: 22, baseType: !1457, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !63, line: 32, baseType: !937)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1355, line: 28, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 26, size: 32, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1460, file: !1355, line: 27, baseType: !1463, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !63, line: 33, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !238, line: 50, baseType: !7)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !151, file: !152, line: 70, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1468, line: 123, size: 1024, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1612, !1613, !1614, !1615, !1616}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !1468, line: 124, baseType: !340, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1467, file: !1468, line: 125, baseType: !340, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1467, file: !1468, line: 135, baseType: !1466, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1467, file: !1468, line: 136, baseType: !128, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1467, file: !1468, line: 138, baseType: !302, size: 192, align: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1467, file: !1468, line: 140, baseType: !1432, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1467, file: !1468, line: 141, baseType: !7, size: 32, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1467, file: !1468, line: 142, baseType: !1478, size: 256, offset: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1467, file: !1468, line: 142, size: 256, elements: !1479)
!1479 = !{!1480, !1535, !1539}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1478, file: !1468, line: 143, baseType: !1481, size: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1468, line: 91, size: 192, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1481, file: !1468, line: 92, baseType: !70, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1481, file: !1468, line: 94, baseType: !319, size: 64, offset: 64)
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
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1496, file: !1497, line: 293, baseType: !164)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1496, file: !1497, line: 295, baseType: !1501, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 148, baseType: !7)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1496, file: !1497, line: 296, baseType: !56, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1492, file: !1493, line: 21, baseType: !7, size: 32, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1492, file: !1493, line: 22, baseType: !7, size: 32, offset: 160)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1487, file: !1468, line: 187, baseType: !470, size: 32, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1487, file: !1468, line: 188, baseType: !470, size: 32, offset: 352)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1487, file: !1468, line: 189, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1468, line: 168, size: 320, elements: !1510)
!1510 = !{!1511, !1517, !1521, !1525, !1529}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1509, file: !1468, line: 169, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!115, !1515, !1486}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !284, line: 539, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1509, file: !1468, line: 171, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!115, !1466, !128, !246}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1509, file: !1468, line: 173, baseType: !1522, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!115, !1466}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1509, file: !1468, line: 174, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!115, !1466, !1466, !128}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1509, file: !1468, line: 176, baseType: !1530, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!115, !1515, !1466, !1486}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1487, file: !1468, line: 192, baseType: !62, size: 128, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1487, file: !1468, line: 194, baseType: !746, size: 128, offset: 576)
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
!1550 = !{!115, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1468, line: 197, size: 1088, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1552, file: !1468, line: 199, baseType: !1466, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1552, file: !1468, line: 200, baseType: !282, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1552, file: !1468, line: 201, baseType: !1515, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1552, file: !1468, line: 202, baseType: !56, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1552, file: !1468, line: 205, baseType: !415, size: 192, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1552, file: !1468, line: 206, baseType: !415, size: 192, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1552, file: !1468, line: 207, baseType: !115, size: 32, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1552, file: !1468, line: 208, baseType: !62, size: 128, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1552, file: !1468, line: 209, baseType: !205, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1552, file: !1468, line: 211, baseType: !252, size: 64, offset: 896)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1552, file: !1468, line: 212, baseType: !1041, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1552, file: !1468, line: 213, baseType: !1041, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1552, file: !1468, line: 214, baseType: !1399, size: 64, offset: 1024)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1545, file: !1468, line: 223, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1551}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1545, file: !1468, line: 236, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!115, !1515, !56}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1545, file: !1468, line: 238, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!56, !1515, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1545, file: !1468, line: 239, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!56, !1515, !56, !1579}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1545, file: !1468, line: 240, baseType: !1585, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1515, !56}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1545, file: !1468, line: 242, baseType: !1589, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!236, !1551, !205, !252, !285}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1545, file: !1468, line: 252, baseType: !252, size: 64, offset: 448)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1545, file: !1468, line: 259, baseType: !1041, size: 8, offset: 512)
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
!1606 = !{!115, !1551, !293}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1540, file: !1468, line: 109, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1468, line: 31, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1540, file: !1468, line: 110, baseType: !285, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1540, file: !1468, line: 111, baseType: !1466, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1467, file: !1468, line: 148, baseType: !56, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1467, file: !1468, line: 154, baseType: !80, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1467, file: !1468, line: 156, baseType: !247, size: 16, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1467, file: !1468, line: 157, baseType: !246, size: 16, offset: 912)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1467, file: !1468, line: 158, baseType: !1617, size: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1468, line: 32, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !151, file: !152, line: 71, baseType: !1620, size: 32, offset: 448)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1621, line: 19, size: 32, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1620, file: !1621, line: 20, baseType: !476, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !151, file: !152, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !151, file: !152, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !151, file: !152, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !151, file: !152, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !151, file: !152, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !30, line: 463, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !148, file: !30, line: 465, baseType: !1632, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !148, file: !30, line: 467, baseType: !128, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !30, line: 468, baseType: !1636, size: 64, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1651, !1655}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !30, line: 88, baseType: !128, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1638, file: !30, line: 89, baseType: !258, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !30, line: 90, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!115, !1630, !200}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1638, file: !30, line: 91, baseType: !1647, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!205, !1630, !1650, !1452, !1458}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
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
!1663 = !{!115, !1630}
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
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !148, file: !30, line: 470, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1689, line: 82, size: 1408, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1776, !1779, !1782}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 83, baseType: !128, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1688, file: !1689, line: 84, baseType: !128, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1688, file: !1689, line: 85, baseType: !1630, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1688, file: !1689, line: 86, baseType: !258, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1688, file: !1689, line: 87, baseType: !258, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1688, file: !1689, line: 88, baseType: !258, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1688, file: !1689, line: 90, baseType: !1698, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!115, !1630, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1710, !1711, !1712, !1713, !1727, !1740, !1741, !1742, !1743, !1744, !1752, !1753, !1754, !1755, !1756, !1757}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1702, file: !24, line: 96, baseType: !128, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1702, file: !24, line: 97, baseType: !1687, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1702, file: !24, line: 99, baseType: !1707, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1709, line: 76, flags: DIFlagFwdDecl)
!1709 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1702, file: !24, line: 100, baseType: !128, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1702, file: !24, line: 102, baseType: !1041, size: 8, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1702, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1702, file: !24, line: 105, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1717, line: 262, size: 1600, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1721, !1722, !1726}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1716, file: !1717, line: 263, baseType: !1720, size: 256)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !1261)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1716, file: !1717, line: 264, baseType: !1720, size: 256, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1716, file: !1717, line: 265, baseType: !1723, size: 1024, offset: 512)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 1024, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1716, file: !1717, line: 266, baseType: !1432, size: 64, offset: 1536)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1702, file: !24, line: 106, baseType: !1728, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1717, line: 210, size: 256, elements: !1731)
!1731 = !{!1732, !1736, !1738, !1739}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1730, file: !1717, line: 211, baseType: !1733, size: 72)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 72, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 9)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1730, file: !1717, line: 212, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1717, line: 14, baseType: !70)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1730, file: !1717, line: 213, baseType: !471, size: 32, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1730, file: !1717, line: 214, baseType: !471, size: 32, offset: 224)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1702, file: !24, line: 108, baseType: !1661, size: 64, offset: 448)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1702, file: !24, line: 109, baseType: !1652, size: 64, offset: 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1702, file: !24, line: 110, baseType: !1661, size: 64, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1702, file: !24, line: 111, baseType: !1652, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1702, file: !24, line: 112, baseType: !1745, size: 64, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!115, !1630, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1749, file: !37, line: 51, baseType: !115, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1702, file: !24, line: 113, baseType: !1661, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1702, file: !24, line: 114, baseType: !258, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1702, file: !24, line: 115, baseType: !258, size: 64, offset: 896)
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
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1781, line: 187, elements: !178)
!1781 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1688, file: !1689, line: 114, baseType: !1041, size: 8, offset: 1344)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !148, file: !30, line: 471, baseType: !1701, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !148, file: !30, line: 473, baseType: !56, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !148, file: !30, line: 475, baseType: !56, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !148, file: !30, line: 480, baseType: !415, size: 192, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !148, file: !30, line: 484, baseType: !1788, size: 576, offset: 1216)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1788, file: !30, line: 362, baseType: !62, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1788, file: !30, line: 363, baseType: !62, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1788, file: !30, line: 364, baseType: !62, size: 128, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1788, file: !30, line: 365, baseType: !62, size: 128, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1788, file: !30, line: 366, baseType: !1041, size: 8, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1788, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !148, file: !30, line: 485, baseType: !1797, size: 2304, offset: 1792)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1894, !1898}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1797, file: !37, line: 566, baseType: !1748, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1797, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1797, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1797, file: !37, line: 569, baseType: !1041, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1797, file: !37, line: 570, baseType: !1041, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1797, file: !37, line: 571, baseType: !1041, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1797, file: !37, line: 572, baseType: !1041, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1797, file: !37, line: 573, baseType: !1041, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1797, file: !37, line: 574, baseType: !1041, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1797, file: !37, line: 575, baseType: !1041, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1797, file: !37, line: 576, baseType: !1041, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1797, file: !37, line: 577, baseType: !470, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !37, line: 578, baseType: !164, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !37, line: 580, baseType: !62, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1797, file: !37, line: 581, baseType: !775, size: 192, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1797, file: !37, line: 582, baseType: !1815, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1817, line: 43, size: 1472, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1826, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1816, file: !1817, line: 44, baseType: !128, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1816, file: !1817, line: 45, baseType: !115, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1816, file: !1817, line: 46, baseType: !62, size: 128, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1816, file: !1817, line: 47, baseType: !164, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1816, file: !1817, line: 48, baseType: !1824, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1816, file: !1817, line: 49, baseType: !1827, size: 320, offset: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1828, line: 11, size: 320, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1837}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1827, file: !1828, line: 16, baseType: !739, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1827, file: !1828, line: 17, baseType: !70, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1827, file: !1828, line: 18, baseType: !1833, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1836}
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 19, baseType: !470, size: 32, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1816, file: !1817, line: 50, baseType: !70, size: 64, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1816, file: !1817, line: 51, baseType: !546, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1816, file: !1817, line: 52, baseType: !546, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1816, file: !1817, line: 53, baseType: !546, size: 64, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1816, file: !1817, line: 54, baseType: !546, size: 64, offset: 896)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1816, file: !1817, line: 55, baseType: !546, size: 64, offset: 960)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1816, file: !1817, line: 56, baseType: !70, size: 64, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1816, file: !1817, line: 57, baseType: !70, size: 64, offset: 1088)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1816, file: !1817, line: 58, baseType: !70, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1816, file: !1817, line: 59, baseType: !70, size: 64, offset: 1216)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1816, file: !1817, line: 60, baseType: !70, size: 64, offset: 1280)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1816, file: !1817, line: 61, baseType: !1630, size: 64, offset: 1344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1816, file: !1817, line: 62, baseType: !1041, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1816, file: !1817, line: 63, baseType: !1041, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1797, file: !37, line: 583, baseType: !1041, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1797, file: !37, line: 584, baseType: !1041, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1797, file: !37, line: 585, baseType: !1041, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1797, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1797, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1797, file: !37, line: 592, baseType: !538, size: 512, offset: 576)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1797, file: !37, line: 593, baseType: !80, size: 64, offset: 1088)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1797, file: !37, line: 594, baseType: !1366, size: 256, offset: 1152)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1797, file: !37, line: 595, baseType: !746, size: 128, offset: 1408)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1797, file: !37, line: 596, baseType: !1824, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1797, file: !37, line: 597, baseType: !340, size: 32, offset: 1600)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1797, file: !37, line: 598, baseType: !340, size: 32, offset: 1632)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1797, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1797, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1797, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1797, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1797, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1797, file: !37, line: 604, baseType: !1041, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1797, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1797, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1797, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1797, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1797, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1797, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1797, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1797, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1797, file: !37, line: 613, baseType: !115, size: 32, offset: 1792)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1797, file: !37, line: 614, baseType: !115, size: 32, offset: 1824)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1797, file: !37, line: 615, baseType: !80, size: 64, offset: 1856)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1797, file: !37, line: 616, baseType: !80, size: 64, offset: 1920)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1797, file: !37, line: 617, baseType: !80, size: 64, offset: 1984)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1797, file: !37, line: 618, baseType: !80, size: 64, offset: 2048)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1797, file: !37, line: 620, baseType: !1885, size: 64, offset: 2112)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1886, file: !37, line: 537, baseType: !164)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1886, file: !37, line: 538, baseType: !7, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1886, file: !37, line: 540, baseType: !62, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1886, file: !37, line: 543, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1797, file: !37, line: 621, baseType: !1895, size: 64, offset: 2176)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1630, !699}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1797, file: !37, line: 622, baseType: !1899, size: 64, offset: 2240)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !148, file: !30, line: 486, baseType: !1902, size: 64, offset: 4096)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1911, !1912, !1913}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1903, file: !37, line: 643, baseType: !1658, size: 1472)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1903, file: !37, line: 644, baseType: !1661, size: 64, offset: 1472)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1903, file: !37, line: 645, baseType: !1908, size: 64, offset: 1536)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1630, !1041}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1903, file: !37, line: 646, baseType: !1661, size: 64, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1903, file: !37, line: 647, baseType: !1652, size: 64, offset: 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1903, file: !37, line: 648, baseType: !1652, size: 64, offset: 1728)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !148, file: !30, line: 493, baseType: !1915, size: 64, offset: 4160)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !148, file: !30, line: 499, baseType: !62, size: 128, offset: 4224)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !148, file: !30, line: 502, baseType: !1919, size: 64, offset: 4352)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !148, file: !30, line: 504, baseType: !1923, size: 64, offset: 4416)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !148, file: !30, line: 505, baseType: !80, size: 64, offset: 4480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !148, file: !30, line: 510, baseType: !80, size: 64, offset: 4544)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !148, file: !30, line: 511, baseType: !1927, size: 64, offset: 4608)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !148, file: !30, line: 513, baseType: !1931, size: 64, offset: 4672)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1932, file: !30, line: 293, baseType: !7, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1932, file: !30, line: 294, baseType: !70, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !148, file: !30, line: 515, baseType: !62, size: 128, offset: 4736)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !148, file: !30, line: 526, baseType: !1938, offset: 4864)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1939, line: 5, elements: !178)
!1939 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !148, file: !30, line: 528, baseType: !1941, size: 64, offset: 4864)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1943, line: 14, flags: DIFlagFwdDecl)
!1943 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !148, file: !30, line: 529, baseType: !1945, size: 64, offset: 4928)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1689, line: 22, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !148, file: !30, line: 534, baseType: !1948, size: 32, offset: 4992)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !63, line: 16, baseType: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !63, line: 13, baseType: !470)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !148, file: !30, line: 535, baseType: !470, size: 32, offset: 5024)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !148, file: !30, line: 537, baseType: !164, offset: 5056)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !148, file: !30, line: 538, baseType: !62, size: 128, offset: 5056)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !148, file: !30, line: 540, baseType: !1954, size: 64, offset: 5184)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1956, line: 54, size: 960, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1968, !1972, !1973, !1974, !1975, !1979, !1983, !1984}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1955, file: !1956, line: 55, baseType: !128, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1955, file: !1956, line: 56, baseType: !1707, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1955, file: !1956, line: 58, baseType: !258, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1955, file: !1956, line: 59, baseType: !258, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1955, file: !1956, line: 60, baseType: !157, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1955, file: !1956, line: 62, baseType: !1643, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1955, file: !1956, line: 63, baseType: !1965, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!205, !1630, !1650}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1955, file: !1956, line: 65, baseType: !1969, size: 64, offset: 448)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !1954}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1955, file: !1956, line: 66, baseType: !1652, size: 64, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1955, file: !1956, line: 68, baseType: !1661, size: 64, offset: 576)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1955, file: !1956, line: 70, baseType: !1415, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1955, file: !1956, line: 71, baseType: !1976, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1432, !1630}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1955, file: !1956, line: 73, baseType: !1980, size: 64, offset: 768)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1630, !1452, !1458}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1955, file: !1956, line: 75, baseType: !1656, size: 64, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1955, file: !1956, line: 77, baseType: !1777, size: 64, offset: 896)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !148, file: !30, line: 541, baseType: !258, size: 64, offset: 5248)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !30, line: 543, baseType: !1652, size: 64, offset: 5312)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !148, file: !30, line: 544, baseType: !1988, size: 64, offset: 5376)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !148, file: !30, line: 545, baseType: !1991, size: 64, offset: 5440)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !148, file: !30, line: 547, baseType: !1041, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !148, file: !30, line: 548, baseType: !1041, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !148, file: !30, line: 549, baseType: !1041, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !148, file: !30, line: 550, baseType: !1041, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !144, file: !145, line: 245, baseType: !80, size: 64, offset: 5568)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !144, file: !145, line: 246, baseType: !7, size: 32, offset: 5632)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !144, file: !145, line: 247, baseType: !115, size: 32, offset: 5664)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !144, file: !145, line: 249, baseType: !62, size: 128, offset: 5696)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !144, file: !145, line: 250, baseType: !62, size: 128, offset: 5824)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !144, file: !145, line: 251, baseType: !62, size: 128, offset: 5952)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !144, file: !145, line: 252, baseType: !62, size: 128, offset: 6080)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !144, file: !145, line: 254, baseType: !2005, size: 64, offset: 6208)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !145, line: 411, size: 6464, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2014, !2015, !2016, !2020, !2024, !2025, !2026, !2027, !2028}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2006, file: !145, line: 412, baseType: !62, size: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2006, file: !145, line: 413, baseType: !205, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2006, file: !145, line: 416, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!115, !143}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2006, file: !145, line: 417, baseType: !2011, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2006, file: !145, line: 418, baseType: !2011, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2006, file: !145, line: 421, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!1041, !143}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2006, file: !145, line: 422, baseType: !2021, size: 64, offset: 448)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!115, !143, !1748}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2006, file: !145, line: 423, baseType: !2011, size: 64, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2006, file: !145, line: 426, baseType: !89, size: 8, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2006, file: !145, line: 427, baseType: !148, size: 5568, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !2006, file: !145, line: 428, baseType: !62, size: 128, offset: 6208)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2006, file: !145, line: 429, baseType: !62, size: 128, offset: 6336)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !144, file: !145, line: 255, baseType: !2030, size: 64, offset: 6272)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !145, line: 202, size: 6720, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2036, !2037, !2038, !2039, !2045, !2049, !2050, !2051, !2052, !2053}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2031, file: !145, line: 203, baseType: !148, size: 5568)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2031, file: !145, line: 204, baseType: !89, size: 8, offset: 5568)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2031, file: !145, line: 205, baseType: !62, size: 128, offset: 5632)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2031, file: !145, line: 206, baseType: !62, size: 128, offset: 5760)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2031, file: !145, line: 207, baseType: !62, size: 128, offset: 5888)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2031, file: !145, line: 209, baseType: !2005, size: 64, offset: 6016)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2031, file: !145, line: 210, baseType: !2040, size: 64, offset: 6080)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !145, line: 369, size: 128, elements: !2042)
!2042 = !{!2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2041, file: !145, line: 370, baseType: !978, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2041, file: !145, line: 371, baseType: !2040, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2031, file: !145, line: 212, baseType: !2046, size: 400, offset: 6144)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 400, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 50)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !2031, file: !145, line: 213, baseType: !89, size: 8, offset: 6544)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !2031, file: !145, line: 214, baseType: !89, size: 8, offset: 6552)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2031, file: !145, line: 215, baseType: !7, size: 32, offset: 6560)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2031, file: !145, line: 216, baseType: !89, size: 8, offset: 6592)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !2031, file: !145, line: 217, baseType: !2054, size: 64, offset: 6656)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !145, line: 217, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !144, file: !145, line: 256, baseType: !2057, size: 64, offset: 6336)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !145, line: 374, size: 1664, elements: !2059)
!2059 = !{!2060, !2061, !2069, !2070, !2074, !2078, !2079, !2080, !2081}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2058, file: !145, line: 375, baseType: !128, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2058, file: !145, line: 376, baseType: !2062, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1717, line: 220, size: 128, elements: !2065)
!2065 = !{!2066, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2064, file: !1717, line: 221, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !576)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2064, file: !1717, line: 222, baseType: !1737, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2058, file: !145, line: 377, baseType: !7, size: 32, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2058, file: !145, line: 378, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!115, !143, !2062}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2058, file: !145, line: 379, baseType: !2075, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !143}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2058, file: !145, line: 380, baseType: !2075, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2058, file: !145, line: 381, baseType: !2021, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2058, file: !145, line: 382, baseType: !2011, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2058, file: !145, line: 383, baseType: !1702, size: 1152, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !144, file: !145, line: 257, baseType: !2083, size: 64, offset: 6400)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !145, line: 226, size: 256, elements: !2085)
!2085 = !{!2086, !2087, !2123, !2124}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2084, file: !145, line: 227, baseType: !2030, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2084, file: !145, line: 228, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !145, line: 388, size: 2240, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2105, !2106, !2110, !2114, !2118, !2122}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2089, file: !145, line: 389, baseType: !62, size: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2089, file: !145, line: 390, baseType: !205, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2089, file: !145, line: 391, baseType: !2094, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1717, line: 225, size: 640, elements: !2097)
!2097 = !{!2098, !2099, !2100}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2096, file: !1717, line: 226, baseType: !2067, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2096, file: !1717, line: 227, baseType: !1737, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2096, file: !1717, line: 230, baseType: !2101, size: 512, offset: 128)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, size: 512, elements: !576)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2096, file: !1717, line: 228, size: 64, elements: !2103)
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2102, file: !1717, line: 229, baseType: !2067, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !145, line: 392, baseType: !7, size: 32, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2089, file: !145, line: 393, baseType: !2107, size: 64, offset: 320)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!115, !2083, !2094}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2089, file: !145, line: 395, baseType: !2111, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !2083}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2089, file: !145, line: 396, baseType: !2115, size: 64, offset: 448)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!115, !2083, !1748}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2089, file: !145, line: 397, baseType: !2119, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!115, !2083}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2089, file: !145, line: 398, baseType: !2058, size: 1664, offset: 576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2084, file: !145, line: 229, baseType: !56, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !2084, file: !145, line: 230, baseType: !1748, size: 32, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !144, file: !145, line: 259, baseType: !2040, size: 64, offset: 6464)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !144, file: !145, line: 261, baseType: !115, size: 32, offset: 6528)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !144, file: !145, line: 262, baseType: !115, size: 32, offset: 6560)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !144, file: !145, line: 263, baseType: !7, size: 32, offset: 6592)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !144, file: !145, line: 264, baseType: !62, size: 128, offset: 6656)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !144, file: !145, line: 265, baseType: !62, size: 128, offset: 6784)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !145, line: 267, baseType: !2046, size: 400, offset: 6912)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !144, file: !145, line: 268, baseType: !115, size: 32, offset: 7328)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !144, file: !145, line: 269, baseType: !2054, size: 64, offset: 7360)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !144, file: !145, line: 270, baseType: !56, size: 64, offset: 7424)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 256, elements: !832)
!2137 = !DIGlobalVariableExpression(var: !2138, expr: !DIExpression())
!2138 = distinct !DIGlobalVariable(name: "xtab", scope: !2139, file: !3, line: 197, type: !2143, isLocal: true, isDefinition: true)
!2139 = distinct !DISubprogram(name: "pnp_assign_dma", scope: !3, file: !3, line: 191, type: !2140, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!115, !143, !2142, !115}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, elements: !576)
!2144 = !{i32 7, !"Dwarf Version", i32 4}
!2145 = !{i32 2, !"Debug Info Version", i32 3}
!2146 = !{i32 1, !"wchar_size", i32 2}
!2147 = !{i32 1, !"Code Model", i32 2}
!2148 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2149 = distinct !DISubprogram(name: "pnp_init_resources", scope: !3, file: !3, line: 236, type: !2076, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2150 = !DILocalVariable(name: "dev", arg: 1, scope: !2149, file: !3, line: 236, type: !143)
!2151 = !DILocation(line: 236, column: 41, scope: !2149)
!2152 = !DILocation(line: 238, column: 21, scope: !2149)
!2153 = !DILocation(line: 238, column: 2, scope: !2149)
!2154 = !DILocation(line: 239, column: 1, scope: !2149)
!2155 = distinct !DISubprogram(name: "pnp_auto_config_dev", scope: !3, file: !3, line: 308, type: !2012, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2156 = !DILocalVariable(name: "dev", arg: 1, scope: !2155, file: !3, line: 308, type: !143)
!2157 = !DILocation(line: 308, column: 41, scope: !2155)
!2158 = !DILocalVariable(name: "i", scope: !2155, file: !3, line: 310, type: !115)
!2159 = !DILocation(line: 310, column: 6, scope: !2155)
!2160 = !DILocalVariable(name: "ret", scope: !2155, file: !3, line: 310, type: !115)
!2161 = !DILocation(line: 310, column: 9, scope: !2155)
!2162 = !DILocation(line: 312, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 312, column: 6)
!2164 = !DILocation(line: 312, column: 6, scope: !2155)
!2165 = !DILocation(line: 313, column: 3, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 313, column: 3)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 313, column: 3)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 312, column: 31)
!2169 = !DILocation(line: 313, column: 3, scope: !2167)
!2170 = !DILocation(line: 314, column: 3, scope: !2168)
!2171 = !DILocation(line: 317, column: 29, scope: !2155)
!2172 = !DILocation(line: 317, column: 8, scope: !2155)
!2173 = !DILocation(line: 317, column: 6, scope: !2155)
!2174 = !DILocation(line: 318, column: 6, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 318, column: 6)
!2176 = !DILocation(line: 318, column: 10, scope: !2175)
!2177 = !DILocation(line: 318, column: 6, scope: !2155)
!2178 = !DILocation(line: 319, column: 3, scope: !2175)
!2179 = !DILocation(line: 321, column: 9, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 321, column: 2)
!2181 = !DILocation(line: 321, column: 7, scope: !2180)
!2182 = !DILocation(line: 321, column: 14, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 321, column: 2)
!2184 = !DILocation(line: 321, column: 18, scope: !2183)
!2185 = !DILocation(line: 321, column: 23, scope: !2183)
!2186 = !DILocation(line: 321, column: 16, scope: !2183)
!2187 = !DILocation(line: 321, column: 2, scope: !2180)
!2188 = !DILocation(line: 322, column: 30, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 321, column: 48)
!2190 = !DILocation(line: 322, column: 35, scope: !2189)
!2191 = !DILocation(line: 322, column: 9, scope: !2189)
!2192 = !DILocation(line: 322, column: 7, scope: !2189)
!2193 = !DILocation(line: 323, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 323, column: 7)
!2195 = !DILocation(line: 323, column: 11, scope: !2194)
!2196 = !DILocation(line: 323, column: 7, scope: !2189)
!2197 = !DILocation(line: 324, column: 4, scope: !2194)
!2198 = !DILocation(line: 325, column: 2, scope: !2189)
!2199 = !DILocation(line: 321, column: 44, scope: !2183)
!2200 = !DILocation(line: 321, column: 2, scope: !2183)
!2201 = distinct !{!2201, !2187, !2202}
!2202 = !DILocation(line: 325, column: 2, scope: !2180)
!2203 = !DILocation(line: 327, column: 2, scope: !2155)
!2204 = !DILocation(line: 328, column: 9, scope: !2155)
!2205 = !DILocation(line: 328, column: 2, scope: !2155)
!2206 = !DILocation(line: 329, column: 1, scope: !2155)
!2207 = distinct !DISubprogram(name: "pnp_assign_resources", scope: !3, file: !3, line: 256, type: !2208, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!115, !143, !115}
!2210 = !DILocalVariable(name: "dev", arg: 1, scope: !2207, file: !3, line: 256, type: !143)
!2211 = !DILocation(line: 256, column: 49, scope: !2207)
!2212 = !DILocalVariable(name: "set", arg: 2, scope: !2207, file: !3, line: 256, type: !115)
!2213 = !DILocation(line: 256, column: 58, scope: !2207)
!2214 = !DILocalVariable(name: "option", scope: !2207, file: !3, line: 258, type: !57)
!2215 = !DILocation(line: 258, column: 21, scope: !2207)
!2216 = !DILocalVariable(name: "nport", scope: !2207, file: !3, line: 259, type: !115)
!2217 = !DILocation(line: 259, column: 6, scope: !2207)
!2218 = !DILocalVariable(name: "nmem", scope: !2207, file: !3, line: 259, type: !115)
!2219 = !DILocation(line: 259, column: 17, scope: !2207)
!2220 = !DILocalVariable(name: "nirq", scope: !2207, file: !3, line: 259, type: !115)
!2221 = !DILocation(line: 259, column: 27, scope: !2207)
!2222 = !DILocalVariable(name: "ndma", scope: !2207, file: !3, line: 260, type: !115)
!2223 = !DILocation(line: 260, column: 6, scope: !2207)
!2224 = !DILocalVariable(name: "ret", scope: !2207, file: !3, line: 261, type: !115)
!2225 = !DILocation(line: 261, column: 6, scope: !2207)
!2226 = !DILocation(line: 263, column: 2, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 263, column: 2)
!2228 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 263, column: 2)
!2229 = !DILocation(line: 263, column: 2, scope: !2228)
!2230 = !DILocation(line: 264, column: 2, scope: !2207)
!2231 = !DILocation(line: 265, column: 27, scope: !2207)
!2232 = !DILocation(line: 265, column: 2, scope: !2207)
!2233 = !DILocalVariable(name: "__mptr", scope: !2234, file: !3, line: 267, type: !56)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 267, column: 2)
!2235 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 267, column: 2)
!2236 = !DILocation(line: 267, column: 2, scope: !2234)
!2237 = !DILocation(line: 267, column: 2, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 267, column: 2)
!2239 = !DILocation(line: 267, column: 2, scope: !2235)
!2240 = !DILocation(line: 267, column: 2, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 267, column: 2)
!2242 = !DILocation(line: 268, column: 31, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 268, column: 7)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 267, column: 51)
!2245 = !DILocation(line: 268, column: 7, scope: !2243)
!2246 = !DILocation(line: 268, column: 39, scope: !2243)
!2247 = !DILocation(line: 269, column: 22, scope: !2243)
!2248 = !DILocation(line: 269, column: 7, scope: !2243)
!2249 = !DILocation(line: 269, column: 33, scope: !2243)
!2250 = !DILocation(line: 269, column: 30, scope: !2243)
!2251 = !DILocation(line: 268, column: 7, scope: !2244)
!2252 = !DILocation(line: 270, column: 5, scope: !2243)
!2253 = !DILocation(line: 272, column: 11, scope: !2244)
!2254 = !DILocation(line: 272, column: 19, scope: !2244)
!2255 = !DILocation(line: 272, column: 3, scope: !2244)
!2256 = !DILocation(line: 274, column: 26, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 272, column: 25)
!2258 = !DILocation(line: 274, column: 32, scope: !2257)
!2259 = !DILocation(line: 274, column: 40, scope: !2257)
!2260 = !DILocation(line: 274, column: 42, scope: !2257)
!2261 = !DILocation(line: 274, column: 53, scope: !2257)
!2262 = !DILocation(line: 274, column: 10, scope: !2257)
!2263 = !DILocation(line: 274, column: 8, scope: !2257)
!2264 = !DILocation(line: 275, column: 4, scope: !2257)
!2265 = !DILocation(line: 277, column: 25, scope: !2257)
!2266 = !DILocation(line: 277, column: 31, scope: !2257)
!2267 = !DILocation(line: 277, column: 39, scope: !2257)
!2268 = !DILocation(line: 277, column: 41, scope: !2257)
!2269 = !DILocation(line: 277, column: 50, scope: !2257)
!2270 = !DILocation(line: 277, column: 10, scope: !2257)
!2271 = !DILocation(line: 277, column: 8, scope: !2257)
!2272 = !DILocation(line: 278, column: 4, scope: !2257)
!2273 = !DILocation(line: 280, column: 25, scope: !2257)
!2274 = !DILocation(line: 280, column: 31, scope: !2257)
!2275 = !DILocation(line: 280, column: 39, scope: !2257)
!2276 = !DILocation(line: 280, column: 41, scope: !2257)
!2277 = !DILocation(line: 280, column: 50, scope: !2257)
!2278 = !DILocation(line: 280, column: 10, scope: !2257)
!2279 = !DILocation(line: 280, column: 8, scope: !2257)
!2280 = !DILocation(line: 281, column: 4, scope: !2257)
!2281 = !DILocation(line: 284, column: 25, scope: !2257)
!2282 = !DILocation(line: 284, column: 31, scope: !2257)
!2283 = !DILocation(line: 284, column: 39, scope: !2257)
!2284 = !DILocation(line: 284, column: 41, scope: !2257)
!2285 = !DILocation(line: 284, column: 50, scope: !2257)
!2286 = !DILocation(line: 284, column: 10, scope: !2257)
!2287 = !DILocation(line: 284, column: 8, scope: !2257)
!2288 = !DILocation(line: 285, column: 4, scope: !2257)
!2289 = !DILocation(line: 288, column: 8, scope: !2257)
!2290 = !DILocation(line: 289, column: 4, scope: !2257)
!2291 = !DILocation(line: 291, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 291, column: 7)
!2293 = !DILocation(line: 291, column: 11, scope: !2292)
!2294 = !DILocation(line: 291, column: 7, scope: !2244)
!2295 = !DILocation(line: 292, column: 4, scope: !2292)
!2296 = !DILocation(line: 293, column: 2, scope: !2244)
!2297 = !DILocalVariable(name: "__mptr", scope: !2298, file: !3, line: 267, type: !56)
!2298 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 267, column: 2)
!2299 = !DILocation(line: 267, column: 2, scope: !2298)
!2300 = !DILocation(line: 267, column: 2, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 267, column: 2)
!2302 = distinct !{!2302, !2239, !2303}
!2303 = !DILocation(line: 293, column: 2, scope: !2235)
!2304 = !DILocation(line: 295, column: 2, scope: !2207)
!2305 = !DILocation(line: 296, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 296, column: 6)
!2307 = !DILocation(line: 296, column: 10, scope: !2306)
!2308 = !DILocation(line: 296, column: 6, scope: !2207)
!2309 = !DILocation(line: 297, column: 3, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 297, column: 3)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 297, column: 3)
!2312 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 296, column: 15)
!2313 = !DILocation(line: 297, column: 3, scope: !2311)
!2314 = !DILocation(line: 298, column: 28, scope: !2312)
!2315 = !DILocation(line: 298, column: 3, scope: !2312)
!2316 = !DILocation(line: 299, column: 2, scope: !2312)
!2317 = !DILocation(line: 300, column: 26, scope: !2306)
!2318 = !DILocation(line: 300, column: 3, scope: !2306)
!2319 = !DILocation(line: 301, column: 9, scope: !2207)
!2320 = !DILocation(line: 301, column: 2, scope: !2207)
!2321 = distinct !DISubprogram(name: "pnp_start_dev", scope: !3, file: !3, line: 337, type: !2012, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2322 = !DILocalVariable(name: "dev", arg: 1, scope: !2321, file: !3, line: 337, type: !143)
!2323 = !DILocation(line: 337, column: 35, scope: !2321)
!2324 = !DILocation(line: 339, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 339, column: 6)
!2326 = !DILocation(line: 339, column: 6, scope: !2321)
!2327 = !DILocation(line: 340, column: 3, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 340, column: 3)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 340, column: 3)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 339, column: 27)
!2331 = !DILocation(line: 340, column: 3, scope: !2329)
!2332 = !DILocation(line: 341, column: 3, scope: !2330)
!2333 = !DILocation(line: 344, column: 25, scope: !2321)
!2334 = !DILocation(line: 344, column: 2, scope: !2321)
!2335 = !DILocation(line: 345, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 345, column: 6)
!2337 = !DILocation(line: 345, column: 11, scope: !2336)
!2338 = !DILocation(line: 345, column: 21, scope: !2336)
!2339 = !DILocation(line: 345, column: 25, scope: !2336)
!2340 = !DILocation(line: 345, column: 30, scope: !2336)
!2341 = !DILocation(line: 345, column: 6, scope: !2321)
!2342 = !DILocation(line: 346, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 345, column: 35)
!2344 = !DILocation(line: 347, column: 3, scope: !2343)
!2345 = !DILocation(line: 350, column: 2, scope: !2321)
!2346 = !DILocation(line: 351, column: 2, scope: !2321)
!2347 = !DILocation(line: 352, column: 1, scope: !2321)
!2348 = distinct !DISubprogram(name: "pnp_stop_dev", scope: !3, file: !3, line: 360, type: !2012, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2349 = !DILocalVariable(name: "dev", arg: 1, scope: !2348, file: !3, line: 360, type: !143)
!2350 = !DILocation(line: 360, column: 34, scope: !2348)
!2351 = !DILocation(line: 362, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 362, column: 6)
!2353 = !DILocation(line: 362, column: 6, scope: !2348)
!2354 = !DILocation(line: 363, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 363, column: 3)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 363, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 362, column: 29)
!2358 = !DILocation(line: 363, column: 3, scope: !2356)
!2359 = !DILocation(line: 364, column: 3, scope: !2357)
!2360 = !DILocation(line: 366, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 366, column: 6)
!2362 = !DILocation(line: 366, column: 11, scope: !2361)
!2363 = !DILocation(line: 366, column: 21, scope: !2361)
!2364 = !DILocation(line: 366, column: 29, scope: !2361)
!2365 = !DILocation(line: 366, column: 34, scope: !2361)
!2366 = !DILocation(line: 366, column: 6, scope: !2348)
!2367 = !DILocation(line: 367, column: 3, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 366, column: 39)
!2369 = !DILocation(line: 368, column: 3, scope: !2368)
!2370 = !DILocation(line: 371, column: 2, scope: !2348)
!2371 = !DILocation(line: 372, column: 2, scope: !2348)
!2372 = !DILocation(line: 373, column: 1, scope: !2348)
!2373 = distinct !DISubprogram(name: "pnp_activate_dev", scope: !3, file: !3, line: 381, type: !2012, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2374 = !DILocalVariable(name: "dev", arg: 1, scope: !2373, file: !3, line: 381, type: !143)
!2375 = !DILocation(line: 381, column: 38, scope: !2373)
!2376 = !DILocalVariable(name: "error", scope: !2373, file: !3, line: 383, type: !115)
!2377 = !DILocation(line: 383, column: 6, scope: !2373)
!2378 = !DILocation(line: 385, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 385, column: 6)
!2380 = !DILocation(line: 385, column: 11, scope: !2379)
!2381 = !DILocation(line: 385, column: 6, scope: !2373)
!2382 = !DILocation(line: 386, column: 3, scope: !2379)
!2383 = !DILocation(line: 389, column: 26, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 389, column: 6)
!2385 = !DILocation(line: 389, column: 6, scope: !2384)
!2386 = !DILocation(line: 389, column: 6, scope: !2373)
!2387 = !DILocation(line: 390, column: 3, scope: !2384)
!2388 = !DILocation(line: 392, column: 24, scope: !2373)
!2389 = !DILocation(line: 392, column: 10, scope: !2373)
!2390 = !DILocation(line: 392, column: 8, scope: !2373)
!2391 = !DILocation(line: 393, column: 6, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 393, column: 6)
!2393 = !DILocation(line: 393, column: 6, scope: !2373)
!2394 = !DILocation(line: 394, column: 10, scope: !2392)
!2395 = !DILocation(line: 394, column: 3, scope: !2392)
!2396 = !DILocation(line: 396, column: 2, scope: !2373)
!2397 = !DILocation(line: 396, column: 7, scope: !2373)
!2398 = !DILocation(line: 396, column: 14, scope: !2373)
!2399 = !DILocation(line: 397, column: 2, scope: !2373)
!2400 = !DILocation(line: 398, column: 1, scope: !2373)
!2401 = distinct !DISubprogram(name: "pnp_disable_dev", scope: !3, file: !3, line: 406, type: !2012, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2402 = !DILocalVariable(name: "dev", arg: 1, scope: !2401, file: !3, line: 406, type: !143)
!2403 = !DILocation(line: 406, column: 37, scope: !2401)
!2404 = !DILocalVariable(name: "error", scope: !2401, file: !3, line: 408, type: !115)
!2405 = !DILocation(line: 408, column: 6, scope: !2401)
!2406 = !DILocation(line: 410, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 410, column: 6)
!2408 = !DILocation(line: 410, column: 12, scope: !2407)
!2409 = !DILocation(line: 410, column: 6, scope: !2401)
!2410 = !DILocation(line: 411, column: 3, scope: !2407)
!2411 = !DILocation(line: 413, column: 23, scope: !2401)
!2412 = !DILocation(line: 413, column: 10, scope: !2401)
!2413 = !DILocation(line: 413, column: 8, scope: !2401)
!2414 = !DILocation(line: 414, column: 6, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 414, column: 6)
!2416 = !DILocation(line: 414, column: 6, scope: !2401)
!2417 = !DILocation(line: 415, column: 10, scope: !2415)
!2418 = !DILocation(line: 415, column: 3, scope: !2415)
!2419 = !DILocation(line: 417, column: 2, scope: !2401)
!2420 = !DILocation(line: 417, column: 7, scope: !2401)
!2421 = !DILocation(line: 417, column: 14, scope: !2401)
!2422 = !DILocation(line: 420, column: 2, scope: !2401)
!2423 = !DILocation(line: 421, column: 27, scope: !2401)
!2424 = !DILocation(line: 421, column: 2, scope: !2401)
!2425 = !DILocation(line: 422, column: 2, scope: !2401)
!2426 = !DILocation(line: 424, column: 2, scope: !2401)
!2427 = !DILocation(line: 425, column: 1, scope: !2401)
!2428 = distinct !DISubprogram(name: "pnp_clean_resource_table", scope: !3, file: !3, line: 241, type: !2076, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2429 = !DILocalVariable(name: "dev", arg: 1, scope: !2428, file: !3, line: 241, type: !143)
!2430 = !DILocation(line: 241, column: 54, scope: !2428)
!2431 = !DILocalVariable(name: "pnp_res", scope: !2428, file: !3, line: 243, type: !117)
!2432 = !DILocation(line: 243, column: 23, scope: !2428)
!2433 = !DILocalVariable(name: "tmp", scope: !2428, file: !3, line: 243, type: !117)
!2434 = !DILocation(line: 243, column: 33, scope: !2428)
!2435 = !DILocalVariable(name: "__mptr", scope: !2436, file: !3, line: 245, type: !56)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 245, column: 2)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 245, column: 2)
!2438 = !DILocation(line: 245, column: 2, scope: !2436)
!2439 = !DILocation(line: 245, column: 2, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 245, column: 2)
!2441 = !DILocation(line: 245, column: 2, scope: !2437)
!2442 = !DILocalVariable(name: "__mptr", scope: !2443, file: !3, line: 245, type: !56)
!2443 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 245, column: 2)
!2444 = !DILocation(line: 245, column: 2, scope: !2443)
!2445 = !DILocation(line: 245, column: 2, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 245, column: 2)
!2447 = !DILocation(line: 245, column: 2, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 245, column: 2)
!2449 = !DILocation(line: 246, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 246, column: 7)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 245, column: 64)
!2452 = !DILocation(line: 246, column: 16, scope: !2450)
!2453 = !DILocation(line: 246, column: 20, scope: !2450)
!2454 = !DILocation(line: 246, column: 26, scope: !2450)
!2455 = !DILocation(line: 246, column: 7, scope: !2451)
!2456 = !DILocation(line: 247, column: 22, scope: !2450)
!2457 = !DILocation(line: 247, column: 4, scope: !2450)
!2458 = !DILocation(line: 248, column: 2, scope: !2451)
!2459 = !DILocalVariable(name: "__mptr", scope: !2460, file: !3, line: 245, type: !56)
!2460 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 245, column: 2)
!2461 = !DILocation(line: 245, column: 2, scope: !2460)
!2462 = !DILocation(line: 245, column: 2, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 245, column: 2)
!2464 = distinct !{!2464, !2441, !2465}
!2465 = !DILocation(line: 248, column: 2, scope: !2437)
!2466 = !DILocation(line: 249, column: 1, scope: !2428)
!2467 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !59, file: !59, line: 94, type: !2468, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!115, !57}
!2470 = !DILocalVariable(name: "option", arg: 1, scope: !2467, file: !59, line: 94, type: !57)
!2471 = !DILocation(line: 94, column: 62, scope: !2467)
!2472 = !DILocation(line: 96, column: 9, scope: !2467)
!2473 = !DILocation(line: 96, column: 17, scope: !2467)
!2474 = !DILocation(line: 96, column: 23, scope: !2467)
!2475 = !DILocation(line: 96, column: 2, scope: !2467)
!2476 = distinct !DISubprogram(name: "pnp_option_set", scope: !59, file: !59, line: 99, type: !2477, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!7, !57}
!2479 = !DILocalVariable(name: "option", arg: 1, scope: !2476, file: !59, line: 99, type: !57)
!2480 = !DILocation(line: 99, column: 62, scope: !2476)
!2481 = !DILocation(line: 101, column: 10, scope: !2476)
!2482 = !DILocation(line: 101, column: 18, scope: !2476)
!2483 = !DILocation(line: 101, column: 24, scope: !2476)
!2484 = !DILocation(line: 101, column: 49, scope: !2476)
!2485 = !DILocation(line: 101, column: 2, scope: !2476)
!2486 = distinct !DISubprogram(name: "pnp_assign_port", scope: !3, file: !3, line: 38, type: !2487, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!115, !143, !2489, !115}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2490 = !DILocalVariable(name: "dev", arg: 1, scope: !2486, file: !3, line: 38, type: !143)
!2491 = !DILocation(line: 38, column: 44, scope: !2486)
!2492 = !DILocalVariable(name: "rule", arg: 2, scope: !2486, file: !3, line: 38, type: !2489)
!2493 = !DILocation(line: 38, column: 66, scope: !2486)
!2494 = !DILocalVariable(name: "idx", arg: 3, scope: !2486, file: !3, line: 38, type: !115)
!2495 = !DILocation(line: 38, column: 76, scope: !2486)
!2496 = !DILocalVariable(name: "res", scope: !2486, file: !3, line: 40, type: !134)
!2497 = !DILocation(line: 40, column: 19, scope: !2486)
!2498 = !DILocalVariable(name: "local_res", scope: !2486, file: !3, line: 40, type: !122)
!2499 = !DILocation(line: 40, column: 24, scope: !2486)
!2500 = !DILocation(line: 42, column: 26, scope: !2486)
!2501 = !DILocation(line: 42, column: 31, scope: !2486)
!2502 = !DILocation(line: 42, column: 37, scope: !2486)
!2503 = !DILocation(line: 42, column: 59, scope: !2486)
!2504 = !DILocation(line: 42, column: 8, scope: !2486)
!2505 = !DILocation(line: 42, column: 6, scope: !2486)
!2506 = !DILocation(line: 43, column: 6, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 43, column: 6)
!2508 = !DILocation(line: 43, column: 6, scope: !2486)
!2509 = !DILocation(line: 44, column: 3, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 44, column: 3)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 44, column: 3)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 43, column: 11)
!2513 = !DILocation(line: 44, column: 3, scope: !2511)
!2514 = !DILocation(line: 47, column: 3, scope: !2512)
!2515 = !DILocation(line: 50, column: 6, scope: !2486)
!2516 = !DILocation(line: 51, column: 15, scope: !2486)
!2517 = !DILocation(line: 51, column: 21, scope: !2486)
!2518 = !DILocation(line: 51, column: 27, scope: !2486)
!2519 = !DILocation(line: 51, column: 2, scope: !2486)
!2520 = !DILocation(line: 51, column: 7, scope: !2486)
!2521 = !DILocation(line: 51, column: 13, scope: !2486)
!2522 = !DILocation(line: 52, column: 2, scope: !2486)
!2523 = !DILocation(line: 52, column: 7, scope: !2486)
!2524 = !DILocation(line: 52, column: 13, scope: !2486)
!2525 = !DILocation(line: 53, column: 2, scope: !2486)
!2526 = !DILocation(line: 53, column: 7, scope: !2486)
!2527 = !DILocation(line: 53, column: 11, scope: !2486)
!2528 = !DILocation(line: 55, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 55, column: 6)
!2530 = !DILocation(line: 55, column: 13, scope: !2529)
!2531 = !DILocation(line: 55, column: 6, scope: !2486)
!2532 = !DILocation(line: 56, column: 3, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 55, column: 19)
!2534 = !DILocation(line: 56, column: 8, scope: !2533)
!2535 = !DILocation(line: 56, column: 14, scope: !2533)
!2536 = !DILocation(line: 57, column: 3, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 57, column: 3)
!2538 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 57, column: 3)
!2539 = !DILocation(line: 57, column: 3, scope: !2538)
!2540 = !DILocation(line: 58, column: 3, scope: !2533)
!2541 = !DILocation(line: 61, column: 15, scope: !2486)
!2542 = !DILocation(line: 61, column: 21, scope: !2486)
!2543 = !DILocation(line: 61, column: 2, scope: !2486)
!2544 = !DILocation(line: 61, column: 7, scope: !2486)
!2545 = !DILocation(line: 61, column: 13, scope: !2486)
!2546 = !DILocation(line: 62, column: 13, scope: !2486)
!2547 = !DILocation(line: 62, column: 18, scope: !2486)
!2548 = !DILocation(line: 62, column: 26, scope: !2486)
!2549 = !DILocation(line: 62, column: 32, scope: !2486)
!2550 = !DILocation(line: 62, column: 24, scope: !2486)
!2551 = !DILocation(line: 62, column: 37, scope: !2486)
!2552 = !DILocation(line: 62, column: 2, scope: !2486)
!2553 = !DILocation(line: 62, column: 7, scope: !2486)
!2554 = !DILocation(line: 62, column: 11, scope: !2486)
!2555 = !DILocation(line: 64, column: 2, scope: !2486)
!2556 = !DILocation(line: 64, column: 25, scope: !2486)
!2557 = !DILocation(line: 64, column: 30, scope: !2486)
!2558 = !DILocation(line: 64, column: 10, scope: !2486)
!2559 = !DILocation(line: 64, column: 9, scope: !2486)
!2560 = !DILocation(line: 65, column: 17, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 64, column: 36)
!2562 = !DILocation(line: 65, column: 23, scope: !2561)
!2563 = !DILocation(line: 65, column: 3, scope: !2561)
!2564 = !DILocation(line: 65, column: 8, scope: !2561)
!2565 = !DILocation(line: 65, column: 14, scope: !2561)
!2566 = !DILocation(line: 66, column: 14, scope: !2561)
!2567 = !DILocation(line: 66, column: 19, scope: !2561)
!2568 = !DILocation(line: 66, column: 27, scope: !2561)
!2569 = !DILocation(line: 66, column: 33, scope: !2561)
!2570 = !DILocation(line: 66, column: 25, scope: !2561)
!2571 = !DILocation(line: 66, column: 38, scope: !2561)
!2572 = !DILocation(line: 66, column: 3, scope: !2561)
!2573 = !DILocation(line: 66, column: 8, scope: !2561)
!2574 = !DILocation(line: 66, column: 12, scope: !2561)
!2575 = !DILocation(line: 67, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 67, column: 7)
!2577 = !DILocation(line: 67, column: 12, scope: !2576)
!2578 = !DILocation(line: 67, column: 20, scope: !2576)
!2579 = !DILocation(line: 67, column: 26, scope: !2576)
!2580 = !DILocation(line: 67, column: 18, scope: !2576)
!2581 = !DILocation(line: 67, column: 30, scope: !2576)
!2582 = !DILocation(line: 67, column: 34, scope: !2576)
!2583 = !DILocation(line: 67, column: 40, scope: !2576)
!2584 = !DILocation(line: 67, column: 7, scope: !2561)
!2585 = !DILocation(line: 68, column: 4, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 68, column: 4)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 68, column: 4)
!2588 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 67, column: 47)
!2589 = !DILocation(line: 68, column: 4, scope: !2587)
!2590 = !DILocation(line: 72, column: 4, scope: !2588)
!2591 = distinct !{!2591, !2555, !2592}
!2592 = !DILocation(line: 74, column: 2, scope: !2486)
!2593 = !DILabel(scope: !2486, name: "__add", file: !3, line: 76)
!2594 = !DILocation(line: 76, column: 1, scope: !2486)
!2595 = !DILocation(line: 77, column: 22, scope: !2486)
!2596 = !DILocation(line: 77, column: 27, scope: !2486)
!2597 = !DILocation(line: 77, column: 32, scope: !2486)
!2598 = !DILocation(line: 77, column: 39, scope: !2486)
!2599 = !DILocation(line: 77, column: 44, scope: !2486)
!2600 = !DILocation(line: 77, column: 49, scope: !2486)
!2601 = !DILocation(line: 77, column: 54, scope: !2486)
!2602 = !DILocation(line: 77, column: 2, scope: !2486)
!2603 = !DILocation(line: 78, column: 2, scope: !2486)
!2604 = !DILocation(line: 79, column: 1, scope: !2486)
!2605 = distinct !DISubprogram(name: "pnp_assign_mem", scope: !3, file: !3, line: 81, type: !2606, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!115, !143, !2608, !115}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!2609 = !DILocalVariable(name: "dev", arg: 1, scope: !2605, file: !3, line: 81, type: !143)
!2610 = !DILocation(line: 81, column: 43, scope: !2605)
!2611 = !DILocalVariable(name: "rule", arg: 2, scope: !2605, file: !3, line: 81, type: !2608)
!2612 = !DILocation(line: 81, column: 64, scope: !2605)
!2613 = !DILocalVariable(name: "idx", arg: 3, scope: !2605, file: !3, line: 81, type: !115)
!2614 = !DILocation(line: 81, column: 74, scope: !2605)
!2615 = !DILocalVariable(name: "res", scope: !2605, file: !3, line: 83, type: !134)
!2616 = !DILocation(line: 83, column: 19, scope: !2605)
!2617 = !DILocalVariable(name: "local_res", scope: !2605, file: !3, line: 83, type: !122)
!2618 = !DILocation(line: 83, column: 24, scope: !2605)
!2619 = !DILocation(line: 85, column: 26, scope: !2605)
!2620 = !DILocation(line: 85, column: 31, scope: !2605)
!2621 = !DILocation(line: 85, column: 37, scope: !2605)
!2622 = !DILocation(line: 85, column: 60, scope: !2605)
!2623 = !DILocation(line: 85, column: 8, scope: !2605)
!2624 = !DILocation(line: 85, column: 6, scope: !2605)
!2625 = !DILocation(line: 86, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 86, column: 6)
!2627 = !DILocation(line: 86, column: 6, scope: !2605)
!2628 = !DILocation(line: 87, column: 3, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 87, column: 3)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 87, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 86, column: 11)
!2632 = !DILocation(line: 87, column: 3, scope: !2630)
!2633 = !DILocation(line: 90, column: 3, scope: !2631)
!2634 = !DILocation(line: 93, column: 6, scope: !2605)
!2635 = !DILocation(line: 94, column: 15, scope: !2605)
!2636 = !DILocation(line: 94, column: 21, scope: !2605)
!2637 = !DILocation(line: 94, column: 27, scope: !2605)
!2638 = !DILocation(line: 94, column: 2, scope: !2605)
!2639 = !DILocation(line: 94, column: 7, scope: !2605)
!2640 = !DILocation(line: 94, column: 13, scope: !2605)
!2641 = !DILocation(line: 95, column: 2, scope: !2605)
!2642 = !DILocation(line: 95, column: 7, scope: !2605)
!2643 = !DILocation(line: 95, column: 13, scope: !2605)
!2644 = !DILocation(line: 96, column: 2, scope: !2605)
!2645 = !DILocation(line: 96, column: 7, scope: !2605)
!2646 = !DILocation(line: 96, column: 11, scope: !2605)
!2647 = !DILocation(line: 99, column: 8, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 99, column: 6)
!2649 = !DILocation(line: 99, column: 14, scope: !2648)
!2650 = !DILocation(line: 99, column: 20, scope: !2648)
!2651 = !DILocation(line: 99, column: 6, scope: !2605)
!2652 = !DILocation(line: 100, column: 3, scope: !2648)
!2653 = !DILocation(line: 100, column: 8, scope: !2648)
!2654 = !DILocation(line: 100, column: 14, scope: !2648)
!2655 = !DILocation(line: 101, column: 6, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 101, column: 6)
!2657 = !DILocation(line: 101, column: 12, scope: !2656)
!2658 = !DILocation(line: 101, column: 18, scope: !2656)
!2659 = !DILocation(line: 101, column: 6, scope: !2605)
!2660 = !DILocation(line: 102, column: 3, scope: !2656)
!2661 = !DILocation(line: 102, column: 8, scope: !2656)
!2662 = !DILocation(line: 102, column: 14, scope: !2656)
!2663 = !DILocation(line: 103, column: 6, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 103, column: 6)
!2665 = !DILocation(line: 103, column: 12, scope: !2664)
!2666 = !DILocation(line: 103, column: 18, scope: !2664)
!2667 = !DILocation(line: 103, column: 6, scope: !2605)
!2668 = !DILocation(line: 104, column: 3, scope: !2664)
!2669 = !DILocation(line: 104, column: 8, scope: !2664)
!2670 = !DILocation(line: 104, column: 14, scope: !2664)
!2671 = !DILocation(line: 106, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 106, column: 6)
!2673 = !DILocation(line: 106, column: 13, scope: !2672)
!2674 = !DILocation(line: 106, column: 6, scope: !2605)
!2675 = !DILocation(line: 107, column: 3, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 106, column: 19)
!2677 = !DILocation(line: 107, column: 8, scope: !2676)
!2678 = !DILocation(line: 107, column: 14, scope: !2676)
!2679 = !DILocation(line: 108, column: 3, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 108, column: 3)
!2681 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 108, column: 3)
!2682 = !DILocation(line: 108, column: 3, scope: !2681)
!2683 = !DILocation(line: 109, column: 3, scope: !2676)
!2684 = !DILocation(line: 112, column: 15, scope: !2605)
!2685 = !DILocation(line: 112, column: 21, scope: !2605)
!2686 = !DILocation(line: 112, column: 2, scope: !2605)
!2687 = !DILocation(line: 112, column: 7, scope: !2605)
!2688 = !DILocation(line: 112, column: 13, scope: !2605)
!2689 = !DILocation(line: 113, column: 13, scope: !2605)
!2690 = !DILocation(line: 113, column: 18, scope: !2605)
!2691 = !DILocation(line: 113, column: 26, scope: !2605)
!2692 = !DILocation(line: 113, column: 32, scope: !2605)
!2693 = !DILocation(line: 113, column: 24, scope: !2605)
!2694 = !DILocation(line: 113, column: 37, scope: !2605)
!2695 = !DILocation(line: 113, column: 2, scope: !2605)
!2696 = !DILocation(line: 113, column: 7, scope: !2605)
!2697 = !DILocation(line: 113, column: 11, scope: !2605)
!2698 = !DILocation(line: 115, column: 2, scope: !2605)
!2699 = !DILocation(line: 115, column: 24, scope: !2605)
!2700 = !DILocation(line: 115, column: 29, scope: !2605)
!2701 = !DILocation(line: 115, column: 10, scope: !2605)
!2702 = !DILocation(line: 115, column: 9, scope: !2605)
!2703 = !DILocation(line: 116, column: 17, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 115, column: 35)
!2705 = !DILocation(line: 116, column: 23, scope: !2704)
!2706 = !DILocation(line: 116, column: 3, scope: !2704)
!2707 = !DILocation(line: 116, column: 8, scope: !2704)
!2708 = !DILocation(line: 116, column: 14, scope: !2704)
!2709 = !DILocation(line: 117, column: 14, scope: !2704)
!2710 = !DILocation(line: 117, column: 19, scope: !2704)
!2711 = !DILocation(line: 117, column: 27, scope: !2704)
!2712 = !DILocation(line: 117, column: 33, scope: !2704)
!2713 = !DILocation(line: 117, column: 25, scope: !2704)
!2714 = !DILocation(line: 117, column: 38, scope: !2704)
!2715 = !DILocation(line: 117, column: 3, scope: !2704)
!2716 = !DILocation(line: 117, column: 8, scope: !2704)
!2717 = !DILocation(line: 117, column: 12, scope: !2704)
!2718 = !DILocation(line: 118, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 118, column: 7)
!2720 = !DILocation(line: 118, column: 12, scope: !2719)
!2721 = !DILocation(line: 118, column: 20, scope: !2719)
!2722 = !DILocation(line: 118, column: 26, scope: !2719)
!2723 = !DILocation(line: 118, column: 18, scope: !2719)
!2724 = !DILocation(line: 118, column: 30, scope: !2719)
!2725 = !DILocation(line: 118, column: 34, scope: !2719)
!2726 = !DILocation(line: 118, column: 40, scope: !2719)
!2727 = !DILocation(line: 118, column: 7, scope: !2704)
!2728 = !DILocation(line: 119, column: 4, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 119, column: 4)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 119, column: 4)
!2731 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 118, column: 47)
!2732 = !DILocation(line: 119, column: 4, scope: !2730)
!2733 = !DILocation(line: 123, column: 4, scope: !2731)
!2734 = distinct !{!2734, !2698, !2735}
!2735 = !DILocation(line: 125, column: 2, scope: !2605)
!2736 = !DILabel(scope: !2605, name: "__add", file: !3, line: 127)
!2737 = !DILocation(line: 127, column: 1, scope: !2605)
!2738 = !DILocation(line: 128, column: 23, scope: !2605)
!2739 = !DILocation(line: 128, column: 28, scope: !2605)
!2740 = !DILocation(line: 128, column: 33, scope: !2605)
!2741 = !DILocation(line: 128, column: 40, scope: !2605)
!2742 = !DILocation(line: 128, column: 45, scope: !2605)
!2743 = !DILocation(line: 128, column: 50, scope: !2605)
!2744 = !DILocation(line: 128, column: 55, scope: !2605)
!2745 = !DILocation(line: 128, column: 2, scope: !2605)
!2746 = !DILocation(line: 129, column: 2, scope: !2605)
!2747 = !DILocation(line: 130, column: 1, scope: !2605)
!2748 = !DILocalVariable(name: "dev", arg: 1, scope: !140, file: !3, line: 132, type: !143)
!2749 = !DILocation(line: 132, column: 43, scope: !140)
!2750 = !DILocalVariable(name: "rule", arg: 2, scope: !140, file: !3, line: 132, type: !2135)
!2751 = !DILocation(line: 132, column: 64, scope: !140)
!2752 = !DILocalVariable(name: "idx", arg: 3, scope: !140, file: !3, line: 132, type: !115)
!2753 = !DILocation(line: 132, column: 74, scope: !140)
!2754 = !DILocalVariable(name: "res", scope: !140, file: !3, line: 134, type: !134)
!2755 = !DILocation(line: 134, column: 19, scope: !140)
!2756 = !DILocalVariable(name: "local_res", scope: !140, file: !3, line: 134, type: !122)
!2757 = !DILocation(line: 134, column: 24, scope: !140)
!2758 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 135, type: !115)
!2759 = !DILocation(line: 135, column: 6, scope: !140)
!2760 = !DILocation(line: 142, column: 26, scope: !140)
!2761 = !DILocation(line: 142, column: 31, scope: !140)
!2762 = !DILocation(line: 142, column: 37, scope: !140)
!2763 = !DILocation(line: 142, column: 60, scope: !140)
!2764 = !DILocation(line: 142, column: 8, scope: !140)
!2765 = !DILocation(line: 142, column: 6, scope: !140)
!2766 = !DILocation(line: 143, column: 6, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !140, file: !3, line: 143, column: 6)
!2768 = !DILocation(line: 143, column: 6, scope: !140)
!2769 = !DILocation(line: 144, column: 3, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 144, column: 3)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 144, column: 3)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 143, column: 11)
!2773 = !DILocation(line: 144, column: 3, scope: !2771)
!2774 = !DILocation(line: 146, column: 3, scope: !2772)
!2775 = !DILocation(line: 149, column: 6, scope: !140)
!2776 = !DILocation(line: 150, column: 15, scope: !140)
!2777 = !DILocation(line: 150, column: 21, scope: !140)
!2778 = !DILocation(line: 150, column: 27, scope: !140)
!2779 = !DILocation(line: 150, column: 2, scope: !140)
!2780 = !DILocation(line: 150, column: 7, scope: !140)
!2781 = !DILocation(line: 150, column: 13, scope: !140)
!2782 = !DILocation(line: 151, column: 2, scope: !140)
!2783 = !DILocation(line: 151, column: 7, scope: !140)
!2784 = !DILocation(line: 151, column: 13, scope: !140)
!2785 = !DILocation(line: 152, column: 2, scope: !140)
!2786 = !DILocation(line: 152, column: 7, scope: !140)
!2787 = !DILocation(line: 152, column: 11, scope: !140)
!2788 = !DILocation(line: 154, column: 19, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !140, file: !3, line: 154, column: 6)
!2790 = !DILocation(line: 154, column: 25, scope: !2789)
!2791 = !DILocation(line: 154, column: 29, scope: !2789)
!2792 = !DILocation(line: 154, column: 6, scope: !2789)
!2793 = !DILocation(line: 154, column: 6, scope: !140)
!2794 = !DILocation(line: 155, column: 3, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 154, column: 48)
!2796 = !DILocation(line: 155, column: 8, scope: !2795)
!2797 = !DILocation(line: 155, column: 14, scope: !2795)
!2798 = !DILocation(line: 156, column: 3, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 156, column: 3)
!2800 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 156, column: 3)
!2801 = !DILocation(line: 156, column: 3, scope: !2800)
!2802 = !DILocation(line: 157, column: 3, scope: !2795)
!2803 = !DILocation(line: 161, column: 29, scope: !140)
!2804 = !DILocation(line: 161, column: 35, scope: !140)
!2805 = !DILocation(line: 161, column: 39, scope: !140)
!2806 = !DILocation(line: 161, column: 15, scope: !140)
!2807 = !DILocation(line: 161, column: 2, scope: !140)
!2808 = !DILocation(line: 161, column: 7, scope: !140)
!2809 = !DILocation(line: 161, column: 13, scope: !140)
!2810 = !DILocation(line: 162, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !140, file: !3, line: 162, column: 6)
!2812 = !DILocation(line: 162, column: 11, scope: !2811)
!2813 = !DILocation(line: 162, column: 17, scope: !2811)
!2814 = !DILocation(line: 162, column: 6, scope: !140)
!2815 = !DILocation(line: 163, column: 14, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 162, column: 31)
!2817 = !DILocation(line: 163, column: 19, scope: !2816)
!2818 = !DILocation(line: 163, column: 3, scope: !2816)
!2819 = !DILocation(line: 163, column: 8, scope: !2816)
!2820 = !DILocation(line: 163, column: 12, scope: !2816)
!2821 = !DILocation(line: 164, column: 3, scope: !2816)
!2822 = !DILocation(line: 166, column: 9, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !140, file: !3, line: 166, column: 2)
!2824 = !DILocation(line: 166, column: 7, scope: !2823)
!2825 = !DILocation(line: 166, column: 14, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 166, column: 2)
!2827 = !DILocation(line: 166, column: 16, scope: !2826)
!2828 = !DILocation(line: 166, column: 2, scope: !2823)
!2829 = !DILocation(line: 167, column: 21, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 167, column: 7)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 166, column: 27)
!2832 = !DILocation(line: 167, column: 16, scope: !2830)
!2833 = !DILocation(line: 167, column: 25, scope: !2830)
!2834 = !DILocation(line: 167, column: 31, scope: !2830)
!2835 = !DILocation(line: 167, column: 35, scope: !2830)
!2836 = !DILocation(line: 167, column: 7, scope: !2830)
!2837 = !DILocation(line: 167, column: 7, scope: !2831)
!2838 = !DILocation(line: 168, column: 33, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 167, column: 42)
!2840 = !DILocation(line: 168, column: 28, scope: !2839)
!2841 = !DILocation(line: 168, column: 17, scope: !2839)
!2842 = !DILocation(line: 168, column: 22, scope: !2839)
!2843 = !DILocation(line: 168, column: 26, scope: !2839)
!2844 = !DILocation(line: 168, column: 4, scope: !2839)
!2845 = !DILocation(line: 168, column: 9, scope: !2839)
!2846 = !DILocation(line: 168, column: 15, scope: !2839)
!2847 = !DILocation(line: 169, column: 22, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 169, column: 8)
!2849 = !DILocation(line: 169, column: 27, scope: !2848)
!2850 = !DILocation(line: 169, column: 8, scope: !2848)
!2851 = !DILocation(line: 169, column: 8, scope: !2839)
!2852 = !DILocation(line: 170, column: 5, scope: !2848)
!2853 = !DILocation(line: 171, column: 3, scope: !2839)
!2854 = !DILocation(line: 172, column: 2, scope: !2831)
!2855 = !DILocation(line: 166, column: 23, scope: !2826)
!2856 = !DILocation(line: 166, column: 2, scope: !2826)
!2857 = distinct !{!2857, !2828, !2858}
!2858 = !DILocation(line: 172, column: 2, scope: !2823)
!2859 = !DILocation(line: 174, column: 6, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !140, file: !3, line: 174, column: 6)
!2861 = !DILocation(line: 174, column: 12, scope: !2860)
!2862 = !DILocation(line: 174, column: 18, scope: !2860)
!2863 = !DILocation(line: 174, column: 6, scope: !140)
!2864 = !DILocation(line: 175, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 174, column: 45)
!2866 = !DILocation(line: 175, column: 8, scope: !2865)
!2867 = !DILocation(line: 175, column: 14, scope: !2865)
!2868 = !DILocation(line: 176, column: 3, scope: !2865)
!2869 = !DILocation(line: 176, column: 8, scope: !2865)
!2870 = !DILocation(line: 176, column: 12, scope: !2865)
!2871 = !DILocation(line: 177, column: 3, scope: !2865)
!2872 = !DILocation(line: 177, column: 8, scope: !2865)
!2873 = !DILocation(line: 177, column: 14, scope: !2865)
!2874 = !DILocation(line: 178, column: 3, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 178, column: 3)
!2876 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 178, column: 3)
!2877 = !DILocation(line: 178, column: 3, scope: !2876)
!2878 = !DILocation(line: 179, column: 3, scope: !2865)
!2879 = !DILocation(line: 182, column: 2, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 182, column: 2)
!2881 = distinct !DILexicalBlock(scope: !140, file: !3, line: 182, column: 2)
!2882 = !DILocation(line: 182, column: 2, scope: !2881)
!2883 = !DILocation(line: 183, column: 2, scope: !140)
!2884 = !DILabel(scope: !140, name: "__add", file: !3, line: 185)
!2885 = !DILocation(line: 185, column: 1, scope: !140)
!2886 = !DILocation(line: 186, column: 23, scope: !140)
!2887 = !DILocation(line: 186, column: 28, scope: !140)
!2888 = !DILocation(line: 186, column: 33, scope: !140)
!2889 = !DILocation(line: 186, column: 40, scope: !140)
!2890 = !DILocation(line: 186, column: 45, scope: !140)
!2891 = !DILocation(line: 186, column: 2, scope: !140)
!2892 = !DILocation(line: 187, column: 2, scope: !140)
!2893 = !DILocation(line: 188, column: 1, scope: !140)
!2894 = !DILocalVariable(name: "dev", arg: 1, scope: !2139, file: !3, line: 191, type: !143)
!2895 = !DILocation(line: 191, column: 43, scope: !2139)
!2896 = !DILocalVariable(name: "rule", arg: 2, scope: !2139, file: !3, line: 191, type: !2142)
!2897 = !DILocation(line: 191, column: 64, scope: !2139)
!2898 = !DILocalVariable(name: "idx", arg: 3, scope: !2139, file: !3, line: 191, type: !115)
!2899 = !DILocation(line: 191, column: 74, scope: !2139)
!2900 = !DILocalVariable(name: "res", scope: !2139, file: !3, line: 193, type: !134)
!2901 = !DILocation(line: 193, column: 19, scope: !2139)
!2902 = !DILocalVariable(name: "local_res", scope: !2139, file: !3, line: 193, type: !122)
!2903 = !DILocation(line: 193, column: 24, scope: !2139)
!2904 = !DILocalVariable(name: "i", scope: !2139, file: !3, line: 194, type: !115)
!2905 = !DILocation(line: 194, column: 6, scope: !2139)
!2906 = !DILocation(line: 201, column: 26, scope: !2139)
!2907 = !DILocation(line: 201, column: 31, scope: !2139)
!2908 = !DILocation(line: 201, column: 37, scope: !2139)
!2909 = !DILocation(line: 201, column: 60, scope: !2139)
!2910 = !DILocation(line: 201, column: 8, scope: !2139)
!2911 = !DILocation(line: 201, column: 6, scope: !2139)
!2912 = !DILocation(line: 202, column: 6, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 202, column: 6)
!2914 = !DILocation(line: 202, column: 6, scope: !2139)
!2915 = !DILocation(line: 203, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 203, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 203, column: 3)
!2918 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 202, column: 11)
!2919 = !DILocation(line: 203, column: 3, scope: !2917)
!2920 = !DILocation(line: 205, column: 3, scope: !2918)
!2921 = !DILocation(line: 208, column: 6, scope: !2139)
!2922 = !DILocation(line: 209, column: 15, scope: !2139)
!2923 = !DILocation(line: 209, column: 21, scope: !2139)
!2924 = !DILocation(line: 209, column: 27, scope: !2139)
!2925 = !DILocation(line: 209, column: 2, scope: !2139)
!2926 = !DILocation(line: 209, column: 7, scope: !2139)
!2927 = !DILocation(line: 209, column: 13, scope: !2139)
!2928 = !DILocation(line: 210, column: 2, scope: !2139)
!2929 = !DILocation(line: 210, column: 7, scope: !2139)
!2930 = !DILocation(line: 210, column: 13, scope: !2139)
!2931 = !DILocation(line: 211, column: 2, scope: !2139)
!2932 = !DILocation(line: 211, column: 7, scope: !2139)
!2933 = !DILocation(line: 211, column: 11, scope: !2139)
!2934 = !DILocation(line: 213, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 213, column: 6)
!2936 = !DILocation(line: 213, column: 13, scope: !2935)
!2937 = !DILocation(line: 213, column: 6, scope: !2139)
!2938 = !DILocation(line: 214, column: 3, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 213, column: 18)
!2940 = !DILocation(line: 214, column: 8, scope: !2939)
!2941 = !DILocation(line: 214, column: 14, scope: !2939)
!2942 = !DILocation(line: 215, column: 3, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 215, column: 3)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 215, column: 3)
!2945 = !DILocation(line: 215, column: 3, scope: !2944)
!2946 = !DILocation(line: 216, column: 3, scope: !2939)
!2947 = !DILocation(line: 219, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 219, column: 2)
!2949 = !DILocation(line: 219, column: 7, scope: !2948)
!2950 = !DILocation(line: 219, column: 14, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 219, column: 2)
!2952 = !DILocation(line: 219, column: 16, scope: !2951)
!2953 = !DILocation(line: 219, column: 2, scope: !2948)
!2954 = !DILocation(line: 220, column: 7, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 220, column: 7)
!2956 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 219, column: 26)
!2957 = !DILocation(line: 220, column: 13, scope: !2955)
!2958 = !DILocation(line: 220, column: 30, scope: !2955)
!2959 = !DILocation(line: 220, column: 25, scope: !2955)
!2960 = !DILocation(line: 220, column: 22, scope: !2955)
!2961 = !DILocation(line: 220, column: 17, scope: !2955)
!2962 = !DILocation(line: 220, column: 7, scope: !2956)
!2963 = !DILocation(line: 221, column: 33, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 220, column: 35)
!2965 = !DILocation(line: 221, column: 28, scope: !2964)
!2966 = !DILocation(line: 221, column: 17, scope: !2964)
!2967 = !DILocation(line: 221, column: 22, scope: !2964)
!2968 = !DILocation(line: 221, column: 26, scope: !2964)
!2969 = !DILocation(line: 221, column: 4, scope: !2964)
!2970 = !DILocation(line: 221, column: 9, scope: !2964)
!2971 = !DILocation(line: 221, column: 15, scope: !2964)
!2972 = !DILocation(line: 222, column: 22, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 222, column: 8)
!2974 = !DILocation(line: 222, column: 27, scope: !2973)
!2975 = !DILocation(line: 222, column: 8, scope: !2973)
!2976 = !DILocation(line: 222, column: 8, scope: !2964)
!2977 = !DILocation(line: 223, column: 5, scope: !2973)
!2978 = !DILocation(line: 224, column: 3, scope: !2964)
!2979 = !DILocation(line: 225, column: 2, scope: !2956)
!2980 = !DILocation(line: 219, column: 22, scope: !2951)
!2981 = !DILocation(line: 219, column: 2, scope: !2951)
!2982 = distinct !{!2982, !2953, !2983}
!2983 = !DILocation(line: 225, column: 2, scope: !2948)
!2984 = !DILocation(line: 227, column: 2, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 227, column: 2)
!2986 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 227, column: 2)
!2987 = !DILocation(line: 227, column: 2, scope: !2986)
!2988 = !DILocation(line: 228, column: 2, scope: !2139)
!2989 = !DILabel(scope: !2139, name: "__add", file: !3, line: 230)
!2990 = !DILocation(line: 230, column: 1, scope: !2139)
!2991 = !DILocation(line: 231, column: 23, scope: !2139)
!2992 = !DILocation(line: 231, column: 28, scope: !2139)
!2993 = !DILocation(line: 231, column: 33, scope: !2139)
!2994 = !DILocation(line: 231, column: 40, scope: !2139)
!2995 = !DILocation(line: 231, column: 45, scope: !2139)
!2996 = !DILocation(line: 231, column: 2, scope: !2139)
!2997 = !DILocation(line: 232, column: 2, scope: !2139)
!2998 = !DILocation(line: 233, column: 1, scope: !2139)
!2999 = distinct !DISubprogram(name: "pnp_find_resource", scope: !3, file: !3, line: 22, type: !3000, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!134, !143, !89, !70, !7}
!3002 = !DILocalVariable(name: "dev", arg: 1, scope: !2999, file: !3, line: 22, type: !143)
!3003 = !DILocation(line: 22, column: 59, scope: !2999)
!3004 = !DILocalVariable(name: "rule", arg: 2, scope: !2999, file: !3, line: 23, type: !89)
!3005 = !DILocation(line: 23, column: 22, scope: !2999)
!3006 = !DILocalVariable(name: "type", arg: 3, scope: !2999, file: !3, line: 24, type: !70)
!3007 = !DILocation(line: 24, column: 22, scope: !2999)
!3008 = !DILocalVariable(name: "bar", arg: 4, scope: !2999, file: !3, line: 25, type: !7)
!3009 = !DILocation(line: 25, column: 21, scope: !2999)
!3010 = !DILocalVariable(name: "res", scope: !2999, file: !3, line: 27, type: !134)
!3011 = !DILocation(line: 27, column: 19, scope: !2999)
!3012 = !DILocation(line: 27, column: 42, scope: !2999)
!3013 = !DILocation(line: 27, column: 47, scope: !2999)
!3014 = !DILocation(line: 27, column: 53, scope: !2999)
!3015 = !DILocation(line: 27, column: 25, scope: !2999)
!3016 = !DILocation(line: 30, column: 6, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 30, column: 6)
!3018 = !DILocation(line: 30, column: 6, scope: !2999)
!3019 = !DILocation(line: 31, column: 3, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 30, column: 11)
!3021 = !DILocation(line: 31, column: 8, scope: !3020)
!3022 = !DILocation(line: 31, column: 14, scope: !3020)
!3023 = !DILocation(line: 32, column: 17, scope: !3020)
!3024 = !DILocation(line: 32, column: 22, scope: !3020)
!3025 = !DILocation(line: 32, column: 3, scope: !3020)
!3026 = !DILocation(line: 32, column: 8, scope: !3020)
!3027 = !DILocation(line: 32, column: 14, scope: !3020)
!3028 = !DILocation(line: 33, column: 2, scope: !3020)
!3029 = !DILocation(line: 35, column: 9, scope: !2999)
!3030 = !DILocation(line: 35, column: 2, scope: !2999)
!3031 = distinct !DISubprogram(name: "bitmap_empty", scope: !3032, file: !3032, line: 382, type: !3033, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3032 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!115, !3035, !7}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3037 = !DILocalVariable(name: "src", arg: 1, scope: !3031, file: !3032, line: 382, type: !3035)
!3038 = !DILocation(line: 382, column: 53, scope: !3031)
!3039 = !DILocalVariable(name: "nbits", arg: 2, scope: !3031, file: !3032, line: 382, type: !7)
!3040 = !DILocation(line: 382, column: 67, scope: !3031)
!3041 = !DILocation(line: 384, column: 6, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3031, file: !3032, line: 384, column: 6)
!3043 = !DILocation(line: 384, column: 6, scope: !3031)
!3044 = !DILocation(line: 385, column: 14, scope: !3042)
!3045 = !DILocation(line: 385, column: 13, scope: !3042)
!3046 = !DILocation(line: 385, column: 20, scope: !3042)
!3047 = !DILocation(line: 385, column: 18, scope: !3042)
!3048 = !DILocation(line: 385, column: 10, scope: !3042)
!3049 = !DILocation(line: 385, column: 3, scope: !3042)
!3050 = !DILocation(line: 387, column: 24, scope: !3031)
!3051 = !DILocation(line: 387, column: 29, scope: !3031)
!3052 = !DILocation(line: 387, column: 9, scope: !3031)
!3053 = !DILocation(line: 387, column: 39, scope: !3031)
!3054 = !DILocation(line: 387, column: 36, scope: !3031)
!3055 = !DILocation(line: 387, column: 2, scope: !3031)
!3056 = !DILocation(line: 388, column: 1, scope: !3031)
!3057 = distinct !DISubprogram(name: "test_bit", scope: !3058, file: !3058, line: 132, type: !3059, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3058 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!1041, !240, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!3064 = !DILocalVariable(name: "nr", arg: 1, scope: !3065, file: !3066, line: 210, type: !240)
!3065 = distinct !DISubprogram(name: "variable_test_bit", scope: !3066, file: !3066, line: 210, type: !3059, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3066 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3067 = !DILocation(line: 210, column: 52, scope: !3065, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 135, column: 9, scope: !3057)
!3069 = !DILocalVariable(name: "addr", arg: 2, scope: !3065, file: !3066, line: 210, type: !3061)
!3070 = !DILocation(line: 210, column: 86, scope: !3065, inlinedAt: !3068)
!3071 = !DILocalVariable(name: "oldbit", scope: !3065, file: !3066, line: 212, type: !1041)
!3072 = !DILocation(line: 212, column: 7, scope: !3065, inlinedAt: !3068)
!3073 = !DILocalVariable(name: "nr", arg: 1, scope: !3074, file: !3066, line: 204, type: !240)
!3074 = distinct !DISubprogram(name: "constant_test_bit", scope: !3066, file: !3066, line: 204, type: !3059, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3075 = !DILocation(line: 204, column: 52, scope: !3074, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 135, column: 9, scope: !3057)
!3077 = !DILocalVariable(name: "addr", arg: 2, scope: !3074, file: !3066, line: 204, type: !3061)
!3078 = !DILocation(line: 204, column: 86, scope: !3074, inlinedAt: !3076)
!3079 = !DILocalVariable(name: "v", arg: 1, scope: !3080, file: !3081, line: 69, type: !3084)
!3080 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3081, file: !3081, line: 69, type: !3082, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3081 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !3084, !252}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3086)
!3086 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3087 = !DILocation(line: 69, column: 73, scope: !3080, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 134, column: 2, scope: !3057)
!3089 = !DILocalVariable(name: "size", arg: 2, scope: !3080, file: !3081, line: 69, type: !252)
!3090 = !DILocation(line: 69, column: 83, scope: !3080, inlinedAt: !3088)
!3091 = !DILocalVariable(name: "nr", arg: 1, scope: !3057, file: !3058, line: 132, type: !240)
!3092 = !DILocation(line: 132, column: 34, scope: !3057)
!3093 = !DILocalVariable(name: "addr", arg: 2, scope: !3057, file: !3058, line: 132, type: !3061)
!3094 = !DILocation(line: 132, column: 68, scope: !3057)
!3095 = !DILocation(line: 134, column: 25, scope: !3057)
!3096 = !DILocation(line: 134, column: 32, scope: !3057)
!3097 = !DILocation(line: 134, column: 30, scope: !3057)
!3098 = !DILocation(line: 71, column: 19, scope: !3080, inlinedAt: !3088)
!3099 = !DILocation(line: 71, column: 22, scope: !3080, inlinedAt: !3088)
!3100 = !DILocation(line: 71, column: 2, scope: !3080, inlinedAt: !3088)
!3101 = !DILocation(line: 72, column: 2, scope: !3080, inlinedAt: !3088)
!3102 = !DILocation(line: 135, column: 9, scope: !3057)
!3103 = !DILocation(line: 206, column: 19, scope: !3074, inlinedAt: !3076)
!3104 = !DILocation(line: 206, column: 22, scope: !3074, inlinedAt: !3076)
!3105 = !DILocation(line: 206, column: 15, scope: !3074, inlinedAt: !3076)
!3106 = !DILocation(line: 207, column: 4, scope: !3074, inlinedAt: !3076)
!3107 = !DILocation(line: 207, column: 9, scope: !3074, inlinedAt: !3076)
!3108 = !DILocation(line: 207, column: 12, scope: !3074, inlinedAt: !3076)
!3109 = !DILocation(line: 206, column: 44, scope: !3074, inlinedAt: !3076)
!3110 = !DILocation(line: 207, column: 37, scope: !3074, inlinedAt: !3076)
!3111 = !DILocation(line: 217, column: 33, scope: !3065, inlinedAt: !3068)
!3112 = !DILocation(line: 217, column: 46, scope: !3065, inlinedAt: !3068)
!3113 = !DILocation(line: 214, column: 2, scope: !3065, inlinedAt: !3068)
!3114 = !{i32 -2147127614, i32 -2147127554}
!3115 = !DILocation(line: 219, column: 9, scope: !3065, inlinedAt: !3068)
!3116 = !DILocation(line: 135, column: 2, scope: !3057)
!3117 = distinct !DISubprogram(name: "kasan_check_read", scope: !3118, file: !3118, line: 34, type: !3119, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3118 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!1041, !3084, !7}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3117, file: !3118, line: 34, type: !3084)
!3122 = !DILocation(line: 34, column: 58, scope: !3117)
!3123 = !DILocalVariable(name: "size", arg: 2, scope: !3117, file: !3118, line: 34, type: !7)
!3124 = !DILocation(line: 34, column: 74, scope: !3117)
!3125 = !DILocation(line: 36, column: 2, scope: !3117)
!3126 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3127, file: !3127, line: 178, type: !3128, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !178)
!3127 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !3084, !252, !115}
!3130 = !DILocalVariable(name: "ptr", arg: 1, scope: !3126, file: !3127, line: 178, type: !3084)
!3131 = !DILocation(line: 178, column: 60, scope: !3126)
!3132 = !DILocalVariable(name: "size", arg: 2, scope: !3126, file: !3127, line: 178, type: !252)
!3133 = !DILocation(line: 178, column: 72, scope: !3126)
!3134 = !DILocalVariable(name: "type", arg: 3, scope: !3126, file: !3127, line: 179, type: !115)
!3135 = !DILocation(line: 179, column: 15, scope: !3126)
!3136 = !DILocation(line: 179, column: 23, scope: !3126)
