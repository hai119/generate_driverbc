; ModuleID = '../bcout/drivers/pnp/support.llvm.bc'
source_filename = "drivers/pnp/support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.pnp_protocol = type { %struct.list_head, i8*, {}*, {}*, {}*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.proc_dir_entry = type opaque
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pnp_resource = type { %struct.list_head, %struct.resource }
%struct.pnp_option = type { %struct.list_head, i32, i64, %union.anon.39 }
%union.anon.39 = type { %struct.pnp_port }
%struct.pnp_port = type { i64, i64, i64, i64, i8 }
%struct.pnp_mem = type { i64, i64, i64, i64, i8 }
%struct.pnp_irq = type { %struct.pnp_irq_mask_t, i8 }
%struct.pnp_irq_mask_t = type { [4 x i64] }
%struct.pnp_dma = type { i8, i8 }

@hex_asc = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@pnp_debug = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s: no current resources\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: current resources:\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%pr\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"preferred\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"acceptable\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"functional\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"  dependent set %d (%s) \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"  independent \00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"io  min %#llx max %#llx align %lld size %lld flags %#x\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"mem min %#llx max %#llx align %lld size %lld flags %#x\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" <none>\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c" flags %#x\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" (optional)\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c" (bitmask %#x) flags %#x\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_is_active(%struct.pnp_dev* %dev) #0 !dbg !102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2099
  %call = call i64 @pnp_port_start(%struct.pnp_dev* %0, i32 0) #6, !dbg !2101
  %tobool = icmp ne i64 %call, 0, !dbg !2101
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2102

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2103
  %call1 = call i64 @pnp_port_len(%struct.pnp_dev* %1, i32 0) #6, !dbg !2104
  %cmp = icmp ule i64 %call1, 1, !dbg !2105
  br i1 %cmp, label %land.lhs.true2, label %if.else, !dbg !2106

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2107
  %call3 = call i64 @pnp_mem_start(%struct.pnp_dev* %2, i32 0) #6, !dbg !2108
  %tobool4 = icmp ne i64 %call3, 0, !dbg !2108
  br i1 %tobool4, label %if.else, label %land.lhs.true5, !dbg !2109

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2110
  %call6 = call i64 @pnp_mem_len(%struct.pnp_dev* %3, i32 0) #6, !dbg !2111
  %cmp7 = icmp ule i64 %call6, 1, !dbg !2112
  br i1 %cmp7, label %land.lhs.true8, label %if.else, !dbg !2113

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2114
  %call9 = call i64 @pnp_irq(%struct.pnp_dev* %4, i32 0) #6, !dbg !2115
  %cmp10 = icmp eq i64 %call9, -1, !dbg !2116
  br i1 %cmp10, label %land.lhs.true11, label %if.else, !dbg !2117

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2118
  %call12 = call i64 @pnp_dma(%struct.pnp_dev* %5, i32 0) #6, !dbg !2119
  %cmp13 = icmp eq i64 %call12, -1, !dbg !2120
  br i1 %cmp13, label %if.then, label %if.else, !dbg !2121

if.then:                                          ; preds = %land.lhs.true11
  store i32 0, i32* %retval, align 4, !dbg !2122
  br label %return, !dbg !2122

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true8, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %entry
  store i32 1, i32* %retval, align 4, !dbg !2123
  br label %return, !dbg !2123

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2124
  ret i32 %6, !dbg !2124
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_port_start(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2125 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2132, metadata !DIExpression()), !dbg !2133
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2134
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2135
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 256, i32 %1) #6, !dbg !2136
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2133
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2137
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2139
  %tobool = icmp ne i32 %call1, 0, !dbg !2139
  br i1 %tobool, label %if.then, label %if.end, !dbg !2140

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2141
  %start = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0, !dbg !2142
  %4 = load i64, i64* %start, align 8, !dbg !2142
  store i64 %4, i64* %retval, align 8, !dbg !2143
  br label %return, !dbg !2143

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2144
  br label %return, !dbg !2144

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !2145
  ret i64 %5, !dbg !2145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_port_len(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2146 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2147, metadata !DIExpression()), !dbg !2148
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2149, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2151, metadata !DIExpression()), !dbg !2152
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2153
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2154
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 256, i32 %1) #6, !dbg !2155
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2152
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2156
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2158
  %tobool = icmp ne i32 %call1, 0, !dbg !2158
  br i1 %tobool, label %if.then, label %if.end, !dbg !2159

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2160
  %call2 = call i64 @pnp_resource_len(%struct.resource* %3) #6, !dbg !2161
  store i64 %call2, i64* %retval, align 8, !dbg !2162
  br label %return, !dbg !2162

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2163
  br label %return, !dbg !2163

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8, !dbg !2164
  ret i64 %4, !dbg !2164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_mem_start(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2165 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2166, metadata !DIExpression()), !dbg !2167
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2170, metadata !DIExpression()), !dbg !2171
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2172
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2173
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 512, i32 %1) #6, !dbg !2174
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2171
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2175
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2177
  %tobool = icmp ne i32 %call1, 0, !dbg !2177
  br i1 %tobool, label %if.then, label %if.end, !dbg !2178

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2179
  %start = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0, !dbg !2180
  %4 = load i64, i64* %start, align 8, !dbg !2180
  store i64 %4, i64* %retval, align 8, !dbg !2181
  br label %return, !dbg !2181

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2182
  br label %return, !dbg !2182

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !2183
  ret i64 %5, !dbg !2183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_mem_len(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2184 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2189, metadata !DIExpression()), !dbg !2190
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2191
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2192
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 512, i32 %1) #6, !dbg !2193
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2190
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2194
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2196
  %tobool = icmp ne i32 %call1, 0, !dbg !2196
  br i1 %tobool, label %if.then, label %if.end, !dbg !2197

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2198
  %call2 = call i64 @pnp_resource_len(%struct.resource* %3) #6, !dbg !2199
  store i64 %call2, i64* %retval, align 8, !dbg !2200
  br label %return, !dbg !2200

if.end:                                           ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2201
  br label %return, !dbg !2201

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8, !dbg !2202
  ret i64 %4, !dbg !2202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_irq(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2203 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2208, metadata !DIExpression()), !dbg !2209
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2210
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2211
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 1024, i32 %1) #6, !dbg !2212
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2209
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2213
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2215
  %tobool = icmp ne i32 %call1, 0, !dbg !2215
  br i1 %tobool, label %if.then, label %if.end, !dbg !2216

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2217
  %start = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0, !dbg !2218
  %4 = load i64, i64* %start, align 8, !dbg !2218
  store i64 %4, i64* %retval, align 8, !dbg !2219
  br label %return, !dbg !2219

if.end:                                           ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2220
  br label %return, !dbg !2220

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !2221
  ret i64 %5, !dbg !2221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_dma(%struct.pnp_dev* %dev, i32 %bar) #0 !dbg !2222 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %bar.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i32 %bar, i32* %bar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bar.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2229
  %1 = load i32, i32* %bar.addr, align 4, !dbg !2230
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 2048, i32 %1) #6, !dbg !2231
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2228
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2232
  %call1 = call i32 @pnp_resource_valid(%struct.resource* %2) #6, !dbg !2234
  %tobool = icmp ne i32 %call1, 0, !dbg !2234
  br i1 %tobool, label %if.then, label %if.end, !dbg !2235

if.then:                                          ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2236
  %start = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0, !dbg !2237
  %4 = load i64, i64* %start, align 8, !dbg !2237
  store i64 %4, i64* %retval, align 8, !dbg !2238
  br label %return, !dbg !2238

if.end:                                           ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2239
  br label %return, !dbg !2239

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !2240
  ret i64 %5, !dbg !2240
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_eisa_id_to_string(i32 %id, i8* %str) #0 !dbg !2241 {
entry:
  %id.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2244, metadata !DIExpression()), !dbg !2245
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !2246, metadata !DIExpression()), !dbg !2247
  %0 = load i32, i32* %id.addr, align 4, !dbg !2248
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2248
  br i1 %1, label %cond.true, label %cond.false, !dbg !2248

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %id.addr, align 4, !dbg !2248
  %and = and i32 %2, 255, !dbg !2248
  %shl = shl i32 %and, 24, !dbg !2248
  %3 = load i32, i32* %id.addr, align 4, !dbg !2248
  %and1 = and i32 %3, 65280, !dbg !2248
  %shl2 = shl i32 %and1, 8, !dbg !2248
  %or = or i32 %shl, %shl2, !dbg !2248
  %4 = load i32, i32* %id.addr, align 4, !dbg !2248
  %and3 = and i32 %4, 16711680, !dbg !2248
  %shr = lshr i32 %and3, 8, !dbg !2248
  %or4 = or i32 %or, %shr, !dbg !2248
  %5 = load i32, i32* %id.addr, align 4, !dbg !2248
  %and5 = and i32 %5, -16777216, !dbg !2248
  %shr6 = lshr i32 %and5, 24, !dbg !2248
  %or7 = or i32 %or4, %shr6, !dbg !2248
  br label %cond.end, !dbg !2248

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %id.addr, align 4, !dbg !2248
  %call = call i32 @__fswab32(i32 %6) #7, !dbg !2248
  br label %cond.end, !dbg !2248

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or7, %cond.true ], [ %call, %cond.false ], !dbg !2248
  store i32 %cond, i32* %id.addr, align 4, !dbg !2249
  %7 = load i32, i32* %id.addr, align 4, !dbg !2250
  %shr8 = lshr i32 %7, 26, !dbg !2251
  %and9 = and i32 %shr8, 63, !dbg !2252
  %add = add i32 65, %and9, !dbg !2253
  %sub = sub i32 %add, 1, !dbg !2254
  %conv = trunc i32 %sub to i8, !dbg !2255
  %8 = load i8*, i8** %str.addr, align 8, !dbg !2256
  %arrayidx = getelementptr i8, i8* %8, i64 0, !dbg !2256
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2257
  %9 = load i32, i32* %id.addr, align 4, !dbg !2258
  %shr10 = lshr i32 %9, 21, !dbg !2259
  %and11 = and i32 %shr10, 31, !dbg !2260
  %add12 = add i32 65, %and11, !dbg !2261
  %sub13 = sub i32 %add12, 1, !dbg !2262
  %conv14 = trunc i32 %sub13 to i8, !dbg !2263
  %10 = load i8*, i8** %str.addr, align 8, !dbg !2264
  %arrayidx15 = getelementptr i8, i8* %10, i64 1, !dbg !2264
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !2265
  %11 = load i32, i32* %id.addr, align 4, !dbg !2266
  %shr16 = lshr i32 %11, 16, !dbg !2267
  %and17 = and i32 %shr16, 31, !dbg !2268
  %add18 = add i32 65, %and17, !dbg !2269
  %sub19 = sub i32 %add18, 1, !dbg !2270
  %conv20 = trunc i32 %sub19 to i8, !dbg !2271
  %12 = load i8*, i8** %str.addr, align 8, !dbg !2272
  %arrayidx21 = getelementptr i8, i8* %12, i64 2, !dbg !2272
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !2273
  %13 = load i32, i32* %id.addr, align 4, !dbg !2274
  %shr22 = lshr i32 %13, 8, !dbg !2274
  %and23 = and i32 %shr22, 240, !dbg !2274
  %shr24 = lshr i32 %and23, 4, !dbg !2274
  %idxprom = zext i32 %shr24 to i64, !dbg !2274
  %arrayidx25 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %idxprom, !dbg !2274
  %14 = load i8, i8* %arrayidx25, align 1, !dbg !2274
  %15 = load i8*, i8** %str.addr, align 8, !dbg !2275
  %arrayidx26 = getelementptr i8, i8* %15, i64 3, !dbg !2275
  store i8 %14, i8* %arrayidx26, align 1, !dbg !2276
  %16 = load i32, i32* %id.addr, align 4, !dbg !2277
  %shr27 = lshr i32 %16, 8, !dbg !2277
  %and28 = and i32 %shr27, 15, !dbg !2277
  %idxprom29 = zext i32 %and28 to i64, !dbg !2277
  %arrayidx30 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %idxprom29, !dbg !2277
  %17 = load i8, i8* %arrayidx30, align 1, !dbg !2277
  %18 = load i8*, i8** %str.addr, align 8, !dbg !2278
  %arrayidx31 = getelementptr i8, i8* %18, i64 4, !dbg !2278
  store i8 %17, i8* %arrayidx31, align 1, !dbg !2279
  %19 = load i32, i32* %id.addr, align 4, !dbg !2280
  %and32 = and i32 %19, 240, !dbg !2280
  %shr33 = lshr i32 %and32, 4, !dbg !2280
  %idxprom34 = zext i32 %shr33 to i64, !dbg !2280
  %arrayidx35 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %idxprom34, !dbg !2280
  %20 = load i8, i8* %arrayidx35, align 1, !dbg !2280
  %21 = load i8*, i8** %str.addr, align 8, !dbg !2281
  %arrayidx36 = getelementptr i8, i8* %21, i64 5, !dbg !2281
  store i8 %20, i8* %arrayidx36, align 1, !dbg !2282
  %22 = load i32, i32* %id.addr, align 4, !dbg !2283
  %and37 = and i32 %22, 15, !dbg !2283
  %idxprom38 = zext i32 %and37 to i64, !dbg !2283
  %arrayidx39 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %idxprom38, !dbg !2283
  %23 = load i8, i8* %arrayidx39, align 1, !dbg !2283
  %24 = load i8*, i8** %str.addr, align 8, !dbg !2284
  %arrayidx40 = getelementptr i8, i8* %24, i64 6, !dbg !2284
  store i8 %23, i8* %arrayidx40, align 1, !dbg !2285
  %25 = load i8*, i8** %str.addr, align 8, !dbg !2286
  %arrayidx41 = getelementptr i8, i8* %25, i64 7, !dbg !2286
  store i8 0, i8* %arrayidx41, align 1, !dbg !2287
  ret void, !dbg !2288
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #3 !dbg !2289 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2293, metadata !DIExpression()), !dbg !2294
  %0 = load i32, i32* %val.addr, align 4, !dbg !2295
  %call = call i32 @__arch_swab32(i32 %0) #7, !dbg !2296
  ret i32 %call, !dbg !2297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @pnp_resource_type_name(%struct.resource* %res) #0 !dbg !2298 {
entry:
  %retval = alloca i8*, align 8
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2301, metadata !DIExpression()), !dbg !2302
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2303
  %call = call i64 @pnp_resource_type(%struct.resource* %0) #6, !dbg !2304
  switch i64 %call, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb1
    i64 1024, label %sw.bb2
    i64 2048, label %sw.bb3
    i64 4096, label %sw.bb4
  ], !dbg !2305

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8, !dbg !2306
  br label %return, !dbg !2306

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %retval, align 8, !dbg !2308
  br label %return, !dbg !2308

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8, !dbg !2309
  br label %return, !dbg !2309

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8, !dbg !2310
  br label %return, !dbg !2310

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8, !dbg !2311
  br label %return, !dbg !2311

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %retval, align 8, !dbg !2312
  br label %return, !dbg !2312

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !2313
  ret i8* %1, !dbg !2313
}

; Function Attrs: noredzone
declare dso_local i64 @pnp_resource_type(%struct.resource*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dbg_pnp_show_resources(%struct.pnp_dev* %dev, i8* %desc) #0 !dbg !2314 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %desc.addr = alloca i8*, align 8
  %pnp_res = alloca %struct.pnp_resource*, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp10 = alloca %struct.pnp_resource*, align 8
  %tmp16 = alloca i32, align 4
  %__mptr17 = alloca i8*, align 8
  %tmp22 = alloca %struct.pnp_resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata %struct.pnp_resource** %pnp_res, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2323
  %resources = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 16, !dbg !2325
  %call = call i32 @list_empty(%struct.list_head* %resources) #6, !dbg !2326
  %tobool = icmp ne i32 %call, 0, !dbg !2326
  br i1 %tobool, label %if.then, label %if.else, !dbg !2327

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @pnp_debug, align 4, !dbg !2328
  %tobool1 = icmp ne i32 %1, 0, !dbg !2328
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2331

if.then2:                                         ; preds = %if.then
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2328
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 0, !dbg !2328
  %3 = load i8*, i8** %desc.addr, align 8, !dbg !2328
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.device* %dev3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %3) #8, !dbg !2328
  br label %if.end, !dbg !2328

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %tmp, align 4, !dbg !2328
  %4 = load i32, i32* %tmp, align 4, !dbg !2331
  br label %if.end24, !dbg !2332

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @pnp_debug, align 4, !dbg !2333
  %tobool4 = icmp ne i32 %5, 0, !dbg !2333
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2337

if.then5:                                         ; preds = %if.else
  %6 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2333
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %6, i32 0, i32 0, !dbg !2333
  %7 = load i8*, i8** %desc.addr, align 8, !dbg !2333
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.device* %dev6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %7) #8, !dbg !2333
  br label %if.end7, !dbg !2333

if.end7:                                          ; preds = %if.then5, %if.else
  store i32 0, i32* %tmp8, align 4, !dbg !2333
  %8 = load i32, i32* %tmp8, align 4, !dbg !2337
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2338, metadata !DIExpression()), !dbg !2341
  %9 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2341
  %resources9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %9, i32 0, i32 16, !dbg !2341
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources9, i32 0, i32 0, !dbg !2341
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2341
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !2341
  store i8* %11, i8** %__mptr, align 8, !dbg !2341
  br label %do.body, !dbg !2341

do.body:                                          ; preds = %if.end7
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !2341
  %add.ptr = getelementptr i8, i8* %12, i64 0, !dbg !2341
  %13 = bitcast i8* %add.ptr to %struct.pnp_resource*, !dbg !2341
  store %struct.pnp_resource* %13, %struct.pnp_resource** %tmp10, align 8, !dbg !2342
  %14 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp10, align 8, !dbg !2341
  store %struct.pnp_resource* %14, %struct.pnp_resource** %pnp_res, align 8, !dbg !2344
  br label %for.cond, !dbg !2344

for.cond:                                         ; preds = %do.end21, %do.end
  %15 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2345
  %list = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %15, i32 0, i32 0, !dbg !2345
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2345
  %resources11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 16, !dbg !2345
  %cmp = icmp eq %struct.list_head* %list, %resources11, !dbg !2345
  %lnot = xor i1 %cmp, true, !dbg !2345
  br i1 %lnot, label %for.body, label %for.end, !dbg !2344

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* @pnp_debug, align 4, !dbg !2347
  %tobool12 = icmp ne i32 %17, 0, !dbg !2347
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !2350

if.then13:                                        ; preds = %for.body
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2347
  %dev14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0, !dbg !2347
  %19 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2347
  %res = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %19, i32 0, i32 1, !dbg !2347
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.device* %dev14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.resource* %res) #8, !dbg !2347
  br label %if.end15, !dbg !2347

if.end15:                                         ; preds = %if.then13, %for.body
  store i32 0, i32* %tmp16, align 4, !dbg !2347
  %20 = load i32, i32* %tmp16, align 4, !dbg !2350
  br label %for.inc, !dbg !2351

for.inc:                                          ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i8** %__mptr17, metadata !2352, metadata !DIExpression()), !dbg !2354
  %21 = load %struct.pnp_resource*, %struct.pnp_resource** %pnp_res, align 8, !dbg !2354
  %list18 = getelementptr inbounds %struct.pnp_resource, %struct.pnp_resource* %21, i32 0, i32 0, !dbg !2354
  %next19 = getelementptr inbounds %struct.list_head, %struct.list_head* %list18, i32 0, i32 0, !dbg !2354
  %22 = load %struct.list_head*, %struct.list_head** %next19, align 8, !dbg !2354
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !2354
  store i8* %23, i8** %__mptr17, align 8, !dbg !2354
  br label %do.body20, !dbg !2354

do.body20:                                        ; preds = %for.inc
  br label %do.end21, !dbg !2355

do.end21:                                         ; preds = %do.body20
  %24 = load i8*, i8** %__mptr17, align 8, !dbg !2354
  %add.ptr23 = getelementptr i8, i8* %24, i64 0, !dbg !2354
  %25 = bitcast i8* %add.ptr23 to %struct.pnp_resource*, !dbg !2354
  store %struct.pnp_resource* %25, %struct.pnp_resource** %tmp22, align 8, !dbg !2355
  %26 = load %struct.pnp_resource*, %struct.pnp_resource** %tmp22, align 8, !dbg !2354
  store %struct.pnp_resource* %26, %struct.pnp_resource** %pnp_res, align 8, !dbg !2345
  br label %for.cond, !dbg !2345, !llvm.loop !2357

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end
  ret void, !dbg !2359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !2360 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2366, metadata !DIExpression()), !dbg !2367
  br label %do.body, !dbg !2368

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2370

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2368
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2368
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2368
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !2370
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !2368
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2372
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !2373
  %conv = zext i1 %cmp to i32, !dbg !2373
  ret i32 %conv, !dbg !2374
}

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @pnp_option_priority_name(%struct.pnp_option* %option) #0 !dbg !2375 {
entry:
  %retval = alloca i8*, align 8
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2420
  %call = call i32 @pnp_option_priority(%struct.pnp_option* %0) #6, !dbg !2421
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !2422

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %retval, align 8, !dbg !2423
  br label %return, !dbg !2423

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %retval, align 8, !dbg !2425
  br label %return, !dbg !2425

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %retval, align 8, !dbg !2426
  br label %return, !dbg !2426

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %retval, align 8, !dbg !2427
  br label %return, !dbg !2427

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !2428
  ret i8* %1, !dbg !2428
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_priority(%struct.pnp_option* %option) #0 !dbg !2429 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2434
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2435
  %1 = load i32, i32* %flags, align 8, !dbg !2435
  %shr = lshr i32 %1, 0, !dbg !2436
  %and = and i32 %shr, 4095, !dbg !2437
  ret i32 %and, !dbg !2438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dbg_pnp_show_option(%struct.pnp_dev* %dev, %struct.pnp_option* %option) #0 !dbg !2439 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %option.addr = alloca %struct.pnp_option*, align 8
  %buf = alloca [128 x i8], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %port = alloca %struct.pnp_port*, align 8
  %mem = alloca %struct.pnp_mem*, align 8
  %irq = alloca %struct.pnp_irq*, align 8
  %dma = alloca %struct.pnp_dma*, align 8
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2442, metadata !DIExpression()), !dbg !2443
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2444, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !2446, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2448, metadata !DIExpression()), !dbg !2449
  store i32 0, i32* %len, align 4, !dbg !2449
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.declare(metadata %struct.pnp_port** %port, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.pnp_mem** %mem, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.declare(metadata %struct.pnp_irq** %irq, metadata !2458, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.declare(metadata %struct.pnp_dma** %dma, metadata !2461, metadata !DIExpression()), !dbg !2463
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2464
  %call = call i32 @pnp_option_is_dependent(%struct.pnp_option* %0) #6, !dbg !2466
  %tobool = icmp ne i32 %call, 0, !dbg !2466
  br i1 %tobool, label %if.then, label %if.else, !dbg !2467

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2468
  %1 = load i32, i32* %len, align 4, !dbg !2469
  %idx.ext = sext i32 %1 to i64, !dbg !2470
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !2470
  %2 = load i32, i32* %len, align 4, !dbg !2471
  %conv = sext i32 %2 to i64, !dbg !2471
  %sub = sub i64 128, %conv, !dbg !2472
  %3 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2473
  %call1 = call i32 @pnp_option_set(%struct.pnp_option* %3) #6, !dbg !2474
  %4 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2475
  %call2 = call i8* @pnp_option_priority_name(%struct.pnp_option* %4) #6, !dbg !2476
  %call3 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr, i64 %sub, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %call1, i8* %call2) #6, !dbg !2477
  %5 = load i32, i32* %len, align 4, !dbg !2478
  %add = add i32 %5, %call3, !dbg !2478
  store i32 %add, i32* %len, align 4, !dbg !2478
  br label %if.end, !dbg !2479

if.else:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2480
  %6 = load i32, i32* %len, align 4, !dbg !2481
  %idx.ext5 = sext i32 %6 to i64, !dbg !2482
  %add.ptr6 = getelementptr i8, i8* %arraydecay4, i64 %idx.ext5, !dbg !2482
  %7 = load i32, i32* %len, align 4, !dbg !2483
  %conv7 = sext i32 %7 to i64, !dbg !2483
  %sub8 = sub i64 128, %conv7, !dbg !2484
  %call9 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr6, i64 %sub8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2485
  %8 = load i32, i32* %len, align 4, !dbg !2486
  %add10 = add i32 %8, %call9, !dbg !2486
  store i32 %add10, i32* %len, align 4, !dbg !2486
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2487
  %type = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %9, i32 0, i32 2, !dbg !2488
  %10 = load i64, i64* %type, align 8, !dbg !2488
  switch i64 %10, label %sw.epilog [
    i64 256, label %sw.bb
    i64 512, label %sw.bb20
    i64 1024, label %sw.bb36
    i64 2048, label %sw.bb95
  ], !dbg !2489

sw.bb:                                            ; preds = %if.end
  %11 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2490
  %u = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %11, i32 0, i32 3, !dbg !2492
  %port11 = bitcast %union.anon.39* %u to %struct.pnp_port*, !dbg !2493
  store %struct.pnp_port* %port11, %struct.pnp_port** %port, align 8, !dbg !2494
  %arraydecay12 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2495
  %12 = load i32, i32* %len, align 4, !dbg !2496
  %idx.ext13 = sext i32 %12 to i64, !dbg !2497
  %add.ptr14 = getelementptr i8, i8* %arraydecay12, i64 %idx.ext13, !dbg !2497
  %13 = load i32, i32* %len, align 4, !dbg !2498
  %conv15 = sext i32 %13 to i64, !dbg !2498
  %sub16 = sub i64 128, %conv15, !dbg !2499
  %14 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !2500
  %min = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %14, i32 0, i32 0, !dbg !2501
  %15 = load i64, i64* %min, align 8, !dbg !2501
  %16 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !2502
  %max = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %16, i32 0, i32 1, !dbg !2503
  %17 = load i64, i64* %max, align 8, !dbg !2503
  %18 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !2504
  %align = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %18, i32 0, i32 2, !dbg !2505
  %19 = load i64, i64* %align, align 8, !dbg !2505
  %20 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !2506
  %size = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %20, i32 0, i32 3, !dbg !2507
  %21 = load i64, i64* %size, align 8, !dbg !2507
  %22 = load %struct.pnp_port*, %struct.pnp_port** %port, align 8, !dbg !2508
  %flags = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %22, i32 0, i32 4, !dbg !2509
  %23 = load i8, i8* %flags, align 8, !dbg !2509
  %conv17 = zext i8 %23 to i32, !dbg !2508
  %call18 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr14, i64 %sub16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i64 %15, i64 %17, i64 %19, i64 %21, i32 %conv17) #6, !dbg !2510
  %24 = load i32, i32* %len, align 4, !dbg !2511
  %add19 = add i32 %24, %call18, !dbg !2511
  store i32 %add19, i32* %len, align 4, !dbg !2511
  br label %sw.epilog, !dbg !2512

sw.bb20:                                          ; preds = %if.end
  %25 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2513
  %u21 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %25, i32 0, i32 3, !dbg !2514
  %mem22 = bitcast %union.anon.39* %u21 to %struct.pnp_mem*, !dbg !2515
  store %struct.pnp_mem* %mem22, %struct.pnp_mem** %mem, align 8, !dbg !2516
  %arraydecay23 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2517
  %26 = load i32, i32* %len, align 4, !dbg !2518
  %idx.ext24 = sext i32 %26 to i64, !dbg !2519
  %add.ptr25 = getelementptr i8, i8* %arraydecay23, i64 %idx.ext24, !dbg !2519
  %27 = load i32, i32* %len, align 4, !dbg !2520
  %conv26 = sext i32 %27 to i64, !dbg !2520
  %sub27 = sub i64 128, %conv26, !dbg !2521
  %28 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !2522
  %min28 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %28, i32 0, i32 0, !dbg !2523
  %29 = load i64, i64* %min28, align 8, !dbg !2523
  %30 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !2524
  %max29 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %30, i32 0, i32 1, !dbg !2525
  %31 = load i64, i64* %max29, align 8, !dbg !2525
  %32 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !2526
  %align30 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %32, i32 0, i32 2, !dbg !2527
  %33 = load i64, i64* %align30, align 8, !dbg !2527
  %34 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !2528
  %size31 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %34, i32 0, i32 3, !dbg !2529
  %35 = load i64, i64* %size31, align 8, !dbg !2529
  %36 = load %struct.pnp_mem*, %struct.pnp_mem** %mem, align 8, !dbg !2530
  %flags32 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %36, i32 0, i32 4, !dbg !2531
  %37 = load i8, i8* %flags32, align 8, !dbg !2531
  %conv33 = zext i8 %37 to i32, !dbg !2530
  %call34 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr25, i64 %sub27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i64 %29, i64 %31, i64 %33, i64 %35, i32 %conv33) #6, !dbg !2532
  %38 = load i32, i32* %len, align 4, !dbg !2533
  %add35 = add i32 %38, %call34, !dbg !2533
  store i32 %add35, i32* %len, align 4, !dbg !2533
  br label %sw.epilog, !dbg !2534

sw.bb36:                                          ; preds = %if.end
  %39 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2535
  %u37 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %39, i32 0, i32 3, !dbg !2536
  %irq38 = bitcast %union.anon.39* %u37 to %struct.pnp_irq*, !dbg !2537
  store %struct.pnp_irq* %irq38, %struct.pnp_irq** %irq, align 8, !dbg !2538
  %arraydecay39 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2539
  %40 = load i32, i32* %len, align 4, !dbg !2540
  %idx.ext40 = sext i32 %40 to i64, !dbg !2541
  %add.ptr41 = getelementptr i8, i8* %arraydecay39, i64 %idx.ext40, !dbg !2541
  %41 = load i32, i32* %len, align 4, !dbg !2542
  %conv42 = sext i32 %41 to i64, !dbg !2542
  %sub43 = sub i64 128, %conv42, !dbg !2543
  %call44 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr41, i64 %sub43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2544
  %42 = load i32, i32* %len, align 4, !dbg !2545
  %add45 = add i32 %42, %call44, !dbg !2545
  store i32 %add45, i32* %len, align 4, !dbg !2545
  %43 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !2546
  %map = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %43, i32 0, i32 0, !dbg !2548
  %bits = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map, i32 0, i32 0, !dbg !2549
  %arraydecay46 = getelementptr inbounds [4 x i64], [4 x i64]* %bits, i64 0, i64 0, !dbg !2546
  %call47 = call i32 @bitmap_empty(i64* %arraydecay46, i32 256) #6, !dbg !2550
  %tobool48 = icmp ne i32 %call47, 0, !dbg !2550
  br i1 %tobool48, label %if.then49, label %if.else57, !dbg !2551

if.then49:                                        ; preds = %sw.bb36
  %arraydecay50 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2552
  %44 = load i32, i32* %len, align 4, !dbg !2553
  %idx.ext51 = sext i32 %44 to i64, !dbg !2554
  %add.ptr52 = getelementptr i8, i8* %arraydecay50, i64 %idx.ext51, !dbg !2554
  %45 = load i32, i32* %len, align 4, !dbg !2555
  %conv53 = sext i32 %45 to i64, !dbg !2555
  %sub54 = sub i64 128, %conv53, !dbg !2556
  %call55 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr52, i64 %sub54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2557
  %46 = load i32, i32* %len, align 4, !dbg !2558
  %add56 = add i32 %46, %call55, !dbg !2558
  store i32 %add56, i32* %len, align 4, !dbg !2558
  br label %if.end73, !dbg !2559

if.else57:                                        ; preds = %sw.bb36
  store i32 0, i32* %i, align 4, !dbg !2560
  br label %for.cond, !dbg !2563

for.cond:                                         ; preds = %for.inc, %if.else57
  %47 = load i32, i32* %i, align 4, !dbg !2564
  %cmp = icmp slt i32 %47, 256, !dbg !2566
  br i1 %cmp, label %for.body, label %for.end, !dbg !2567

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i, align 4, !dbg !2568
  %conv59 = sext i32 %48 to i64, !dbg !2568
  %49 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !2570
  %map60 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %49, i32 0, i32 0, !dbg !2571
  %bits61 = getelementptr inbounds %struct.pnp_irq_mask_t, %struct.pnp_irq_mask_t* %map60, i32 0, i32 0, !dbg !2572
  %arraydecay62 = getelementptr inbounds [4 x i64], [4 x i64]* %bits61, i64 0, i64 0, !dbg !2570
  %call63 = call zeroext i1 @test_bit(i64 %conv59, i64* %arraydecay62) #6, !dbg !2573
  br i1 %call63, label %if.then64, label %if.end72, !dbg !2574

if.then64:                                        ; preds = %for.body
  %arraydecay65 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2575
  %50 = load i32, i32* %len, align 4, !dbg !2576
  %idx.ext66 = sext i32 %50 to i64, !dbg !2577
  %add.ptr67 = getelementptr i8, i8* %arraydecay65, i64 %idx.ext66, !dbg !2577
  %51 = load i32, i32* %len, align 4, !dbg !2578
  %conv68 = sext i32 %51 to i64, !dbg !2578
  %sub69 = sub i64 128, %conv68, !dbg !2579
  %52 = load i32, i32* %i, align 4, !dbg !2580
  %call70 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr67, i64 %sub69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %52) #6, !dbg !2581
  %53 = load i32, i32* %len, align 4, !dbg !2582
  %add71 = add i32 %53, %call70, !dbg !2582
  store i32 %add71, i32* %len, align 4, !dbg !2582
  br label %if.end72, !dbg !2583

if.end72:                                         ; preds = %if.then64, %for.body
  br label %for.inc, !dbg !2584

for.inc:                                          ; preds = %if.end72
  %54 = load i32, i32* %i, align 4, !dbg !2585
  %inc = add i32 %54, 1, !dbg !2585
  store i32 %inc, i32* %i, align 4, !dbg !2585
  br label %for.cond, !dbg !2586, !llvm.loop !2587

for.end:                                          ; preds = %for.cond
  br label %if.end73

if.end73:                                         ; preds = %for.end, %if.then49
  %arraydecay74 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2589
  %55 = load i32, i32* %len, align 4, !dbg !2590
  %idx.ext75 = sext i32 %55 to i64, !dbg !2591
  %add.ptr76 = getelementptr i8, i8* %arraydecay74, i64 %idx.ext75, !dbg !2591
  %56 = load i32, i32* %len, align 4, !dbg !2592
  %conv77 = sext i32 %56 to i64, !dbg !2592
  %sub78 = sub i64 128, %conv77, !dbg !2593
  %57 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !2594
  %flags79 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %57, i32 0, i32 1, !dbg !2595
  %58 = load i8, i8* %flags79, align 8, !dbg !2595
  %conv80 = zext i8 %58 to i32, !dbg !2594
  %call81 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr76, i64 %sub78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %conv80) #6, !dbg !2596
  %59 = load i32, i32* %len, align 4, !dbg !2597
  %add82 = add i32 %59, %call81, !dbg !2597
  store i32 %add82, i32* %len, align 4, !dbg !2597
  %60 = load %struct.pnp_irq*, %struct.pnp_irq** %irq, align 8, !dbg !2598
  %flags83 = getelementptr inbounds %struct.pnp_irq, %struct.pnp_irq* %60, i32 0, i32 1, !dbg !2600
  %61 = load i8, i8* %flags83, align 8, !dbg !2600
  %conv84 = zext i8 %61 to i32, !dbg !2598
  %and = and i32 %conv84, 32, !dbg !2601
  %tobool85 = icmp ne i32 %and, 0, !dbg !2601
  br i1 %tobool85, label %if.then86, label %if.end94, !dbg !2602

if.then86:                                        ; preds = %if.end73
  %arraydecay87 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2603
  %62 = load i32, i32* %len, align 4, !dbg !2604
  %idx.ext88 = sext i32 %62 to i64, !dbg !2605
  %add.ptr89 = getelementptr i8, i8* %arraydecay87, i64 %idx.ext88, !dbg !2605
  %63 = load i32, i32* %len, align 4, !dbg !2606
  %conv90 = sext i32 %63 to i64, !dbg !2606
  %sub91 = sub i64 128, %conv90, !dbg !2607
  %call92 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr89, i64 %sub91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2608
  %64 = load i32, i32* %len, align 4, !dbg !2609
  %add93 = add i32 %64, %call92, !dbg !2609
  store i32 %add93, i32* %len, align 4, !dbg !2609
  br label %if.end94, !dbg !2610

if.end94:                                         ; preds = %if.then86, %if.end73
  br label %sw.epilog, !dbg !2611

sw.bb95:                                          ; preds = %if.end
  %65 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2612
  %u96 = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %65, i32 0, i32 3, !dbg !2613
  %dma97 = bitcast %union.anon.39* %u96 to %struct.pnp_dma*, !dbg !2614
  store %struct.pnp_dma* %dma97, %struct.pnp_dma** %dma, align 8, !dbg !2615
  %arraydecay98 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2616
  %66 = load i32, i32* %len, align 4, !dbg !2617
  %idx.ext99 = sext i32 %66 to i64, !dbg !2618
  %add.ptr100 = getelementptr i8, i8* %arraydecay98, i64 %idx.ext99, !dbg !2618
  %67 = load i32, i32* %len, align 4, !dbg !2619
  %conv101 = sext i32 %67 to i64, !dbg !2619
  %sub102 = sub i64 128, %conv101, !dbg !2620
  %call103 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr100, i64 %sub102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2621
  %68 = load i32, i32* %len, align 4, !dbg !2622
  %add104 = add i32 %68, %call103, !dbg !2622
  store i32 %add104, i32* %len, align 4, !dbg !2622
  %69 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !2623
  %map105 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %69, i32 0, i32 0, !dbg !2625
  %70 = load i8, i8* %map105, align 1, !dbg !2625
  %tobool106 = icmp ne i8 %70, 0, !dbg !2623
  br i1 %tobool106, label %if.else115, label %if.then107, !dbg !2626

if.then107:                                       ; preds = %sw.bb95
  %arraydecay108 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2627
  %71 = load i32, i32* %len, align 4, !dbg !2628
  %idx.ext109 = sext i32 %71 to i64, !dbg !2629
  %add.ptr110 = getelementptr i8, i8* %arraydecay108, i64 %idx.ext109, !dbg !2629
  %72 = load i32, i32* %len, align 4, !dbg !2630
  %conv111 = sext i32 %72 to i64, !dbg !2630
  %sub112 = sub i64 128, %conv111, !dbg !2631
  %call113 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr110, i64 %sub112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !2632
  %73 = load i32, i32* %len, align 4, !dbg !2633
  %add114 = add i32 %73, %call113, !dbg !2633
  store i32 %add114, i32* %len, align 4, !dbg !2633
  br label %if.end136, !dbg !2634

if.else115:                                       ; preds = %sw.bb95
  store i32 0, i32* %i, align 4, !dbg !2635
  br label %for.cond116, !dbg !2638

for.cond116:                                      ; preds = %for.inc133, %if.else115
  %74 = load i32, i32* %i, align 4, !dbg !2639
  %cmp117 = icmp slt i32 %74, 8, !dbg !2641
  br i1 %cmp117, label %for.body119, label %for.end135, !dbg !2642

for.body119:                                      ; preds = %for.cond116
  %75 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !2643
  %map120 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %75, i32 0, i32 0, !dbg !2645
  %76 = load i8, i8* %map120, align 1, !dbg !2645
  %conv121 = zext i8 %76 to i32, !dbg !2643
  %77 = load i32, i32* %i, align 4, !dbg !2646
  %shl = shl i32 1, %77, !dbg !2647
  %and122 = and i32 %conv121, %shl, !dbg !2648
  %tobool123 = icmp ne i32 %and122, 0, !dbg !2648
  br i1 %tobool123, label %if.then124, label %if.end132, !dbg !2649

if.then124:                                       ; preds = %for.body119
  %arraydecay125 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2650
  %78 = load i32, i32* %len, align 4, !dbg !2651
  %idx.ext126 = sext i32 %78 to i64, !dbg !2652
  %add.ptr127 = getelementptr i8, i8* %arraydecay125, i64 %idx.ext126, !dbg !2652
  %79 = load i32, i32* %len, align 4, !dbg !2653
  %conv128 = sext i32 %79 to i64, !dbg !2653
  %sub129 = sub i64 128, %conv128, !dbg !2654
  %80 = load i32, i32* %i, align 4, !dbg !2655
  %call130 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr127, i64 %sub129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %80) #6, !dbg !2656
  %81 = load i32, i32* %len, align 4, !dbg !2657
  %add131 = add i32 %81, %call130, !dbg !2657
  store i32 %add131, i32* %len, align 4, !dbg !2657
  br label %if.end132, !dbg !2658

if.end132:                                        ; preds = %if.then124, %for.body119
  br label %for.inc133, !dbg !2659

for.inc133:                                       ; preds = %if.end132
  %82 = load i32, i32* %i, align 4, !dbg !2660
  %inc134 = add i32 %82, 1, !dbg !2660
  store i32 %inc134, i32* %i, align 4, !dbg !2660
  br label %for.cond116, !dbg !2661, !llvm.loop !2662

for.end135:                                       ; preds = %for.cond116
  br label %if.end136

if.end136:                                        ; preds = %for.end135, %if.then107
  %arraydecay137 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2664
  %83 = load i32, i32* %len, align 4, !dbg !2665
  %idx.ext138 = sext i32 %83 to i64, !dbg !2666
  %add.ptr139 = getelementptr i8, i8* %arraydecay137, i64 %idx.ext138, !dbg !2666
  %84 = load i32, i32* %len, align 4, !dbg !2667
  %conv140 = sext i32 %84 to i64, !dbg !2667
  %sub141 = sub i64 128, %conv140, !dbg !2668
  %85 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !2669
  %map142 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %85, i32 0, i32 0, !dbg !2670
  %86 = load i8, i8* %map142, align 1, !dbg !2670
  %conv143 = zext i8 %86 to i32, !dbg !2669
  %87 = load %struct.pnp_dma*, %struct.pnp_dma** %dma, align 8, !dbg !2671
  %flags144 = getelementptr inbounds %struct.pnp_dma, %struct.pnp_dma* %87, i32 0, i32 1, !dbg !2672
  %88 = load i8, i8* %flags144, align 1, !dbg !2672
  %conv145 = zext i8 %88 to i32, !dbg !2671
  %call146 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %add.ptr139, i64 %sub141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 %conv143, i32 %conv145) #6, !dbg !2673
  %89 = load i32, i32* %len, align 4, !dbg !2674
  %add147 = add i32 %89, %call146, !dbg !2674
  store i32 %add147, i32* %len, align 4, !dbg !2674
  br label %sw.epilog, !dbg !2675

sw.epilog:                                        ; preds = %if.end, %if.end136, %if.end94, %sw.bb20, %sw.bb
  %90 = load i32, i32* @pnp_debug, align 4, !dbg !2676
  %tobool148 = icmp ne i32 %90, 0, !dbg !2676
  br i1 %tobool148, label %if.then149, label %if.end152, !dbg !2679

if.then149:                                       ; preds = %sw.epilog
  %91 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2676
  %dev150 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %91, i32 0, i32 0, !dbg !2676
  %arraydecay151 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2676
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.device* %dev150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %arraydecay151) #8, !dbg !2676
  br label %if.end152, !dbg !2676

if.end152:                                        ; preds = %if.then149, %sw.epilog
  store i32 0, i32* %tmp, align 4, !dbg !2676
  %92 = load i32, i32* %tmp, align 4, !dbg !2679
  ret void, !dbg !2680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_is_dependent(%struct.pnp_option* %option) #0 !dbg !2681 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2684, metadata !DIExpression()), !dbg !2685
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2686
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2687
  %1 = load i32, i32* %flags, align 8, !dbg !2687
  %and = and i32 %1, -2147483648, !dbg !2688
  %tobool = icmp ne i32 %and, 0, !dbg !2686
  %2 = zext i1 %tobool to i64, !dbg !2686
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2686
  ret i32 %cond, !dbg !2689
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_option_set(%struct.pnp_option* %option) #0 !dbg !2690 {
entry:
  %option.addr = alloca %struct.pnp_option*, align 8
  store %struct.pnp_option* %option, %struct.pnp_option** %option.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_option** %option.addr, metadata !2691, metadata !DIExpression()), !dbg !2692
  %0 = load %struct.pnp_option*, %struct.pnp_option** %option.addr, align 8, !dbg !2693
  %flags = getelementptr inbounds %struct.pnp_option, %struct.pnp_option* %0, i32 0, i32 1, !dbg !2694
  %1 = load i32, i32* %flags, align 8, !dbg !2694
  %shr = lshr i32 %1, 12, !dbg !2695
  %and = and i32 %shr, 65535, !dbg !2696
  ret i32 %and, !dbg !2697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_empty(i64* %src, i32 %nbits) #0 !dbg !2698 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !2704, metadata !DIExpression()), !dbg !2705
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !2708
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2708
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2708

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !2708
  %cmp = icmp ule i32 %2, 64, !dbg !2708
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2708

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !2708
  %cmp2 = icmp ugt i32 %3, 0, !dbg !2708
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2710

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src.addr, align 8, !dbg !2711
  %5 = load i64, i64* %4, align 8, !dbg !2712
  %6 = load i32, i32* %nbits.addr, align 4, !dbg !2713
  %sub = sub i32 0, %6, !dbg !2713
  %and = and i32 %sub, 63, !dbg !2713
  %sh_prom = zext i32 %and to i64, !dbg !2713
  %shr = lshr i64 -1, %sh_prom, !dbg !2713
  %and3 = and i64 %5, %shr, !dbg !2714
  %tobool = icmp ne i64 %and3, 0, !dbg !2715
  %lnot = xor i1 %tobool, true, !dbg !2715
  %lnot.ext = zext i1 %lnot to i32, !dbg !2715
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !2716
  br label %return, !dbg !2716

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i64*, i64** %src.addr, align 8, !dbg !2717
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !2718
  %conv = zext i32 %8 to i64, !dbg !2718
  %call = call i64 @find_first_bit(i64* %7, i64 %conv) #6, !dbg !2719
  %9 = load i32, i32* %nbits.addr, align 4, !dbg !2720
  %conv4 = zext i32 %9 to i64, !dbg !2720
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !2721
  %conv6 = zext i1 %cmp5 to i32, !dbg !2721
  store i32 %conv6, i32* %retval, align 4, !dbg !2722
  br label %return, !dbg !2722

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2723
  ret i32 %10, !dbg !2723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !2724 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !2731, metadata !DIExpression()), !dbg !2734
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !2736, metadata !DIExpression()), !dbg !2737
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !2738, metadata !DIExpression()), !dbg !2739
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !2740, metadata !DIExpression()), !dbg !2742
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !2744, metadata !DIExpression()), !dbg !2745
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !2746, metadata !DIExpression()), !dbg !2754
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2756, metadata !DIExpression()), !dbg !2757
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !2758, metadata !DIExpression()), !dbg !2759
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !2762
  %1 = load i64, i64* %nr.addr, align 8, !dbg !2763
  %div = sdiv i64 %1, 64, !dbg !2763
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !2764
  %2 = bitcast i64* %add.ptr to i8*, !dbg !2762
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !2765
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2766
  %conv.i = trunc i64 %4 to i32, !dbg !2766
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !2767
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !2768
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2768
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !2768
  %7 = load i64, i64* %nr.addr, align 8, !dbg !2769
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2769
  br i1 %8, label %cond.true, label %cond.false, !dbg !2769

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !2769
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !2769
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !2770
  %and.i = and i64 %11, 63, !dbg !2771
  %shl.i = shl i64 1, %and.i, !dbg !2772
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !2773
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !2774
  %shr.i = ashr i64 %13, 6, !dbg !2775
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !2773
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !2773
  %and1.i = and i64 %shl.i, %14, !dbg !2776
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !2777
  %conv = zext i1 %cmp.i to i32, !dbg !2769
  br label %cond.end, !dbg !2769

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !2769
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !2769
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !2778
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !2779
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !2780, !srcloc !2781
  store i8 %19, i8* %oldbit.i, align 1, !dbg !2780
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !2782
  %tobool.i = trunc i8 %20 to i1, !dbg !2782
  %conv2 = zext i1 %tobool.i to i32, !dbg !2769
  br label %cond.end, !dbg !2769

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2769
  %tobool = icmp ne i32 %cond, 0, !dbg !2769
  ret i1 %tobool, !dbg !2783
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i64, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_resource_valid(%struct.resource* %res) #0 !dbg !2784 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2787, metadata !DIExpression()), !dbg !2788
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2789
  %tobool = icmp ne %struct.resource* %0, null, !dbg !2789
  br i1 %tobool, label %if.then, label %if.end, !dbg !2791

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2792
  br label %return, !dbg !2792

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !2794
  ret i32 %1, !dbg !2794
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pnp_resource_len(%struct.resource* %res) #0 !dbg !2795 {
entry:
  %retval = alloca i64, align 8
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2798, metadata !DIExpression()), !dbg !2799
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2800
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !2802
  %1 = load i64, i64* %start, align 8, !dbg !2802
  %cmp = icmp eq i64 %1, 0, !dbg !2803
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2804

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2805
  %end = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 1, !dbg !2806
  %3 = load i64, i64* %end, align 8, !dbg !2806
  %cmp1 = icmp eq i64 %3, 0, !dbg !2807
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2808

if.then:                                          ; preds = %land.lhs.true
  store i64 0, i64* %retval, align 8, !dbg !2809
  br label %return, !dbg !2809

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2810
  %call = call i64 @resource_size(%struct.resource* %4) #6, !dbg !2811
  store i64 %call, i64* %retval, align 8, !dbg !2812
  br label %return, !dbg !2812

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !2813
  ret i64 %5, !dbg !2813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !2814 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2819, metadata !DIExpression()), !dbg !2820
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2821
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !2822
  %1 = load i64, i64* %end, align 8, !dbg !2822
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2823
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !2824
  %3 = load i64, i64* %start, align 8, !dbg !2824
  %sub = sub i64 %1, %3, !dbg !2825
  %add = add i64 %sub, 1, !dbg !2826
  ret i64 %add, !dbg !2827
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #3 !dbg !2828 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load i32, i32* %val.addr, align 4, !dbg !2832
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !2833, !srcloc !2834
  store i32 %1, i32* %val.addr, align 4, !dbg !2833
  %2 = load i32, i32* %val.addr, align 4, !dbg !2835
  ret i32 %2, !dbg !2836
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !2837 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  ret i1 true, !dbg !2845
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !2846 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2854, metadata !DIExpression()), !dbg !2855
  ret void, !dbg !2856
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }
attributes #3 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind readnone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !53, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/pnp/support.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 10, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!53 = !{!54, !56, !58, !59, !80, !93, !96}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !55, line: 27, baseType: !5)
!55 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !57, line: 32, baseType: !54)
!57 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_resource", file: !61, line: 156, size: 640, elements: !62)
!61 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !70}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !60, file: !61, line: 157, baseType: !64, size: 128)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !65, line: 178, size: 128, elements: !66)
!65 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !65, line: 179, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !65, line: 179, baseType: !68, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !60, file: !61, line: 158, baseType: !71, size: 512, offset: 128)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !72, line: 20, size: 512, elements: !73)
!72 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !81, !82, !86, !88, !89, !91, !92}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !71, file: !72, line: 21, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !65, line: 158, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !65, line: 153, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !55, line: 31, baseType: !80)
!80 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !71, file: !72, line: 22, baseType: !75, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !72, line: 23, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !71, file: !72, line: 24, baseType: !87, size: 64, offset: 192)
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !71, file: !72, line: 25, baseType: !87, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !72, line: 26, baseType: !90, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !71, file: !72, line: 26, baseType: !90, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !71, file: !72, line: 26, baseType: !90, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!97 = !{i32 7, !"Dwarf Version", i32 4}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"Code Model", i32 2}
!101 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!102 = distinct !DISubprogram(name: "pnp_is_active", scope: !1, file: !1, line: 20, type: !103, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !106}
!105 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !108, line: 243, size: 7488, elements: !109)
!108 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1991, !2018, !2044, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !107, file: !108, line: 244, baseType: !111, size: 5568)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !112)
!112 = !{!113, !1593, !1595, !1598, !1599, !1650, !1747, !1748, !1749, !1750, !1751, !1760, !1865, !1878, !1881, !1882, !1886, !1888, !1889, !1890, !1894, !1900, !1901, !1904, !1908, !1911, !1914, !1915, !1916, !1917, !1949, !1950, !1951, !1954, !1957, !1958, !1959, !1960}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !111, file: !28, line: 462, baseType: !114, size: 512)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !115, line: 64, size: 512, elements: !116)
!115 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !121, !181, !1430, !1583, !1588, !1589, !1590, !1591, !1592}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !115, line: 65, baseType: !83, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !114, file: !115, line: 66, baseType: !64, size: 128, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !115, line: 67, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !114, file: !115, line: 68, baseType: !122, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !115, line: 192, size: 704, elements: !124)
!124 = !{!125, !126, !142, !143}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !123, file: !115, line: 193, baseType: !64, size: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !123, file: !115, line: 194, baseType: !127, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !128, line: 83, baseType: !129)
!128 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !128, line: 71, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !128, line: 72, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !128, line: 72, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !132, file: !128, line: 73, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !128, line: 20, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !135, file: !128, line: 21, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !139, line: 25, baseType: !140)
!139 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 25, elements: !141)
!141 = !{}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !123, file: !115, line: 195, baseType: !114, size: 512, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !123, file: !115, line: 196, baseType: !144, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !115, line: 156, size: 192, elements: !147)
!147 = !{!148, !153, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !146, file: !115, line: 157, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!105, !122, !120}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !115, line: 158, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!83, !122, !120}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !146, file: !115, line: 159, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!105, !122, !120, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !115, line: 148, size: 20736, elements: !165)
!165 = !{!166, !171, !175, !176, !180}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !164, file: !115, line: 149, baseType: !167, size: 192)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 192, elements: !169)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!169 = !{!170}
!170 = !DISubrange(count: 3)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !164, file: !115, line: 150, baseType: !172, size: 4096, offset: 192)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 4096, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !164, file: !115, line: 151, baseType: !105, size: 32, offset: 4288)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !164, file: !115, line: 152, baseType: !177, size: 16384, offset: 4320)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 16384, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !164, file: !115, line: 153, baseType: !105, size: 32, offset: 20704)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !114, file: !115, line: 69, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !115, line: 138, size: 448, elements: !184)
!184 = !{!185, !189, !218, !220, !1376, !1409, !1413}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !183, file: !115, line: 139, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !120}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !183, file: !115, line: 140, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !193, line: 230, size: 128, elements: !194)
!193 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !211}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !192, file: !193, line: 231, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !120, !204, !168}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !65, line: 60, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !201, line: 73, baseType: !202)
!201 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !201, line: 15, baseType: !203)
!203 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !193, line: 30, size: 128, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !193, line: 31, baseType: !83, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !205, file: !193, line: 32, baseType: !209, size: 16, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !65, line: 19, baseType: !210)
!210 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !192, file: !193, line: 232, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!199, !120, !204, !83, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 55, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !201, line: 72, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !201, line: 16, baseType: !87)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !183, file: !115, line: 141, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !183, file: !115, line: 142, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !193, line: 84, size: 320, elements: !225)
!225 = !{!226, !227, !231, !1373, !1374}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !193, line: 85, baseType: !83, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !224, file: !193, line: 86, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!209, !120, !204, !105}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !224, file: !193, line: 88, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!209, !120, !235, !105}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !193, line: 168, size: 448, elements: !237)
!237 = !{!238, !239, !240, !241, !251, !252}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !236, file: !193, line: 169, baseType: !205, size: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !236, file: !193, line: 170, baseType: !215, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !236, file: !193, line: 171, baseType: !58, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !236, file: !193, line: 172, baseType: !242, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!199, !245, !120, !235, !168, !248, !215}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !247, line: 526, flags: DIFlagFwdDecl)
!247 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !65, line: 46, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !201, line: 88, baseType: !250)
!250 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !236, file: !193, line: 174, baseType: !242, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !236, file: !193, line: 176, baseType: !253, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!105, !245, !120, !235, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !258, line: 305, size: 1472, elements: !259)
!258 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261, !262, !263, !264, !272, !273, !1347, !1353, !1354, !1359, !1360, !1363, !1367, !1368, !1369, !1370, !1371}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !257, file: !258, line: 308, baseType: !87, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !257, file: !258, line: 309, baseType: !87, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !257, file: !258, line: 313, baseType: !256, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !257, file: !258, line: 313, baseType: !256, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !257, file: !258, line: 315, baseType: !265, size: 192, align: 64, offset: 256)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !266, line: 24, size: 192, align: 64, elements: !267)
!266 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !265, file: !266, line: 25, baseType: !87, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !265, file: !266, line: 26, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !265, file: !266, line: 27, baseType: !270, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !257, file: !258, line: 323, baseType: !87, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !257, file: !258, line: 327, baseType: !274, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !258, line: 388, size: 7296, elements: !276)
!276 = !{!277, !1343}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !258, line: 389, baseType: !278, size: 7296)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !258, line: 389, size: 7296, elements: !279)
!279 = !{!280, !281, !285, !286, !290, !291, !292, !293, !294, !302, !307, !308, !309, !310, !319, !320, !321, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !356, !364, !367, !415, !416, !1313, !1314, !1317, !1321, !1322, !1325, !1326, !1327, !1330, !1342}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !278, file: !258, line: 390, baseType: !256, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !278, file: !258, line: 391, baseType: !282, size: 64, offset: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !266, line: 31, size: 64, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !282, file: !266, line: 32, baseType: !270, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !278, file: !258, line: 392, baseType: !77, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !278, file: !258, line: 394, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!87, !245, !87, !87, !87, !87}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !278, file: !258, line: 398, baseType: !87, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !278, file: !258, line: 399, baseType: !87, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !278, file: !258, line: 405, baseType: !87, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !278, file: !258, line: 406, baseType: !87, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !278, file: !258, line: 407, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !247, line: 286, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 286, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !297, file: !247, line: 286, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !301, line: 18, baseType: !87)
!301 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !278, file: !258, line: 416, baseType: !303, size: 32, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !65, line: 168, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 166, size: 32, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !304, file: !65, line: 167, baseType: !105, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !278, file: !258, line: 428, baseType: !303, size: 32, offset: 608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !278, file: !258, line: 437, baseType: !303, size: 32, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !278, file: !258, line: 447, baseType: !303, size: 32, offset: 672)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !278, file: !258, line: 450, baseType: !311, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !312, line: 13, baseType: !313)
!312 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !65, line: 175, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 173, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !314, file: !65, line: 174, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !55, line: 30, baseType: !250)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !278, file: !258, line: 452, baseType: !105, size: 32, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !278, file: !258, line: 454, baseType: !127, offset: 800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !278, file: !258, line: 457, baseType: !322, size: 256, offset: 832)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !323, line: 35, size: 256, elements: !324)
!323 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !326, !327, !329}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !322, file: !323, line: 36, baseType: !311, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !322, file: !323, line: 42, baseType: !311, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !322, file: !323, line: 46, baseType: !328, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !128, line: 29, baseType: !135)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !322, file: !323, line: 47, baseType: !64, size: 128, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !278, file: !258, line: 459, baseType: !64, size: 128, offset: 1088)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !278, file: !258, line: 466, baseType: !87, size: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !278, file: !258, line: 467, baseType: !87, size: 64, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !278, file: !258, line: 469, baseType: !87, size: 64, offset: 1344)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !278, file: !258, line: 470, baseType: !87, size: 64, offset: 1408)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !278, file: !258, line: 471, baseType: !313, size: 64, offset: 1472)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !278, file: !258, line: 472, baseType: !87, size: 64, offset: 1536)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !278, file: !258, line: 473, baseType: !87, size: 64, offset: 1600)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !278, file: !258, line: 474, baseType: !87, size: 64, offset: 1664)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !278, file: !258, line: 475, baseType: !87, size: 64, offset: 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !278, file: !258, line: 477, baseType: !127, offset: 1792)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !278, file: !258, line: 478, baseType: !87, size: 64, offset: 1792)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !278, file: !258, line: 478, baseType: !87, size: 64, offset: 1856)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !278, file: !258, line: 478, baseType: !87, size: 64, offset: 1920)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !278, file: !258, line: 478, baseType: !87, size: 64, offset: 1984)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !278, file: !258, line: 479, baseType: !87, size: 64, offset: 2048)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !278, file: !258, line: 479, baseType: !87, size: 64, offset: 2112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !278, file: !258, line: 479, baseType: !87, size: 64, offset: 2176)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !278, file: !258, line: 480, baseType: !87, size: 64, offset: 2240)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !278, file: !258, line: 480, baseType: !87, size: 64, offset: 2304)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !278, file: !258, line: 480, baseType: !87, size: 64, offset: 2368)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !278, file: !258, line: 480, baseType: !87, size: 64, offset: 2432)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !278, file: !258, line: 482, baseType: !353, size: 2816, offset: 2496)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2816, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 44)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !278, file: !258, line: 488, baseType: !357, size: 256, offset: 5312)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !358, line: 60, size: 256, elements: !359)
!358 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !357, file: !358, line: 61, baseType: !361, size: 256)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 4)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !278, file: !258, line: 490, baseType: !365, size: 64, offset: 5568)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !258, line: 490, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !278, file: !258, line: 493, baseType: !368, size: 896, offset: 5632)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !369, line: 53, baseType: !370)
!369 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !369, line: 13, size: 896, elements: !371)
!371 = !{!372, !373, !374, !375, !378, !379, !386, !387, !407, !408, !411}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !370, file: !369, line: 18, baseType: !77, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !370, file: !369, line: 28, baseType: !313, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !370, file: !369, line: 31, baseType: !322, size: 256, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !370, file: !369, line: 32, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !369, line: 32, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !370, file: !369, line: 37, baseType: !210, size: 16, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !370, file: !369, line: 40, baseType: !380, size: 192, offset: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !381, line: 53, size: 192, elements: !382)
!381 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !384, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !380, file: !381, line: 54, baseType: !311, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !380, file: !381, line: 55, baseType: !127, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !380, file: !381, line: 59, baseType: !64, size: 128, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !370, file: !369, line: 41, baseType: !58, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !370, file: !369, line: 42, baseType: !388, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !391, line: 13, size: 896, elements: !392)
!391 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !390, file: !391, line: 14, baseType: !58, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !391, line: 15, baseType: !87, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !390, file: !391, line: 17, baseType: !87, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !390, file: !391, line: 17, baseType: !87, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !390, file: !391, line: 19, baseType: !203, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !390, file: !391, line: 21, baseType: !203, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !390, file: !391, line: 22, baseType: !203, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !390, file: !391, line: 23, baseType: !203, size: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !390, file: !391, line: 24, baseType: !203, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !390, file: !391, line: 25, baseType: !203, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !390, file: !391, line: 26, baseType: !203, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !390, file: !391, line: 27, baseType: !203, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !390, file: !391, line: 28, baseType: !203, size: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !390, file: !391, line: 29, baseType: !203, size: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !370, file: !369, line: 44, baseType: !303, size: 32, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !370, file: !369, line: 50, baseType: !409, size: 16, offset: 864)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !55, line: 24, baseType: !210)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !370, file: !369, line: 51, baseType: !412, size: 16, offset: 880)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !78, line: 18, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !55, line: 23, baseType: !414)
!414 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !258, line: 495, baseType: !87, size: 64, offset: 6528)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !278, file: !258, line: 497, baseType: !417, size: 64, offset: 6592)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !258, line: 381, size: 384, elements: !419)
!419 = !{!420, !421, !1312}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !418, file: !258, line: 382, baseType: !303, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !418, file: !258, line: 383, baseType: !422, size: 128, offset: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !258, line: 376, size: 128, elements: !423)
!423 = !{!424, !1310}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !422, file: !258, line: 377, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !427, line: 640, size: 48640, elements: !428)
!427 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!428 = !{!429, !436, !438, !439, !445, !446, !447, !448, !449, !450, !451, !452, !456, !474, !485, !580, !581, !582, !593, !594, !596, !597, !598, !599, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !678, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !734, !736, !737, !738, !750, !752, !753, !754, !755, !756, !762, !763, !764, !765, !766, !767, !768, !780, !785, !790, !791, !792, !795, !799, !802, !805, !808, !811, !815, !818, !821, !827, !828, !829, !835, !836, !837, !838, !839, !848, !849, !850, !851, !852, !857, !858, !859, !862, !863, !866, !869, !872, !875, !878, !881, !882, !962, !965, !968, !969, !972, !973, !974, !980, !981, !982, !995, !996, !997, !1009, !1014, !1017, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !426, file: !427, line: 646, baseType: !430, size: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !431, line: 56, size: 128, elements: !432)
!431 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !431, line: 57, baseType: !87, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !430, file: !431, line: 58, baseType: !435, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !54)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !426, file: !427, line: 649, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !203)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !426, file: !427, line: 657, baseType: !58, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !426, file: !427, line: 658, baseType: !440, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !441, line: 113, baseType: !442)
!441 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !441, line: 111, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !442, file: !441, line: 112, baseType: !303, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !427, line: 660, baseType: !5, size: 32, offset: 288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !426, file: !427, line: 661, baseType: !5, size: 32, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !426, file: !427, line: 684, baseType: !105, size: 32, offset: 352)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !426, file: !427, line: 686, baseType: !105, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !426, file: !427, line: 687, baseType: !105, size: 32, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !426, file: !427, line: 688, baseType: !105, size: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !426, file: !427, line: 689, baseType: !5, size: 32, offset: 480)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !426, file: !427, line: 691, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !427, line: 691, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !426, file: !427, line: 692, baseType: !457, size: 832, offset: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !427, line: 451, size: 832, elements: !458)
!458 = !{!459, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !457, file: !427, line: 453, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !427, line: 325, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !460, file: !427, line: 326, baseType: !87, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !460, file: !427, line: 327, baseType: !435, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !457, file: !427, line: 454, baseType: !265, size: 192, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !457, file: !427, line: 455, baseType: !64, size: 128, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !457, file: !427, line: 456, baseType: !5, size: 32, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !457, file: !427, line: 458, baseType: !77, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !457, file: !427, line: 459, baseType: !77, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !457, file: !427, line: 460, baseType: !77, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !457, file: !427, line: 461, baseType: !77, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !457, file: !427, line: 463, baseType: !77, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !457, file: !427, line: 465, baseType: !473, offset: 832)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !427, line: 415, elements: !141)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !426, file: !427, line: 693, baseType: !475, size: 384, offset: 1408)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !427, line: 489, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !475, file: !427, line: 490, baseType: !64, size: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !475, file: !427, line: 491, baseType: !87, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !475, file: !427, line: 492, baseType: !87, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !475, file: !427, line: 493, baseType: !5, size: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !475, file: !427, line: 494, baseType: !210, size: 16, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !475, file: !427, line: 495, baseType: !210, size: 16, offset: 304)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !475, file: !427, line: 497, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !426, file: !427, line: 697, baseType: !486, size: 1792, offset: 1792)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !427, line: 507, size: 1792, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !577, !578}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !486, file: !427, line: 508, baseType: !265, size: 192, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !486, file: !427, line: 515, baseType: !77, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !486, file: !427, line: 516, baseType: !77, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !486, file: !427, line: 517, baseType: !77, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !486, file: !427, line: 518, baseType: !77, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !486, file: !427, line: 519, baseType: !77, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !486, file: !427, line: 526, baseType: !317, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !486, file: !427, line: 527, baseType: !77, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !427, line: 528, baseType: !5, size: 32, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !486, file: !427, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !486, file: !427, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !486, file: !427, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !486, file: !427, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !486, file: !427, line: 563, baseType: !502, size: 512, offset: 704)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !503)
!503 = !{!504, !512, !513, !518, !570, !574, !575, !576}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !4, line: 119, baseType: !505, size: 256)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !506, line: 9, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !506, line: 10, baseType: !265, size: 192, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !505, file: !506, line: 11, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !511, line: 29, baseType: !317)
!511 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !502, file: !4, line: 120, baseType: !510, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !502, file: !4, line: 121, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!3, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !4, line: 122, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !521)
!521 = !{!522, !542, !543, !546, !556, !557, !565, !569}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !520, file: !4, line: 160, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !4, line: 215, baseType: !328)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !524, file: !4, line: 216, baseType: !5, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !524, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !524, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !524, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !524, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !524, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !524, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !524, file: !4, line: 233, baseType: !510, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !524, file: !4, line: 234, baseType: !517, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !524, file: !4, line: 235, baseType: !510, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !524, file: !4, line: 236, baseType: !517, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !524, file: !4, line: 237, baseType: !539, size: 4096, offset: 512)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 4096, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !520, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !520, file: !4, line: 162, baseType: !544, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !65, line: 27, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !201, line: 96, baseType: !105)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !520, file: !4, line: 163, baseType: !547, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !548, line: 276, baseType: !549)
!548 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !548, line: 276, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !549, file: !548, line: 276, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !548, line: 70, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !548, line: 65, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !553, file: !548, line: 66, baseType: !5, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !520, file: !4, line: 164, baseType: !517, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !520, file: !4, line: 165, baseType: !558, size: 128, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !506, line: 14, size: 128, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !558, file: !506, line: 15, baseType: !561, size: 128)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !266, line: 125, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !266, line: 126, baseType: !282, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !561, file: !266, line: 127, baseType: !270, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !520, file: !4, line: 166, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!510}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !520, file: !4, line: 167, baseType: !510, size: 64, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !502, file: !4, line: 123, baseType: !571, size: 8, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !55, line: 21, baseType: !573)
!573 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !502, file: !4, line: 124, baseType: !571, size: 8, offset: 456)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !502, file: !4, line: 125, baseType: !571, size: 8, offset: 464)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !502, file: !4, line: 126, baseType: !571, size: 8, offset: 472)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !486, file: !427, line: 572, baseType: !502, size: 512, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !486, file: !427, line: 580, baseType: !579, size: 64, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !426, file: !427, line: 721, baseType: !5, size: 32, offset: 3584)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !426, file: !427, line: 722, baseType: !105, size: 32, offset: 3616)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !426, file: !427, line: 723, baseType: !583, size: 64, offset: 3648)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !586, line: 17, baseType: !587)
!586 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !586, line: 17, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !587, file: !586, line: 17, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 1)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !426, file: !427, line: 724, baseType: !585, size: 64, offset: 3712)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !426, file: !427, line: 749, baseType: !595, offset: 3776)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !427, line: 290, elements: !141)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !426, file: !427, line: 751, baseType: !64, size: 128, offset: 3776)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !426, file: !427, line: 757, baseType: !274, size: 64, offset: 3904)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !426, file: !427, line: 758, baseType: !274, size: 64, offset: 3968)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !426, file: !427, line: 761, baseType: !600, size: 320, offset: 4032)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !358, line: 34, size: 320, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !600, file: !358, line: 35, baseType: !77, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !600, file: !358, line: 36, baseType: !604, size: 256, offset: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !362)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !426, file: !427, line: 766, baseType: !105, size: 32, offset: 4352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !426, file: !427, line: 767, baseType: !105, size: 32, offset: 4384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !426, file: !427, line: 768, baseType: !105, size: 32, offset: 4416)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !426, file: !427, line: 770, baseType: !105, size: 32, offset: 4448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !426, file: !427, line: 772, baseType: !87, size: 64, offset: 4480)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !426, file: !427, line: 775, baseType: !5, size: 32, offset: 4544)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !426, file: !427, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !426, file: !427, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !426, file: !427, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !426, file: !427, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !426, file: !427, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !426, file: !427, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !426, file: !427, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !426, file: !427, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !426, file: !427, line: 831, baseType: !87, size: 64, offset: 4672)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !426, file: !427, line: 833, baseType: !621, size: 384, offset: 4736)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !622)
!622 = !{!623, !628}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !621, file: !10, line: 26, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!203, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !10, line: 27, baseType: !629, size: 320, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !10, line: 27, size: 320, elements: !630)
!630 = !{!631, !641, !668}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !629, file: !10, line: 36, baseType: !632, size: 320)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !10, line: 29, size: 320, elements: !633)
!633 = !{!634, !636, !637, !638, !639, !640}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !632, file: !10, line: 30, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !632, file: !10, line: 31, baseType: !435, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !10, line: 32, baseType: !435, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !632, file: !10, line: 33, baseType: !435, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !632, file: !10, line: 34, baseType: !77, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !632, file: !10, line: 35, baseType: !635, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !629, file: !10, line: 46, baseType: !642, size: 192)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !10, line: 38, size: 192, elements: !643)
!643 = !{!644, !645, !646, !667}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !642, file: !10, line: 39, baseType: !544, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !10, line: 41, baseType: !647, size: 64, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !10, line: 41, size: 64, elements: !648)
!648 = !{!649, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !647, file: !10, line: 42, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !652, line: 7, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!653 = !{!654, !656}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !651, file: !652, line: 8, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !201, line: 93, baseType: !250)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !651, file: !652, line: 9, baseType: !250, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !647, file: !10, line: 43, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !660, line: 7, size: 64, elements: !661)
!660 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!661 = !{!662, !666}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !659, file: !660, line: 8, baseType: !663, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !660, line: 5, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !78, line: 20, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !55, line: 26, baseType: !105)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !659, file: !660, line: 9, baseType: !664, size: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !642, file: !10, line: 45, baseType: !77, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !629, file: !10, line: 54, baseType: !669, size: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !629, file: !10, line: 48, size: 256, elements: !670)
!670 = !{!671, !674, !675, !676, !677}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !669, file: !10, line: 49, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !669, file: !10, line: 50, baseType: !105, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !669, file: !10, line: 51, baseType: !105, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !10, line: 52, baseType: !87, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !10, line: 53, baseType: !87, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !426, file: !427, line: 835, baseType: !679, size: 32, offset: 5120)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !65, line: 22, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !201, line: 28, baseType: !105)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !426, file: !427, line: 836, baseType: !679, size: 32, offset: 5152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !426, file: !427, line: 840, baseType: !87, size: 64, offset: 5184)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !426, file: !427, line: 849, baseType: !425, size: 64, offset: 5248)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !426, file: !427, line: 852, baseType: !425, size: 64, offset: 5312)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !426, file: !427, line: 857, baseType: !64, size: 128, offset: 5376)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !426, file: !427, line: 858, baseType: !64, size: 128, offset: 5504)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !426, file: !427, line: 859, baseType: !425, size: 64, offset: 5632)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !426, file: !427, line: 867, baseType: !64, size: 128, offset: 5696)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !426, file: !427, line: 868, baseType: !64, size: 128, offset: 5824)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !426, file: !427, line: 871, baseType: !691, size: 64, offset: 5952)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !693, line: 59, size: 768, elements: !694)
!693 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695, !696, !697, !698, !709, !710, !717, !726}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 61, baseType: !440, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !692, file: !693, line: 62, baseType: !5, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !693, line: 63, baseType: !127, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !692, file: !693, line: 65, baseType: !699, size: 256, offset: 64)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 256, elements: !362)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !65, line: 182, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !700, file: !65, line: 183, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !65, line: 186, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !65, line: 187, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !704, file: !65, line: 187, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !692, file: !693, line: 66, baseType: !700, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !692, file: !693, line: 68, baseType: !711, size: 128, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !712, line: 40, baseType: !713)
!712 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !712, line: 36, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !713, file: !712, line: 37, baseType: !127)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !713, file: !712, line: 38, baseType: !64, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !692, file: !693, line: 69, baseType: !718, size: 128, align: 64, offset: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !65, line: 216, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !65, line: 217, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !65, line: 218, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !692, file: !693, line: 70, baseType: !727, size: 128, offset: 640)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 128, elements: !591)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !693, line: 54, size: 128, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !728, file: !693, line: 55, baseType: !105, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !728, file: !693, line: 56, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !693, line: 56, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !426, file: !427, line: 872, baseType: !735, size: 512, offset: 6016)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 512, elements: !362)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !426, file: !427, line: 873, baseType: !64, size: 128, offset: 6528)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !426, file: !427, line: 874, baseType: !64, size: 128, offset: 6656)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !426, file: !427, line: 876, baseType: !739, size: 64, offset: 6784)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !741, line: 26, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !740, file: !741, line: 27, baseType: !5, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !740, file: !741, line: 28, baseType: !745, size: 128, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !746, line: 43, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !745, file: !746, line: 44, baseType: !328)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !745, file: !746, line: 45, baseType: !64, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !426, file: !427, line: 879, baseType: !751, size: 64, offset: 6848)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !426, file: !427, line: 882, baseType: !751, size: 64, offset: 6912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !426, file: !427, line: 884, baseType: !77, size: 64, offset: 6976)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !426, file: !427, line: 885, baseType: !77, size: 64, offset: 7040)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !426, file: !427, line: 890, baseType: !77, size: 64, offset: 7104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !426, file: !427, line: 891, baseType: !757, size: 128, offset: 7168)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !427, line: 242, size: 128, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !757, file: !427, line: 244, baseType: !77, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !757, file: !427, line: 245, baseType: !77, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !757, file: !427, line: 246, baseType: !328, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !426, file: !427, line: 900, baseType: !87, size: 64, offset: 7296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !426, file: !427, line: 901, baseType: !87, size: 64, offset: 7360)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !426, file: !427, line: 904, baseType: !77, size: 64, offset: 7424)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !426, file: !427, line: 907, baseType: !77, size: 64, offset: 7488)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !426, file: !427, line: 910, baseType: !87, size: 64, offset: 7552)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !426, file: !427, line: 911, baseType: !87, size: 64, offset: 7616)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !426, file: !427, line: 914, baseType: !769, size: 640, offset: 7680)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !770, line: 123, size: 640, elements: !771)
!770 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !778, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !769, file: !770, line: 124, baseType: !773, size: 576)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 576, elements: !169)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !770, line: 108, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !774, file: !770, line: 109, baseType: !77, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !774, file: !770, line: 110, baseType: !558, size: 128, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !769, file: !770, line: 125, baseType: !5, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !769, file: !770, line: 126, baseType: !5, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !426, file: !427, line: 917, baseType: !781, size: 192, offset: 8320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !770, line: 134, size: 192, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !781, file: !770, line: 135, baseType: !718, size: 128, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !781, file: !770, line: 136, baseType: !5, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !426, file: !427, line: 923, baseType: !786, size: 64, offset: 8512)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !789, line: 11, flags: DIFlagFwdDecl)
!789 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!790 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !426, file: !427, line: 926, baseType: !786, size: 64, offset: 8576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !426, file: !427, line: 929, baseType: !786, size: 64, offset: 8640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !426, file: !427, line: 933, baseType: !793, size: 64, offset: 8704)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !427, line: 933, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !426, file: !427, line: 943, baseType: !796, size: 128, offset: 8768)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !797)
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
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !814, line: 35, flags: DIFlagFwdDecl)
!814 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !426, file: !427, line: 969, baseType: !816, size: 64, offset: 9216)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !770, line: 223, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !426, file: !427, line: 970, baseType: !819, size: 64, offset: 9280)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !427, line: 62, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !426, file: !427, line: 971, baseType: !822, size: 64, offset: 9344)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !823, line: 25, baseType: !824)
!823 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !823, line: 23, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !824, file: !823, line: 24, baseType: !590, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !426, file: !427, line: 972, baseType: !822, size: 64, offset: 9408)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !426, file: !427, line: 974, baseType: !822, size: 64, offset: 9472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !426, file: !427, line: 975, baseType: !830, size: 192, offset: 9536)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !831, line: 30, size: 192, elements: !832)
!831 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !830, file: !831, line: 31, baseType: !64, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !830, file: !831, line: 32, baseType: !822, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !426, file: !427, line: 976, baseType: !87, size: 64, offset: 9728)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !426, file: !427, line: 977, baseType: !215, size: 64, offset: 9792)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !426, file: !427, line: 978, baseType: !5, size: 32, offset: 9856)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !426, file: !427, line: 980, baseType: !721, size: 64, offset: 9920)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !426, file: !427, line: 989, baseType: !840, size: 128, offset: 9984)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !841, line: 35, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !844, !845}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !840, file: !841, line: 36, baseType: !105, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !840, file: !841, line: 37, baseType: !303, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !840, file: !841, line: 38, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !841, line: 23, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !426, file: !427, line: 992, baseType: !77, size: 64, offset: 10112)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !426, file: !427, line: 993, baseType: !77, size: 64, offset: 10176)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !426, file: !427, line: 996, baseType: !127, offset: 10240)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !426, file: !427, line: 999, baseType: !328, offset: 10240)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !426, file: !427, line: 1001, baseType: !853, size: 64, offset: 10240)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !427, line: 636, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !427, line: 637, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !426, file: !427, line: 1005, baseType: !561, size: 128, offset: 10304)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !426, file: !427, line: 1007, baseType: !425, size: 64, offset: 10432)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !426, file: !427, line: 1009, baseType: !860, size: 64, offset: 10496)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !427, line: 1009, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !426, file: !427, line: 1043, baseType: !58, size: 64, offset: 10560)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !426, file: !427, line: 1046, baseType: !864, size: 64, offset: 10624)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !427, line: 41, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !426, file: !427, line: 1050, baseType: !867, size: 64, offset: 10688)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !427, line: 42, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !426, file: !427, line: 1054, baseType: !870, size: 64, offset: 10752)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !427, line: 55, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !426, file: !427, line: 1056, baseType: !873, size: 64, offset: 10816)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !427, line: 40, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !426, file: !427, line: 1058, baseType: !876, size: 64, offset: 10880)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !427, line: 47, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !426, file: !427, line: 1061, baseType: !879, size: 64, offset: 10944)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !427, line: 43, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !426, file: !427, line: 1064, baseType: !87, size: 64, offset: 11008)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !426, file: !427, line: 1065, baseType: !883, size: 64, offset: 11072)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !831, line: 14, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !831, line: 12, size: 384, elements: !886)
!886 = !{!887}
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !831, line: 13, baseType: !888, size: 384)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !885, file: !831, line: 13, size: 384, elements: !889)
!889 = !{!890, !891, !892, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !888, file: !831, line: 13, baseType: !105, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !888, file: !831, line: 13, baseType: !105, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !888, file: !831, line: 13, baseType: !105, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !888, file: !831, line: 13, baseType: !894, size: 256, offset: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !895, line: 32, size: 256, elements: !896)
!895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!896 = !{!897, !903, !916, !922, !931, !951, !956}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !894, file: !895, line: 37, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 34, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !898, file: !895, line: 35, baseType: !680, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !898, file: !895, line: 36, baseType: !902, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !201, line: 49, baseType: !5)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !894, file: !895, line: 45, baseType: !904, size: 192)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 40, size: 192, elements: !905)
!905 = !{!906, !908, !909, !915}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !904, file: !895, line: 41, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !201, line: 95, baseType: !105)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !904, file: !895, line: 42, baseType: !105, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !904, file: !895, line: 43, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !895, line: 11, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !895, line: 8, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !911, file: !895, line: 9, baseType: !105, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !911, file: !895, line: 10, baseType: !58, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !904, file: !895, line: 44, baseType: !105, size: 32, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !894, file: !895, line: 52, baseType: !917, size: 128)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 48, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !917, file: !895, line: 49, baseType: !680, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !917, file: !895, line: 50, baseType: !902, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !917, file: !895, line: 51, baseType: !910, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !894, file: !895, line: 61, baseType: !923, size: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 55, size: 256, elements: !924)
!924 = !{!925, !926, !927, !928, !930}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !923, file: !895, line: 56, baseType: !680, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !923, file: !895, line: 57, baseType: !902, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !923, file: !895, line: 58, baseType: !105, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !923, file: !895, line: 59, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !201, line: 94, baseType: !202)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !923, file: !895, line: 60, baseType: !929, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !894, file: !895, line: 95, baseType: !932, size: 256)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 64, size: 256, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !932, file: !895, line: 65, baseType: !58, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !895, line: 77, baseType: !936, size: 192, offset: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !895, line: 77, size: 192, elements: !937)
!937 = !{!938, !939, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !936, file: !895, line: 82, baseType: !414, size: 16)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !936, file: !895, line: 88, baseType: !940, size: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !895, line: 84, size: 192, elements: !941)
!941 = !{!942, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !940, file: !895, line: 85, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !540)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !940, file: !895, line: 86, baseType: !58, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !940, file: !895, line: 87, baseType: !58, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !936, file: !895, line: 93, baseType: !947, size: 96)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !895, line: 90, size: 96, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !947, file: !895, line: 91, baseType: !943, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !947, file: !895, line: 92, baseType: !54, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !894, file: !895, line: 101, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 98, size: 128, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !952, file: !895, line: 99, baseType: !203, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !952, file: !895, line: 100, baseType: !105, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !894, file: !895, line: 108, baseType: !957, size: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !895, line: 104, size: 128, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !957, file: !895, line: 105, baseType: !58, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !957, file: !895, line: 106, baseType: !105, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !957, file: !895, line: 107, baseType: !5, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !426, file: !427, line: 1067, baseType: !963, offset: 11136)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !964, line: 12, elements: !141)
!964 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !426, file: !427, line: 1099, baseType: !966, size: 64, offset: 11136)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !427, line: 56, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !426, file: !427, line: 1103, baseType: !64, size: 128, offset: 11200)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !426, file: !427, line: 1104, baseType: !970, size: 64, offset: 11328)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !427, line: 46, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !426, file: !427, line: 1105, baseType: !380, size: 192, offset: 11392)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !426, file: !427, line: 1106, baseType: !5, size: 32, offset: 11584)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !426, file: !427, line: 1109, baseType: !975, size: 128, offset: 11648)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 128, elements: !978)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !427, line: 51, flags: DIFlagFwdDecl)
!978 = !{!979}
!979 = !DISubrange(count: 2)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !426, file: !427, line: 1110, baseType: !380, size: 192, offset: 11776)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !426, file: !427, line: 1111, baseType: !64, size: 128, offset: 11968)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !426, file: !427, line: 1173, baseType: !983, size: 64, offset: 12096)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !985, line: 62, size: 256, align: 256, elements: !986)
!985 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988, !989, !994}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !984, file: !985, line: 75, baseType: !54, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !984, file: !985, line: 90, baseType: !54, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !984, file: !985, line: 124, baseType: !990, size: 64, offset: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !984, file: !985, line: 109, size: 64, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !990, file: !985, line: 110, baseType: !79, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !990, file: !985, line: 112, baseType: !79, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 144, baseType: !54, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !426, file: !427, line: 1174, baseType: !435, size: 32, offset: 12160)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !426, file: !427, line: 1179, baseType: !87, size: 64, offset: 12224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !426, file: !427, line: 1182, baseType: !998, size: 128, offset: 12288)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !358, line: 76, size: 128, elements: !999)
!999 = !{!1000, !1005, !1008}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !998, file: !358, line: 85, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1002, line: 7, size: 64, elements: !1003)
!1002 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1001, file: !1002, line: 12, baseType: !587, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !998, file: !358, line: 88, baseType: !1006, size: 8, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 30, baseType: !1007)
!1007 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !998, file: !358, line: 95, baseType: !1006, size: 8, offset: 72)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !427, line: 1184, baseType: !1010, size: 128, offset: 12416)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 1184, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1010, file: !427, line: 1185, baseType: !440, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1010, file: !427, line: 1186, baseType: !718, size: 128, align: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !426, file: !427, line: 1190, baseType: !1015, size: 64, offset: 12544)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !427, line: 53, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !426, file: !427, line: 1192, baseType: !1018, size: 128, offset: 12608)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !358, line: 64, size: 128, elements: !1019)
!1019 = !{!1020, !1113, !1114}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1018, file: !358, line: 65, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !258, line: 68, size: 512, align: 128, elements: !1023)
!1023 = !{!1024, !1025, !1105, !1112}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !258, line: 69, baseType: !87, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !258, line: 77, baseType: !1026, size: 320, offset: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !258, line: 77, size: 320, elements: !1027)
!1027 = !{!1028, !1037, !1042, !1070, !1078, !1084, !1097, !1104}
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 78, baseType: !1029, size: 320)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 78, size: 320, elements: !1030)
!1030 = !{!1031, !1032, !1035, !1036}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1029, file: !258, line: 84, baseType: !64, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1029, file: !258, line: 86, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !258, line: 26, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1029, file: !258, line: 87, baseType: !87, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1029, file: !258, line: 94, baseType: !87, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 96, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 96, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1038, file: !258, line: 101, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !65, line: 143, baseType: !77)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 103, baseType: !1043, size: 320)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 103, size: 320, elements: !1044)
!1044 = !{!1045, !1055, !1058, !1059}
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !258, line: 104, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !258, line: 104, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1046, file: !258, line: 105, baseType: !64, size: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1046, file: !258, line: 106, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1046, file: !258, line: 106, size: 128, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !258, line: 107, baseType: !1021, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1050, file: !258, line: 109, baseType: !105, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1050, file: !258, line: 110, baseType: !105, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1043, file: !258, line: 117, baseType: !1056, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !258, line: 117, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1043, file: !258, line: 119, baseType: !58, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !258, line: 120, baseType: !1060, size: 64, offset: 256)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1043, file: !258, line: 120, size: 64, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1060, file: !258, line: 121, baseType: !58, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1060, file: !258, line: 122, baseType: !87, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !258, line: 123, baseType: !1065, size: 32)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !258, line: 123, size: 32, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1065, file: !258, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1065, file: !258, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1065, file: !258, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 130, baseType: !1071, size: 192)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 130, size: 192, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1071, file: !258, line: 131, baseType: !87, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1071, file: !258, line: 134, baseType: !573, size: 8, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1071, file: !258, line: 135, baseType: !573, size: 8, offset: 72)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1071, file: !258, line: 136, baseType: !303, size: 32, offset: 96)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1071, file: !258, line: 137, baseType: !5, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 139, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 139, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1079, file: !258, line: 140, baseType: !87, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1079, file: !258, line: 141, baseType: !303, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1079, file: !258, line: 143, baseType: !64, size: 128, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 145, baseType: !1085, size: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 145, size: 256, elements: !1086)
!1086 = !{!1087, !1088, !1090, !1091, !1096}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1085, file: !258, line: 146, baseType: !87, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1085, file: !258, line: 147, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !247, line: 509, baseType: !1021)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1085, file: !258, line: 148, baseType: !87, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !258, line: 149, baseType: !1092, size: 64, offset: 192)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !258, line: 149, size: 64, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1092, file: !258, line: 150, baseType: !274, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1092, file: !258, line: 151, baseType: !303, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1085, file: !258, line: 156, baseType: !127, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !258, line: 159, baseType: !1098, size: 128)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !258, line: 159, size: 128, elements: !1099)
!1099 = !{!1100, !1103}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1098, file: !258, line: 161, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !258, line: 161, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1098, file: !258, line: 162, baseType: !58, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1026, file: !258, line: 176, baseType: !718, size: 128, align: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !258, line: 179, baseType: !1106, size: 32, offset: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1022, file: !258, line: 179, size: 32, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1106, file: !258, line: 184, baseType: !303, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1106, file: !258, line: 192, baseType: !5, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1106, file: !258, line: 194, baseType: !5, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1106, file: !258, line: 195, baseType: !105, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1022, file: !258, line: 199, baseType: !303, size: 32, offset: 416)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1018, file: !358, line: 67, baseType: !54, size: 32, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1018, file: !358, line: 68, baseType: !54, size: 32, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !426, file: !427, line: 1206, baseType: !105, size: 32, offset: 12736)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !426, file: !427, line: 1207, baseType: !105, size: 32, offset: 12768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !426, file: !427, line: 1209, baseType: !87, size: 64, offset: 12800)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !426, file: !427, line: 1219, baseType: !77, size: 64, offset: 12864)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !426, file: !427, line: 1220, baseType: !77, size: 64, offset: 12928)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !426, file: !427, line: 1317, baseType: !105, size: 32, offset: 12992)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !426, file: !427, line: 1319, baseType: !425, size: 64, offset: 13056)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !426, file: !427, line: 1322, baseType: !1123, size: 64, offset: 13120)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !427, line: 1322, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !426, file: !427, line: 1326, baseType: !440, size: 32, offset: 13184)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !426, file: !427, line: 1342, baseType: !58, size: 64, offset: 13248)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !426, file: !427, line: 1343, baseType: !79, size: 64, offset: 13312)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !426, file: !427, line: 1344, baseType: !77, size: 64, offset: 13376)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !426, file: !427, line: 1345, baseType: !79, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !426, file: !427, line: 1346, baseType: !79, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !426, file: !427, line: 1347, baseType: !79, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !426, file: !427, line: 1348, baseType: !718, size: 128, align: 64, offset: 13504)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !426, file: !427, line: 1358, baseType: !1134, size: 34816, offset: 13824)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1135, line: 485, size: 34816, elements: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !{!1137, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1166, !1167, !1168, !1169, !1170, !1171, !1174, !1175, !1176}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1134, file: !1135, line: 487, baseType: !1138, size: 192)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 192, elements: !169)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1140, line: 16, size: 64, elements: !1141)
!1140 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1139, file: !1140, line: 17, baseType: !409, size: 16)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1139, file: !1140, line: 18, baseType: !409, size: 16, offset: 16)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1139, file: !1140, line: 19, baseType: !409, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1139, file: !1140, line: 19, baseType: !409, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1139, file: !1140, line: 19, baseType: !409, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1139, file: !1140, line: 19, baseType: !409, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1139, file: !1140, line: 19, baseType: !409, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1139, file: !1140, line: 20, baseType: !409, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1139, file: !1140, line: 20, baseType: !409, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1139, file: !1140, line: 20, baseType: !409, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1139, file: !1140, line: 20, baseType: !409, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1139, file: !1140, line: 20, baseType: !409, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1139, file: !1140, line: 20, baseType: !409, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1134, file: !1135, line: 491, baseType: !87, size: 64, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1134, file: !1135, line: 495, baseType: !210, size: 16, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1134, file: !1135, line: 496, baseType: !210, size: 16, offset: 272)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1134, file: !1135, line: 497, baseType: !210, size: 16, offset: 288)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1134, file: !1135, line: 498, baseType: !210, size: 16, offset: 304)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1134, file: !1135, line: 502, baseType: !87, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1134, file: !1135, line: 503, baseType: !87, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1134, file: !1135, line: 514, baseType: !1163, size: 256, offset: 448)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 256, elements: !362)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1135, line: 483, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1134, file: !1135, line: 516, baseType: !87, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1134, file: !1135, line: 518, baseType: !87, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1134, file: !1135, line: 520, baseType: !87, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1134, file: !1135, line: 521, baseType: !87, size: 64, offset: 896)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1134, file: !1135, line: 522, baseType: !87, size: 64, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1134, file: !1135, line: 528, baseType: !1172, size: 64, offset: 1024)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1135, line: 10, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1134, file: !1135, line: 535, baseType: !87, size: 64, offset: 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1134, file: !1135, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1134, file: !1135, line: 540, baseType: !1177, size: 33280, offset: 1536)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1178, line: 317, size: 33280, elements: !1179)
!1178 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1177, file: !1178, line: 330, baseType: !5, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1177, file: !1178, line: 337, baseType: !87, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1177, file: !1178, line: 348, baseType: !1183, size: 32768, offset: 512)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1178, line: 304, size: 32768, elements: !1184)
!1184 = !{!1185, !1200, !1239, !1289, !1306}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1183, file: !1178, line: 305, baseType: !1186, size: 896)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1178, line: 12, size: 896, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1199}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1186, file: !1178, line: 13, baseType: !435, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1186, file: !1178, line: 14, baseType: !435, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1186, file: !1178, line: 15, baseType: !435, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1186, file: !1178, line: 16, baseType: !435, size: 32, offset: 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1186, file: !1178, line: 17, baseType: !435, size: 32, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1186, file: !1178, line: 18, baseType: !435, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1186, file: !1178, line: 19, baseType: !435, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1186, file: !1178, line: 22, baseType: !1196, size: 640, offset: 224)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 640, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 20)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1186, file: !1178, line: 25, baseType: !435, size: 32, offset: 864)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1183, file: !1178, line: 306, baseType: !1201, size: 4096, align: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1178, line: 34, size: 4096, align: 128, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1222, !1223, !1224, !1228, !1230, !1234}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1201, file: !1178, line: 35, baseType: !409, size: 16)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1201, file: !1178, line: 36, baseType: !409, size: 16, offset: 16)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1201, file: !1178, line: 37, baseType: !409, size: 16, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1201, file: !1178, line: 38, baseType: !409, size: 16, offset: 48)
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1178, line: 39, baseType: !1208, size: 128, offset: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1178, line: 39, size: 128, elements: !1209)
!1209 = !{!1210, !1215}
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1178, line: 40, baseType: !1211, size: 128)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !1178, line: 40, size: 128, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1211, file: !1178, line: 41, baseType: !77, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1211, file: !1178, line: 42, baseType: !77, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1178, line: 44, baseType: !1216, size: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !1178, line: 44, size: 128, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1216, file: !1178, line: 45, baseType: !435, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1216, file: !1178, line: 46, baseType: !435, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1216, file: !1178, line: 47, baseType: !435, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1216, file: !1178, line: 48, baseType: !435, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1201, file: !1178, line: 51, baseType: !435, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1201, file: !1178, line: 52, baseType: !435, size: 32, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1201, file: !1178, line: 55, baseType: !1225, size: 1024, offset: 256)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1201, file: !1178, line: 58, baseType: !1229, size: 2048, offset: 1280)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !173)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1201, file: !1178, line: 60, baseType: !1231, size: 384, offset: 3328)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !1232)
!1232 = !{!1233}
!1233 = !DISubrange(count: 12)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1178, line: 62, baseType: !1235, size: 384, offset: 3712)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1178, line: 62, size: 384, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1235, file: !1178, line: 63, baseType: !1231, size: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1235, file: !1178, line: 64, baseType: !1231, size: 384)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1183, file: !1178, line: 307, baseType: !1240, size: 1088)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1178, line: 79, size: 1088, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1288}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1240, file: !1178, line: 80, baseType: !435, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1240, file: !1178, line: 81, baseType: !435, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1240, file: !1178, line: 82, baseType: !435, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1240, file: !1178, line: 83, baseType: !435, size: 32, offset: 96)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1240, file: !1178, line: 84, baseType: !435, size: 32, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1240, file: !1178, line: 85, baseType: !435, size: 32, offset: 160)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1240, file: !1178, line: 86, baseType: !435, size: 32, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1240, file: !1178, line: 88, baseType: !1196, size: 640, offset: 224)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1240, file: !1178, line: 89, baseType: !571, size: 8, offset: 864)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1240, file: !1178, line: 90, baseType: !571, size: 8, offset: 872)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1240, file: !1178, line: 91, baseType: !571, size: 8, offset: 880)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1240, file: !1178, line: 92, baseType: !571, size: 8, offset: 888)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1240, file: !1178, line: 93, baseType: !571, size: 8, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1240, file: !1178, line: 94, baseType: !571, size: 8, offset: 904)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1240, file: !1178, line: 95, baseType: !1257, size: 64, offset: 960)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1259, line: 11, size: 128, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1258, file: !1259, line: 12, baseType: !203, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1258, file: !1259, line: 13, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1265, line: 56, size: 1344, elements: !1266)
!1265 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1264, file: !1265, line: 61, baseType: !87, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1264, file: !1265, line: 62, baseType: !87, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1264, file: !1265, line: 63, baseType: !87, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1264, file: !1265, line: 64, baseType: !87, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1264, file: !1265, line: 65, baseType: !87, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1264, file: !1265, line: 66, baseType: !87, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1264, file: !1265, line: 68, baseType: !87, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1264, file: !1265, line: 69, baseType: !87, size: 64, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1264, file: !1265, line: 70, baseType: !87, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1264, file: !1265, line: 71, baseType: !87, size: 64, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1264, file: !1265, line: 72, baseType: !87, size: 64, offset: 640)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1264, file: !1265, line: 73, baseType: !87, size: 64, offset: 704)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1264, file: !1265, line: 74, baseType: !87, size: 64, offset: 768)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1264, file: !1265, line: 75, baseType: !87, size: 64, offset: 832)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1264, file: !1265, line: 76, baseType: !87, size: 64, offset: 896)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1264, file: !1265, line: 81, baseType: !87, size: 64, offset: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1264, file: !1265, line: 83, baseType: !87, size: 64, offset: 1024)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1264, file: !1265, line: 84, baseType: !87, size: 64, offset: 1088)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !1265, line: 85, baseType: !87, size: 64, offset: 1152)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1264, file: !1265, line: 86, baseType: !87, size: 64, offset: 1216)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1264, file: !1265, line: 87, baseType: !87, size: 64, offset: 1280)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1240, file: !1178, line: 96, baseType: !435, size: 32, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1183, file: !1178, line: 308, baseType: !1290, size: 4608, align: 512)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1178, line: 289, size: 4608, align: 512, elements: !1291)
!1291 = !{!1292, !1293, !1302}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1290, file: !1178, line: 290, baseType: !1201, size: 4096, align: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1290, file: !1178, line: 291, baseType: !1294, size: 512, offset: 4096)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1178, line: 268, size: 512, elements: !1295)
!1295 = !{!1296, !1297, !1298}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1294, file: !1178, line: 269, baseType: !77, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1294, file: !1178, line: 270, baseType: !77, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1294, file: !1178, line: 271, baseType: !1299, size: 384, offset: 128)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 384, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 6)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1290, file: !1178, line: 292, baseType: !1303, offset: 4608)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 0)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1183, file: !1178, line: 309, baseType: !1307, size: 32768)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 32768, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 4096)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !258, line: 378, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !418, file: !258, line: 384, baseType: !740, size: 192, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !278, file: !258, line: 500, baseType: !127, offset: 6656)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !278, file: !258, line: 501, baseType: !1315, size: 64, offset: 6656)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !258, line: 387, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !278, file: !258, line: 516, baseType: !1318, size: 64, offset: 6720)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1320, line: 18, flags: DIFlagFwdDecl)
!1320 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !278, file: !258, line: 519, baseType: !245, size: 64, offset: 6784)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !278, file: !258, line: 521, baseType: !1323, size: 64, offset: 6848)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !258, line: 521, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !278, file: !258, line: 545, baseType: !303, size: 32, offset: 6912)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !278, file: !258, line: 548, baseType: !1006, size: 8, offset: 6944)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !278, file: !258, line: 550, baseType: !1328, offset: 6952)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1329, line: 142, elements: !141)
!1329 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !278, file: !258, line: 554, baseType: !1331, size: 256, offset: 6976)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1332, line: 102, size: 256, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1331, file: !1332, line: 103, baseType: !311, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1331, file: !1332, line: 104, baseType: !64, size: 128, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1331, file: !1332, line: 105, baseType: !1337, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1332, line: 21, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !278, file: !258, line: 557, baseType: !435, size: 32, offset: 7232)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !275, file: !258, line: 565, baseType: !1344, offset: 7296)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, elements: !1345)
!1345 = !{!1346}
!1346 = !DISubrange(count: -1)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !257, file: !258, line: 333, baseType: !1348, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !247, line: 284, baseType: !1349)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !247, line: 284, size: 64, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1349, file: !247, line: 284, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !301, line: 19, baseType: !87)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !257, file: !258, line: 334, baseType: !87, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !257, file: !258, line: 343, baseType: !1355, size: 256, offset: 704)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !257, file: !258, line: 340, size: 256, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1355, file: !258, line: 341, baseType: !265, size: 192, align: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1355, file: !258, line: 342, baseType: !87, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !257, file: !258, line: 351, baseType: !64, size: 128, offset: 960)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !257, file: !258, line: 353, baseType: !1361, size: 64, offset: 1088)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !258, line: 353, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !257, file: !258, line: 356, baseType: !1364, size: 64, offset: 1152)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !258, line: 356, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !257, file: !258, line: 359, baseType: !87, size: 64, offset: 1216)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !257, file: !258, line: 361, baseType: !245, size: 64, offset: 1280)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !257, file: !258, line: 362, baseType: !58, size: 64, offset: 1344)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !257, file: !258, line: 365, baseType: !311, size: 64, offset: 1408)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !257, file: !258, line: 373, baseType: !1372, offset: 1472)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !258, line: 296, elements: !141)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !224, file: !193, line: 90, baseType: !219, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !224, file: !193, line: 91, baseType: !1375, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !183, file: !115, line: 143, baseType: !1377, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !120}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1383)
!1383 = !{!1384, !1385, !1389, !1393, !1401, !1405}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1382, file: !16, line: 40, baseType: !15, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1382, file: !16, line: 41, baseType: !1386, size: 64, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!1006}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1382, file: !16, line: 42, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!58}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1382, file: !16, line: 43, baseType: !1394, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!1397, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1382, file: !16, line: 44, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1397}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1382, file: !16, line: 45, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !58}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !183, file: !115, line: 144, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1397, !120}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !183, file: !115, line: 145, baseType: !1414, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !120, !1417, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1320, line: 23, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1320, line: 21, size: 32, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1419, file: !1320, line: 22, baseType: !1422, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !65, line: 32, baseType: !902)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1320, line: 28, baseType: !1425)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1320, line: 26, size: 32, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1425, file: !1320, line: 27, baseType: !1428, size: 32)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !65, line: 33, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !201, line: 50, baseType: !5)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !114, file: !115, line: 70, baseType: !1431, size: 64, offset: 384)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1433, line: 123, size: 1024, elements: !1434)
!1433 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1576, !1577, !1578, !1579, !1580}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1432, file: !1433, line: 124, baseType: !303, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1432, file: !1433, line: 125, baseType: !303, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1432, file: !1433, line: 135, baseType: !1431, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !1433, line: 136, baseType: !83, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1432, file: !1433, line: 138, baseType: !265, size: 192, align: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1432, file: !1433, line: 140, baseType: !1397, size: 64, offset: 384)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1432, file: !1433, line: 141, baseType: !5, size: 32, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !1433, line: 142, baseType: !1443, size: 256, offset: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !1433, line: 142, size: 256, elements: !1444)
!1444 = !{!1445, !1500, !1504}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1443, file: !1433, line: 143, baseType: !1446, size: 192)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1433, line: 91, size: 192, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1446, file: !1433, line: 92, baseType: !87, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1446, file: !1433, line: 94, baseType: !282, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1446, file: !1433, line: 100, baseType: !1451, size: 64, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1433, line: 180, size: 704, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1470, !1471, !1472, !1498, !1499}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1452, file: !1433, line: 182, baseType: !1431, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1452, file: !1433, line: 183, baseType: !5, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1452, file: !1433, line: 186, baseType: !1457, size: 192, offset: 128)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1458, line: 19, size: 192, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1459 = !{!1460, !1468, !1469}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1457, file: !1458, line: 20, baseType: !1461, size: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1462, line: 292, size: 128, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1465, !1467}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1461, file: !1462, line: 293, baseType: !127)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1461, file: !1462, line: 295, baseType: !1466, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !65, line: 148, baseType: !5)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1461, file: !1462, line: 296, baseType: !58, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1457, file: !1458, line: 21, baseType: !5, size: 32, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1457, file: !1458, line: 22, baseType: !5, size: 32, offset: 160)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1452, file: !1433, line: 187, baseType: !435, size: 32, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1452, file: !1433, line: 188, baseType: !435, size: 32, offset: 352)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1452, file: !1433, line: 189, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1433, line: 168, size: 320, elements: !1475)
!1475 = !{!1476, !1482, !1486, !1490, !1494}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1474, file: !1433, line: 169, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!105, !1480, !1451}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !247, line: 539, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1474, file: !1433, line: 171, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!105, !1431, !83, !209}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1474, file: !1433, line: 173, baseType: !1487, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!105, !1431}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1474, file: !1433, line: 174, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!105, !1431, !1431, !83}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1474, file: !1433, line: 176, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!105, !1480, !1431, !1451}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1452, file: !1433, line: 192, baseType: !64, size: 128, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1452, file: !1433, line: 194, baseType: !711, size: 128, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1443, file: !1433, line: 144, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1433, line: 103, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1501, file: !1433, line: 104, baseType: !1431, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1443, file: !1433, line: 145, baseType: !1505, size: 256)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1433, line: 107, size: 256, elements: !1506)
!1506 = !{!1507, !1571, !1574, !1575}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1505, file: !1433, line: 108, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1433, line: 217, size: 768, elements: !1511)
!1511 = !{!1512, !1532, !1536, !1540, !1545, !1549, !1553, !1557, !1558, !1559, !1560, !1567}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1510, file: !1433, line: 222, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!105, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1433, line: 197, size: 1088, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1517, file: !1433, line: 199, baseType: !1431, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1517, file: !1433, line: 200, baseType: !245, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1517, file: !1433, line: 201, baseType: !1480, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1517, file: !1433, line: 202, baseType: !58, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1517, file: !1433, line: 205, baseType: !380, size: 192, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1517, file: !1433, line: 206, baseType: !380, size: 192, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1517, file: !1433, line: 207, baseType: !105, size: 32, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1517, file: !1433, line: 208, baseType: !64, size: 128, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1517, file: !1433, line: 209, baseType: !168, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1517, file: !1433, line: 211, baseType: !215, size: 64, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1517, file: !1433, line: 212, baseType: !1006, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1517, file: !1433, line: 213, baseType: !1006, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1517, file: !1433, line: 214, baseType: !1364, size: 64, offset: 1024)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1510, file: !1433, line: 223, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1516}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1510, file: !1433, line: 236, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!105, !1480, !58}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1510, file: !1433, line: 238, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!58, !1480, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1510, file: !1433, line: 239, baseType: !1546, size: 64, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!58, !1480, !58, !1544}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1510, file: !1433, line: 240, baseType: !1550, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !1480, !58}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1510, file: !1433, line: 242, baseType: !1554, size: 64, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!199, !1516, !168, !215, !248}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1510, file: !1433, line: 252, baseType: !215, size: 64, offset: 448)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1510, file: !1433, line: 259, baseType: !1006, size: 8, offset: 512)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1510, file: !1433, line: 260, baseType: !1554, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1510, file: !1433, line: 263, baseType: !1561, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!1564, !1516, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !57, line: 52, baseType: !5)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1433, line: 27, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1510, file: !1433, line: 266, baseType: !1568, size: 64, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!105, !1516, !256}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1505, file: !1433, line: 109, baseType: !1572, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1433, line: 31, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1505, file: !1433, line: 110, baseType: !248, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1505, file: !1433, line: 111, baseType: !1431, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1432, file: !1433, line: 148, baseType: !58, size: 64, offset: 768)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1432, file: !1433, line: 154, baseType: !77, size: 64, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1432, file: !1433, line: 156, baseType: !210, size: 16, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1432, file: !1433, line: 157, baseType: !209, size: 16, offset: 912)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1432, file: !1433, line: 158, baseType: !1581, size: 64, offset: 960)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1433, line: 32, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !114, file: !115, line: 71, baseType: !1584, size: 32, offset: 448)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1585, line: 19, size: 32, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1584, file: !1585, line: 20, baseType: !440, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !114, file: !115, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !114, file: !115, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !114, file: !115, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !114, file: !115, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !114, file: !115, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !111, file: !28, line: 463, baseType: !1594, size: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !111, file: !28, line: 465, baseType: !1596, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !111, file: !28, line: 467, baseType: !83, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !28, line: 468, baseType: !1600, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1610, !1615, !1619}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1602, file: !28, line: 88, baseType: !83, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1602, file: !28, line: 89, baseType: !221, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1602, file: !28, line: 90, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!105, !1594, !163}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1602, file: !28, line: 91, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!168, !1594, !1614, !1417, !1423}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1602, file: !28, line: 93, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1594}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1602, file: !28, line: 95, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1623)
!1623 = !{!1624, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1622, file: !35, line: 279, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!105, !1594}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1622, file: !35, line: 280, baseType: !1616, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1622, file: !35, line: 281, baseType: !1625, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1622, file: !35, line: 282, baseType: !1625, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1622, file: !35, line: 283, baseType: !1625, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1622, file: !35, line: 284, baseType: !1625, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1622, file: !35, line: 285, baseType: !1625, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1622, file: !35, line: 286, baseType: !1625, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1622, file: !35, line: 287, baseType: !1625, size: 64, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1622, file: !35, line: 288, baseType: !1625, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1622, file: !35, line: 289, baseType: !1625, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1622, file: !35, line: 290, baseType: !1625, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1622, file: !35, line: 291, baseType: !1625, size: 64, offset: 768)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1622, file: !35, line: 292, baseType: !1625, size: 64, offset: 832)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1622, file: !35, line: 293, baseType: !1625, size: 64, offset: 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1622, file: !35, line: 294, baseType: !1625, size: 64, offset: 960)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1622, file: !35, line: 295, baseType: !1625, size: 64, offset: 1024)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1622, file: !35, line: 296, baseType: !1625, size: 64, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1622, file: !35, line: 297, baseType: !1625, size: 64, offset: 1152)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1622, file: !35, line: 298, baseType: !1625, size: 64, offset: 1216)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1622, file: !35, line: 299, baseType: !1625, size: 64, offset: 1280)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1622, file: !35, line: 300, baseType: !1625, size: 64, offset: 1344)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1622, file: !35, line: 301, baseType: !1625, size: 64, offset: 1408)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !111, file: !28, line: 470, baseType: !1651, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1653, line: 82, size: 1408, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1740, !1743, !1746}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !1653, line: 83, baseType: !83, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1652, file: !1653, line: 84, baseType: !83, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1652, file: !1653, line: 85, baseType: !1594, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1652, file: !1653, line: 86, baseType: !221, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1652, file: !1653, line: 87, baseType: !221, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1652, file: !1653, line: 88, baseType: !221, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1652, file: !1653, line: 90, baseType: !1662, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!105, !1594, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1674, !1675, !1676, !1677, !1691, !1704, !1705, !1706, !1707, !1708, !1716, !1717, !1718, !1719, !1720, !1721}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1666, file: !22, line: 96, baseType: !83, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1666, file: !22, line: 97, baseType: !1651, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1666, file: !22, line: 99, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1673, line: 76, flags: DIFlagFwdDecl)
!1673 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1666, file: !22, line: 100, baseType: !83, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1666, file: !22, line: 102, baseType: !1006, size: 8, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1666, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1666, file: !22, line: 105, baseType: !1678, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1681, line: 262, size: 1600, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !{!1683, !1685, !1686, !1690}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1680, file: !1681, line: 263, baseType: !1684, size: 256)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 256, elements: !1226)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !1681, line: 264, baseType: !1684, size: 256, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1680, file: !1681, line: 265, baseType: !1687, size: 1024, offset: 512)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1024, elements: !1688)
!1688 = !{!1689}
!1689 = !DISubrange(count: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1681, line: 266, baseType: !1397, size: 64, offset: 1536)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1666, file: !22, line: 106, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1681, line: 210, size: 256, elements: !1695)
!1695 = !{!1696, !1700, !1702, !1703}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1694, file: !1681, line: 211, baseType: !1697, size: 72)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 72, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 9)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1694, file: !1681, line: 212, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1681, line: 14, baseType: !87)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1694, file: !1681, line: 213, baseType: !54, size: 32, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1694, file: !1681, line: 214, baseType: !54, size: 32, offset: 224)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1666, file: !22, line: 108, baseType: !1625, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1666, file: !22, line: 109, baseType: !1616, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1666, file: !22, line: 110, baseType: !1625, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1666, file: !22, line: 111, baseType: !1616, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1666, file: !22, line: 112, baseType: !1709, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!105, !1594, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1713, file: !35, line: 51, baseType: !105, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1666, file: !22, line: 113, baseType: !1625, size: 64, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1666, file: !22, line: 114, baseType: !221, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1666, file: !22, line: 115, baseType: !221, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1666, file: !22, line: 117, baseType: !1620, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1666, file: !22, line: 118, baseType: !1616, size: 64, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1666, file: !22, line: 120, baseType: !1722, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1652, file: !1653, line: 91, baseType: !1607, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1652, file: !1653, line: 92, baseType: !1625, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1652, file: !1653, line: 93, baseType: !1616, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1652, file: !1653, line: 94, baseType: !1625, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1652, file: !1653, line: 95, baseType: !1616, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1652, file: !1653, line: 97, baseType: !1625, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1652, file: !1653, line: 98, baseType: !1625, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1652, file: !1653, line: 100, baseType: !1709, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1652, file: !1653, line: 101, baseType: !1625, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1652, file: !1653, line: 103, baseType: !1625, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1652, file: !1653, line: 105, baseType: !1625, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1652, file: !1653, line: 107, baseType: !1620, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1652, file: !1653, line: 109, baseType: !1737, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1653, line: 109, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1652, file: !1653, line: 111, baseType: !1741, size: 64, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1653, line: 111, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1652, file: !1653, line: 112, baseType: !1744, offset: 1344)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1745, line: 187, elements: !141)
!1745 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1652, file: !1653, line: 114, baseType: !1006, size: 8, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !111, file: !28, line: 471, baseType: !1665, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !111, file: !28, line: 473, baseType: !58, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !111, file: !28, line: 475, baseType: !58, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !111, file: !28, line: 480, baseType: !380, size: 192, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !111, file: !28, line: 484, baseType: !1752, size: 576, offset: 1216)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1752, file: !28, line: 362, baseType: !64, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1752, file: !28, line: 363, baseType: !64, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1752, file: !28, line: 364, baseType: !64, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1752, file: !28, line: 365, baseType: !64, size: 128, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1752, file: !28, line: 366, baseType: !1006, size: 8, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1752, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !111, file: !28, line: 485, baseType: !1761, size: 2304, offset: 1792)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1858, !1862}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1761, file: !35, line: 566, baseType: !1712, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1761, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1761, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1761, file: !35, line: 569, baseType: !1006, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1761, file: !35, line: 570, baseType: !1006, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1761, file: !35, line: 571, baseType: !1006, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1761, file: !35, line: 572, baseType: !1006, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1761, file: !35, line: 573, baseType: !1006, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1761, file: !35, line: 574, baseType: !1006, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1761, file: !35, line: 575, baseType: !1006, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1761, file: !35, line: 576, baseType: !1006, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1761, file: !35, line: 577, baseType: !435, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1761, file: !35, line: 578, baseType: !127, offset: 96)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1761, file: !35, line: 580, baseType: !64, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1761, file: !35, line: 581, baseType: !740, size: 192, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1761, file: !35, line: 582, baseType: !1779, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1781, line: 43, size: 1472, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1790, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !1781, line: 44, baseType: !83, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1780, file: !1781, line: 45, baseType: !105, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1780, file: !1781, line: 46, baseType: !64, size: 128, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !1781, line: 47, baseType: !127, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1780, file: !1781, line: 48, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1780, file: !1781, line: 49, baseType: !1791, size: 320, offset: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1792, line: 11, size: 320, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1791, file: !1792, line: 16, baseType: !704, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1791, file: !1792, line: 17, baseType: !87, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1791, file: !1792, line: 18, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1791, file: !1792, line: 19, baseType: !435, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1780, file: !1781, line: 50, baseType: !87, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1780, file: !1781, line: 51, baseType: !510, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1780, file: !1781, line: 52, baseType: !510, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1780, file: !1781, line: 53, baseType: !510, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1780, file: !1781, line: 54, baseType: !510, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1780, file: !1781, line: 55, baseType: !510, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1780, file: !1781, line: 56, baseType: !87, size: 64, offset: 1024)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1780, file: !1781, line: 57, baseType: !87, size: 64, offset: 1088)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1780, file: !1781, line: 58, baseType: !87, size: 64, offset: 1152)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1780, file: !1781, line: 59, baseType: !87, size: 64, offset: 1216)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1780, file: !1781, line: 60, baseType: !87, size: 64, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1780, file: !1781, line: 61, baseType: !1594, size: 64, offset: 1344)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1780, file: !1781, line: 62, baseType: !1006, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1780, file: !1781, line: 63, baseType: !1006, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1761, file: !35, line: 583, baseType: !1006, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1761, file: !35, line: 584, baseType: !1006, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1761, file: !35, line: 585, baseType: !1006, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1761, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1761, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1761, file: !35, line: 592, baseType: !502, size: 512, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1761, file: !35, line: 593, baseType: !77, size: 64, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1761, file: !35, line: 594, baseType: !1331, size: 256, offset: 1152)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1761, file: !35, line: 595, baseType: !711, size: 128, offset: 1408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1761, file: !35, line: 596, baseType: !1788, size: 64, offset: 1536)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1761, file: !35, line: 597, baseType: !303, size: 32, offset: 1600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1761, file: !35, line: 598, baseType: !303, size: 32, offset: 1632)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1761, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1761, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1761, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1761, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1761, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1761, file: !35, line: 604, baseType: !1006, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1761, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1761, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1761, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1761, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1761, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1761, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1761, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1761, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1761, file: !35, line: 613, baseType: !105, size: 32, offset: 1792)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1761, file: !35, line: 614, baseType: !105, size: 32, offset: 1824)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1761, file: !35, line: 615, baseType: !77, size: 64, offset: 1856)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1761, file: !35, line: 616, baseType: !77, size: 64, offset: 1920)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1761, file: !35, line: 617, baseType: !77, size: 64, offset: 1984)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1761, file: !35, line: 618, baseType: !77, size: 64, offset: 2048)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1761, file: !35, line: 620, baseType: !1849, size: 64, offset: 2112)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !35, line: 537, baseType: !127)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1850, file: !35, line: 538, baseType: !5, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1850, file: !35, line: 540, baseType: !64, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1850, file: !35, line: 543, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1761, file: !35, line: 621, baseType: !1859, size: 64, offset: 2176)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1594, !664}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1761, file: !35, line: 622, baseType: !1863, size: 64, offset: 2240)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !111, file: !28, line: 486, baseType: !1866, size: 64, offset: 4096)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1875, !1876, !1877}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1867, file: !35, line: 643, baseType: !1622, size: 1472)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1867, file: !35, line: 644, baseType: !1625, size: 64, offset: 1472)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1867, file: !35, line: 645, baseType: !1872, size: 64, offset: 1536)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1594, !1006}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1867, file: !35, line: 646, baseType: !1625, size: 64, offset: 1600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1867, file: !35, line: 647, baseType: !1616, size: 64, offset: 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1867, file: !35, line: 648, baseType: !1616, size: 64, offset: 1728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !111, file: !28, line: 493, baseType: !1879, size: 64, offset: 4160)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !111, file: !28, line: 499, baseType: !64, size: 128, offset: 4224)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !111, file: !28, line: 502, baseType: !1883, size: 64, offset: 4352)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !111, file: !28, line: 504, baseType: !1887, size: 64, offset: 4416)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !111, file: !28, line: 505, baseType: !77, size: 64, offset: 4480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !111, file: !28, line: 510, baseType: !77, size: 64, offset: 4544)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !111, file: !28, line: 511, baseType: !1891, size: 64, offset: 4608)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !111, file: !28, line: 513, baseType: !1895, size: 64, offset: 4672)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1896, file: !28, line: 293, baseType: !5, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1896, file: !28, line: 294, baseType: !87, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !111, file: !28, line: 515, baseType: !64, size: 128, offset: 4736)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !111, file: !28, line: 526, baseType: !1902, offset: 4864)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1903, line: 5, elements: !141)
!1903 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !111, file: !28, line: 528, baseType: !1905, size: 64, offset: 4864)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1907, line: 14, flags: DIFlagFwdDecl)
!1907 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !111, file: !28, line: 529, baseType: !1909, size: 64, offset: 4928)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1653, line: 22, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !111, file: !28, line: 534, baseType: !1912, size: 32, offset: 4992)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !65, line: 16, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !65, line: 13, baseType: !435)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !111, file: !28, line: 535, baseType: !435, size: 32, offset: 5024)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !111, file: !28, line: 537, baseType: !127, offset: 5056)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !111, file: !28, line: 538, baseType: !64, size: 128, offset: 5056)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !111, file: !28, line: 540, baseType: !1918, size: 64, offset: 5184)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1920, line: 54, size: 960, elements: !1921)
!1920 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1927, !1928, !1932, !1936, !1937, !1938, !1939, !1943, !1947, !1948}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1919, file: !1920, line: 55, baseType: !83, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1919, file: !1920, line: 56, baseType: !1671, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1919, file: !1920, line: 58, baseType: !221, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1919, file: !1920, line: 59, baseType: !221, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1919, file: !1920, line: 60, baseType: !120, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1919, file: !1920, line: 62, baseType: !1607, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1919, file: !1920, line: 63, baseType: !1929, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!168, !1594, !1614}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1919, file: !1920, line: 65, baseType: !1933, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{null, !1918}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1919, file: !1920, line: 66, baseType: !1616, size: 64, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1919, file: !1920, line: 68, baseType: !1625, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1919, file: !1920, line: 70, baseType: !1380, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1919, file: !1920, line: 71, baseType: !1940, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1397, !1594}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1919, file: !1920, line: 73, baseType: !1944, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1594, !1417, !1423}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1919, file: !1920, line: 75, baseType: !1620, size: 64, offset: 832)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1919, file: !1920, line: 77, baseType: !1741, size: 64, offset: 896)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !111, file: !28, line: 541, baseType: !221, size: 64, offset: 5248)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !111, file: !28, line: 543, baseType: !1616, size: 64, offset: 5312)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !111, file: !28, line: 544, baseType: !1952, size: 64, offset: 5376)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !111, file: !28, line: 545, baseType: !1955, size: 64, offset: 5440)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !111, file: !28, line: 547, baseType: !1006, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !111, file: !28, line: 548, baseType: !1006, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !111, file: !28, line: 549, baseType: !1006, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !111, file: !28, line: 550, baseType: !1006, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !107, file: !108, line: 245, baseType: !77, size: 64, offset: 5568)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !107, file: !108, line: 246, baseType: !5, size: 32, offset: 5632)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !107, file: !108, line: 247, baseType: !105, size: 32, offset: 5664)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !107, file: !108, line: 249, baseType: !64, size: 128, offset: 5696)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !107, file: !108, line: 250, baseType: !64, size: 128, offset: 5824)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !107, file: !108, line: 251, baseType: !64, size: 128, offset: 5952)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !107, file: !108, line: 252, baseType: !64, size: 128, offset: 6080)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !107, file: !108, line: 254, baseType: !1969, size: 64, offset: 6208)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !108, line: 411, size: 6464, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1976, !1977, !1978, !1982, !1986, !1987, !1988, !1989, !1990}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1970, file: !108, line: 412, baseType: !64, size: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1970, file: !108, line: 413, baseType: !168, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1970, file: !108, line: 416, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1970, file: !108, line: 417, baseType: !1975, size: 64, offset: 256)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1970, file: !108, line: 418, baseType: !1975, size: 64, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1970, file: !108, line: 421, baseType: !1979, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1006, !106}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1970, file: !108, line: 422, baseType: !1983, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!105, !106, !1712}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1970, file: !108, line: 423, baseType: !1975, size: 64, offset: 512)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1970, file: !108, line: 426, baseType: !573, size: 8, offset: 576)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1970, file: !108, line: 427, baseType: !111, size: 5568, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1970, file: !108, line: 428, baseType: !64, size: 128, offset: 6208)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1970, file: !108, line: 429, baseType: !64, size: 128, offset: 6336)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !107, file: !108, line: 255, baseType: !1992, size: 64, offset: 6272)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !108, line: 202, size: 6720, elements: !1994)
!1994 = !{!1995, !1996, !1997, !1998, !1999, !2000, !2001, !2007, !2011, !2012, !2013, !2014, !2015}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1993, file: !108, line: 203, baseType: !111, size: 5568)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1993, file: !108, line: 204, baseType: !573, size: 8, offset: 5568)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1993, file: !108, line: 205, baseType: !64, size: 128, offset: 5632)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1993, file: !108, line: 206, baseType: !64, size: 128, offset: 5760)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1993, file: !108, line: 207, baseType: !64, size: 128, offset: 5888)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1993, file: !108, line: 209, baseType: !1969, size: 64, offset: 6016)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1993, file: !108, line: 210, baseType: !2002, size: 64, offset: 6080)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !108, line: 369, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2003, file: !108, line: 370, baseType: !943, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2003, file: !108, line: 371, baseType: !2002, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1993, file: !108, line: 212, baseType: !2008, size: 400, offset: 6144)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 400, elements: !2009)
!2009 = !{!2010}
!2010 = !DISubrange(count: 50)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1993, file: !108, line: 213, baseType: !573, size: 8, offset: 6544)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1993, file: !108, line: 214, baseType: !573, size: 8, offset: 6552)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1993, file: !108, line: 215, baseType: !5, size: 32, offset: 6560)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1993, file: !108, line: 216, baseType: !573, size: 8, offset: 6592)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1993, file: !108, line: 217, baseType: !2016, size: 64, offset: 6656)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 217, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !107, file: !108, line: 256, baseType: !2019, size: 64, offset: 6336)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !108, line: 374, size: 1664, elements: !2021)
!2021 = !{!2022, !2023, !2031, !2032, !2036, !2040, !2041, !2042, !2043}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !108, line: 375, baseType: !83, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2020, file: !108, line: 376, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1681, line: 220, size: 128, elements: !2027)
!2027 = !{!2028, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2026, file: !1681, line: 221, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 64, elements: !540)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2026, file: !1681, line: 222, baseType: !1701, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !108, line: 377, baseType: !5, size: 32, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2020, file: !108, line: 378, baseType: !2033, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!105, !106, !2024}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2020, file: !108, line: 379, baseType: !2037, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !106}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2020, file: !108, line: 380, baseType: !2037, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2020, file: !108, line: 381, baseType: !1983, size: 64, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2020, file: !108, line: 382, baseType: !1975, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2020, file: !108, line: 383, baseType: !1666, size: 1152, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !107, file: !108, line: 257, baseType: !2045, size: 64, offset: 6400)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !108, line: 226, size: 256, elements: !2047)
!2047 = !{!2048, !2049, !2085, !2086}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2046, file: !108, line: 227, baseType: !1992, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2046, file: !108, line: 228, baseType: !2050, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !108, line: 388, size: 2240, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2067, !2068, !2072, !2076, !2080, !2084}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2051, file: !108, line: 389, baseType: !64, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2051, file: !108, line: 390, baseType: !168, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2051, file: !108, line: 391, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2058)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1681, line: 225, size: 640, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2058, file: !1681, line: 226, baseType: !2029, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2058, file: !1681, line: 227, baseType: !1701, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2058, file: !1681, line: 230, baseType: !2063, size: 512, offset: 128)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 512, elements: !540)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !1681, line: 228, size: 64, elements: !2065)
!2065 = !{!2066}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2064, file: !1681, line: 229, baseType: !2029, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !108, line: 392, baseType: !5, size: 32, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2051, file: !108, line: 393, baseType: !2069, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!105, !2045, !2056}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2051, file: !108, line: 395, baseType: !2073, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2045}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2051, file: !108, line: 396, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!105, !2045, !1712}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2051, file: !108, line: 397, baseType: !2081, size: 64, offset: 512)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!105, !2045}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2051, file: !108, line: 398, baseType: !2020, size: 1664, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2046, file: !108, line: 229, baseType: !58, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !2046, file: !108, line: 230, baseType: !1712, size: 32, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !107, file: !108, line: 259, baseType: !2002, size: 64, offset: 6464)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !107, file: !108, line: 261, baseType: !105, size: 32, offset: 6528)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !107, file: !108, line: 262, baseType: !105, size: 32, offset: 6560)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !107, file: !108, line: 263, baseType: !5, size: 32, offset: 6592)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !107, file: !108, line: 264, baseType: !64, size: 128, offset: 6656)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !107, file: !108, line: 265, baseType: !64, size: 128, offset: 6784)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !107, file: !108, line: 267, baseType: !2008, size: 400, offset: 6912)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !108, line: 268, baseType: !105, size: 32, offset: 7328)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !107, file: !108, line: 269, baseType: !2016, size: 64, offset: 7360)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !108, line: 270, baseType: !58, size: 64, offset: 7424)
!2097 = !DILocalVariable(name: "dev", arg: 1, scope: !102, file: !1, line: 20, type: !106)
!2098 = !DILocation(line: 20, column: 35, scope: !102)
!2099 = !DILocation(line: 26, column: 22, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !102, file: !1, line: 26, column: 6)
!2101 = !DILocation(line: 26, column: 7, scope: !2100)
!2102 = !DILocation(line: 26, column: 30, scope: !2100)
!2103 = !DILocation(line: 26, column: 46, scope: !2100)
!2104 = !DILocation(line: 26, column: 33, scope: !2100)
!2105 = !DILocation(line: 26, column: 54, scope: !2100)
!2106 = !DILocation(line: 26, column: 59, scope: !2100)
!2107 = !DILocation(line: 27, column: 21, scope: !2100)
!2108 = !DILocation(line: 27, column: 7, scope: !2100)
!2109 = !DILocation(line: 27, column: 29, scope: !2100)
!2110 = !DILocation(line: 27, column: 44, scope: !2100)
!2111 = !DILocation(line: 27, column: 32, scope: !2100)
!2112 = !DILocation(line: 27, column: 52, scope: !2100)
!2113 = !DILocation(line: 27, column: 57, scope: !2100)
!2114 = !DILocation(line: 28, column: 14, scope: !2100)
!2115 = !DILocation(line: 28, column: 6, scope: !2100)
!2116 = !DILocation(line: 28, column: 22, scope: !2100)
!2117 = !DILocation(line: 28, column: 28, scope: !2100)
!2118 = !DILocation(line: 28, column: 39, scope: !2100)
!2119 = !DILocation(line: 28, column: 31, scope: !2100)
!2120 = !DILocation(line: 28, column: 47, scope: !2100)
!2121 = !DILocation(line: 26, column: 6, scope: !102)
!2122 = !DILocation(line: 29, column: 3, scope: !2100)
!2123 = !DILocation(line: 31, column: 3, scope: !2100)
!2124 = !DILocation(line: 32, column: 1, scope: !102)
!2125 = distinct !DISubprogram(name: "pnp_port_start", scope: !108, file: !108, line: 59, type: !2126, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!75, !106, !5}
!2128 = !DILocalVariable(name: "dev", arg: 1, scope: !2125, file: !108, line: 59, type: !106)
!2129 = !DILocation(line: 59, column: 62, scope: !2125)
!2130 = !DILocalVariable(name: "bar", arg: 2, scope: !2125, file: !108, line: 60, type: !5)
!2131 = !DILocation(line: 60, column: 24, scope: !2125)
!2132 = !DILocalVariable(name: "res", scope: !2125, file: !108, line: 62, type: !90)
!2133 = !DILocation(line: 62, column: 19, scope: !2125)
!2134 = !DILocation(line: 62, column: 42, scope: !2125)
!2135 = !DILocation(line: 62, column: 62, scope: !2125)
!2136 = !DILocation(line: 62, column: 25, scope: !2125)
!2137 = !DILocation(line: 64, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2125, file: !108, line: 64, column: 6)
!2139 = !DILocation(line: 64, column: 6, scope: !2138)
!2140 = !DILocation(line: 64, column: 6, scope: !2125)
!2141 = !DILocation(line: 65, column: 10, scope: !2138)
!2142 = !DILocation(line: 65, column: 15, scope: !2138)
!2143 = !DILocation(line: 65, column: 3, scope: !2138)
!2144 = !DILocation(line: 66, column: 2, scope: !2125)
!2145 = !DILocation(line: 67, column: 1, scope: !2125)
!2146 = distinct !DISubprogram(name: "pnp_port_len", scope: !108, file: !108, line: 94, type: !2126, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2147 = !DILocalVariable(name: "dev", arg: 1, scope: !2146, file: !108, line: 94, type: !106)
!2148 = !DILocation(line: 94, column: 60, scope: !2146)
!2149 = !DILocalVariable(name: "bar", arg: 2, scope: !2146, file: !108, line: 95, type: !5)
!2150 = !DILocation(line: 95, column: 22, scope: !2146)
!2151 = !DILocalVariable(name: "res", scope: !2146, file: !108, line: 97, type: !90)
!2152 = !DILocation(line: 97, column: 19, scope: !2146)
!2153 = !DILocation(line: 97, column: 42, scope: !2146)
!2154 = !DILocation(line: 97, column: 62, scope: !2146)
!2155 = !DILocation(line: 97, column: 25, scope: !2146)
!2156 = !DILocation(line: 99, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2146, file: !108, line: 99, column: 6)
!2158 = !DILocation(line: 99, column: 6, scope: !2157)
!2159 = !DILocation(line: 99, column: 6, scope: !2146)
!2160 = !DILocation(line: 100, column: 27, scope: !2157)
!2161 = !DILocation(line: 100, column: 10, scope: !2157)
!2162 = !DILocation(line: 100, column: 3, scope: !2157)
!2163 = !DILocation(line: 101, column: 2, scope: !2146)
!2164 = !DILocation(line: 102, column: 1, scope: !2146)
!2165 = distinct !DISubprogram(name: "pnp_mem_start", scope: !108, file: !108, line: 105, type: !2126, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2166 = !DILocalVariable(name: "dev", arg: 1, scope: !2165, file: !108, line: 105, type: !106)
!2167 = !DILocation(line: 105, column: 61, scope: !2165)
!2168 = !DILocalVariable(name: "bar", arg: 2, scope: !2165, file: !108, line: 106, type: !5)
!2169 = !DILocation(line: 106, column: 23, scope: !2165)
!2170 = !DILocalVariable(name: "res", scope: !2165, file: !108, line: 108, type: !90)
!2171 = !DILocation(line: 108, column: 19, scope: !2165)
!2172 = !DILocation(line: 108, column: 42, scope: !2165)
!2173 = !DILocation(line: 108, column: 63, scope: !2165)
!2174 = !DILocation(line: 108, column: 25, scope: !2165)
!2175 = !DILocation(line: 110, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2165, file: !108, line: 110, column: 6)
!2177 = !DILocation(line: 110, column: 6, scope: !2176)
!2178 = !DILocation(line: 110, column: 6, scope: !2165)
!2179 = !DILocation(line: 111, column: 10, scope: !2176)
!2180 = !DILocation(line: 111, column: 15, scope: !2176)
!2181 = !DILocation(line: 111, column: 3, scope: !2176)
!2182 = !DILocation(line: 112, column: 2, scope: !2165)
!2183 = !DILocation(line: 113, column: 1, scope: !2165)
!2184 = distinct !DISubprogram(name: "pnp_mem_len", scope: !108, file: !108, line: 139, type: !2126, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2185 = !DILocalVariable(name: "dev", arg: 1, scope: !2184, file: !108, line: 139, type: !106)
!2186 = !DILocation(line: 139, column: 59, scope: !2184)
!2187 = !DILocalVariable(name: "bar", arg: 2, scope: !2184, file: !108, line: 140, type: !5)
!2188 = !DILocation(line: 140, column: 21, scope: !2184)
!2189 = !DILocalVariable(name: "res", scope: !2184, file: !108, line: 142, type: !90)
!2190 = !DILocation(line: 142, column: 19, scope: !2184)
!2191 = !DILocation(line: 142, column: 42, scope: !2184)
!2192 = !DILocation(line: 142, column: 63, scope: !2184)
!2193 = !DILocation(line: 142, column: 25, scope: !2184)
!2194 = !DILocation(line: 144, column: 25, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2184, file: !108, line: 144, column: 6)
!2196 = !DILocation(line: 144, column: 6, scope: !2195)
!2197 = !DILocation(line: 144, column: 6, scope: !2184)
!2198 = !DILocation(line: 145, column: 27, scope: !2195)
!2199 = !DILocation(line: 145, column: 10, scope: !2195)
!2200 = !DILocation(line: 145, column: 3, scope: !2195)
!2201 = !DILocation(line: 146, column: 2, scope: !2184)
!2202 = !DILocation(line: 147, column: 1, scope: !2184)
!2203 = distinct !DISubprogram(name: "pnp_irq", scope: !108, file: !108, line: 150, type: !2126, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2204 = !DILocalVariable(name: "dev", arg: 1, scope: !2203, file: !108, line: 150, type: !106)
!2205 = !DILocation(line: 150, column: 55, scope: !2203)
!2206 = !DILocalVariable(name: "bar", arg: 2, scope: !2203, file: !108, line: 150, type: !5)
!2207 = !DILocation(line: 150, column: 73, scope: !2203)
!2208 = !DILocalVariable(name: "res", scope: !2203, file: !108, line: 152, type: !90)
!2209 = !DILocation(line: 152, column: 19, scope: !2203)
!2210 = !DILocation(line: 152, column: 42, scope: !2203)
!2211 = !DILocation(line: 152, column: 63, scope: !2203)
!2212 = !DILocation(line: 152, column: 25, scope: !2203)
!2213 = !DILocation(line: 154, column: 25, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2203, file: !108, line: 154, column: 6)
!2215 = !DILocation(line: 154, column: 6, scope: !2214)
!2216 = !DILocation(line: 154, column: 6, scope: !2203)
!2217 = !DILocation(line: 155, column: 10, scope: !2214)
!2218 = !DILocation(line: 155, column: 15, scope: !2214)
!2219 = !DILocation(line: 155, column: 3, scope: !2214)
!2220 = !DILocation(line: 156, column: 2, scope: !2203)
!2221 = !DILocation(line: 157, column: 1, scope: !2203)
!2222 = distinct !DISubprogram(name: "pnp_dma", scope: !108, file: !108, line: 174, type: !2126, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2223 = !DILocalVariable(name: "dev", arg: 1, scope: !2222, file: !108, line: 174, type: !106)
!2224 = !DILocation(line: 174, column: 55, scope: !2222)
!2225 = !DILocalVariable(name: "bar", arg: 2, scope: !2222, file: !108, line: 174, type: !5)
!2226 = !DILocation(line: 174, column: 73, scope: !2222)
!2227 = !DILocalVariable(name: "res", scope: !2222, file: !108, line: 176, type: !90)
!2228 = !DILocation(line: 176, column: 19, scope: !2222)
!2229 = !DILocation(line: 176, column: 42, scope: !2222)
!2230 = !DILocation(line: 176, column: 63, scope: !2222)
!2231 = !DILocation(line: 176, column: 25, scope: !2222)
!2232 = !DILocation(line: 178, column: 25, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2222, file: !108, line: 178, column: 6)
!2234 = !DILocation(line: 178, column: 6, scope: !2233)
!2235 = !DILocation(line: 178, column: 6, scope: !2222)
!2236 = !DILocation(line: 179, column: 10, scope: !2233)
!2237 = !DILocation(line: 179, column: 15, scope: !2233)
!2238 = !DILocation(line: 179, column: 3, scope: !2233)
!2239 = !DILocation(line: 180, column: 2, scope: !2222)
!2240 = !DILocation(line: 181, column: 1, scope: !2222)
!2241 = distinct !DISubprogram(name: "pnp_eisa_id_to_string", scope: !1, file: !1, line: 40, type: !2242, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !435, !168}
!2244 = !DILocalVariable(name: "id", arg: 1, scope: !2241, file: !1, line: 40, type: !435)
!2245 = !DILocation(line: 40, column: 32, scope: !2241)
!2246 = !DILocalVariable(name: "str", arg: 2, scope: !2241, file: !1, line: 40, type: !168)
!2247 = !DILocation(line: 40, column: 42, scope: !2241)
!2248 = !DILocation(line: 42, column: 7, scope: !2241)
!2249 = !DILocation(line: 42, column: 5, scope: !2241)
!2250 = !DILocation(line: 52, column: 19, scope: !2241)
!2251 = !DILocation(line: 52, column: 22, scope: !2241)
!2252 = !DILocation(line: 52, column: 29, scope: !2241)
!2253 = !DILocation(line: 52, column: 15, scope: !2241)
!2254 = !DILocation(line: 52, column: 37, scope: !2241)
!2255 = !DILocation(line: 52, column: 11, scope: !2241)
!2256 = !DILocation(line: 52, column: 2, scope: !2241)
!2257 = !DILocation(line: 52, column: 9, scope: !2241)
!2258 = !DILocation(line: 53, column: 19, scope: !2241)
!2259 = !DILocation(line: 53, column: 22, scope: !2241)
!2260 = !DILocation(line: 53, column: 29, scope: !2241)
!2261 = !DILocation(line: 53, column: 15, scope: !2241)
!2262 = !DILocation(line: 53, column: 37, scope: !2241)
!2263 = !DILocation(line: 53, column: 11, scope: !2241)
!2264 = !DILocation(line: 53, column: 2, scope: !2241)
!2265 = !DILocation(line: 53, column: 9, scope: !2241)
!2266 = !DILocation(line: 54, column: 19, scope: !2241)
!2267 = !DILocation(line: 54, column: 22, scope: !2241)
!2268 = !DILocation(line: 54, column: 29, scope: !2241)
!2269 = !DILocation(line: 54, column: 15, scope: !2241)
!2270 = !DILocation(line: 54, column: 37, scope: !2241)
!2271 = !DILocation(line: 54, column: 11, scope: !2241)
!2272 = !DILocation(line: 54, column: 2, scope: !2241)
!2273 = !DILocation(line: 54, column: 9, scope: !2241)
!2274 = !DILocation(line: 55, column: 11, scope: !2241)
!2275 = !DILocation(line: 55, column: 2, scope: !2241)
!2276 = !DILocation(line: 55, column: 9, scope: !2241)
!2277 = !DILocation(line: 56, column: 11, scope: !2241)
!2278 = !DILocation(line: 56, column: 2, scope: !2241)
!2279 = !DILocation(line: 56, column: 9, scope: !2241)
!2280 = !DILocation(line: 57, column: 11, scope: !2241)
!2281 = !DILocation(line: 57, column: 2, scope: !2241)
!2282 = !DILocation(line: 57, column: 9, scope: !2241)
!2283 = !DILocation(line: 58, column: 11, scope: !2241)
!2284 = !DILocation(line: 58, column: 2, scope: !2241)
!2285 = !DILocation(line: 58, column: 9, scope: !2241)
!2286 = !DILocation(line: 59, column: 2, scope: !2241)
!2287 = !DILocation(line: 59, column: 9, scope: !2241)
!2288 = !DILocation(line: 60, column: 1, scope: !2241)
!2289 = distinct !DISubprogram(name: "__fswab32", scope: !2290, file: !2290, line: 57, type: !2291, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2290 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!54, !54}
!2293 = !DILocalVariable(name: "val", arg: 1, scope: !2289, file: !2290, line: 57, type: !54)
!2294 = !DILocation(line: 57, column: 57, scope: !2289)
!2295 = !DILocation(line: 60, column: 23, scope: !2289)
!2296 = !DILocation(line: 60, column: 9, scope: !2289)
!2297 = !DILocation(line: 60, column: 2, scope: !2289)
!2298 = distinct !DISubprogram(name: "pnp_resource_type_name", scope: !1, file: !1, line: 62, type: !2299, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!168, !90}
!2301 = !DILocalVariable(name: "res", arg: 1, scope: !2298, file: !1, line: 62, type: !90)
!2302 = !DILocation(line: 62, column: 47, scope: !2298)
!2303 = !DILocation(line: 64, column: 28, scope: !2298)
!2304 = !DILocation(line: 64, column: 10, scope: !2298)
!2305 = !DILocation(line: 64, column: 2, scope: !2298)
!2306 = !DILocation(line: 66, column: 3, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 64, column: 34)
!2308 = !DILocation(line: 68, column: 3, scope: !2307)
!2309 = !DILocation(line: 70, column: 3, scope: !2307)
!2310 = !DILocation(line: 72, column: 3, scope: !2307)
!2311 = !DILocation(line: 74, column: 3, scope: !2307)
!2312 = !DILocation(line: 76, column: 2, scope: !2298)
!2313 = !DILocation(line: 77, column: 1, scope: !2298)
!2314 = distinct !DISubprogram(name: "dbg_pnp_show_resources", scope: !1, file: !1, line: 79, type: !2315, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !106, !168}
!2317 = !DILocalVariable(name: "dev", arg: 1, scope: !2314, file: !1, line: 79, type: !106)
!2318 = !DILocation(line: 79, column: 45, scope: !2314)
!2319 = !DILocalVariable(name: "desc", arg: 2, scope: !2314, file: !1, line: 79, type: !168)
!2320 = !DILocation(line: 79, column: 56, scope: !2314)
!2321 = !DILocalVariable(name: "pnp_res", scope: !2314, file: !1, line: 81, type: !59)
!2322 = !DILocation(line: 81, column: 23, scope: !2314)
!2323 = !DILocation(line: 83, column: 18, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2314, file: !1, line: 83, column: 6)
!2325 = !DILocation(line: 83, column: 23, scope: !2324)
!2326 = !DILocation(line: 83, column: 6, scope: !2324)
!2327 = !DILocation(line: 83, column: 6, scope: !2314)
!2328 = !DILocation(line: 84, column: 3, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 84, column: 3)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 84, column: 3)
!2331 = !DILocation(line: 84, column: 3, scope: !2330)
!2332 = !DILocation(line: 84, column: 3, scope: !2324)
!2333 = !DILocation(line: 86, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 86, column: 3)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 86, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 85, column: 7)
!2337 = !DILocation(line: 86, column: 3, scope: !2335)
!2338 = !DILocalVariable(name: "__mptr", scope: !2339, file: !1, line: 87, type: !58)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !1, line: 87, column: 3)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 87, column: 3)
!2341 = !DILocation(line: 87, column: 3, scope: !2339)
!2342 = !DILocation(line: 87, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !1, line: 87, column: 3)
!2344 = !DILocation(line: 87, column: 3, scope: !2340)
!2345 = !DILocation(line: 87, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !1, line: 87, column: 3)
!2347 = !DILocation(line: 88, column: 4, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 88, column: 4)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !1, line: 88, column: 4)
!2350 = !DILocation(line: 88, column: 4, scope: !2349)
!2351 = !DILocation(line: 88, column: 4, scope: !2346)
!2352 = !DILocalVariable(name: "__mptr", scope: !2353, file: !1, line: 87, type: !58)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !1, line: 87, column: 3)
!2354 = !DILocation(line: 87, column: 3, scope: !2353)
!2355 = !DILocation(line: 87, column: 3, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 87, column: 3)
!2357 = distinct !{!2357, !2344, !2358}
!2358 = !DILocation(line: 88, column: 4, scope: !2340)
!2359 = !DILocation(line: 90, column: 1, scope: !2314)
!2360 = distinct !DISubprogram(name: "list_empty", scope: !2361, file: !2361, line: 280, type: !2362, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2361 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!105, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2366 = !DILocalVariable(name: "head", arg: 1, scope: !2360, file: !2361, line: 280, type: !2364)
!2367 = !DILocation(line: 280, column: 54, scope: !2360)
!2368 = !DILocation(line: 282, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2360, file: !2361, line: 282, column: 9)
!2370 = !DILocation(line: 282, column: 9, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2369, file: !2361, line: 282, column: 9)
!2372 = !DILocation(line: 282, column: 34, scope: !2360)
!2373 = !DILocation(line: 282, column: 31, scope: !2360)
!2374 = !DILocation(line: 282, column: 2, scope: !2360)
!2375 = distinct !DISubprogram(name: "pnp_option_priority_name", scope: !1, file: !1, line: 92, type: !2376, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!168, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_option", file: !61, line: 68, size: 576, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2379, file: !61, line: 69, baseType: !64, size: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2379, file: !61, line: 70, baseType: !5, size: 32, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2379, file: !61, line: 72, baseType: !87, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2379, file: !61, line: 78, baseType: !2385, size: 320, offset: 256)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2379, file: !61, line: 73, size: 320, elements: !2386)
!2386 = !{!2387, !2395, !2405, !2410}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2385, file: !61, line: 74, baseType: !2388, size: 320)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_port", file: !61, line: 28, size: 320, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2388, file: !61, line: 29, baseType: !75, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2388, file: !61, line: 30, baseType: !75, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2388, file: !61, line: 31, baseType: !75, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2388, file: !61, line: 32, baseType: !75, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !61, line: 33, baseType: !573, size: 8, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2385, file: !61, line: 75, baseType: !2396, size: 320)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_irq", file: !61, line: 39, size: 320, elements: !2397)
!2397 = !{!2398, !2404}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2396, file: !61, line: 40, baseType: !2399, size: 256)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pnp_irq_mask_t", file: !61, line: 37, baseType: !2400)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 37, size: 256, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2400, file: !61, line: 37, baseType: !2403, size: 256)
!2403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !362)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !61, line: 41, baseType: !573, size: 8, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2385, file: !61, line: 76, baseType: !2406, size: 16)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dma", file: !61, line: 44, size: 16, elements: !2407)
!2407 = !{!2408, !2409}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2406, file: !61, line: 45, baseType: !573, size: 8)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2406, file: !61, line: 46, baseType: !573, size: 8, offset: 8)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2385, file: !61, line: 77, baseType: !2411, size: 320)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_mem", file: !61, line: 49, size: 320, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2411, file: !61, line: 50, baseType: !75, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2411, file: !61, line: 51, baseType: !75, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2411, file: !61, line: 52, baseType: !75, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2411, file: !61, line: 53, baseType: !75, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2411, file: !61, line: 54, baseType: !573, size: 8, offset: 256)
!2418 = !DILocalVariable(name: "option", arg: 1, scope: !2375, file: !1, line: 92, type: !2378)
!2419 = !DILocation(line: 92, column: 51, scope: !2375)
!2420 = !DILocation(line: 94, column: 30, scope: !2375)
!2421 = !DILocation(line: 94, column: 10, scope: !2375)
!2422 = !DILocation(line: 94, column: 2, scope: !2375)
!2423 = !DILocation(line: 96, column: 3, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 94, column: 39)
!2425 = !DILocation(line: 98, column: 3, scope: !2424)
!2426 = !DILocation(line: 100, column: 3, scope: !2424)
!2427 = !DILocation(line: 102, column: 2, scope: !2375)
!2428 = !DILocation(line: 103, column: 1, scope: !2375)
!2429 = distinct !DISubprogram(name: "pnp_option_priority", scope: !61, file: !61, line: 104, type: !2430, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!5, !2378}
!2432 = !DILocalVariable(name: "option", arg: 1, scope: !2429, file: !61, line: 104, type: !2378)
!2433 = !DILocation(line: 104, column: 67, scope: !2429)
!2434 = !DILocation(line: 106, column: 10, scope: !2429)
!2435 = !DILocation(line: 106, column: 18, scope: !2429)
!2436 = !DILocation(line: 106, column: 24, scope: !2429)
!2437 = !DILocation(line: 106, column: 54, scope: !2429)
!2438 = !DILocation(line: 106, column: 2, scope: !2429)
!2439 = distinct !DISubprogram(name: "dbg_pnp_show_option", scope: !1, file: !1, line: 105, type: !2440, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !106, !2378}
!2442 = !DILocalVariable(name: "dev", arg: 1, scope: !2439, file: !1, line: 105, type: !106)
!2443 = !DILocation(line: 105, column: 42, scope: !2439)
!2444 = !DILocalVariable(name: "option", arg: 2, scope: !2439, file: !1, line: 105, type: !2378)
!2445 = !DILocation(line: 105, column: 66, scope: !2439)
!2446 = !DILocalVariable(name: "buf", scope: !2439, file: !1, line: 107, type: !1687)
!2447 = !DILocation(line: 107, column: 7, scope: !2439)
!2448 = !DILocalVariable(name: "len", scope: !2439, file: !1, line: 108, type: !105)
!2449 = !DILocation(line: 108, column: 6, scope: !2439)
!2450 = !DILocalVariable(name: "i", scope: !2439, file: !1, line: 108, type: !105)
!2451 = !DILocation(line: 108, column: 15, scope: !2439)
!2452 = !DILocalVariable(name: "port", scope: !2439, file: !1, line: 109, type: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2454 = !DILocation(line: 109, column: 19, scope: !2439)
!2455 = !DILocalVariable(name: "mem", scope: !2439, file: !1, line: 110, type: !2456)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2457 = !DILocation(line: 110, column: 18, scope: !2439)
!2458 = !DILocalVariable(name: "irq", scope: !2439, file: !1, line: 111, type: !2459)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2460 = !DILocation(line: 111, column: 18, scope: !2439)
!2461 = !DILocalVariable(name: "dma", scope: !2439, file: !1, line: 112, type: !2462)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2463 = !DILocation(line: 112, column: 18, scope: !2439)
!2464 = !DILocation(line: 114, column: 30, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 114, column: 6)
!2466 = !DILocation(line: 114, column: 6, scope: !2465)
!2467 = !DILocation(line: 114, column: 6, scope: !2439)
!2468 = !DILocation(line: 115, column: 20, scope: !2465)
!2469 = !DILocation(line: 115, column: 26, scope: !2465)
!2470 = !DILocation(line: 115, column: 24, scope: !2465)
!2471 = !DILocation(line: 115, column: 45, scope: !2465)
!2472 = !DILocation(line: 115, column: 43, scope: !2465)
!2473 = !DILocation(line: 117, column: 21, scope: !2465)
!2474 = !DILocation(line: 117, column: 6, scope: !2465)
!2475 = !DILocation(line: 118, column: 31, scope: !2465)
!2476 = !DILocation(line: 118, column: 6, scope: !2465)
!2477 = !DILocation(line: 115, column: 10, scope: !2465)
!2478 = !DILocation(line: 115, column: 7, scope: !2465)
!2479 = !DILocation(line: 115, column: 3, scope: !2465)
!2480 = !DILocation(line: 120, column: 20, scope: !2465)
!2481 = !DILocation(line: 120, column: 26, scope: !2465)
!2482 = !DILocation(line: 120, column: 24, scope: !2465)
!2483 = !DILocation(line: 120, column: 45, scope: !2465)
!2484 = !DILocation(line: 120, column: 43, scope: !2465)
!2485 = !DILocation(line: 120, column: 10, scope: !2465)
!2486 = !DILocation(line: 120, column: 7, scope: !2465)
!2487 = !DILocation(line: 123, column: 10, scope: !2439)
!2488 = !DILocation(line: 123, column: 18, scope: !2439)
!2489 = !DILocation(line: 123, column: 2, scope: !2439)
!2490 = !DILocation(line: 125, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 123, column: 24)
!2492 = !DILocation(line: 125, column: 19, scope: !2491)
!2493 = !DILocation(line: 125, column: 21, scope: !2491)
!2494 = !DILocation(line: 125, column: 8, scope: !2491)
!2495 = !DILocation(line: 126, column: 20, scope: !2491)
!2496 = !DILocation(line: 126, column: 26, scope: !2491)
!2497 = !DILocation(line: 126, column: 24, scope: !2491)
!2498 = !DILocation(line: 126, column: 45, scope: !2491)
!2499 = !DILocation(line: 126, column: 43, scope: !2491)
!2500 = !DILocation(line: 128, column: 27, scope: !2491)
!2501 = !DILocation(line: 128, column: 33, scope: !2491)
!2502 = !DILocation(line: 129, column: 27, scope: !2491)
!2503 = !DILocation(line: 129, column: 33, scope: !2491)
!2504 = !DILocation(line: 130, column: 27, scope: !2491)
!2505 = !DILocation(line: 130, column: 33, scope: !2491)
!2506 = !DILocation(line: 131, column: 27, scope: !2491)
!2507 = !DILocation(line: 131, column: 33, scope: !2491)
!2508 = !DILocation(line: 131, column: 39, scope: !2491)
!2509 = !DILocation(line: 131, column: 45, scope: !2491)
!2510 = !DILocation(line: 126, column: 10, scope: !2491)
!2511 = !DILocation(line: 126, column: 7, scope: !2491)
!2512 = !DILocation(line: 132, column: 3, scope: !2491)
!2513 = !DILocation(line: 134, column: 10, scope: !2491)
!2514 = !DILocation(line: 134, column: 18, scope: !2491)
!2515 = !DILocation(line: 134, column: 20, scope: !2491)
!2516 = !DILocation(line: 134, column: 7, scope: !2491)
!2517 = !DILocation(line: 135, column: 20, scope: !2491)
!2518 = !DILocation(line: 135, column: 26, scope: !2491)
!2519 = !DILocation(line: 135, column: 24, scope: !2491)
!2520 = !DILocation(line: 135, column: 45, scope: !2491)
!2521 = !DILocation(line: 135, column: 43, scope: !2491)
!2522 = !DILocation(line: 137, column: 27, scope: !2491)
!2523 = !DILocation(line: 137, column: 32, scope: !2491)
!2524 = !DILocation(line: 138, column: 27, scope: !2491)
!2525 = !DILocation(line: 138, column: 32, scope: !2491)
!2526 = !DILocation(line: 139, column: 27, scope: !2491)
!2527 = !DILocation(line: 139, column: 32, scope: !2491)
!2528 = !DILocation(line: 140, column: 27, scope: !2491)
!2529 = !DILocation(line: 140, column: 32, scope: !2491)
!2530 = !DILocation(line: 140, column: 38, scope: !2491)
!2531 = !DILocation(line: 140, column: 43, scope: !2491)
!2532 = !DILocation(line: 135, column: 10, scope: !2491)
!2533 = !DILocation(line: 135, column: 7, scope: !2491)
!2534 = !DILocation(line: 141, column: 3, scope: !2491)
!2535 = !DILocation(line: 143, column: 10, scope: !2491)
!2536 = !DILocation(line: 143, column: 18, scope: !2491)
!2537 = !DILocation(line: 143, column: 20, scope: !2491)
!2538 = !DILocation(line: 143, column: 7, scope: !2491)
!2539 = !DILocation(line: 144, column: 20, scope: !2491)
!2540 = !DILocation(line: 144, column: 26, scope: !2491)
!2541 = !DILocation(line: 144, column: 24, scope: !2491)
!2542 = !DILocation(line: 144, column: 45, scope: !2491)
!2543 = !DILocation(line: 144, column: 43, scope: !2491)
!2544 = !DILocation(line: 144, column: 10, scope: !2491)
!2545 = !DILocation(line: 144, column: 7, scope: !2491)
!2546 = !DILocation(line: 145, column: 20, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 145, column: 7)
!2548 = !DILocation(line: 145, column: 25, scope: !2547)
!2549 = !DILocation(line: 145, column: 29, scope: !2547)
!2550 = !DILocation(line: 145, column: 7, scope: !2547)
!2551 = !DILocation(line: 145, column: 7, scope: !2491)
!2552 = !DILocation(line: 146, column: 21, scope: !2547)
!2553 = !DILocation(line: 146, column: 27, scope: !2547)
!2554 = !DILocation(line: 146, column: 25, scope: !2547)
!2555 = !DILocation(line: 146, column: 46, scope: !2547)
!2556 = !DILocation(line: 146, column: 44, scope: !2547)
!2557 = !DILocation(line: 146, column: 11, scope: !2547)
!2558 = !DILocation(line: 146, column: 8, scope: !2547)
!2559 = !DILocation(line: 146, column: 4, scope: !2547)
!2560 = !DILocation(line: 149, column: 11, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 149, column: 4)
!2562 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 148, column: 8)
!2563 = !DILocation(line: 149, column: 9, scope: !2561)
!2564 = !DILocation(line: 149, column: 16, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 149, column: 4)
!2566 = !DILocation(line: 149, column: 18, scope: !2565)
!2567 = !DILocation(line: 149, column: 4, scope: !2561)
!2568 = !DILocation(line: 150, column: 18, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !1, line: 150, column: 9)
!2570 = !DILocation(line: 150, column: 21, scope: !2569)
!2571 = !DILocation(line: 150, column: 26, scope: !2569)
!2572 = !DILocation(line: 150, column: 30, scope: !2569)
!2573 = !DILocation(line: 150, column: 9, scope: !2569)
!2574 = !DILocation(line: 150, column: 9, scope: !2565)
!2575 = !DILocation(line: 151, column: 23, scope: !2569)
!2576 = !DILocation(line: 151, column: 29, scope: !2569)
!2577 = !DILocation(line: 151, column: 27, scope: !2569)
!2578 = !DILocation(line: 152, column: 23, scope: !2569)
!2579 = !DILocation(line: 152, column: 21, scope: !2569)
!2580 = !DILocation(line: 153, column: 16, scope: !2569)
!2581 = !DILocation(line: 151, column: 13, scope: !2569)
!2582 = !DILocation(line: 151, column: 10, scope: !2569)
!2583 = !DILocation(line: 151, column: 6, scope: !2569)
!2584 = !DILocation(line: 150, column: 34, scope: !2569)
!2585 = !DILocation(line: 149, column: 33, scope: !2565)
!2586 = !DILocation(line: 149, column: 4, scope: !2565)
!2587 = distinct !{!2587, !2567, !2588}
!2588 = !DILocation(line: 153, column: 17, scope: !2561)
!2589 = !DILocation(line: 155, column: 20, scope: !2491)
!2590 = !DILocation(line: 155, column: 26, scope: !2491)
!2591 = !DILocation(line: 155, column: 24, scope: !2491)
!2592 = !DILocation(line: 155, column: 45, scope: !2491)
!2593 = !DILocation(line: 155, column: 43, scope: !2491)
!2594 = !DILocation(line: 156, column: 6, scope: !2491)
!2595 = !DILocation(line: 156, column: 11, scope: !2491)
!2596 = !DILocation(line: 155, column: 10, scope: !2491)
!2597 = !DILocation(line: 155, column: 7, scope: !2491)
!2598 = !DILocation(line: 157, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 157, column: 7)
!2600 = !DILocation(line: 157, column: 12, scope: !2599)
!2601 = !DILocation(line: 157, column: 18, scope: !2599)
!2602 = !DILocation(line: 157, column: 7, scope: !2491)
!2603 = !DILocation(line: 158, column: 21, scope: !2599)
!2604 = !DILocation(line: 158, column: 27, scope: !2599)
!2605 = !DILocation(line: 158, column: 25, scope: !2599)
!2606 = !DILocation(line: 158, column: 46, scope: !2599)
!2607 = !DILocation(line: 158, column: 44, scope: !2599)
!2608 = !DILocation(line: 158, column: 11, scope: !2599)
!2609 = !DILocation(line: 158, column: 8, scope: !2599)
!2610 = !DILocation(line: 158, column: 4, scope: !2599)
!2611 = !DILocation(line: 160, column: 3, scope: !2491)
!2612 = !DILocation(line: 162, column: 10, scope: !2491)
!2613 = !DILocation(line: 162, column: 18, scope: !2491)
!2614 = !DILocation(line: 162, column: 20, scope: !2491)
!2615 = !DILocation(line: 162, column: 7, scope: !2491)
!2616 = !DILocation(line: 163, column: 20, scope: !2491)
!2617 = !DILocation(line: 163, column: 26, scope: !2491)
!2618 = !DILocation(line: 163, column: 24, scope: !2491)
!2619 = !DILocation(line: 163, column: 45, scope: !2491)
!2620 = !DILocation(line: 163, column: 43, scope: !2491)
!2621 = !DILocation(line: 163, column: 10, scope: !2491)
!2622 = !DILocation(line: 163, column: 7, scope: !2491)
!2623 = !DILocation(line: 164, column: 8, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 164, column: 7)
!2625 = !DILocation(line: 164, column: 13, scope: !2624)
!2626 = !DILocation(line: 164, column: 7, scope: !2491)
!2627 = !DILocation(line: 165, column: 21, scope: !2624)
!2628 = !DILocation(line: 165, column: 27, scope: !2624)
!2629 = !DILocation(line: 165, column: 25, scope: !2624)
!2630 = !DILocation(line: 165, column: 46, scope: !2624)
!2631 = !DILocation(line: 165, column: 44, scope: !2624)
!2632 = !DILocation(line: 165, column: 11, scope: !2624)
!2633 = !DILocation(line: 165, column: 8, scope: !2624)
!2634 = !DILocation(line: 165, column: 4, scope: !2624)
!2635 = !DILocation(line: 168, column: 11, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 168, column: 4)
!2637 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 167, column: 8)
!2638 = !DILocation(line: 168, column: 9, scope: !2636)
!2639 = !DILocation(line: 168, column: 16, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 168, column: 4)
!2641 = !DILocation(line: 168, column: 18, scope: !2640)
!2642 = !DILocation(line: 168, column: 4, scope: !2636)
!2643 = !DILocation(line: 169, column: 9, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 169, column: 9)
!2645 = !DILocation(line: 169, column: 14, scope: !2644)
!2646 = !DILocation(line: 169, column: 26, scope: !2644)
!2647 = !DILocation(line: 169, column: 23, scope: !2644)
!2648 = !DILocation(line: 169, column: 18, scope: !2644)
!2649 = !DILocation(line: 169, column: 9, scope: !2640)
!2650 = !DILocation(line: 170, column: 23, scope: !2644)
!2651 = !DILocation(line: 170, column: 29, scope: !2644)
!2652 = !DILocation(line: 170, column: 27, scope: !2644)
!2653 = !DILocation(line: 171, column: 23, scope: !2644)
!2654 = !DILocation(line: 171, column: 21, scope: !2644)
!2655 = !DILocation(line: 172, column: 16, scope: !2644)
!2656 = !DILocation(line: 170, column: 13, scope: !2644)
!2657 = !DILocation(line: 170, column: 10, scope: !2644)
!2658 = !DILocation(line: 170, column: 6, scope: !2644)
!2659 = !DILocation(line: 169, column: 27, scope: !2644)
!2660 = !DILocation(line: 168, column: 24, scope: !2640)
!2661 = !DILocation(line: 168, column: 4, scope: !2640)
!2662 = distinct !{!2662, !2642, !2663}
!2663 = !DILocation(line: 172, column: 17, scope: !2636)
!2664 = !DILocation(line: 174, column: 20, scope: !2491)
!2665 = !DILocation(line: 174, column: 26, scope: !2491)
!2666 = !DILocation(line: 174, column: 24, scope: !2491)
!2667 = !DILocation(line: 174, column: 45, scope: !2491)
!2668 = !DILocation(line: 174, column: 43, scope: !2491)
!2669 = !DILocation(line: 175, column: 19, scope: !2491)
!2670 = !DILocation(line: 175, column: 24, scope: !2491)
!2671 = !DILocation(line: 175, column: 29, scope: !2491)
!2672 = !DILocation(line: 175, column: 34, scope: !2491)
!2673 = !DILocation(line: 174, column: 10, scope: !2491)
!2674 = !DILocation(line: 174, column: 7, scope: !2491)
!2675 = !DILocation(line: 176, column: 3, scope: !2491)
!2676 = !DILocation(line: 178, column: 2, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 178, column: 2)
!2678 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 178, column: 2)
!2679 = !DILocation(line: 178, column: 2, scope: !2678)
!2680 = !DILocation(line: 179, column: 1, scope: !2439)
!2681 = distinct !DISubprogram(name: "pnp_option_is_dependent", scope: !61, file: !61, line: 94, type: !2682, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!105, !2378}
!2684 = !DILocalVariable(name: "option", arg: 1, scope: !2681, file: !61, line: 94, type: !2378)
!2685 = !DILocation(line: 94, column: 62, scope: !2681)
!2686 = !DILocation(line: 96, column: 9, scope: !2681)
!2687 = !DILocation(line: 96, column: 17, scope: !2681)
!2688 = !DILocation(line: 96, column: 23, scope: !2681)
!2689 = !DILocation(line: 96, column: 2, scope: !2681)
!2690 = distinct !DISubprogram(name: "pnp_option_set", scope: !61, file: !61, line: 99, type: !2430, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2691 = !DILocalVariable(name: "option", arg: 1, scope: !2690, file: !61, line: 99, type: !2378)
!2692 = !DILocation(line: 99, column: 62, scope: !2690)
!2693 = !DILocation(line: 101, column: 10, scope: !2690)
!2694 = !DILocation(line: 101, column: 18, scope: !2690)
!2695 = !DILocation(line: 101, column: 24, scope: !2690)
!2696 = !DILocation(line: 101, column: 49, scope: !2690)
!2697 = !DILocation(line: 101, column: 2, scope: !2690)
!2698 = distinct !DISubprogram(name: "bitmap_empty", scope: !2699, file: !2699, line: 382, type: !2700, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2699 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!105, !2702, !5}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!2704 = !DILocalVariable(name: "src", arg: 1, scope: !2698, file: !2699, line: 382, type: !2702)
!2705 = !DILocation(line: 382, column: 53, scope: !2698)
!2706 = !DILocalVariable(name: "nbits", arg: 2, scope: !2698, file: !2699, line: 382, type: !5)
!2707 = !DILocation(line: 382, column: 67, scope: !2698)
!2708 = !DILocation(line: 384, column: 6, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2698, file: !2699, line: 384, column: 6)
!2710 = !DILocation(line: 384, column: 6, scope: !2698)
!2711 = !DILocation(line: 385, column: 14, scope: !2709)
!2712 = !DILocation(line: 385, column: 13, scope: !2709)
!2713 = !DILocation(line: 385, column: 20, scope: !2709)
!2714 = !DILocation(line: 385, column: 18, scope: !2709)
!2715 = !DILocation(line: 385, column: 10, scope: !2709)
!2716 = !DILocation(line: 385, column: 3, scope: !2709)
!2717 = !DILocation(line: 387, column: 24, scope: !2698)
!2718 = !DILocation(line: 387, column: 29, scope: !2698)
!2719 = !DILocation(line: 387, column: 9, scope: !2698)
!2720 = !DILocation(line: 387, column: 39, scope: !2698)
!2721 = !DILocation(line: 387, column: 36, scope: !2698)
!2722 = !DILocation(line: 387, column: 2, scope: !2698)
!2723 = !DILocation(line: 388, column: 1, scope: !2698)
!2724 = distinct !DISubprogram(name: "test_bit", scope: !2725, file: !2725, line: 132, type: !2726, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2725 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!1006, !203, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2730)
!2730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!2731 = !DILocalVariable(name: "nr", arg: 1, scope: !2732, file: !2733, line: 210, type: !203)
!2732 = distinct !DISubprogram(name: "variable_test_bit", scope: !2733, file: !2733, line: 210, type: !2726, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2733 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2734 = !DILocation(line: 210, column: 52, scope: !2732, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 135, column: 9, scope: !2724)
!2736 = !DILocalVariable(name: "addr", arg: 2, scope: !2732, file: !2733, line: 210, type: !2728)
!2737 = !DILocation(line: 210, column: 86, scope: !2732, inlinedAt: !2735)
!2738 = !DILocalVariable(name: "oldbit", scope: !2732, file: !2733, line: 212, type: !1006)
!2739 = !DILocation(line: 212, column: 7, scope: !2732, inlinedAt: !2735)
!2740 = !DILocalVariable(name: "nr", arg: 1, scope: !2741, file: !2733, line: 204, type: !203)
!2741 = distinct !DISubprogram(name: "constant_test_bit", scope: !2733, file: !2733, line: 204, type: !2726, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2742 = !DILocation(line: 204, column: 52, scope: !2741, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 135, column: 9, scope: !2724)
!2744 = !DILocalVariable(name: "addr", arg: 2, scope: !2741, file: !2733, line: 204, type: !2728)
!2745 = !DILocation(line: 204, column: 86, scope: !2741, inlinedAt: !2743)
!2746 = !DILocalVariable(name: "v", arg: 1, scope: !2747, file: !2748, line: 69, type: !2751)
!2747 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2748, file: !2748, line: 69, type: !2749, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2748 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !2751, !215}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2754 = !DILocation(line: 69, column: 73, scope: !2747, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 134, column: 2, scope: !2724)
!2756 = !DILocalVariable(name: "size", arg: 2, scope: !2747, file: !2748, line: 69, type: !215)
!2757 = !DILocation(line: 69, column: 83, scope: !2747, inlinedAt: !2755)
!2758 = !DILocalVariable(name: "nr", arg: 1, scope: !2724, file: !2725, line: 132, type: !203)
!2759 = !DILocation(line: 132, column: 34, scope: !2724)
!2760 = !DILocalVariable(name: "addr", arg: 2, scope: !2724, file: !2725, line: 132, type: !2728)
!2761 = !DILocation(line: 132, column: 68, scope: !2724)
!2762 = !DILocation(line: 134, column: 25, scope: !2724)
!2763 = !DILocation(line: 134, column: 32, scope: !2724)
!2764 = !DILocation(line: 134, column: 30, scope: !2724)
!2765 = !DILocation(line: 71, column: 19, scope: !2747, inlinedAt: !2755)
!2766 = !DILocation(line: 71, column: 22, scope: !2747, inlinedAt: !2755)
!2767 = !DILocation(line: 71, column: 2, scope: !2747, inlinedAt: !2755)
!2768 = !DILocation(line: 72, column: 2, scope: !2747, inlinedAt: !2755)
!2769 = !DILocation(line: 135, column: 9, scope: !2724)
!2770 = !DILocation(line: 206, column: 19, scope: !2741, inlinedAt: !2743)
!2771 = !DILocation(line: 206, column: 22, scope: !2741, inlinedAt: !2743)
!2772 = !DILocation(line: 206, column: 15, scope: !2741, inlinedAt: !2743)
!2773 = !DILocation(line: 207, column: 4, scope: !2741, inlinedAt: !2743)
!2774 = !DILocation(line: 207, column: 9, scope: !2741, inlinedAt: !2743)
!2775 = !DILocation(line: 207, column: 12, scope: !2741, inlinedAt: !2743)
!2776 = !DILocation(line: 206, column: 44, scope: !2741, inlinedAt: !2743)
!2777 = !DILocation(line: 207, column: 37, scope: !2741, inlinedAt: !2743)
!2778 = !DILocation(line: 217, column: 33, scope: !2732, inlinedAt: !2735)
!2779 = !DILocation(line: 217, column: 46, scope: !2732, inlinedAt: !2735)
!2780 = !DILocation(line: 214, column: 2, scope: !2732, inlinedAt: !2735)
!2781 = !{i32 -2147141460, i32 -2147141400}
!2782 = !DILocation(line: 219, column: 9, scope: !2732, inlinedAt: !2735)
!2783 = !DILocation(line: 135, column: 2, scope: !2724)
!2784 = distinct !DISubprogram(name: "pnp_resource_valid", scope: !108, file: !108, line: 37, type: !2785, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!105, !90}
!2787 = !DILocalVariable(name: "res", arg: 1, scope: !2784, file: !108, line: 37, type: !90)
!2788 = !DILocation(line: 37, column: 55, scope: !2784)
!2789 = !DILocation(line: 39, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !108, line: 39, column: 6)
!2791 = !DILocation(line: 39, column: 6, scope: !2784)
!2792 = !DILocation(line: 40, column: 3, scope: !2790)
!2793 = !DILocation(line: 41, column: 2, scope: !2784)
!2794 = !DILocation(line: 42, column: 1, scope: !2784)
!2795 = distinct !DISubprogram(name: "pnp_resource_len", scope: !108, file: !108, line: 51, type: !2796, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!75, !90}
!2798 = !DILocalVariable(name: "res", arg: 1, scope: !2795, file: !108, line: 51, type: !90)
!2799 = !DILocation(line: 51, column: 65, scope: !2795)
!2800 = !DILocation(line: 53, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2795, file: !108, line: 53, column: 6)
!2802 = !DILocation(line: 53, column: 11, scope: !2801)
!2803 = !DILocation(line: 53, column: 17, scope: !2801)
!2804 = !DILocation(line: 53, column: 22, scope: !2801)
!2805 = !DILocation(line: 53, column: 25, scope: !2801)
!2806 = !DILocation(line: 53, column: 30, scope: !2801)
!2807 = !DILocation(line: 53, column: 34, scope: !2801)
!2808 = !DILocation(line: 53, column: 6, scope: !2795)
!2809 = !DILocation(line: 54, column: 3, scope: !2801)
!2810 = !DILocation(line: 55, column: 23, scope: !2795)
!2811 = !DILocation(line: 55, column: 9, scope: !2795)
!2812 = !DILocation(line: 55, column: 2, scope: !2795)
!2813 = !DILocation(line: 56, column: 1, scope: !2795)
!2814 = distinct !DISubprogram(name: "resource_size", scope: !72, file: !72, line: 210, type: !2815, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!75, !2817}
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!2819 = !DILocalVariable(name: "res", arg: 1, scope: !2814, file: !72, line: 210, type: !2817)
!2820 = !DILocation(line: 210, column: 68, scope: !2814)
!2821 = !DILocation(line: 212, column: 9, scope: !2814)
!2822 = !DILocation(line: 212, column: 14, scope: !2814)
!2823 = !DILocation(line: 212, column: 20, scope: !2814)
!2824 = !DILocation(line: 212, column: 25, scope: !2814)
!2825 = !DILocation(line: 212, column: 18, scope: !2814)
!2826 = !DILocation(line: 212, column: 31, scope: !2814)
!2827 = !DILocation(line: 212, column: 2, scope: !2814)
!2828 = distinct !DISubprogram(name: "__arch_swab32", scope: !2829, file: !2829, line: 8, type: !2291, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2829 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !DILocalVariable(name: "val", arg: 1, scope: !2828, file: !2829, line: 8, type: !54)
!2831 = !DILocation(line: 8, column: 61, scope: !2828)
!2832 = !DILocation(line: 10, column: 38, scope: !2828)
!2833 = !DILocation(line: 10, column: 2, scope: !2828)
!2834 = !{i32 421737}
!2835 = !DILocation(line: 11, column: 9, scope: !2828)
!2836 = !DILocation(line: 11, column: 2, scope: !2828)
!2837 = distinct !DISubprogram(name: "kasan_check_read", scope: !2838, file: !2838, line: 34, type: !2839, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2838 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!1006, !2751, !5}
!2841 = !DILocalVariable(name: "p", arg: 1, scope: !2837, file: !2838, line: 34, type: !2751)
!2842 = !DILocation(line: 34, column: 58, scope: !2837)
!2843 = !DILocalVariable(name: "size", arg: 2, scope: !2837, file: !2838, line: 34, type: !5)
!2844 = !DILocation(line: 34, column: 74, scope: !2837)
!2845 = !DILocation(line: 36, column: 2, scope: !2837)
!2846 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2847, file: !2847, line: 178, type: !2848, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !141)
!2847 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2751, !215, !105}
!2850 = !DILocalVariable(name: "ptr", arg: 1, scope: !2846, file: !2847, line: 178, type: !2751)
!2851 = !DILocation(line: 178, column: 60, scope: !2846)
!2852 = !DILocalVariable(name: "size", arg: 2, scope: !2846, file: !2847, line: 178, type: !215)
!2853 = !DILocation(line: 178, column: 72, scope: !2846)
!2854 = !DILocalVariable(name: "type", arg: 3, scope: !2846, file: !2847, line: 179, type: !105)
!2855 = !DILocation(line: 179, column: 15, scope: !2846)
!2856 = !DILocation(line: 179, column: 23, scope: !2846)
