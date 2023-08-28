; ModuleID = '../bcout/drivers/pnp/driver.llvm.bc'
source_filename = "drivers/pnp/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.kmem_cache = type opaque
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
%struct.pnp_protocol = type { %struct.list_head, i8*, {}*, {}*, {}*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.proc_dir_entry = type opaque

@.str = private unnamed_addr constant [8 x i8] c"ANYDEVS\00", align 1
@pnp_lock = external dso_local global %struct.mutex, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@pnp_dev_groups = external dso_local global [0 x %struct.attribute_group*], align 8
@pnp_bus_dev_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @pnp_bus_suspend, i32 (%struct.device*)* @pnp_bus_resume, i32 (%struct.device*)* @pnp_bus_freeze, i32 (%struct.device*)* @pnp_bus_resume, i32 (%struct.device*)* @pnp_bus_poweroff, i32 (%struct.device*)* @pnp_bus_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !0
@pnp_bus_type = dso_local global %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([0 x %struct.attribute_group*], [0 x %struct.attribute_group*]* @pnp_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @pnp_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* @pnp_device_probe, void (%struct.device*)* null, i32 (%struct.device*)* @pnp_device_remove, void (%struct.device*)* @pnp_device_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* @pnp_bus_dev_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !2072
@_ctype = external dso_local constant [0 x i8], align 1
@__func__.__pnp_bus_suspend = private unnamed_addr constant [18 x i8] c"__pnp_bus_suspend\00", align 1
@console_suspend_enabled = external dso_local global i8, align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @compare_pnp_id(%struct.pnp_id* %pos, i8* %id) #0 !dbg !2079 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca %struct.pnp_id*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.pnp_id* %pos, %struct.pnp_id** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %pos.addr, metadata !2082, metadata !DIExpression()), !dbg !2083
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2084, metadata !DIExpression()), !dbg !2085
  %0 = load %struct.pnp_id*, %struct.pnp_id** %pos.addr, align 8, !dbg !2086
  %tobool = icmp ne %struct.pnp_id* %0, null, !dbg !2086
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2088

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %id.addr, align 8, !dbg !2089
  %tobool1 = icmp ne i8* %1, null, !dbg !2089
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !2090

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %id.addr, align 8, !dbg !2091
  %call = call i64 @strlen(i8* %2) #6, !dbg !2092
  %cmp = icmp ne i64 %call, 7, !dbg !2093
  br i1 %cmp, label %if.then, label %if.end, !dbg !2094

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load i8*, i8** %id.addr, align 8, !dbg !2096
  %call3 = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 7) #6, !dbg !2098
  %cmp4 = icmp eq i32 %call3, 0, !dbg !2099
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2100

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2101
  br label %return, !dbg !2101

if.end6:                                          ; preds = %if.end
  br label %while.cond, !dbg !2102

while.cond:                                       ; preds = %if.end18, %if.end6
  %4 = load %struct.pnp_id*, %struct.pnp_id** %pos.addr, align 8, !dbg !2103
  %tobool7 = icmp ne %struct.pnp_id* %4, null, !dbg !2102
  br i1 %tobool7, label %while.body, label %while.end, !dbg !2102

while.body:                                       ; preds = %while.cond
  %5 = load %struct.pnp_id*, %struct.pnp_id** %pos.addr, align 8, !dbg !2104
  %id8 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %5, i32 0, i32 0, !dbg !2107
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %id8, i64 0, i64 0, !dbg !2104
  %6 = load i8*, i8** %id.addr, align 8, !dbg !2108
  %call9 = call i32 @memcmp(i8* %arraydecay, i8* %6, i64 3) #6, !dbg !2109
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2110
  br i1 %cmp10, label %if.then11, label %if.end18, !dbg !2111

if.then11:                                        ; preds = %while.body
  %7 = load %struct.pnp_id*, %struct.pnp_id** %pos.addr, align 8, !dbg !2112
  %id12 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %7, i32 0, i32 0, !dbg !2114
  %arraydecay13 = getelementptr inbounds [8 x i8], [8 x i8]* %id12, i64 0, i64 0, !dbg !2112
  %8 = load i8*, i8** %id.addr, align 8, !dbg !2115
  %call14 = call i32 @compare_func(i8* %arraydecay13, i8* %8) #6, !dbg !2116
  %cmp15 = icmp eq i32 %call14, 1, !dbg !2117
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2118

if.then16:                                        ; preds = %if.then11
  store i32 1, i32* %retval, align 4, !dbg !2119
  br label %return, !dbg !2119

if.end17:                                         ; preds = %if.then11
  br label %if.end18, !dbg !2120

if.end18:                                         ; preds = %if.end17, %while.body
  %9 = load %struct.pnp_id*, %struct.pnp_id** %pos.addr, align 8, !dbg !2121
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %9, i32 0, i32 1, !dbg !2122
  %10 = load %struct.pnp_id*, %struct.pnp_id** %next, align 8, !dbg !2122
  store %struct.pnp_id* %10, %struct.pnp_id** %pos.addr, align 8, !dbg !2123
  br label %while.cond, !dbg !2102, !llvm.loop !2124

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !2126
  br label %return, !dbg !2126

return:                                           ; preds = %while.end, %if.then16, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2127
  ret i32 %11, !dbg !2127
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @compare_func(i8* %ida, i8* %idb) #0 !dbg !2128 {
entry:
  %retval = alloca i32, align 4
  %ida.addr = alloca i8*, align 8
  %idb.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %ida, i8** %ida.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ida.addr, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i8* %idb, i8** %idb.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %idb.addr, metadata !2133, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 3, i32* %i, align 4, !dbg !2137
  br label %for.cond, !dbg !2139

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2140
  %cmp = icmp slt i32 %0, 7, !dbg !2142
  br i1 %cmp, label %for.body, label %for.end, !dbg !2143

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %ida.addr, align 8, !dbg !2144
  %2 = load i32, i32* %i, align 4, !dbg !2147
  %idxprom = sext i32 %2 to i64, !dbg !2144
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !2144
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2144
  %conv = sext i8 %3 to i32, !dbg !2144
  %cmp1 = icmp ne i32 %conv, 88, !dbg !2148
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !2149

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8*, i8** %idb.addr, align 8, !dbg !2150
  %5 = load i32, i32* %i, align 4, !dbg !2151
  %idxprom3 = sext i32 %5 to i64, !dbg !2150
  %arrayidx4 = getelementptr i8, i8* %4, i64 %idxprom3, !dbg !2150
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !2150
  %conv5 = sext i8 %6 to i32, !dbg !2150
  %cmp6 = icmp ne i32 %conv5, 88, !dbg !2152
  br i1 %cmp6, label %land.lhs.true8, label %if.end, !dbg !2153

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** %ida.addr, align 8, !dbg !2154
  %8 = load i32, i32* %i, align 4, !dbg !2154
  %idxprom9 = sext i32 %8 to i64, !dbg !2154
  %arrayidx10 = getelementptr i8, i8* %7, i64 %idxprom9, !dbg !2154
  %9 = load i8, i8* %arrayidx10, align 1, !dbg !2154
  %call = call zeroext i8 @__toupper(i8 zeroext %9) #6, !dbg !2154
  %conv11 = zext i8 %call to i32, !dbg !2154
  %10 = load i8*, i8** %idb.addr, align 8, !dbg !2155
  %11 = load i32, i32* %i, align 4, !dbg !2155
  %idxprom12 = sext i32 %11 to i64, !dbg !2155
  %arrayidx13 = getelementptr i8, i8* %10, i64 %idxprom12, !dbg !2155
  %12 = load i8, i8* %arrayidx13, align 1, !dbg !2155
  %call14 = call zeroext i8 @__toupper(i8 zeroext %12) #6, !dbg !2155
  %conv15 = zext i8 %call14 to i32, !dbg !2155
  %cmp16 = icmp ne i32 %conv11, %conv15, !dbg !2156
  br i1 %cmp16, label %if.then, label %if.end, !dbg !2157

if.then:                                          ; preds = %land.lhs.true8
  store i32 0, i32* %retval, align 4, !dbg !2158
  br label %return, !dbg !2158

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2159

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !2160
  %inc = add i32 %13, 1, !dbg !2160
  store i32 %inc, i32* %i, align 4, !dbg !2160
  br label %for.cond, !dbg !2161, !llvm.loop !2162

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !2164
  br label %return, !dbg !2164

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2165
  ret i32 %14, !dbg !2165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_device_attach(%struct.pnp_dev* %pnp_dev) #0 !dbg !2166 {
entry:
  %retval = alloca i32, align 4
  %pnp_dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %pnp_dev, %struct.pnp_dev** %pnp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev.addr, metadata !2167, metadata !DIExpression()), !dbg !2168
  call void @mutex_lock(%struct.mutex* @pnp_lock) #6, !dbg !2169
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev.addr, align 8, !dbg !2170
  %status = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 3, !dbg !2172
  %1 = load i32, i32* %status, align 4, !dbg !2172
  %cmp = icmp ne i32 %1, 0, !dbg !2173
  br i1 %cmp, label %if.then, label %if.end, !dbg !2174

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #6, !dbg !2175
  store i32 -16, i32* %retval, align 4, !dbg !2177
  br label %return, !dbg !2177

if.end:                                           ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev.addr, align 8, !dbg !2178
  %status1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 3, !dbg !2179
  store i32 1, i32* %status1, align 4, !dbg !2180
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #6, !dbg !2181
  store i32 0, i32* %retval, align 4, !dbg !2182
  br label %return, !dbg !2182

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !2183
  ret i32 %3, !dbg !2183
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_device_detach(%struct.pnp_dev* %pnp_dev) #0 !dbg !2184 {
entry:
  %pnp_dev.addr = alloca %struct.pnp_dev*, align 8
  store %struct.pnp_dev* %pnp_dev, %struct.pnp_dev** %pnp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @mutex_lock(%struct.mutex* @pnp_lock) #6, !dbg !2187
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev.addr, align 8, !dbg !2188
  %status = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 3, !dbg !2190
  %1 = load i32, i32* %status, align 4, !dbg !2190
  %cmp = icmp eq i32 %1, 1, !dbg !2191
  br i1 %cmp, label %if.then, label %if.end, !dbg !2192

if.then:                                          ; preds = %entry
  %2 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev.addr, align 8, !dbg !2193
  %status1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %2, i32 0, i32 3, !dbg !2194
  store i32 0, i32* %status1, align 4, !dbg !2195
  br label %if.end, !dbg !2193

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* @pnp_lock) #6, !dbg !2196
  ret void, !dbg !2197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !2198 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %pnp_drv = alloca %struct.pnp_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.pnp_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2199, metadata !DIExpression()), !dbg !2200
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2203, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2205, metadata !DIExpression()), !dbg !2207
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2207
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2207
  store i8* %1, i8** %__mptr, align 8, !dbg !2207
  br label %do.body, !dbg !2207

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2208

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2207
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2207
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2207
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2208
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2207
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2204
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %pnp_drv, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2212, metadata !DIExpression()), !dbg !2214
  %5 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !2214
  %6 = bitcast %struct.device_driver* %5 to i8*, !dbg !2214
  store i8* %6, i8** %__mptr1, align 8, !dbg !2214
  br label %do.body2, !dbg !2214

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2215

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !2214
  %add.ptr5 = getelementptr i8, i8* %7, i64 -64, !dbg !2214
  %8 = bitcast i8* %add.ptr5 to %struct.pnp_driver*, !dbg !2214
  store %struct.pnp_driver* %8, %struct.pnp_driver** %tmp4, align 8, !dbg !2215
  %9 = load %struct.pnp_driver*, %struct.pnp_driver** %tmp4, align 8, !dbg !2214
  store %struct.pnp_driver* %9, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2211
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2217
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2219
  %call = call %struct.pnp_device_id* @match_device(%struct.pnp_driver* %10, %struct.pnp_dev* %11) #6, !dbg !2220
  %cmp = icmp eq %struct.pnp_device_id* %call, null, !dbg !2221
  br i1 %cmp, label %if.then, label %if.end, !dbg !2222

if.then:                                          ; preds = %do.end3
  store i32 0, i32* %retval, align 4, !dbg !2223
  br label %return, !dbg !2223

if.end:                                           ; preds = %do.end3
  store i32 1, i32* %retval, align 4, !dbg !2224
  br label %return, !dbg !2224

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2225
  ret i32 %12, !dbg !2225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_device_probe(%struct.device* %dev) #0 !dbg !2226 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  %pnp_drv = alloca %struct.pnp_driver*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %dev_id = alloca %struct.pnp_device_id*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.pnp_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2229, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %pnp_drv, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2233, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.declare(metadata %struct.pnp_device_id** %dev_id, metadata !2235, metadata !DIExpression()), !dbg !2236
  store %struct.pnp_device_id* null, %struct.pnp_device_id** %dev_id, align 8, !dbg !2236
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2237, metadata !DIExpression()), !dbg !2239
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2239
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2239
  store i8* %1, i8** %__mptr, align 8, !dbg !2239
  br label %do.body, !dbg !2239

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2240

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2239
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2239
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2239
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2240
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2239
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2242
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2243, metadata !DIExpression()), !dbg !2245
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2245
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !2245
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2245
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !2245
  store i8* %7, i8** %__mptr1, align 8, !dbg !2245
  br label %do.body2, !dbg !2245

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2246

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !2245
  %add.ptr5 = getelementptr i8, i8* %8, i64 -64, !dbg !2245
  %9 = bitcast i8* %add.ptr5 to %struct.pnp_driver*, !dbg !2245
  store %struct.pnp_driver* %9, %struct.pnp_driver** %tmp4, align 8, !dbg !2246
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %tmp4, align 8, !dbg !2245
  store %struct.pnp_driver* %10, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2248
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2249
  %call = call i32 @pnp_device_attach(%struct.pnp_dev* %11) #6, !dbg !2250
  store i32 %call, i32* %error, align 4, !dbg !2251
  %12 = load i32, i32* %error, align 4, !dbg !2252
  %cmp = icmp slt i32 %12, 0, !dbg !2254
  br i1 %cmp, label %if.then, label %if.end, !dbg !2255

if.then:                                          ; preds = %do.end3
  %13 = load i32, i32* %error, align 4, !dbg !2256
  store i32 %13, i32* %retval, align 4, !dbg !2257
  br label %return, !dbg !2257

if.end:                                           ; preds = %do.end3
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2258
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 13, !dbg !2260
  %15 = load i32, i32* %active, align 8, !dbg !2260
  %cmp6 = icmp eq i32 %15, 0, !dbg !2261
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !2262

if.then7:                                         ; preds = %if.end
  %16 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2263
  %flags = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %16, i32 0, i32 2, !dbg !2266
  %17 = load i32, i32* %flags, align 8, !dbg !2266
  %and = and i32 %17, 1, !dbg !2267
  %tobool = icmp ne i32 %and, 0, !dbg !2267
  br i1 %tobool, label %if.end13, label %if.then8, !dbg !2268

if.then8:                                         ; preds = %if.then7
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2269
  %call9 = call i32 @pnp_activate_dev(%struct.pnp_dev* %18) #6, !dbg !2271
  store i32 %call9, i32* %error, align 4, !dbg !2272
  %19 = load i32, i32* %error, align 4, !dbg !2273
  %cmp10 = icmp slt i32 %19, 0, !dbg !2275
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !2276

if.then11:                                        ; preds = %if.then8
  %20 = load i32, i32* %error, align 4, !dbg !2277
  store i32 %20, i32* %retval, align 4, !dbg !2278
  br label %return, !dbg !2278

if.end12:                                         ; preds = %if.then8
  br label %if.end13, !dbg !2279

if.end13:                                         ; preds = %if.end12, %if.then7
  br label %if.end23, !dbg !2280

if.else:                                          ; preds = %if.end
  %21 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2281
  %flags14 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %21, i32 0, i32 2, !dbg !2283
  %22 = load i32, i32* %flags14, align 8, !dbg !2283
  %and15 = and i32 %22, 3, !dbg !2284
  %cmp16 = icmp eq i32 %and15, 3, !dbg !2285
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !2286

if.then17:                                        ; preds = %if.else
  %23 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2287
  %call18 = call i32 @pnp_disable_dev(%struct.pnp_dev* %23) #6, !dbg !2289
  store i32 %call18, i32* %error, align 4, !dbg !2290
  %24 = load i32, i32* %error, align 4, !dbg !2291
  %cmp19 = icmp slt i32 %24, 0, !dbg !2293
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !2294

if.then20:                                        ; preds = %if.then17
  %25 = load i32, i32* %error, align 4, !dbg !2295
  store i32 %25, i32* %retval, align 4, !dbg !2296
  br label %return, !dbg !2296

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !2297

if.end22:                                         ; preds = %if.end21, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end13
  store i32 0, i32* %error, align 4, !dbg !2298
  %26 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2299
  %probe = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %26, i32 0, i32 3, !dbg !2301
  %27 = load i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)** %probe, align 8, !dbg !2301
  %tobool24 = icmp ne i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* %27, null, !dbg !2299
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !2302

if.then25:                                        ; preds = %if.end23
  %28 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2303
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2305
  %call26 = call %struct.pnp_device_id* @match_device(%struct.pnp_driver* %28, %struct.pnp_dev* %29) #6, !dbg !2306
  store %struct.pnp_device_id* %call26, %struct.pnp_device_id** %dev_id, align 8, !dbg !2307
  %30 = load %struct.pnp_device_id*, %struct.pnp_device_id** %dev_id, align 8, !dbg !2308
  %cmp27 = icmp ne %struct.pnp_device_id* %30, null, !dbg !2310
  br i1 %cmp27, label %if.then28, label %if.end31, !dbg !2311

if.then28:                                        ; preds = %if.then25
  %31 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2312
  %probe29 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %31, i32 0, i32 3, !dbg !2313
  %32 = load i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)** %probe29, align 8, !dbg !2313
  %33 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2314
  %34 = load %struct.pnp_device_id*, %struct.pnp_device_id** %dev_id, align 8, !dbg !2315
  %call30 = call i32 %32(%struct.pnp_dev* %33, %struct.pnp_device_id* %34) #6, !dbg !2312
  store i32 %call30, i32* %error, align 4, !dbg !2316
  br label %if.end31, !dbg !2317

if.end31:                                         ; preds = %if.then28, %if.then25
  br label %if.end32, !dbg !2318

if.end32:                                         ; preds = %if.end31, %if.end23
  %35 = load i32, i32* %error, align 4, !dbg !2319
  %cmp33 = icmp sge i32 %35, 0, !dbg !2321
  br i1 %cmp33, label %if.then34, label %if.else36, !dbg !2322

if.then34:                                        ; preds = %if.end32
  %36 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2323
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2325
  %driver35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %37, i32 0, i32 10, !dbg !2326
  store %struct.pnp_driver* %36, %struct.pnp_driver** %driver35, align 8, !dbg !2327
  store i32 0, i32* %error, align 4, !dbg !2328
  br label %if.end37, !dbg !2329

if.else36:                                        ; preds = %if.end32
  br label %fail, !dbg !2330

if.end37:                                         ; preds = %if.then34
  %38 = load i32, i32* %error, align 4, !dbg !2331
  store i32 %38, i32* %retval, align 4, !dbg !2332
  br label %return, !dbg !2332

fail:                                             ; preds = %if.else36
  call void @llvm.dbg.label(metadata !2333), !dbg !2334
  %39 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2335
  call void @pnp_device_detach(%struct.pnp_dev* %39) #6, !dbg !2336
  %40 = load i32, i32* %error, align 4, !dbg !2337
  store i32 %40, i32* %retval, align 4, !dbg !2338
  br label %return, !dbg !2338

return:                                           ; preds = %fail, %if.end37, %if.then20, %if.then11, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !2339
  ret i32 %41, !dbg !2339
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_device_remove(%struct.device* %dev) #0 !dbg !2340 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2343, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2345, metadata !DIExpression()), !dbg !2347
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2347
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2347
  store i8* %1, i8** %__mptr, align 8, !dbg !2347
  br label %do.body, !dbg !2347

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2348

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2347
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2347
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2347
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2348
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2347
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %drv, metadata !2350, metadata !DIExpression()), !dbg !2351
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2352
  %driver = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 10, !dbg !2353
  %6 = load %struct.pnp_driver*, %struct.pnp_driver** %driver, align 8, !dbg !2353
  store %struct.pnp_driver* %6, %struct.pnp_driver** %drv, align 8, !dbg !2351
  %7 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2354
  %tobool = icmp ne %struct.pnp_driver* %7, null, !dbg !2354
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2356

if.then:                                          ; preds = %do.end
  %8 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2357
  %remove = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %8, i32 0, i32 4, !dbg !2360
  %9 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %remove, align 8, !dbg !2360
  %tobool1 = icmp ne void (%struct.pnp_dev*)* %9, null, !dbg !2357
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2361

if.then2:                                         ; preds = %if.then
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2362
  %remove3 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %10, i32 0, i32 4, !dbg !2363
  %11 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %remove3, align 8, !dbg !2363
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2364
  call void %11(%struct.pnp_dev* %12) #6, !dbg !2362
  br label %if.end, !dbg !2362

if.end:                                           ; preds = %if.then2, %if.then
  %13 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2365
  %driver4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %13, i32 0, i32 10, !dbg !2366
  store %struct.pnp_driver* null, %struct.pnp_driver** %driver4, align 8, !dbg !2367
  br label %if.end5, !dbg !2368

if.end5:                                          ; preds = %if.end, %do.end
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2369
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 13, !dbg !2371
  %15 = load i32, i32* %active, align 8, !dbg !2371
  %tobool6 = icmp ne i32 %15, 0, !dbg !2369
  br i1 %tobool6, label %land.lhs.true, label %if.end10, !dbg !2372

land.lhs.true:                                    ; preds = %if.end5
  %16 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2373
  %tobool7 = icmp ne %struct.pnp_driver* %16, null, !dbg !2373
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !2374

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2375
  %flags = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %17, i32 0, i32 2, !dbg !2376
  %18 = load i32, i32* %flags, align 8, !dbg !2376
  %and = and i32 %18, 1, !dbg !2377
  %tobool8 = icmp ne i32 %and, 0, !dbg !2377
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2378

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2379
  %call = call i32 @pnp_disable_dev(%struct.pnp_dev* %19) #6, !dbg !2380
  br label %if.end10, !dbg !2380

if.end10:                                         ; preds = %if.then9, %lor.lhs.false, %if.end5
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2381
  call void @pnp_device_detach(%struct.pnp_dev* %20) #6, !dbg !2382
  ret i32 0, !dbg !2383
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pnp_device_shutdown(%struct.device* %dev) #0 !dbg !2384 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %drv = alloca %struct.pnp_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2389, metadata !DIExpression()), !dbg !2391
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2391
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2391
  store i8* %1, i8** %__mptr, align 8, !dbg !2391
  br label %do.body, !dbg !2391

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2392

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2391
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2391
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2391
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2392
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2391
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2388
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %drv, metadata !2394, metadata !DIExpression()), !dbg !2395
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2396
  %driver = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 10, !dbg !2397
  %6 = load %struct.pnp_driver*, %struct.pnp_driver** %driver, align 8, !dbg !2397
  store %struct.pnp_driver* %6, %struct.pnp_driver** %drv, align 8, !dbg !2395
  %7 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2398
  %tobool = icmp ne %struct.pnp_driver* %7, null, !dbg !2398
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2400

land.lhs.true:                                    ; preds = %do.end
  %8 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2401
  %shutdown = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %8, i32 0, i32 5, !dbg !2402
  %9 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %shutdown, align 8, !dbg !2402
  %tobool1 = icmp ne void (%struct.pnp_dev*)* %9, null, !dbg !2401
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2403

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %drv, align 8, !dbg !2404
  %shutdown2 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %10, i32 0, i32 5, !dbg !2405
  %11 = load void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)** %shutdown2, align 8, !dbg !2405
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2406
  call void %11(%struct.pnp_dev* %12) #6, !dbg !2404
  br label %if.end, !dbg !2404

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  ret void, !dbg !2407
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pnp_register_driver(%struct.pnp_driver* %drv) #0 !dbg !2408 {
entry:
  %drv.addr = alloca %struct.pnp_driver*, align 8
  store %struct.pnp_driver* %drv, %struct.pnp_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %drv.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  %0 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2413
  %name = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %0, i32 0, i32 0, !dbg !2414
  %1 = load i8*, i8** %name, align 8, !dbg !2414
  %2 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2415
  %driver = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %2, i32 0, i32 8, !dbg !2416
  %name1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 0, !dbg !2417
  store i8* %1, i8** %name1, align 8, !dbg !2418
  %3 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2419
  %driver2 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %3, i32 0, i32 8, !dbg !2420
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver2, i32 0, i32 1, !dbg !2421
  store %struct.bus_type* @pnp_bus_type, %struct.bus_type** %bus, align 8, !dbg !2422
  %4 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2423
  %driver3 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %4, i32 0, i32 8, !dbg !2424
  %call = call i32 @driver_register(%struct.device_driver* %driver3) #6, !dbg !2425
  ret i32 %call, !dbg !2426
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pnp_unregister_driver(%struct.pnp_driver* %drv) #0 !dbg !2427 {
entry:
  %drv.addr = alloca %struct.pnp_driver*, align 8
  store %struct.pnp_driver* %drv, %struct.pnp_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %drv.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  %0 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2432
  %driver = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %0, i32 0, i32 8, !dbg !2433
  call void @driver_unregister(%struct.device_driver* %driver) #6, !dbg !2434
  ret void, !dbg !2435
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %dev, i8* %id) #0 !dbg !2436 {
entry:
  %retval = alloca %struct.pnp_id*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %id.addr = alloca i8*, align 8
  %dev_id = alloca %struct.pnp_id*, align 8
  %ptr = alloca %struct.pnp_id*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2439, metadata !DIExpression()), !dbg !2440
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !2441, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %dev_id, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.pnp_id** %ptr, metadata !2445, metadata !DIExpression()), !dbg !2446
  %call = call i8* @kzalloc(i64 16, i32 3264) #6, !dbg !2447
  %0 = bitcast i8* %call to %struct.pnp_id*, !dbg !2447
  store %struct.pnp_id* %0, %struct.pnp_id** %dev_id, align 8, !dbg !2448
  %1 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2449
  %tobool = icmp ne %struct.pnp_id* %1, null, !dbg !2449
  br i1 %tobool, label %if.end, label %if.then, !dbg !2451

if.then:                                          ; preds = %entry
  store %struct.pnp_id* null, %struct.pnp_id** %retval, align 8, !dbg !2452
  br label %return, !dbg !2452

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %id.addr, align 8, !dbg !2453
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !2453
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2453
  %4 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2454
  %id1 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %4, i32 0, i32 0, !dbg !2455
  %arrayidx2 = getelementptr [8 x i8], [8 x i8]* %id1, i64 0, i64 0, !dbg !2454
  store i8 %3, i8* %arrayidx2, align 8, !dbg !2456
  %5 = load i8*, i8** %id.addr, align 8, !dbg !2457
  %arrayidx3 = getelementptr i8, i8* %5, i64 1, !dbg !2457
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !2457
  %7 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2458
  %id4 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %7, i32 0, i32 0, !dbg !2459
  %arrayidx5 = getelementptr [8 x i8], [8 x i8]* %id4, i64 0, i64 1, !dbg !2458
  store i8 %6, i8* %arrayidx5, align 1, !dbg !2460
  %8 = load i8*, i8** %id.addr, align 8, !dbg !2461
  %arrayidx6 = getelementptr i8, i8* %8, i64 2, !dbg !2461
  %9 = load i8, i8* %arrayidx6, align 1, !dbg !2461
  %10 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2462
  %id7 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %10, i32 0, i32 0, !dbg !2463
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %id7, i64 0, i64 2, !dbg !2462
  store i8 %9, i8* %arrayidx8, align 2, !dbg !2464
  %11 = load i8*, i8** %id.addr, align 8, !dbg !2465
  %arrayidx9 = getelementptr i8, i8* %11, i64 3, !dbg !2465
  %12 = load i8, i8* %arrayidx9, align 1, !dbg !2465
  %call10 = call zeroext i8 @__tolower(i8 zeroext %12) #6, !dbg !2465
  %13 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2466
  %id11 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %13, i32 0, i32 0, !dbg !2467
  %arrayidx12 = getelementptr [8 x i8], [8 x i8]* %id11, i64 0, i64 3, !dbg !2466
  store i8 %call10, i8* %arrayidx12, align 1, !dbg !2468
  %14 = load i8*, i8** %id.addr, align 8, !dbg !2469
  %arrayidx13 = getelementptr i8, i8* %14, i64 4, !dbg !2469
  %15 = load i8, i8* %arrayidx13, align 1, !dbg !2469
  %call14 = call zeroext i8 @__tolower(i8 zeroext %15) #6, !dbg !2469
  %16 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2470
  %id15 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %16, i32 0, i32 0, !dbg !2471
  %arrayidx16 = getelementptr [8 x i8], [8 x i8]* %id15, i64 0, i64 4, !dbg !2470
  store i8 %call14, i8* %arrayidx16, align 4, !dbg !2472
  %17 = load i8*, i8** %id.addr, align 8, !dbg !2473
  %arrayidx17 = getelementptr i8, i8* %17, i64 5, !dbg !2473
  %18 = load i8, i8* %arrayidx17, align 1, !dbg !2473
  %call18 = call zeroext i8 @__tolower(i8 zeroext %18) #6, !dbg !2473
  %19 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2474
  %id19 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %19, i32 0, i32 0, !dbg !2475
  %arrayidx20 = getelementptr [8 x i8], [8 x i8]* %id19, i64 0, i64 5, !dbg !2474
  store i8 %call18, i8* %arrayidx20, align 1, !dbg !2476
  %20 = load i8*, i8** %id.addr, align 8, !dbg !2477
  %arrayidx21 = getelementptr i8, i8* %20, i64 6, !dbg !2477
  %21 = load i8, i8* %arrayidx21, align 1, !dbg !2477
  %call22 = call zeroext i8 @__tolower(i8 zeroext %21) #6, !dbg !2477
  %22 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2478
  %id23 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %22, i32 0, i32 0, !dbg !2479
  %arrayidx24 = getelementptr [8 x i8], [8 x i8]* %id23, i64 0, i64 6, !dbg !2478
  store i8 %call22, i8* %arrayidx24, align 2, !dbg !2480
  %23 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2481
  %id25 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %23, i32 0, i32 0, !dbg !2482
  %arrayidx26 = getelementptr [8 x i8], [8 x i8]* %id25, i64 0, i64 7, !dbg !2481
  store i8 0, i8* %arrayidx26, align 1, !dbg !2483
  %24 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2484
  %next = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %24, i32 0, i32 1, !dbg !2485
  store %struct.pnp_id* null, %struct.pnp_id** %next, align 8, !dbg !2486
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2487
  %id27 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %25, i32 0, i32 12, !dbg !2488
  %26 = load %struct.pnp_id*, %struct.pnp_id** %id27, align 8, !dbg !2488
  store %struct.pnp_id* %26, %struct.pnp_id** %ptr, align 8, !dbg !2489
  br label %while.cond, !dbg !2490

while.cond:                                       ; preds = %while.body, %if.end
  %27 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !2491
  %tobool28 = icmp ne %struct.pnp_id* %27, null, !dbg !2491
  br i1 %tobool28, label %land.rhs, label %land.end, !dbg !2492

land.rhs:                                         ; preds = %while.cond
  %28 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !2493
  %next29 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %28, i32 0, i32 1, !dbg !2494
  %29 = load %struct.pnp_id*, %struct.pnp_id** %next29, align 8, !dbg !2494
  %tobool30 = icmp ne %struct.pnp_id* %29, null, !dbg !2492
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ], !dbg !2495
  br i1 %30, label %while.body, label %while.end, !dbg !2490

while.body:                                       ; preds = %land.end
  %31 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !2496
  %next31 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %31, i32 0, i32 1, !dbg !2497
  %32 = load %struct.pnp_id*, %struct.pnp_id** %next31, align 8, !dbg !2497
  store %struct.pnp_id* %32, %struct.pnp_id** %ptr, align 8, !dbg !2498
  br label %while.cond, !dbg !2490, !llvm.loop !2499

while.end:                                        ; preds = %land.end
  %33 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !2500
  %tobool32 = icmp ne %struct.pnp_id* %33, null, !dbg !2500
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !2502

if.then33:                                        ; preds = %while.end
  %34 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2503
  %35 = load %struct.pnp_id*, %struct.pnp_id** %ptr, align 8, !dbg !2504
  %next34 = getelementptr inbounds %struct.pnp_id, %struct.pnp_id* %35, i32 0, i32 1, !dbg !2505
  store %struct.pnp_id* %34, %struct.pnp_id** %next34, align 8, !dbg !2506
  br label %if.end36, !dbg !2504

if.else:                                          ; preds = %while.end
  %36 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2507
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2508
  %id35 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %37, i32 0, i32 12, !dbg !2509
  store %struct.pnp_id* %36, %struct.pnp_id** %id35, align 8, !dbg !2510
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %38 = load %struct.pnp_id*, %struct.pnp_id** %dev_id, align 8, !dbg !2511
  store %struct.pnp_id* %38, %struct.pnp_id** %retval, align 8, !dbg !2512
  br label %return, !dbg !2512

return:                                           ; preds = %if.end36, %if.then
  %39 = load %struct.pnp_id*, %struct.pnp_id** %retval, align 8, !dbg !2513
  ret %struct.pnp_id* %39, !dbg !2513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2514 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2517, metadata !DIExpression()), !dbg !2521
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2527, metadata !DIExpression()), !dbg !2528
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2529, metadata !DIExpression()), !dbg !2530
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2531, metadata !DIExpression()), !dbg !2532
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2533, metadata !DIExpression()), !dbg !2537
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2539, metadata !DIExpression()), !dbg !2543
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2545, metadata !DIExpression()), !dbg !2549
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2554, metadata !DIExpression()), !dbg !2555
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2556, metadata !DIExpression()), !dbg !2557
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2558, metadata !DIExpression()), !dbg !2559
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2560, metadata !DIExpression()), !dbg !2561
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2562, metadata !DIExpression()), !dbg !2563
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2564, metadata !DIExpression()), !dbg !2565
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2566, metadata !DIExpression()), !dbg !2567
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2568, metadata !DIExpression()), !dbg !2569
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2572, metadata !DIExpression()), !dbg !2573
  %0 = load i64, i64* %size.addr, align 8, !dbg !2574
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2575
  %or = or i32 %1, 256, !dbg !2576
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2577
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !2578
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2579

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2580
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2581
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2582

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2583
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2584
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2585
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !2586
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2563
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2587
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2588
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2589
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2590
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2591
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2592
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !2593
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2593
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2593
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2593
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !2593
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2594
  br label %kmalloc.exit, !dbg !2594

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2595
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2596
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2596
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2598

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2599
  br label %kmalloc_index.exit.i, !dbg !2599

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2600
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2602
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2603

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2604
  br label %kmalloc_index.exit.i, !dbg !2604

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2605
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2607
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2608

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2609
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2610
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2611

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2612
  br label %kmalloc_index.exit.i, !dbg !2612

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2613
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2615
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2616

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2617
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2618
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2619

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2620
  br label %kmalloc_index.exit.i, !dbg !2620

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2621
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2623
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2624

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2625
  br label %kmalloc_index.exit.i, !dbg !2625

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2626
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2628
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2629

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2630
  br label %kmalloc_index.exit.i, !dbg !2630

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2631
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2633
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2634

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2635
  br label %kmalloc_index.exit.i, !dbg !2635

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2636
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2638
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2639

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2640
  br label %kmalloc_index.exit.i, !dbg !2640

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2641
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2643
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2644

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2645
  br label %kmalloc_index.exit.i, !dbg !2645

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2646
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2648
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2649

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2650
  br label %kmalloc_index.exit.i, !dbg !2650

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2651
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2653
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2654

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2655
  br label %kmalloc_index.exit.i, !dbg !2655

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2656
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2658
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2659

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2660
  br label %kmalloc_index.exit.i, !dbg !2660

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2661
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2663
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2664

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2665
  br label %kmalloc_index.exit.i, !dbg !2665

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2666
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2668
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2669

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2670
  br label %kmalloc_index.exit.i, !dbg !2670

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2671
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2673
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2674

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2675
  br label %kmalloc_index.exit.i, !dbg !2675

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2676
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2678
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2679

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2680
  br label %kmalloc_index.exit.i, !dbg !2680

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2681
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2683
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2684

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2685
  br label %kmalloc_index.exit.i, !dbg !2685

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2686
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2688
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2689

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2690
  br label %kmalloc_index.exit.i, !dbg !2690

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2691
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2693
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2694

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2695
  br label %kmalloc_index.exit.i, !dbg !2695

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2696
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2698
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2699

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2700
  br label %kmalloc_index.exit.i, !dbg !2700

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2701
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2703
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2704

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2705
  br label %kmalloc_index.exit.i, !dbg !2705

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2706
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2708
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2709

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2710
  br label %kmalloc_index.exit.i, !dbg !2710

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2711
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2713
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2714

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2715
  br label %kmalloc_index.exit.i, !dbg !2715

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2716
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2718
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2719

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2720
  br label %kmalloc_index.exit.i, !dbg !2720

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2723
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2724

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2725
  br label %kmalloc_index.exit.i, !dbg !2725

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2726
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2728
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2729

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2730
  br label %kmalloc_index.exit.i, !dbg !2730

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2731
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2733
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2734

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2735
  br label %kmalloc_index.exit.i, !dbg !2735

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2736
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2738
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2739

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2740
  br label %kmalloc_index.exit.i, !dbg !2740

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !2741, !srcloc !2744
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #7, !dbg !2745, !srcloc !2748
  unreachable, !dbg !2749

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2750
  store i32 %45, i32* %index.i, align 4, !dbg !2751
  %46 = load i32, i32* %index.i, align 4, !dbg !2752
  %tobool.i = icmp ne i32 %46, 0, !dbg !2752
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2754

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2755
  br label %kmalloc.exit, !dbg !2755

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2756
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2757
  %and.i.i = and i32 %48, 17, !dbg !2757
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2757
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2757
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2757
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2757
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2759

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2760
  br label %kmalloc_type.exit.i, !dbg !2760

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2761
  %and2.i.i = and i32 %49, 1, !dbg !2762
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2761
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2761
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2761
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2763
  br label %kmalloc_type.exit.i, !dbg !2763

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2764
  %idxprom.i = zext i32 %51 to i64, !dbg !2765
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2765
  %52 = load i32, i32* %index.i, align 4, !dbg !2766
  %idxprom6.i = zext i32 %52 to i64, !dbg !2765
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2765
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2765
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2767
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2768
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2769
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2770
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !2771
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2771
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2771
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2771
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !2771
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2532
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2772
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2773
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2774
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2775
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !2776
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2777
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2778
  store i8* %62, i8** %retval.i, align 8, !dbg !2779
  br label %kmalloc.exit, !dbg !2779

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2780
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2781
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !2782
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2782
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2782
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2782
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !2782
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2783
  br label %kmalloc.exit, !dbg !2783

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2784
  ret i8* %65, !dbg !2785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__tolower(i8 zeroext %c) #0 !dbg !2786 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !2790, metadata !DIExpression()), !dbg !2791
  %0 = load i8, i8* %c.addr, align 1, !dbg !2792
  %conv = zext i8 %0 to i32, !dbg !2792
  %idxprom = sext i32 %conv to i64, !dbg !2792
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !2792
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2792
  %conv1 = zext i8 %1 to i32, !dbg !2792
  %and = and i32 %conv1, 1, !dbg !2792
  %cmp = icmp ne i32 %and, 0, !dbg !2792
  br i1 %cmp, label %if.then, label %if.end, !dbg !2794

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !2795
  %conv3 = zext i8 %2 to i32, !dbg !2795
  %sub = sub i32 %conv3, -32, !dbg !2795
  %conv4 = trunc i32 %sub to i8, !dbg !2795
  store i8 %conv4, i8* %c.addr, align 1, !dbg !2795
  br label %if.end, !dbg !2796

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !2797
  ret i8 %3, !dbg !2798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @__toupper(i8 zeroext %c) #0 !dbg !2799 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  %0 = load i8, i8* %c.addr, align 1, !dbg !2802
  %conv = zext i8 %0 to i32, !dbg !2802
  %idxprom = sext i32 %conv to i64, !dbg !2802
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom, !dbg !2802
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2802
  %conv1 = zext i8 %1 to i32, !dbg !2802
  %and = and i32 %conv1, 2, !dbg !2802
  %cmp = icmp ne i32 %and, 0, !dbg !2802
  br i1 %cmp, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %c.addr, align 1, !dbg !2805
  %conv3 = zext i8 %2 to i32, !dbg !2805
  %sub = sub i32 %conv3, 32, !dbg !2805
  %conv4 = trunc i32 %sub to i8, !dbg !2805
  store i8 %conv4, i8* %c.addr, align 1, !dbg !2805
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %c.addr, align 1, !dbg !2807
  ret i8 %3, !dbg !2808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pnp_device_id* @match_device(%struct.pnp_driver* %drv, %struct.pnp_dev* %dev) #0 !dbg !2809 {
entry:
  %retval = alloca %struct.pnp_device_id*, align 8
  %drv.addr = alloca %struct.pnp_driver*, align 8
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %drv_id = alloca %struct.pnp_device_id*, align 8
  store %struct.pnp_driver* %drv, %struct.pnp_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %drv.addr, metadata !2812, metadata !DIExpression()), !dbg !2813
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.pnp_device_id** %drv_id, metadata !2816, metadata !DIExpression()), !dbg !2817
  %0 = load %struct.pnp_driver*, %struct.pnp_driver** %drv.addr, align 8, !dbg !2818
  %id_table = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %0, i32 0, i32 1, !dbg !2819
  %1 = load %struct.pnp_device_id*, %struct.pnp_device_id** %id_table, align 8, !dbg !2819
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %drv_id, align 8, !dbg !2817
  %2 = load %struct.pnp_device_id*, %struct.pnp_device_id** %drv_id, align 8, !dbg !2820
  %tobool = icmp ne %struct.pnp_device_id* %2, null, !dbg !2820
  br i1 %tobool, label %if.end, label %if.then, !dbg !2822

if.then:                                          ; preds = %entry
  store %struct.pnp_device_id* null, %struct.pnp_device_id** %retval, align 8, !dbg !2823
  br label %return, !dbg !2823

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2824

while.cond:                                       ; preds = %if.end7, %if.end
  %3 = load %struct.pnp_device_id*, %struct.pnp_device_id** %drv_id, align 8, !dbg !2825
  %id = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %3, i32 0, i32 0, !dbg !2826
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %id, i64 0, i64 0, !dbg !2827
  %4 = load i8, i8* %arraydecay, align 8, !dbg !2827
  %tobool1 = icmp ne i8 %4, 0, !dbg !2824
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2824

while.body:                                       ; preds = %while.cond
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2828
  %id2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 12, !dbg !2831
  %6 = load %struct.pnp_id*, %struct.pnp_id** %id2, align 8, !dbg !2831
  %7 = load %struct.pnp_device_id*, %struct.pnp_device_id** %drv_id, align 8, !dbg !2832
  %id3 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %7, i32 0, i32 0, !dbg !2833
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %id3, i64 0, i64 0, !dbg !2832
  %call = call i32 @compare_pnp_id(%struct.pnp_id* %6, i8* %arraydecay4) #6, !dbg !2834
  %tobool5 = icmp ne i32 %call, 0, !dbg !2834
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2835

if.then6:                                         ; preds = %while.body
  %8 = load %struct.pnp_device_id*, %struct.pnp_device_id** %drv_id, align 8, !dbg !2836
  store %struct.pnp_device_id* %8, %struct.pnp_device_id** %retval, align 8, !dbg !2837
  br label %return, !dbg !2837

if.end7:                                          ; preds = %while.body
  %9 = load %struct.pnp_device_id*, %struct.pnp_device_id** %drv_id, align 8, !dbg !2838
  %incdec.ptr = getelementptr %struct.pnp_device_id, %struct.pnp_device_id* %9, i32 1, !dbg !2838
  store %struct.pnp_device_id* %incdec.ptr, %struct.pnp_device_id** %drv_id, align 8, !dbg !2838
  br label %while.cond, !dbg !2824, !llvm.loop !2839

while.end:                                        ; preds = %while.cond
  store %struct.pnp_device_id* null, %struct.pnp_device_id** %retval, align 8, !dbg !2841
  br label %return, !dbg !2841

return:                                           ; preds = %while.end, %if.then6, %if.then
  %10 = load %struct.pnp_device_id*, %struct.pnp_device_id** %retval, align 8, !dbg !2842
  ret %struct.pnp_device_id* %10, !dbg !2842
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_activate_dev(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_disable_dev(%struct.pnp_dev*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_bus_suspend(%struct.device* %dev) #0 !dbg !2843 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2844, metadata !DIExpression()), !dbg !2845
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2846
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2847
  store i32 2, i32* %event, align 4, !dbg !2847
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2848
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !2848
  %call = call i32 @__pnp_bus_suspend(%struct.device* %0, i32 %1) #6, !dbg !2848
  ret i32 %call, !dbg !2849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_bus_resume(%struct.device* %dev) #0 !dbg !2850 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %pnp_drv = alloca %struct.pnp_driver*, align 8
  %error = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2851, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2855, metadata !DIExpression()), !dbg !2857
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2857
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2857
  store i8* %1, i8** %__mptr, align 8, !dbg !2857
  br label %do.body, !dbg !2857

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2858

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2857
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2857
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2857
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2858
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2857
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2854
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %pnp_drv, metadata !2860, metadata !DIExpression()), !dbg !2861
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2862
  %driver = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 10, !dbg !2863
  %6 = load %struct.pnp_driver*, %struct.pnp_driver** %driver, align 8, !dbg !2863
  store %struct.pnp_driver* %6, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2861
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2864, metadata !DIExpression()), !dbg !2865
  %7 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2866
  %tobool = icmp ne %struct.pnp_driver* %7, null, !dbg !2866
  br i1 %tobool, label %if.end, label %if.then, !dbg !2868

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !2869
  br label %return, !dbg !2869

if.end:                                           ; preds = %do.end
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2870
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 8, !dbg !2872
  %9 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !2872
  %resume = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %9, i32 0, i32 7, !dbg !2873
  %resume1 = bitcast {}** %resume to i32 (%struct.pnp_dev*)**, !dbg !2873
  %10 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %resume1, align 8, !dbg !2873
  %tobool2 = icmp ne i32 (%struct.pnp_dev*)* %10, null, !dbg !2870
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !2874

if.then3:                                         ; preds = %if.end
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2875
  %protocol4 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 8, !dbg !2877
  %12 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol4, align 8, !dbg !2877
  %resume5 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %12, i32 0, i32 7, !dbg !2878
  %resume6 = bitcast {}** %resume5 to i32 (%struct.pnp_dev*)**, !dbg !2878
  %13 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %resume6, align 8, !dbg !2878
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2879
  %call = call i32 %13(%struct.pnp_dev* %14) #6, !dbg !2875
  store i32 %call, i32* %error, align 4, !dbg !2880
  %15 = load i32, i32* %error, align 4, !dbg !2881
  %tobool7 = icmp ne i32 %15, 0, !dbg !2881
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2883

if.then8:                                         ; preds = %if.then3
  %16 = load i32, i32* %error, align 4, !dbg !2884
  store i32 %16, i32* %retval, align 4, !dbg !2885
  br label %return, !dbg !2885

if.end9:                                          ; preds = %if.then3
  br label %if.end10, !dbg !2886

if.end10:                                         ; preds = %if.end9, %if.end
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2887
  %protocol11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %17, i32 0, i32 8, !dbg !2887
  %18 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol11, align 8, !dbg !2887
  %set = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %18, i32 0, i32 3, !dbg !2887
  %set12 = bitcast {}** %set to i32 (%struct.pnp_dev*)**, !dbg !2887
  %19 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %set12, align 8, !dbg !2887
  %tobool13 = icmp ne i32 (%struct.pnp_dev*)* %19, null, !dbg !2887
  br i1 %tobool13, label %land.lhs.true, label %if.end20, !dbg !2887

land.lhs.true:                                    ; preds = %if.end10
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2887
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %20, i32 0, i32 14, !dbg !2887
  %21 = load i32, i32* %capabilities, align 4, !dbg !2887
  %and = and i32 %21, 2, !dbg !2887
  %tobool14 = icmp ne i32 %and, 0, !dbg !2887
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !2889

if.then15:                                        ; preds = %land.lhs.true
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2890
  %call16 = call i32 @pnp_start_dev(%struct.pnp_dev* %22) #6, !dbg !2892
  store i32 %call16, i32* %error, align 4, !dbg !2893
  %23 = load i32, i32* %error, align 4, !dbg !2894
  %tobool17 = icmp ne i32 %23, 0, !dbg !2894
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2896

if.then18:                                        ; preds = %if.then15
  %24 = load i32, i32* %error, align 4, !dbg !2897
  store i32 %24, i32* %retval, align 4, !dbg !2898
  br label %return, !dbg !2898

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !2899

if.end20:                                         ; preds = %if.end19, %land.lhs.true, %if.end10
  %25 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2900
  %driver21 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %25, i32 0, i32 8, !dbg !2902
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver21, i32 0, i32 16, !dbg !2903
  %26 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2903
  %tobool22 = icmp ne %struct.dev_pm_ops* %26, null, !dbg !2900
  br i1 %tobool22, label %land.lhs.true23, label %if.end36, !dbg !2904

land.lhs.true23:                                  ; preds = %if.end20
  %27 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2905
  %driver24 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %27, i32 0, i32 8, !dbg !2906
  %pm25 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver24, i32 0, i32 16, !dbg !2907
  %28 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm25, align 8, !dbg !2907
  %resume26 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %28, i32 0, i32 3, !dbg !2908
  %29 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume26, align 8, !dbg !2908
  %tobool27 = icmp ne i32 (%struct.device*)* %29, null, !dbg !2905
  br i1 %tobool27, label %if.then28, label %if.end36, !dbg !2909

if.then28:                                        ; preds = %land.lhs.true23
  %30 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2910
  %driver29 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %30, i32 0, i32 8, !dbg !2912
  %pm30 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver29, i32 0, i32 16, !dbg !2913
  %31 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm30, align 8, !dbg !2913
  %resume31 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %31, i32 0, i32 3, !dbg !2914
  %32 = load i32 (%struct.device*)*, i32 (%struct.device*)** %resume31, align 8, !dbg !2914
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2915
  %call32 = call i32 %32(%struct.device* %33) #6, !dbg !2910
  store i32 %call32, i32* %error, align 4, !dbg !2916
  %34 = load i32, i32* %error, align 4, !dbg !2917
  %tobool33 = icmp ne i32 %34, 0, !dbg !2917
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !2919

if.then34:                                        ; preds = %if.then28
  %35 = load i32, i32* %error, align 4, !dbg !2920
  store i32 %35, i32* %retval, align 4, !dbg !2921
  br label %return, !dbg !2921

if.end35:                                         ; preds = %if.then28
  br label %if.end36, !dbg !2922

if.end36:                                         ; preds = %if.end35, %land.lhs.true23, %if.end20
  %36 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2923
  %resume37 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %36, i32 0, i32 7, !dbg !2925
  %resume38 = bitcast {}** %resume37 to i32 (%struct.pnp_dev*)**, !dbg !2925
  %37 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %resume38, align 8, !dbg !2925
  %tobool39 = icmp ne i32 (%struct.pnp_dev*)* %37, null, !dbg !2923
  br i1 %tobool39, label %if.then40, label %if.end47, !dbg !2926

if.then40:                                        ; preds = %if.end36
  %38 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2927
  %resume41 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %38, i32 0, i32 7, !dbg !2929
  %resume42 = bitcast {}** %resume41 to i32 (%struct.pnp_dev*)**, !dbg !2929
  %39 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %resume42, align 8, !dbg !2929
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2930
  %call43 = call i32 %39(%struct.pnp_dev* %40) #6, !dbg !2927
  store i32 %call43, i32* %error, align 4, !dbg !2931
  %41 = load i32, i32* %error, align 4, !dbg !2932
  %tobool44 = icmp ne i32 %41, 0, !dbg !2932
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2934

if.then45:                                        ; preds = %if.then40
  %42 = load i32, i32* %error, align 4, !dbg !2935
  store i32 %42, i32* %retval, align 4, !dbg !2936
  br label %return, !dbg !2936

if.end46:                                         ; preds = %if.then40
  br label %if.end47, !dbg !2937

if.end47:                                         ; preds = %if.end46, %if.end36
  store i32 0, i32* %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

return:                                           ; preds = %if.end47, %if.then45, %if.then34, %if.then18, %if.then8, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !2939
  ret i32 %43, !dbg !2939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_bus_freeze(%struct.device* %dev) #0 !dbg !2940 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2943
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2944
  store i32 1, i32* %event, align 4, !dbg !2944
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2945
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !2945
  %call = call i32 @__pnp_bus_suspend(%struct.device* %0, i32 %1) #6, !dbg !2945
  ret i32 %call, !dbg !2946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_bus_poweroff(%struct.device* %dev) #0 !dbg !2947 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2950
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2951
  store i32 4, i32* %event, align 4, !dbg !2951
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !2952
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !2952
  %call = call i32 @__pnp_bus_suspend(%struct.device* %0, i32 %1) #6, !dbg !2952
  ret i32 %call, !dbg !2953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__pnp_bus_suspend(%struct.device* %dev, i32 %state.coerce) #0 !dbg !2954 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.device*, align 8
  %pnp_dev = alloca %struct.pnp_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pnp_dev*, align 8
  %pnp_drv = alloca %struct.pnp_driver*, align 8
  %error = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0
  store i32 %state.coerce, i32* %coerce.dive, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.declare(metadata %struct.pm_message* %state, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %pnp_dev, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2961, metadata !DIExpression()), !dbg !2963
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2963
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2963
  store i8* %1, i8** %__mptr, align 8, !dbg !2963
  br label %do.body, !dbg !2963

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2964

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2963
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2963
  %3 = bitcast i8* %add.ptr to %struct.pnp_dev*, !dbg !2963
  store %struct.pnp_dev* %3, %struct.pnp_dev** %tmp, align 8, !dbg !2964
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %tmp, align 8, !dbg !2963
  store %struct.pnp_dev* %4, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.pnp_driver** %pnp_drv, metadata !2966, metadata !DIExpression()), !dbg !2967
  %5 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !2968
  %driver = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %5, i32 0, i32 10, !dbg !2969
  %6 = load %struct.pnp_driver*, %struct.pnp_driver** %driver, align 8, !dbg !2969
  store %struct.pnp_driver* %6, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2970, metadata !DIExpression()), !dbg !2971
  %7 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2972
  %tobool = icmp ne %struct.pnp_driver* %7, null, !dbg !2972
  br i1 %tobool, label %if.end, label %if.then, !dbg !2974

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !2975
  br label %return, !dbg !2975

if.end:                                           ; preds = %do.end
  %8 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2976
  %driver1 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %8, i32 0, i32 8, !dbg !2978
  %pm = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 16, !dbg !2979
  %9 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm, align 8, !dbg !2979
  %tobool2 = icmp ne %struct.dev_pm_ops* %9, null, !dbg !2976
  br i1 %tobool2, label %land.lhs.true, label %if.end18, !dbg !2980

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2981
  %driver3 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %10, i32 0, i32 8, !dbg !2982
  %pm4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver3, i32 0, i32 16, !dbg !2983
  %11 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm4, align 8, !dbg !2983
  %suspend = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %11, i32 0, i32 2, !dbg !2984
  %12 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend, align 8, !dbg !2984
  %tobool5 = icmp ne i32 (%struct.device*)* %12, null, !dbg !2981
  br i1 %tobool5, label %if.then6, label %if.end18, !dbg !2985

if.then6:                                         ; preds = %land.lhs.true
  %13 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2986
  %driver7 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %13, i32 0, i32 8, !dbg !2988
  %pm8 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver7, i32 0, i32 16, !dbg !2989
  %14 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm8, align 8, !dbg !2989
  %suspend9 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %14, i32 0, i32 2, !dbg !2990
  %15 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend9, align 8, !dbg !2990
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2991
  %call = call i32 %15(%struct.device* %16) #6, !dbg !2986
  store i32 %call, i32* %error, align 4, !dbg !2992
  br label %do.body10, !dbg !2993

do.body10:                                        ; preds = %if.then6
  %17 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !2994
  %driver11 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %17, i32 0, i32 8, !dbg !2994
  %pm12 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver11, i32 0, i32 16, !dbg !2994
  %18 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %pm12, align 8, !dbg !2994
  %suspend13 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %18, i32 0, i32 2, !dbg !2994
  %19 = load i32 (%struct.device*)*, i32 (%struct.device*)** %suspend13, align 8, !dbg !2994
  %20 = bitcast i32 (%struct.device*)* %19 to i8*, !dbg !2994
  %21 = load i32, i32* %error, align 4, !dbg !2994
  call void @__suspend_report_result(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.__pnp_bus_suspend, i64 0, i64 0), i8* %20, i32 %21) #6, !dbg !2994
  br label %do.end14, !dbg !2994

do.end14:                                         ; preds = %do.body10
  %22 = load i32, i32* %error, align 4, !dbg !2996
  %tobool15 = icmp ne i32 %22, 0, !dbg !2996
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2998

if.then16:                                        ; preds = %do.end14
  %23 = load i32, i32* %error, align 4, !dbg !2999
  store i32 %23, i32* %retval, align 4, !dbg !3000
  br label %return, !dbg !3000

if.end17:                                         ; preds = %do.end14
  br label %if.end18, !dbg !3001

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %if.end
  %24 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !3002
  %suspend19 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %24, i32 0, i32 6, !dbg !3004
  %25 = load i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*, i32)** %suspend19, align 8, !dbg !3004
  %tobool20 = icmp ne i32 (%struct.pnp_dev*, i32)* %25, null, !dbg !3002
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !3005

if.then21:                                        ; preds = %if.end18
  %26 = load %struct.pnp_driver*, %struct.pnp_driver** %pnp_drv, align 8, !dbg !3006
  %suspend22 = getelementptr inbounds %struct.pnp_driver, %struct.pnp_driver* %26, i32 0, i32 6, !dbg !3008
  %27 = load i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*, i32)** %suspend22, align 8, !dbg !3008
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3009
  %coerce.dive23 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !3006
  %29 = load i32, i32* %coerce.dive23, align 4, !dbg !3006
  %call24 = call i32 %27(%struct.pnp_dev* %28, i32 %29) #6, !dbg !3006
  store i32 %call24, i32* %error, align 4, !dbg !3010
  %30 = load i32, i32* %error, align 4, !dbg !3011
  %tobool25 = icmp ne i32 %30, 0, !dbg !3011
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !3013

if.then26:                                        ; preds = %if.then21
  %31 = load i32, i32* %error, align 4, !dbg !3014
  store i32 %31, i32* %retval, align 4, !dbg !3015
  br label %return, !dbg !3015

if.end27:                                         ; preds = %if.then21
  br label %if.end28, !dbg !3016

if.end28:                                         ; preds = %if.end27, %if.end18
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3017
  %protocol = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %32, i32 0, i32 8, !dbg !3017
  %33 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol, align 8, !dbg !3017
  %disable = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %33, i32 0, i32 4, !dbg !3017
  %disable29 = bitcast {}** %disable to i32 (%struct.pnp_dev*)**, !dbg !3017
  %34 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %disable29, align 8, !dbg !3017
  %tobool30 = icmp ne i32 (%struct.pnp_dev*)* %34, null, !dbg !3017
  br i1 %tobool30, label %land.lhs.true31, label %if.end43, !dbg !3017

land.lhs.true31:                                  ; preds = %if.end28
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3017
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %35, i32 0, i32 14, !dbg !3017
  %36 = load i32, i32* %capabilities, align 4, !dbg !3017
  %and = and i32 %36, 4, !dbg !3017
  %tobool32 = icmp ne i32 %and, 0, !dbg !3017
  br i1 %tobool32, label %land.lhs.true33, label %if.end43, !dbg !3017

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3017
  %capabilities34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %37, i32 0, i32 14, !dbg !3017
  %38 = load i32, i32* %capabilities34, align 4, !dbg !3017
  %and35 = and i32 %38, 32, !dbg !3017
  %tobool36 = icmp ne i32 %and35, 0, !dbg !3017
  br i1 %tobool36, label %lor.lhs.false, label %if.then38, !dbg !3017

lor.lhs.false:                                    ; preds = %land.lhs.true33
  %39 = load i8, i8* @console_suspend_enabled, align 1, !dbg !3017
  %tobool37 = trunc i8 %39 to i1, !dbg !3017
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !3019

if.then38:                                        ; preds = %lor.lhs.false, %land.lhs.true33
  %40 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3020
  %call39 = call i32 @pnp_stop_dev(%struct.pnp_dev* %40) #6, !dbg !3022
  store i32 %call39, i32* %error, align 4, !dbg !3023
  %41 = load i32, i32* %error, align 4, !dbg !3024
  %tobool40 = icmp ne i32 %41, 0, !dbg !3024
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !3026

if.then41:                                        ; preds = %if.then38
  %42 = load i32, i32* %error, align 4, !dbg !3027
  store i32 %42, i32* %retval, align 4, !dbg !3028
  br label %return, !dbg !3028

if.end42:                                         ; preds = %if.then38
  br label %if.end43, !dbg !3029

if.end43:                                         ; preds = %if.end42, %lor.lhs.false, %land.lhs.true31, %if.end28
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3030
  %protocol44 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %43, i32 0, i32 8, !dbg !3030
  %44 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol44, align 8, !dbg !3030
  %suspend45 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %44, i32 0, i32 6, !dbg !3030
  %45 = load i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*, i32)** %suspend45, align 8, !dbg !3030
  %tobool46 = icmp ne i32 (%struct.pnp_dev*, i32)* %45, null, !dbg !3030
  br i1 %tobool46, label %land.lhs.true47, label %if.end58, !dbg !3030

land.lhs.true47:                                  ; preds = %if.end43
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3030
  %capabilities48 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %46, i32 0, i32 14, !dbg !3030
  %47 = load i32, i32* %capabilities48, align 4, !dbg !3030
  %and49 = and i32 %47, 32, !dbg !3030
  %tobool50 = icmp ne i32 %and49, 0, !dbg !3030
  br i1 %tobool50, label %lor.lhs.false51, label %if.then53, !dbg !3030

lor.lhs.false51:                                  ; preds = %land.lhs.true47
  %48 = load i8, i8* @console_suspend_enabled, align 1, !dbg !3030
  %tobool52 = trunc i8 %48 to i1, !dbg !3030
  br i1 %tobool52, label %if.then53, label %if.end58, !dbg !3032

if.then53:                                        ; preds = %lor.lhs.false51, %land.lhs.true47
  %49 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3033
  %protocol54 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %49, i32 0, i32 8, !dbg !3034
  %50 = load %struct.pnp_protocol*, %struct.pnp_protocol** %protocol54, align 8, !dbg !3034
  %suspend55 = getelementptr inbounds %struct.pnp_protocol, %struct.pnp_protocol* %50, i32 0, i32 6, !dbg !3035
  %51 = load i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*, i32)** %suspend55, align 8, !dbg !3035
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %pnp_dev, align 8, !dbg !3036
  %coerce.dive56 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !3033
  %53 = load i32, i32* %coerce.dive56, align 4, !dbg !3033
  %call57 = call i32 %51(%struct.pnp_dev* %52, i32 %53) #6, !dbg !3033
  br label %if.end58, !dbg !3033

if.end58:                                         ; preds = %if.then53, %lor.lhs.false51, %if.end43
  store i32 0, i32* %retval, align 4, !dbg !3037
  br label %return, !dbg !3037

return:                                           ; preds = %if.end58, %if.then41, %if.then26, %if.then16, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !3038
  ret i32 %54, !dbg !3038
}

; Function Attrs: noredzone
declare dso_local void @__suspend_report_result(i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_stop_dev(%struct.pnp_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pnp_start_dev(%struct.pnp_dev*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3039 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3043, metadata !DIExpression()), !dbg !3048
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3050, metadata !DIExpression()), !dbg !3051
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3052, metadata !DIExpression()), !dbg !3053
  %0 = load i64, i64* %size.addr, align 8, !dbg !3054
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3056
  br i1 %1, label %if.then, label %if.end447, !dbg !3057

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3058
  %tobool = icmp ne i64 %2, 0, !dbg !3058
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3061

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3063
  %cmp = icmp ult i64 %3, 4096, !dbg !3065
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3066

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3067
  br label %return, !dbg !3067

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub = sub i64 %4, 1, !dbg !3068
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3068
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3068

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub4 = sub i64 %6, 1, !dbg !3068
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3068
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3068

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub6 = sub i64 %8, 1, !dbg !3068
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3068
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3068

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3068

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub9 = sub i64 %9, 1, !dbg !3068
  %and = and i64 %sub9, -9223372036854775808, !dbg !3068
  %tobool10 = icmp ne i64 %and, 0, !dbg !3068
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3068

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3068

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub13 = sub i64 %10, 1, !dbg !3068
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3068
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3068
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3068

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3068

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub18 = sub i64 %11, 1, !dbg !3068
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3068
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3068
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3068

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3068

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub23 = sub i64 %12, 1, !dbg !3068
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3068
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3068
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3068

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3068

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub28 = sub i64 %13, 1, !dbg !3068
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3068
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3068
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3068

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3068

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub33 = sub i64 %14, 1, !dbg !3068
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3068
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3068
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3068

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3068

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub38 = sub i64 %15, 1, !dbg !3068
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3068
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3068
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3068

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3068

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub43 = sub i64 %16, 1, !dbg !3068
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3068
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3068
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3068

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3068

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub48 = sub i64 %17, 1, !dbg !3068
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3068
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3068
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3068

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3068

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub53 = sub i64 %18, 1, !dbg !3068
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3068
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3068
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3068

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3068

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub58 = sub i64 %19, 1, !dbg !3068
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3068
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3068
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3068

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3068

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub63 = sub i64 %20, 1, !dbg !3068
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3068
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3068
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3068

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3068

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub68 = sub i64 %21, 1, !dbg !3068
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3068
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3068
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3068

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3068

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub73 = sub i64 %22, 1, !dbg !3068
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3068
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3068
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3068

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3068

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub78 = sub i64 %23, 1, !dbg !3068
  %and79 = and i64 %sub78, 562949953421312, !dbg !3068
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3068
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3068

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3068

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub83 = sub i64 %24, 1, !dbg !3068
  %and84 = and i64 %sub83, 281474976710656, !dbg !3068
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3068
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3068

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3068

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub88 = sub i64 %25, 1, !dbg !3068
  %and89 = and i64 %sub88, 140737488355328, !dbg !3068
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3068
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3068

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3068

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub93 = sub i64 %26, 1, !dbg !3068
  %and94 = and i64 %sub93, 70368744177664, !dbg !3068
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3068
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3068

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3068

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub98 = sub i64 %27, 1, !dbg !3068
  %and99 = and i64 %sub98, 35184372088832, !dbg !3068
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3068
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3068

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3068

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub103 = sub i64 %28, 1, !dbg !3068
  %and104 = and i64 %sub103, 17592186044416, !dbg !3068
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3068
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3068

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3068

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub108 = sub i64 %29, 1, !dbg !3068
  %and109 = and i64 %sub108, 8796093022208, !dbg !3068
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3068
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3068

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3068

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub113 = sub i64 %30, 1, !dbg !3068
  %and114 = and i64 %sub113, 4398046511104, !dbg !3068
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3068
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3068

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3068

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub118 = sub i64 %31, 1, !dbg !3068
  %and119 = and i64 %sub118, 2199023255552, !dbg !3068
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3068
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3068

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3068

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub123 = sub i64 %32, 1, !dbg !3068
  %and124 = and i64 %sub123, 1099511627776, !dbg !3068
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3068
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3068

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3068

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub128 = sub i64 %33, 1, !dbg !3068
  %and129 = and i64 %sub128, 549755813888, !dbg !3068
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3068
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3068

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3068

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub133 = sub i64 %34, 1, !dbg !3068
  %and134 = and i64 %sub133, 274877906944, !dbg !3068
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3068
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3068

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3068

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub138 = sub i64 %35, 1, !dbg !3068
  %and139 = and i64 %sub138, 137438953472, !dbg !3068
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3068
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3068

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3068

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub143 = sub i64 %36, 1, !dbg !3068
  %and144 = and i64 %sub143, 68719476736, !dbg !3068
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3068
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3068

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3068

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub148 = sub i64 %37, 1, !dbg !3068
  %and149 = and i64 %sub148, 34359738368, !dbg !3068
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3068
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3068

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3068

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub153 = sub i64 %38, 1, !dbg !3068
  %and154 = and i64 %sub153, 17179869184, !dbg !3068
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3068
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3068

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3068

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub158 = sub i64 %39, 1, !dbg !3068
  %and159 = and i64 %sub158, 8589934592, !dbg !3068
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3068
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3068

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3068

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub163 = sub i64 %40, 1, !dbg !3068
  %and164 = and i64 %sub163, 4294967296, !dbg !3068
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3068
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3068

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3068

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub168 = sub i64 %41, 1, !dbg !3068
  %and169 = and i64 %sub168, 2147483648, !dbg !3068
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3068
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3068

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3068

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub173 = sub i64 %42, 1, !dbg !3068
  %and174 = and i64 %sub173, 1073741824, !dbg !3068
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3068
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3068

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3068

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub178 = sub i64 %43, 1, !dbg !3068
  %and179 = and i64 %sub178, 536870912, !dbg !3068
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3068
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3068

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3068

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub183 = sub i64 %44, 1, !dbg !3068
  %and184 = and i64 %sub183, 268435456, !dbg !3068
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3068
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3068

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3068

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub188 = sub i64 %45, 1, !dbg !3068
  %and189 = and i64 %sub188, 134217728, !dbg !3068
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3068
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3068

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3068

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub193 = sub i64 %46, 1, !dbg !3068
  %and194 = and i64 %sub193, 67108864, !dbg !3068
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3068
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3068

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3068

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub198 = sub i64 %47, 1, !dbg !3068
  %and199 = and i64 %sub198, 33554432, !dbg !3068
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3068
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3068

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3068

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub203 = sub i64 %48, 1, !dbg !3068
  %and204 = and i64 %sub203, 16777216, !dbg !3068
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3068
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3068

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3068

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub208 = sub i64 %49, 1, !dbg !3068
  %and209 = and i64 %sub208, 8388608, !dbg !3068
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3068
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3068

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3068

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub213 = sub i64 %50, 1, !dbg !3068
  %and214 = and i64 %sub213, 4194304, !dbg !3068
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3068
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3068

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3068

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub218 = sub i64 %51, 1, !dbg !3068
  %and219 = and i64 %sub218, 2097152, !dbg !3068
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3068
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3068

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3068

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub223 = sub i64 %52, 1, !dbg !3068
  %and224 = and i64 %sub223, 1048576, !dbg !3068
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3068
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3068

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3068

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub228 = sub i64 %53, 1, !dbg !3068
  %and229 = and i64 %sub228, 524288, !dbg !3068
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3068
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3068

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3068

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub233 = sub i64 %54, 1, !dbg !3068
  %and234 = and i64 %sub233, 262144, !dbg !3068
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3068
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3068

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3068

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub238 = sub i64 %55, 1, !dbg !3068
  %and239 = and i64 %sub238, 131072, !dbg !3068
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3068
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3068

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3068

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub243 = sub i64 %56, 1, !dbg !3068
  %and244 = and i64 %sub243, 65536, !dbg !3068
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3068
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3068

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3068

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub248 = sub i64 %57, 1, !dbg !3068
  %and249 = and i64 %sub248, 32768, !dbg !3068
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3068
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3068

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3068

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub253 = sub i64 %58, 1, !dbg !3068
  %and254 = and i64 %sub253, 16384, !dbg !3068
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3068
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3068

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3068

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub258 = sub i64 %59, 1, !dbg !3068
  %and259 = and i64 %sub258, 8192, !dbg !3068
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3068
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3068

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3068

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub263 = sub i64 %60, 1, !dbg !3068
  %and264 = and i64 %sub263, 4096, !dbg !3068
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3068
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3068

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3068

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub268 = sub i64 %61, 1, !dbg !3068
  %and269 = and i64 %sub268, 2048, !dbg !3068
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3068
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3068

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3068

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub273 = sub i64 %62, 1, !dbg !3068
  %and274 = and i64 %sub273, 1024, !dbg !3068
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3068
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3068

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3068

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub278 = sub i64 %63, 1, !dbg !3068
  %and279 = and i64 %sub278, 512, !dbg !3068
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3068
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3068

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3068

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub283 = sub i64 %64, 1, !dbg !3068
  %and284 = and i64 %sub283, 256, !dbg !3068
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3068
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3068

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3068

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub288 = sub i64 %65, 1, !dbg !3068
  %and289 = and i64 %sub288, 128, !dbg !3068
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3068
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3068

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3068

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub293 = sub i64 %66, 1, !dbg !3068
  %and294 = and i64 %sub293, 64, !dbg !3068
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3068
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3068

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3068

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub298 = sub i64 %67, 1, !dbg !3068
  %and299 = and i64 %sub298, 32, !dbg !3068
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3068
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3068

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3068

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub303 = sub i64 %68, 1, !dbg !3068
  %and304 = and i64 %sub303, 16, !dbg !3068
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3068
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3068

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3068

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub308 = sub i64 %69, 1, !dbg !3068
  %and309 = and i64 %sub308, 8, !dbg !3068
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3068
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3068

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3068

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub313 = sub i64 %70, 1, !dbg !3068
  %and314 = and i64 %sub313, 4, !dbg !3068
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3068
  %71 = zext i1 %tobool315 to i64, !dbg !3068
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3068
  br label %cond.end, !dbg !3068

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3068
  br label %cond.end317, !dbg !3068

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3068
  br label %cond.end319, !dbg !3068

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3068
  br label %cond.end321, !dbg !3068

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3068
  br label %cond.end323, !dbg !3068

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3068
  br label %cond.end325, !dbg !3068

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3068
  br label %cond.end327, !dbg !3068

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3068
  br label %cond.end329, !dbg !3068

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3068
  br label %cond.end331, !dbg !3068

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3068
  br label %cond.end333, !dbg !3068

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3068
  br label %cond.end335, !dbg !3068

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3068
  br label %cond.end337, !dbg !3068

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3068
  br label %cond.end339, !dbg !3068

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3068
  br label %cond.end341, !dbg !3068

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3068
  br label %cond.end343, !dbg !3068

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3068
  br label %cond.end345, !dbg !3068

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3068
  br label %cond.end347, !dbg !3068

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3068
  br label %cond.end349, !dbg !3068

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3068
  br label %cond.end351, !dbg !3068

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3068
  br label %cond.end353, !dbg !3068

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3068
  br label %cond.end355, !dbg !3068

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3068
  br label %cond.end357, !dbg !3068

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3068
  br label %cond.end359, !dbg !3068

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3068
  br label %cond.end361, !dbg !3068

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3068
  br label %cond.end363, !dbg !3068

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3068
  br label %cond.end365, !dbg !3068

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3068
  br label %cond.end367, !dbg !3068

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3068
  br label %cond.end369, !dbg !3068

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3068
  br label %cond.end371, !dbg !3068

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3068
  br label %cond.end373, !dbg !3068

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3068
  br label %cond.end375, !dbg !3068

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3068
  br label %cond.end377, !dbg !3068

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3068
  br label %cond.end379, !dbg !3068

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3068
  br label %cond.end381, !dbg !3068

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3068
  br label %cond.end383, !dbg !3068

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3068
  br label %cond.end385, !dbg !3068

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3068
  br label %cond.end387, !dbg !3068

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3068
  br label %cond.end389, !dbg !3068

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3068
  br label %cond.end391, !dbg !3068

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3068
  br label %cond.end393, !dbg !3068

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3068
  br label %cond.end395, !dbg !3068

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3068
  br label %cond.end397, !dbg !3068

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3068
  br label %cond.end399, !dbg !3068

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3068
  br label %cond.end401, !dbg !3068

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3068
  br label %cond.end403, !dbg !3068

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3068
  br label %cond.end405, !dbg !3068

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3068
  br label %cond.end407, !dbg !3068

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3068
  br label %cond.end409, !dbg !3068

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3068
  br label %cond.end411, !dbg !3068

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3068
  br label %cond.end413, !dbg !3068

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3068
  br label %cond.end415, !dbg !3068

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3068
  br label %cond.end417, !dbg !3068

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3068
  br label %cond.end419, !dbg !3068

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3068
  br label %cond.end421, !dbg !3068

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3068
  br label %cond.end423, !dbg !3068

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3068
  br label %cond.end425, !dbg !3068

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3068
  br label %cond.end427, !dbg !3068

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3068
  br label %cond.end429, !dbg !3068

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3068
  br label %cond.end431, !dbg !3068

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3068
  br label %cond.end433, !dbg !3068

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3068
  br label %cond.end435, !dbg !3068

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3068
  br label %cond.end437, !dbg !3068

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3068
  br label %cond.end440, !dbg !3068

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3068

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3068
  br label %cond.end444, !dbg !3068

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3068
  %sub443 = sub i64 %72, 1, !dbg !3068
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3068
  br label %cond.end444, !dbg !3068

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3068
  %sub446 = sub i32 %cond445, 12, !dbg !3069
  %add = add i32 %sub446, 1, !dbg !3070
  store i32 %add, i32* %retval, align 4, !dbg !3071
  br label %return, !dbg !3071

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3072
  %dec = add i64 %73, -1, !dbg !3072
  store i64 %dec, i64* %size.addr, align 8, !dbg !3072
  %74 = load i64, i64* %size.addr, align 8, !dbg !3073
  %shr = lshr i64 %74, 12, !dbg !3073
  store i64 %shr, i64* %size.addr, align 8, !dbg !3073
  %75 = load i64, i64* %size.addr, align 8, !dbg !3074
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3051
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3075
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3076
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3075, !srcloc !3077
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3075
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3078
  %add.i = add i32 %79, 1, !dbg !3079
  store i32 %add.i, i32* %retval, align 4, !dbg !3080
  br label %return, !dbg !3080

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3081
  ret i32 %80, !dbg !3081
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3082 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3043, metadata !DIExpression()), !dbg !3086
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3050, metadata !DIExpression()), !dbg !3088
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  %0 = load i64, i64* %n.addr, align 8, !dbg !3091
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3088
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3092
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3093
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3092, !srcloc !3077
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3092
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3094
  %add.i = add i32 %4, 1, !dbg !3095
  %sub = sub i32 %add.i, 1, !dbg !3096
  ret i32 %sub, !dbg !3097
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3098 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3107, metadata !DIExpression()), !dbg !3108
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3109
  ret i8* %0, !dbg !3110
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2074, !2075, !2076, !2077}
!llvm.ident = !{!2078}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_bus_dev_pm_ops", scope: !2, file: !3, line: 246, type: !1593, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !2071, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/driver.c", directory: "/home/lizy2001/genbc/linux")
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !51, line: 305, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!57 = !{!58, !60, !61, !62, !63, !1993}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 148, baseType: !7)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !65, line: 243, size: 7488, elements: !66)
!65 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1965, !1992, !2018, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !64, file: !65, line: 244, baseType: !68, size: 5568)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !69)
!69 = !{!70, !1565, !1567, !1570, !1571, !1622, !1719, !1720, !1721, !1722, !1723, !1732, !1837, !1850, !1853, !1854, !1858, !1860, !1861, !1862, !1866, !1872, !1873, !1876, !1880, !1883, !1886, !1887, !1888, !1889, !1921, !1922, !1923, !1926, !1929, !1930, !1931, !1932}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !68, file: !30, line: 462, baseType: !71, size: 512)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !72, line: 64, size: 512, elements: !73)
!72 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !78, !84, !86, !146, !1402, !1555, !1560, !1561, !1562, !1563, !1564}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !71, file: !72, line: 65, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !71, file: !72, line: 66, baseType: !79, size: 128, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 178, size: 128, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !59, line: 179, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !79, file: !59, line: 179, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !72, line: 67, baseType: !85, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !71, file: !72, line: 68, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !72, line: 192, size: 704, elements: !89)
!89 = !{!90, !91, !107, !108}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !88, file: !72, line: 193, baseType: !79, size: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !88, file: !72, line: 194, baseType: !92, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !93, line: 83, baseType: !94)
!93 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !93, line: 71, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 72, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 72, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !97, file: !93, line: 73, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !93, line: 20, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !100, file: !93, line: 21, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !104, line: 25, baseType: !105)
!104 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 25, elements: !106)
!106 = !{}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !88, file: !72, line: 195, baseType: !71, size: 512, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !88, file: !72, line: 196, baseType: !109, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !72, line: 156, size: 192, elements: !112)
!112 = !{!113, !118, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !111, file: !72, line: 157, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!60, !87, !85}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !72, line: 158, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!75, !87, !85}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !111, file: !72, line: 159, baseType: !124, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!60, !87, !85, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !72, line: 148, size: 20736, elements: !130)
!130 = !{!131, !136, !140, !141, !145}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !129, file: !72, line: 149, baseType: !132, size: 192)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 192, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!134 = !{!135}
!135 = !DISubrange(count: 3)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !129, file: !72, line: 150, baseType: !137, size: 4096, offset: 192)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4096, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !129, file: !72, line: 151, baseType: !60, size: 32, offset: 4288)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !129, file: !72, line: 152, baseType: !142, size: 16384, offset: 4320)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 16384, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 2048)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !129, file: !72, line: 153, baseType: !60, size: 32, offset: 20704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !71, file: !72, line: 69, baseType: !147, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !72, line: 138, size: 448, elements: !149)
!149 = !{!150, !154, !184, !186, !1348, !1381, !1385}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !72, line: 139, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !85}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !148, file: !72, line: 140, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !158, line: 230, size: 128, elements: !159)
!158 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !176}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !157, file: !158, line: 231, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !85, !169, !133}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !59, line: 60, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !166, line: 73, baseType: !167)
!166 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !166, line: 15, baseType: !168)
!168 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !158, line: 30, size: 128, elements: !171)
!171 = !{!172, !173}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !158, line: 31, baseType: !75, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !170, file: !158, line: 32, baseType: !174, size: 16, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !59, line: 19, baseType: !175)
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !157, file: !158, line: 232, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!164, !85, !169, !75, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 55, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !166, line: 72, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !166, line: 16, baseType: !183)
!183 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !148, file: !72, line: 141, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !148, file: !72, line: 142, baseType: !187, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !158, line: 84, size: 320, elements: !191)
!191 = !{!192, !193, !197, !1345, !1346}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !158, line: 85, baseType: !75, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !190, file: !158, line: 86, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!174, !85, !169, !60}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !190, file: !158, line: 88, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!174, !85, !201, !60}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !158, line: 168, size: 448, elements: !203)
!203 = !{!204, !205, !206, !207, !217, !218}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !202, file: !158, line: 169, baseType: !170, size: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !202, file: !158, line: 170, baseType: !180, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !202, file: !158, line: 171, baseType: !62, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !202, file: !158, line: 172, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!164, !211, !85, !201, !133, !214, !180}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !213, line: 526, flags: DIFlagFwdDecl)
!213 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !59, line: 46, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !166, line: 88, baseType: !216)
!216 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !202, file: !158, line: 174, baseType: !208, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !202, file: !158, line: 176, baseType: !219, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!60, !211, !85, !201, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !224, line: 305, size: 1472, elements: !225)
!224 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !228, !229, !230, !238, !239, !1319, !1325, !1326, !1331, !1332, !1335, !1339, !1340, !1341, !1342, !1343}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !223, file: !224, line: 308, baseType: !183, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !223, file: !224, line: 309, baseType: !183, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !223, file: !224, line: 313, baseType: !222, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !223, file: !224, line: 313, baseType: !222, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !223, file: !224, line: 315, baseType: !231, size: 192, align: 64, offset: 256)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !232, line: 24, size: 192, align: 64, elements: !233)
!232 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !235, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !231, file: !232, line: 25, baseType: !183, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !231, file: !232, line: 26, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !231, file: !232, line: 27, baseType: !236, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !223, file: !224, line: 323, baseType: !183, size: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !223, file: !224, line: 327, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !224, line: 388, size: 7296, elements: !242)
!242 = !{!243, !1315}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !224, line: 389, baseType: !244, size: 7296)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !224, line: 389, size: 7296, elements: !245)
!245 = !{!246, !247, !251, !257, !261, !262, !263, !264, !265, !273, !278, !279, !280, !281, !290, !291, !292, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !335, !338, !386, !387, !1285, !1286, !1289, !1293, !1294, !1297, !1298, !1299, !1302, !1314}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !244, file: !224, line: 390, baseType: !222, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !244, file: !224, line: 391, baseType: !248, size: 64, offset: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !232, line: 31, size: 64, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !248, file: !232, line: 32, baseType: !236, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !244, file: !224, line: 392, baseType: !252, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !253, line: 23, baseType: !254)
!253 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !255, line: 31, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!256 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !244, file: !224, line: 394, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!183, !211, !183, !183, !183, !183}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !244, file: !224, line: 398, baseType: !183, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !244, file: !224, line: 399, baseType: !183, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !244, file: !224, line: 405, baseType: !183, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !244, file: !224, line: 406, baseType: !183, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !244, file: !224, line: 407, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !213, line: 286, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 286, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !268, file: !213, line: 286, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !272, line: 18, baseType: !183)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !244, file: !224, line: 416, baseType: !274, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 168, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 166, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !275, file: !59, line: 167, baseType: !60, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !244, file: !224, line: 428, baseType: !274, size: 32, offset: 608)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !244, file: !224, line: 437, baseType: !274, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !244, file: !224, line: 447, baseType: !274, size: 32, offset: 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !244, file: !224, line: 450, baseType: !282, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !283, line: 13, baseType: !284)
!283 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 175, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 173, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !59, line: 174, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !253, line: 22, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !255, line: 30, baseType: !216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !244, file: !224, line: 452, baseType: !60, size: 32, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !244, file: !224, line: 454, baseType: !92, offset: 800)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !244, file: !224, line: 457, baseType: !293, size: 256, offset: 832)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !294, line: 35, size: 256, elements: !295)
!294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !297, !298, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !293, file: !294, line: 36, baseType: !282, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !293, file: !294, line: 42, baseType: !282, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !293, file: !294, line: 46, baseType: !299, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !93, line: 29, baseType: !100)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !293, file: !294, line: 47, baseType: !79, size: 128, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !244, file: !224, line: 459, baseType: !79, size: 128, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !244, file: !224, line: 466, baseType: !183, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !244, file: !224, line: 467, baseType: !183, size: 64, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !244, file: !224, line: 469, baseType: !183, size: 64, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !244, file: !224, line: 470, baseType: !183, size: 64, offset: 1408)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !244, file: !224, line: 471, baseType: !284, size: 64, offset: 1472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !244, file: !224, line: 472, baseType: !183, size: 64, offset: 1536)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !244, file: !224, line: 473, baseType: !183, size: 64, offset: 1600)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !244, file: !224, line: 474, baseType: !183, size: 64, offset: 1664)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !244, file: !224, line: 475, baseType: !183, size: 64, offset: 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !244, file: !224, line: 477, baseType: !92, offset: 1792)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !244, file: !224, line: 478, baseType: !183, size: 64, offset: 1792)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !244, file: !224, line: 478, baseType: !183, size: 64, offset: 1856)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !244, file: !224, line: 478, baseType: !183, size: 64, offset: 1920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !244, file: !224, line: 478, baseType: !183, size: 64, offset: 1984)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !244, file: !224, line: 479, baseType: !183, size: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !244, file: !224, line: 479, baseType: !183, size: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !244, file: !224, line: 479, baseType: !183, size: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !244, file: !224, line: 480, baseType: !183, size: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !244, file: !224, line: 480, baseType: !183, size: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !244, file: !224, line: 480, baseType: !183, size: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !244, file: !224, line: 480, baseType: !183, size: 64, offset: 2432)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !244, file: !224, line: 482, baseType: !324, size: 2816, offset: 2496)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 2816, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 44)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !244, file: !224, line: 488, baseType: !328, size: 256, offset: 5312)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !329, line: 60, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !328, file: !329, line: 61, baseType: !332, size: 256)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 4)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !244, file: !224, line: 490, baseType: !336, size: 64, offset: 5568)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !224, line: 490, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !244, file: !224, line: 493, baseType: !339, size: 896, offset: 5632)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !340, line: 53, baseType: !341)
!340 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 13, size: 896, elements: !342)
!342 = !{!343, !344, !345, !346, !349, !350, !357, !358, !378, !379, !382}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !341, file: !340, line: 18, baseType: !252, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !341, file: !340, line: 28, baseType: !284, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !341, file: !340, line: 31, baseType: !293, size: 256, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !341, file: !340, line: 32, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !340, line: 32, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !341, file: !340, line: 37, baseType: !175, size: 16, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !340, line: 40, baseType: !351, size: 192, offset: 512)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !352, line: 53, size: 192, elements: !353)
!352 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 54, baseType: !282, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 55, baseType: !92, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 59, baseType: !79, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !341, file: !340, line: 41, baseType: !62, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !341, file: !340, line: 42, baseType: !359, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !362, line: 13, size: 896, elements: !363)
!362 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !361, file: !362, line: 14, baseType: !62, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !362, line: 15, baseType: !183, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !361, file: !362, line: 17, baseType: !183, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !361, file: !362, line: 17, baseType: !183, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !361, file: !362, line: 19, baseType: !168, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !361, file: !362, line: 21, baseType: !168, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !361, file: !362, line: 22, baseType: !168, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !361, file: !362, line: 23, baseType: !168, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !361, file: !362, line: 24, baseType: !168, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !361, file: !362, line: 25, baseType: !168, size: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !361, file: !362, line: 26, baseType: !168, size: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !361, file: !362, line: 27, baseType: !168, size: 64, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !361, file: !362, line: 28, baseType: !168, size: 64, offset: 768)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !361, file: !362, line: 29, baseType: !168, size: 64, offset: 832)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !341, file: !340, line: 44, baseType: !274, size: 32, offset: 832)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !341, file: !340, line: 50, baseType: !380, size: 16, offset: 864)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !253, line: 19, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !255, line: 24, baseType: !175)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !341, file: !340, line: 51, baseType: !383, size: 16, offset: 880)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !253, line: 18, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !255, line: 23, baseType: !385)
!385 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !224, line: 495, baseType: !183, size: 64, offset: 6528)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !244, file: !224, line: 497, baseType: !388, size: 64, offset: 6592)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !224, line: 381, size: 384, elements: !390)
!390 = !{!391, !392, !1284}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !389, file: !224, line: 382, baseType: !274, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !389, file: !224, line: 383, baseType: !393, size: 128, offset: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !224, line: 376, size: 128, elements: !394)
!394 = !{!395, !1282}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !393, file: !224, line: 377, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !398, line: 640, size: 48640, elements: !399)
!398 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!399 = !{!400, !408, !410, !411, !417, !418, !419, !420, !421, !422, !423, !424, !428, !446, !457, !551, !552, !553, !564, !565, !567, !568, !569, !570, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !649, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !705, !707, !708, !709, !721, !723, !724, !725, !726, !727, !733, !734, !735, !736, !737, !738, !739, !751, !756, !761, !762, !763, !766, !770, !773, !776, !779, !782, !786, !789, !792, !798, !799, !800, !806, !807, !808, !809, !810, !819, !820, !821, !822, !823, !828, !829, !830, !833, !834, !837, !840, !843, !846, !849, !852, !853, !933, !936, !939, !940, !943, !944, !945, !951, !952, !953, !966, !967, !968, !980, !985, !988, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !397, file: !398, line: 646, baseType: !401, size: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !402, line: 56, size: 128, elements: !403)
!402 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !402, line: 57, baseType: !183, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !401, file: !402, line: 58, baseType: !406, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !253, line: 21, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !255, line: 27, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !398, line: 649, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !168)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !397, file: !398, line: 657, baseType: !62, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !397, file: !398, line: 658, baseType: !412, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !413, line: 113, baseType: !414)
!413 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !413, line: 111, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !414, file: !413, line: 112, baseType: !274, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !398, line: 660, baseType: !7, size: 32, offset: 288)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !397, file: !398, line: 661, baseType: !7, size: 32, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !397, file: !398, line: 684, baseType: !60, size: 32, offset: 352)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !397, file: !398, line: 686, baseType: !60, size: 32, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !397, file: !398, line: 687, baseType: !60, size: 32, offset: 416)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !397, file: !398, line: 688, baseType: !60, size: 32, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !397, file: !398, line: 689, baseType: !7, size: 32, offset: 480)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !397, file: !398, line: 691, baseType: !425, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !398, line: 691, flags: DIFlagFwdDecl)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !397, file: !398, line: 692, baseType: !429, size: 832, offset: 576)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !398, line: 451, size: 832, elements: !430)
!430 = !{!431, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !429, file: !398, line: 453, baseType: !432, size: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !398, line: 325, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !432, file: !398, line: 326, baseType: !183, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !432, file: !398, line: 327, baseType: !406, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !429, file: !398, line: 454, baseType: !231, size: 192, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !429, file: !398, line: 455, baseType: !79, size: 128, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !429, file: !398, line: 456, baseType: !7, size: 32, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !429, file: !398, line: 458, baseType: !252, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !429, file: !398, line: 459, baseType: !252, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !429, file: !398, line: 460, baseType: !252, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !429, file: !398, line: 461, baseType: !252, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !429, file: !398, line: 463, baseType: !252, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !429, file: !398, line: 465, baseType: !445, offset: 832)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !398, line: 415, elements: !106)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !397, file: !398, line: 693, baseType: !447, size: 384, offset: 1408)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !398, line: 489, size: 384, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !447, file: !398, line: 490, baseType: !79, size: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !447, file: !398, line: 491, baseType: !183, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !447, file: !398, line: 492, baseType: !183, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !447, file: !398, line: 493, baseType: !7, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !447, file: !398, line: 494, baseType: !175, size: 16, offset: 288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !447, file: !398, line: 495, baseType: !175, size: 16, offset: 304)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !447, file: !398, line: 497, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !397, file: !398, line: 697, baseType: !458, size: 1792, offset: 1792)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !398, line: 507, size: 1792, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !548, !549}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !458, file: !398, line: 508, baseType: !231, size: 192, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !458, file: !398, line: 515, baseType: !252, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !458, file: !398, line: 516, baseType: !252, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !458, file: !398, line: 517, baseType: !252, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !458, file: !398, line: 518, baseType: !252, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !458, file: !398, line: 519, baseType: !252, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !458, file: !398, line: 526, baseType: !288, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !458, file: !398, line: 527, baseType: !252, size: 64, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !398, line: 528, baseType: !7, size: 32, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !458, file: !398, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !458, file: !398, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !458, file: !398, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !458, file: !398, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !458, file: !398, line: 563, baseType: !474, size: 512, offset: 704)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !475)
!475 = !{!476, !484, !485, !490, !542, !545, !546, !547}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !6, line: 119, baseType: !477, size: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !478, line: 9, size: 256, elements: !479)
!478 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !478, line: 10, baseType: !231, size: 192, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !477, file: !478, line: 11, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !483, line: 29, baseType: !288)
!483 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !474, file: !6, line: 120, baseType: !482, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !474, file: !6, line: 121, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!5, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !474, file: !6, line: 122, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !493)
!493 = !{!494, !514, !515, !518, !528, !529, !537, !541}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !492, file: !6, line: 160, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !496, file: !6, line: 215, baseType: !299)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !496, file: !6, line: 216, baseType: !7, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !496, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !496, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !496, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !496, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !496, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !496, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !496, file: !6, line: 233, baseType: !482, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !496, file: !6, line: 234, baseType: !489, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !496, file: !6, line: 235, baseType: !482, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !496, file: !6, line: 236, baseType: !489, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !496, file: !6, line: 237, baseType: !511, size: 4096, offset: 512)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 4096, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 8)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !492, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !492, file: !6, line: 162, baseType: !516, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !59, line: 27, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !166, line: 96, baseType: !60)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !492, file: !6, line: 163, baseType: !519, size: 32, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !520, line: 276, baseType: !521)
!520 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !520, line: 276, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !521, file: !520, line: 276, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !520, line: 70, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !520, line: 65, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !525, file: !520, line: 66, baseType: !7, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !492, file: !6, line: 164, baseType: !489, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !492, file: !6, line: 165, baseType: !530, size: 128, offset: 256)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !478, line: 14, size: 128, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !530, file: !478, line: 15, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !232, line: 125, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !533, file: !232, line: 126, baseType: !248, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !533, file: !232, line: 127, baseType: !236, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !492, file: !6, line: 166, baseType: !538, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!482}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !492, file: !6, line: 167, baseType: !482, size: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !474, file: !6, line: 123, baseType: !543, size: 8, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !253, line: 17, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !255, line: 21, baseType: !61)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !474, file: !6, line: 124, baseType: !543, size: 8, offset: 456)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !474, file: !6, line: 125, baseType: !543, size: 8, offset: 464)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !474, file: !6, line: 126, baseType: !543, size: 8, offset: 472)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !458, file: !398, line: 572, baseType: !474, size: 512, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !458, file: !398, line: 580, baseType: !550, size: 64, offset: 1728)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !397, file: !398, line: 721, baseType: !7, size: 32, offset: 3584)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !397, file: !398, line: 722, baseType: !60, size: 32, offset: 3616)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !397, file: !398, line: 723, baseType: !554, size: 64, offset: 3648)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !557, line: 17, baseType: !558)
!557 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !557, line: 17, size: 64, elements: !559)
!559 = !{!560}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !558, file: !557, line: 17, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 1)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !397, file: !398, line: 724, baseType: !556, size: 64, offset: 3712)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !397, file: !398, line: 749, baseType: !566, offset: 3776)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !398, line: 290, elements: !106)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !397, file: !398, line: 751, baseType: !79, size: 128, offset: 3776)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !397, file: !398, line: 757, baseType: !240, size: 64, offset: 3904)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !397, file: !398, line: 758, baseType: !240, size: 64, offset: 3968)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !397, file: !398, line: 761, baseType: !571, size: 320, offset: 4032)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !329, line: 34, size: 320, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !571, file: !329, line: 35, baseType: !252, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !571, file: !329, line: 36, baseType: !575, size: 256, offset: 64)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !333)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !397, file: !398, line: 766, baseType: !60, size: 32, offset: 4352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !397, file: !398, line: 767, baseType: !60, size: 32, offset: 4384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !397, file: !398, line: 768, baseType: !60, size: 32, offset: 4416)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !397, file: !398, line: 770, baseType: !60, size: 32, offset: 4448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !397, file: !398, line: 772, baseType: !183, size: 64, offset: 4480)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !397, file: !398, line: 775, baseType: !7, size: 32, offset: 4544)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !397, file: !398, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !397, file: !398, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !397, file: !398, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !397, file: !398, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !397, file: !398, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !397, file: !398, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !397, file: !398, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !397, file: !398, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !397, file: !398, line: 831, baseType: !183, size: 64, offset: 4672)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !397, file: !398, line: 833, baseType: !592, size: 384, offset: 4736)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !593)
!593 = !{!594, !599}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !592, file: !12, line: 26, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!168, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !12, line: 27, baseType: !600, size: 320, offset: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !592, file: !12, line: 27, size: 320, elements: !601)
!601 = !{!602, !612, !639}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !600, file: !12, line: 36, baseType: !603, size: 320)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !600, file: !12, line: 29, size: 320, elements: !604)
!604 = !{!605, !607, !608, !609, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !603, file: !12, line: 30, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !603, file: !12, line: 31, baseType: !406, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !12, line: 32, baseType: !406, size: 32, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !603, file: !12, line: 33, baseType: !406, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !603, file: !12, line: 34, baseType: !252, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !603, file: !12, line: 35, baseType: !606, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !600, file: !12, line: 46, baseType: !613, size: 192)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !600, file: !12, line: 38, size: 192, elements: !614)
!614 = !{!615, !616, !617, !638}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !613, file: !12, line: 39, baseType: !516, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !613, file: !12, line: 41, baseType: !618, size: 64, offset: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !12, line: 41, size: 64, elements: !619)
!619 = !{!620, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !618, file: !12, line: 42, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !623, line: 7, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !627}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !622, file: !623, line: 8, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !166, line: 93, baseType: !216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !622, file: !623, line: 9, baseType: !216, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !618, file: !12, line: 43, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !631, line: 7, size: 64, elements: !632)
!631 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !630, file: !631, line: 8, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !631, line: 5, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !253, line: 20, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !255, line: 26, baseType: !60)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !630, file: !631, line: 9, baseType: !635, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !613, file: !12, line: 45, baseType: !252, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !600, file: !12, line: 54, baseType: !640, size: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !600, file: !12, line: 48, size: 256, elements: !641)
!641 = !{!642, !645, !646, !647, !648}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !640, file: !12, line: 49, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !640, file: !12, line: 50, baseType: !60, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !640, file: !12, line: 51, baseType: !60, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !640, file: !12, line: 52, baseType: !183, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !640, file: !12, line: 53, baseType: !183, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !397, file: !398, line: 835, baseType: !650, size: 32, offset: 5120)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !59, line: 22, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !166, line: 28, baseType: !60)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !397, file: !398, line: 836, baseType: !650, size: 32, offset: 5152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !397, file: !398, line: 840, baseType: !183, size: 64, offset: 5184)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !397, file: !398, line: 849, baseType: !396, size: 64, offset: 5248)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !397, file: !398, line: 852, baseType: !396, size: 64, offset: 5312)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !397, file: !398, line: 857, baseType: !79, size: 128, offset: 5376)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !397, file: !398, line: 858, baseType: !79, size: 128, offset: 5504)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !397, file: !398, line: 859, baseType: !396, size: 64, offset: 5632)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !397, file: !398, line: 867, baseType: !79, size: 128, offset: 5696)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !397, file: !398, line: 868, baseType: !79, size: 128, offset: 5824)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !397, file: !398, line: 871, baseType: !662, size: 64, offset: 5952)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !664, line: 59, size: 768, elements: !665)
!664 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!665 = !{!666, !667, !668, !669, !680, !681, !688, !697}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !663, file: !664, line: 61, baseType: !412, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !663, file: !664, line: 62, baseType: !7, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !664, line: 63, baseType: !92, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !663, file: !664, line: 65, baseType: !670, size: 256, offset: 64)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !333)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !59, line: 182, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !671, file: !59, line: 183, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !59, line: 186, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !59, line: 187, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !675, file: !59, line: 187, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !663, file: !664, line: 66, baseType: !671, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !663, file: !664, line: 68, baseType: !682, size: 128, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !683, line: 40, baseType: !684)
!683 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !683, line: 36, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !683, line: 37, baseType: !92)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !684, file: !683, line: 38, baseType: !79, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !663, file: !664, line: 69, baseType: !689, size: 128, align: 64, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !59, line: 216, size: 128, align: 64, elements: !690)
!690 = !{!691, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !59, line: 217, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !689, file: !59, line: 218, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !692}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !663, file: !664, line: 70, baseType: !698, size: 128, offset: 640)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 128, elements: !562)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !664, line: 54, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !699, file: !664, line: 55, baseType: !60, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !699, file: !664, line: 56, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !664, line: 56, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !397, file: !398, line: 872, baseType: !706, size: 512, offset: 6016)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 512, elements: !333)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !397, file: !398, line: 873, baseType: !79, size: 128, offset: 6528)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !397, file: !398, line: 874, baseType: !79, size: 128, offset: 6656)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !397, file: !398, line: 876, baseType: !710, size: 64, offset: 6784)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !712, line: 26, size: 192, elements: !713)
!712 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !711, file: !712, line: 27, baseType: !7, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !711, file: !712, line: 28, baseType: !716, size: 128, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !717, line: 43, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !717, line: 44, baseType: !299)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !716, file: !717, line: 45, baseType: !79, size: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !397, file: !398, line: 879, baseType: !722, size: 64, offset: 6848)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !397, file: !398, line: 882, baseType: !722, size: 64, offset: 6912)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !397, file: !398, line: 884, baseType: !252, size: 64, offset: 6976)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !397, file: !398, line: 885, baseType: !252, size: 64, offset: 7040)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !397, file: !398, line: 890, baseType: !252, size: 64, offset: 7104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !397, file: !398, line: 891, baseType: !728, size: 128, offset: 7168)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !398, line: 242, size: 128, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !728, file: !398, line: 244, baseType: !252, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !728, file: !398, line: 245, baseType: !252, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !398, line: 246, baseType: !299, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !397, file: !398, line: 900, baseType: !183, size: 64, offset: 7296)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !397, file: !398, line: 901, baseType: !183, size: 64, offset: 7360)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !397, file: !398, line: 904, baseType: !252, size: 64, offset: 7424)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !397, file: !398, line: 907, baseType: !252, size: 64, offset: 7488)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !397, file: !398, line: 910, baseType: !183, size: 64, offset: 7552)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !397, file: !398, line: 911, baseType: !183, size: 64, offset: 7616)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !397, file: !398, line: 914, baseType: !740, size: 640, offset: 7680)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !741, line: 123, size: 640, elements: !742)
!741 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !749, !750}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !740, file: !741, line: 124, baseType: !744, size: 576)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 576, elements: !134)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !741, line: 108, size: 192, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !745, file: !741, line: 109, baseType: !252, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !745, file: !741, line: 110, baseType: !530, size: 128, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !740, file: !741, line: 125, baseType: !7, size: 32, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !740, file: !741, line: 126, baseType: !7, size: 32, offset: 608)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !397, file: !398, line: 917, baseType: !752, size: 192, offset: 8320)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !741, line: 134, size: 192, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !752, file: !741, line: 135, baseType: !689, size: 128, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !752, file: !741, line: 136, baseType: !7, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !397, file: !398, line: 923, baseType: !757, size: 64, offset: 8512)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !760, line: 11, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !397, file: !398, line: 926, baseType: !757, size: 64, offset: 8576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !397, file: !398, line: 929, baseType: !757, size: 64, offset: 8640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !397, file: !398, line: 933, baseType: !764, size: 64, offset: 8704)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !398, line: 933, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !397, file: !398, line: 943, baseType: !767, size: 128, offset: 8768)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 16)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !397, file: !398, line: 945, baseType: !771, size: 64, offset: 8896)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !398, line: 49, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !397, file: !398, line: 956, baseType: !774, size: 64, offset: 8960)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !398, line: 45, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !397, file: !398, line: 959, baseType: !777, size: 64, offset: 9024)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !398, line: 959, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !397, file: !398, line: 962, baseType: !780, size: 64, offset: 9088)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !398, line: 66, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !397, file: !398, line: 966, baseType: !783, size: 64, offset: 9152)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !785, line: 35, flags: DIFlagFwdDecl)
!785 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !397, file: !398, line: 969, baseType: !787, size: 64, offset: 9216)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !741, line: 223, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !397, file: !398, line: 970, baseType: !790, size: 64, offset: 9280)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !398, line: 62, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !397, file: !398, line: 971, baseType: !793, size: 64, offset: 9344)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !794, line: 25, baseType: !795)
!794 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 23, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !795, file: !794, line: 24, baseType: !561, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !397, file: !398, line: 972, baseType: !793, size: 64, offset: 9408)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !397, file: !398, line: 974, baseType: !793, size: 64, offset: 9472)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !397, file: !398, line: 975, baseType: !801, size: 192, offset: 9536)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !802, line: 30, size: 192, elements: !803)
!802 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !801, file: !802, line: 31, baseType: !79, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !801, file: !802, line: 32, baseType: !793, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !397, file: !398, line: 976, baseType: !183, size: 64, offset: 9728)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !397, file: !398, line: 977, baseType: !180, size: 64, offset: 9792)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !397, file: !398, line: 978, baseType: !7, size: 32, offset: 9856)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !397, file: !398, line: 980, baseType: !692, size: 64, offset: 9920)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !397, file: !398, line: 989, baseType: !811, size: 128, offset: 9984)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !812, line: 35, size: 128, elements: !813)
!812 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !811, file: !812, line: 36, baseType: !60, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !811, file: !812, line: 37, baseType: !274, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !811, file: !812, line: 38, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !812, line: 23, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !397, file: !398, line: 992, baseType: !252, size: 64, offset: 10112)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !397, file: !398, line: 993, baseType: !252, size: 64, offset: 10176)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !397, file: !398, line: 996, baseType: !92, offset: 10240)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !397, file: !398, line: 999, baseType: !299, offset: 10240)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !397, file: !398, line: 1001, baseType: !824, size: 64, offset: 10240)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !398, line: 636, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !398, line: 637, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !397, file: !398, line: 1005, baseType: !533, size: 128, offset: 10304)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !397, file: !398, line: 1007, baseType: !396, size: 64, offset: 10432)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !397, file: !398, line: 1009, baseType: !831, size: 64, offset: 10496)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !398, line: 1009, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !397, file: !398, line: 1043, baseType: !62, size: 64, offset: 10560)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !397, file: !398, line: 1046, baseType: !835, size: 64, offset: 10624)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !398, line: 41, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !397, file: !398, line: 1050, baseType: !838, size: 64, offset: 10688)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !398, line: 42, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !397, file: !398, line: 1054, baseType: !841, size: 64, offset: 10752)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !398, line: 55, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !397, file: !398, line: 1056, baseType: !844, size: 64, offset: 10816)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !398, line: 40, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !397, file: !398, line: 1058, baseType: !847, size: 64, offset: 10880)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !398, line: 47, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !397, file: !398, line: 1061, baseType: !850, size: 64, offset: 10944)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !398, line: 43, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !397, file: !398, line: 1064, baseType: !183, size: 64, offset: 11008)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !397, file: !398, line: 1065, baseType: !854, size: 64, offset: 11072)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !802, line: 14, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !802, line: 12, size: 384, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !802, line: 13, baseType: !859, size: 384)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !856, file: !802, line: 13, size: 384, elements: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !859, file: !802, line: 13, baseType: !60, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !859, file: !802, line: 13, baseType: !60, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !859, file: !802, line: 13, baseType: !60, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !859, file: !802, line: 13, baseType: !865, size: 256, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !866, line: 32, size: 256, elements: !867)
!866 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !874, !887, !893, !902, !922, !927}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !865, file: !866, line: 37, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 34, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !869, file: !866, line: 35, baseType: !651, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !869, file: !866, line: 36, baseType: !873, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !166, line: 49, baseType: !7)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !865, file: !866, line: 45, baseType: !875, size: 192)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 40, size: 192, elements: !876)
!876 = !{!877, !879, !880, !886}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !875, file: !866, line: 41, baseType: !878, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !166, line: 95, baseType: !60)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !875, file: !866, line: 42, baseType: !60, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !875, file: !866, line: 43, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !866, line: 11, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !866, line: 8, size: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !882, file: !866, line: 9, baseType: !60, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !882, file: !866, line: 10, baseType: !62, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !875, file: !866, line: 44, baseType: !60, size: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !865, file: !866, line: 52, baseType: !888, size: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 48, size: 128, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !888, file: !866, line: 49, baseType: !651, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !888, file: !866, line: 50, baseType: !873, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !888, file: !866, line: 51, baseType: !881, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !865, file: !866, line: 61, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 55, size: 256, elements: !895)
!895 = !{!896, !897, !898, !899, !901}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !894, file: !866, line: 56, baseType: !651, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !894, file: !866, line: 57, baseType: !873, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !894, file: !866, line: 58, baseType: !60, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !894, file: !866, line: 59, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !166, line: 94, baseType: !167)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !894, file: !866, line: 60, baseType: !900, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !865, file: !866, line: 95, baseType: !903, size: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 64, size: 256, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !903, file: !866, line: 65, baseType: !62, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !866, line: 77, baseType: !907, size: 192, offset: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !866, line: 77, size: 192, elements: !908)
!908 = !{!909, !910, !917}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !907, file: !866, line: 82, baseType: !385, size: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !907, file: !866, line: 88, baseType: !911, size: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !866, line: 84, size: 192, elements: !912)
!912 = !{!913, !915, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !911, file: !866, line: 85, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !911, file: !866, line: 86, baseType: !62, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !911, file: !866, line: 87, baseType: !62, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !907, file: !866, line: 93, baseType: !918, size: 96)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !866, line: 90, size: 96, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !918, file: !866, line: 91, baseType: !914, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !918, file: !866, line: 92, baseType: !407, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !865, file: !866, line: 101, baseType: !923, size: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 98, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !923, file: !866, line: 99, baseType: !168, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !923, file: !866, line: 100, baseType: !60, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !865, file: !866, line: 108, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 104, size: 128, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !928, file: !866, line: 105, baseType: !62, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !928, file: !866, line: 106, baseType: !60, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !928, file: !866, line: 107, baseType: !7, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !397, file: !398, line: 1067, baseType: !934, offset: 11136)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !935, line: 12, elements: !106)
!935 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!936 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !397, file: !398, line: 1099, baseType: !937, size: 64, offset: 11136)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !398, line: 56, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !397, file: !398, line: 1103, baseType: !79, size: 128, offset: 11200)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !397, file: !398, line: 1104, baseType: !941, size: 64, offset: 11328)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !398, line: 46, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !397, file: !398, line: 1105, baseType: !351, size: 192, offset: 11392)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !397, file: !398, line: 1106, baseType: !7, size: 32, offset: 11584)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !397, file: !398, line: 1109, baseType: !946, size: 128, offset: 11648)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 128, elements: !949)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !398, line: 51, flags: DIFlagFwdDecl)
!949 = !{!950}
!950 = !DISubrange(count: 2)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !397, file: !398, line: 1110, baseType: !351, size: 192, offset: 11776)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !397, file: !398, line: 1111, baseType: !79, size: 128, offset: 11968)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !397, file: !398, line: 1173, baseType: !954, size: 64, offset: 12096)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !956, line: 62, size: 256, align: 256, elements: !957)
!956 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!957 = !{!958, !959, !960, !965}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !955, file: !956, line: 75, baseType: !407, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !955, file: !956, line: 90, baseType: !407, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !955, file: !956, line: 124, baseType: !961, size: 64, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !956, line: 109, size: 64, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !961, file: !956, line: 110, baseType: !254, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !961, file: !956, line: 112, baseType: !254, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 144, baseType: !407, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !397, file: !398, line: 1174, baseType: !406, size: 32, offset: 12160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !397, file: !398, line: 1179, baseType: !183, size: 64, offset: 12224)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !397, file: !398, line: 1182, baseType: !969, size: 128, offset: 12288)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !329, line: 76, size: 128, elements: !970)
!970 = !{!971, !976, !979}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !969, file: !329, line: 85, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !973, line: 7, size: 64, elements: !974)
!973 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !972, file: !973, line: 12, baseType: !558, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !969, file: !329, line: 88, baseType: !977, size: 8, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 30, baseType: !978)
!978 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !969, file: !329, line: 95, baseType: !977, size: 8, offset: 72)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !398, line: 1184, baseType: !981, size: 128, offset: 12416)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !398, line: 1184, size: 128, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !981, file: !398, line: 1185, baseType: !412, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !981, file: !398, line: 1186, baseType: !689, size: 128, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !397, file: !398, line: 1190, baseType: !986, size: 64, offset: 12544)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !398, line: 53, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !397, file: !398, line: 1192, baseType: !989, size: 128, offset: 12608)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !329, line: 64, size: 128, elements: !990)
!990 = !{!991, !1084, !1085}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !989, file: !329, line: 65, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !224, line: 68, size: 512, align: 128, elements: !994)
!994 = !{!995, !996, !1076, !1083}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !993, file: !224, line: 69, baseType: !183, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !224, line: 77, baseType: !997, size: 320, offset: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !224, line: 77, size: 320, elements: !998)
!998 = !{!999, !1008, !1013, !1041, !1049, !1055, !1068, !1075}
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 78, baseType: !1000, size: 320)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 78, size: 320, elements: !1001)
!1001 = !{!1002, !1003, !1006, !1007}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1000, file: !224, line: 84, baseType: !79, size: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1000, file: !224, line: 86, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !224, line: 26, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1000, file: !224, line: 87, baseType: !183, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1000, file: !224, line: 94, baseType: !183, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 96, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 96, size: 64, elements: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1009, file: !224, line: 101, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !59, line: 143, baseType: !252)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 103, baseType: !1014, size: 320)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 103, size: 320, elements: !1015)
!1015 = !{!1016, !1026, !1029, !1030}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !224, line: 104, baseType: !1017, size: 128)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !224, line: 104, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1017, file: !224, line: 105, baseType: !79, size: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !224, line: 106, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !224, line: 106, size: 128, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !224, line: 107, baseType: !992, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1021, file: !224, line: 109, baseType: !60, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1021, file: !224, line: 110, baseType: !60, size: 32, offset: 96)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1014, file: !224, line: 117, baseType: !1027, size: 64, offset: 128)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !224, line: 117, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1014, file: !224, line: 119, baseType: !62, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !224, line: 120, baseType: !1031, size: 64, offset: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !224, line: 120, size: 64, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1031, file: !224, line: 121, baseType: !62, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1031, file: !224, line: 122, baseType: !183, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !224, line: 123, baseType: !1036, size: 32)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1031, file: !224, line: 123, size: 32, elements: !1037)
!1037 = !{!1038, !1039, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1036, file: !224, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1036, file: !224, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1036, file: !224, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 130, baseType: !1042, size: 192)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 130, size: 192, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1042, file: !224, line: 131, baseType: !183, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1042, file: !224, line: 134, baseType: !61, size: 8, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1042, file: !224, line: 135, baseType: !61, size: 8, offset: 72)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1042, file: !224, line: 136, baseType: !274, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1042, file: !224, line: 137, baseType: !7, size: 32, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 139, baseType: !1050, size: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 139, size: 256, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1050, file: !224, line: 140, baseType: !183, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1050, file: !224, line: 141, baseType: !274, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1050, file: !224, line: 143, baseType: !79, size: 128, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 145, baseType: !1056, size: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 145, size: 256, elements: !1057)
!1057 = !{!1058, !1059, !1061, !1062, !1067}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1056, file: !224, line: 146, baseType: !183, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1056, file: !224, line: 147, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !213, line: 509, baseType: !992)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1056, file: !224, line: 148, baseType: !183, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !224, line: 149, baseType: !1063, size: 64, offset: 192)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !224, line: 149, size: 64, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1063, file: !224, line: 150, baseType: !240, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1063, file: !224, line: 151, baseType: !274, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1056, file: !224, line: 156, baseType: !92, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !997, file: !224, line: 159, baseType: !1069, size: 128)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !997, file: !224, line: 159, size: 128, elements: !1070)
!1070 = !{!1071, !1074}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1069, file: !224, line: 161, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !224, line: 161, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1069, file: !224, line: 162, baseType: !62, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !997, file: !224, line: 176, baseType: !689, size: 128, align: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !224, line: 179, baseType: !1077, size: 32, offset: 384)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !224, line: 179, size: 32, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1077, file: !224, line: 184, baseType: !274, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1077, file: !224, line: 192, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1077, file: !224, line: 194, baseType: !7, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1077, file: !224, line: 195, baseType: !60, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !993, file: !224, line: 199, baseType: !274, size: 32, offset: 416)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !989, file: !329, line: 67, baseType: !407, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !989, file: !329, line: 68, baseType: !407, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !397, file: !398, line: 1206, baseType: !60, size: 32, offset: 12736)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !397, file: !398, line: 1207, baseType: !60, size: 32, offset: 12768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !397, file: !398, line: 1209, baseType: !183, size: 64, offset: 12800)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !397, file: !398, line: 1219, baseType: !252, size: 64, offset: 12864)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !397, file: !398, line: 1220, baseType: !252, size: 64, offset: 12928)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !397, file: !398, line: 1317, baseType: !60, size: 32, offset: 12992)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !397, file: !398, line: 1319, baseType: !396, size: 64, offset: 13056)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !397, file: !398, line: 1322, baseType: !1094, size: 64, offset: 13120)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1096, line: 9, flags: DIFlagFwdDecl)
!1096 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !397, file: !398, line: 1326, baseType: !412, size: 32, offset: 13184)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !397, file: !398, line: 1342, baseType: !62, size: 64, offset: 13248)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !397, file: !398, line: 1343, baseType: !254, size: 64, offset: 13312)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !397, file: !398, line: 1344, baseType: !252, size: 64, offset: 13376)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !397, file: !398, line: 1345, baseType: !254, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !397, file: !398, line: 1346, baseType: !254, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !397, file: !398, line: 1347, baseType: !254, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !397, file: !398, line: 1348, baseType: !689, size: 128, align: 64, offset: 13504)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !397, file: !398, line: 1358, baseType: !1106, size: 34816, offset: 13824)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1107, line: 485, size: 34816, elements: !1108)
!1107 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !{!1109, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1139, !1140, !1141, !1142, !1143, !1146, !1147, !1148}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1106, file: !1107, line: 487, baseType: !1110, size: 192)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, size: 192, elements: !134)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1112, line: 16, size: 64, elements: !1113)
!1112 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1111, file: !1112, line: 17, baseType: !380, size: 16)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1111, file: !1112, line: 18, baseType: !380, size: 16, offset: 16)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1111, file: !1112, line: 19, baseType: !380, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1111, file: !1112, line: 19, baseType: !380, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1111, file: !1112, line: 19, baseType: !380, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1111, file: !1112, line: 19, baseType: !380, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1111, file: !1112, line: 19, baseType: !380, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1111, file: !1112, line: 20, baseType: !380, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1111, file: !1112, line: 20, baseType: !380, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1111, file: !1112, line: 20, baseType: !380, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1111, file: !1112, line: 20, baseType: !380, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1111, file: !1112, line: 20, baseType: !380, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1111, file: !1112, line: 20, baseType: !380, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1106, file: !1107, line: 491, baseType: !183, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1106, file: !1107, line: 495, baseType: !175, size: 16, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1106, file: !1107, line: 496, baseType: !175, size: 16, offset: 272)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1106, file: !1107, line: 497, baseType: !175, size: 16, offset: 288)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1106, file: !1107, line: 498, baseType: !175, size: 16, offset: 304)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1106, file: !1107, line: 502, baseType: !183, size: 64, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1106, file: !1107, line: 503, baseType: !183, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1106, file: !1107, line: 514, baseType: !1135, size: 256, offset: 448)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 256, elements: !333)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1107, line: 483, flags: DIFlagFwdDecl)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1106, file: !1107, line: 516, baseType: !183, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1106, file: !1107, line: 518, baseType: !183, size: 64, offset: 768)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1106, file: !1107, line: 520, baseType: !183, size: 64, offset: 832)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1106, file: !1107, line: 521, baseType: !183, size: 64, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1106, file: !1107, line: 522, baseType: !183, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1106, file: !1107, line: 528, baseType: !1144, size: 64, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1107, line: 10, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1106, file: !1107, line: 535, baseType: !183, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1106, file: !1107, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1106, file: !1107, line: 540, baseType: !1149, size: 33280, offset: 1536)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1150, line: 317, size: 33280, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1149, file: !1150, line: 330, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1149, file: !1150, line: 337, baseType: !183, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1149, file: !1150, line: 348, baseType: !1155, size: 32768, offset: 512)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1150, line: 304, size: 32768, elements: !1156)
!1156 = !{!1157, !1172, !1211, !1261, !1278}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1155, file: !1150, line: 305, baseType: !1158, size: 896)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1150, line: 12, size: 896, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1171}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1158, file: !1150, line: 13, baseType: !406, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1158, file: !1150, line: 14, baseType: !406, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1158, file: !1150, line: 15, baseType: !406, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1158, file: !1150, line: 16, baseType: !406, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1158, file: !1150, line: 17, baseType: !406, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1158, file: !1150, line: 18, baseType: !406, size: 32, offset: 160)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1158, file: !1150, line: 19, baseType: !406, size: 32, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1158, file: !1150, line: 22, baseType: !1168, size: 640, offset: 224)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 640, elements: !1169)
!1169 = !{!1170}
!1170 = !DISubrange(count: 20)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1158, file: !1150, line: 25, baseType: !406, size: 32, offset: 864)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1155, file: !1150, line: 306, baseType: !1173, size: 4096, align: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1150, line: 34, size: 4096, align: 128, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1194, !1195, !1196, !1200, !1202, !1206}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1173, file: !1150, line: 35, baseType: !380, size: 16)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1173, file: !1150, line: 36, baseType: !380, size: 16, offset: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1173, file: !1150, line: 37, baseType: !380, size: 16, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1173, file: !1150, line: 38, baseType: !380, size: 16, offset: 48)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1150, line: 39, baseType: !1180, size: 128, offset: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1150, line: 39, size: 128, elements: !1181)
!1181 = !{!1182, !1187}
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1150, line: 40, baseType: !1183, size: 128)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1150, line: 40, size: 128, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1183, file: !1150, line: 41, baseType: !252, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1183, file: !1150, line: 42, baseType: !252, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1150, line: 44, baseType: !1188, size: 128)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1180, file: !1150, line: 44, size: 128, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1188, file: !1150, line: 45, baseType: !406, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1188, file: !1150, line: 46, baseType: !406, size: 32, offset: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1188, file: !1150, line: 47, baseType: !406, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1188, file: !1150, line: 48, baseType: !406, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1173, file: !1150, line: 51, baseType: !406, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1173, file: !1150, line: 52, baseType: !406, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1173, file: !1150, line: 55, baseType: !1197, size: 1024, offset: 256)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 1024, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1173, file: !1150, line: 58, baseType: !1201, size: 2048, offset: 1280)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 2048, elements: !138)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1173, file: !1150, line: 60, baseType: !1203, size: 384, offset: 3328)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 384, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 12)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !1150, line: 62, baseType: !1207, size: 384, offset: 3712)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !1150, line: 62, size: 384, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1207, file: !1150, line: 63, baseType: !1203, size: 384)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1207, file: !1150, line: 64, baseType: !1203, size: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1155, file: !1150, line: 307, baseType: !1212, size: 1088)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1150, line: 79, size: 1088, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1260}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1212, file: !1150, line: 80, baseType: !406, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1212, file: !1150, line: 81, baseType: !406, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1212, file: !1150, line: 82, baseType: !406, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1212, file: !1150, line: 83, baseType: !406, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1212, file: !1150, line: 84, baseType: !406, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1212, file: !1150, line: 85, baseType: !406, size: 32, offset: 160)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1212, file: !1150, line: 86, baseType: !406, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1212, file: !1150, line: 88, baseType: !1168, size: 640, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1212, file: !1150, line: 89, baseType: !543, size: 8, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1212, file: !1150, line: 90, baseType: !543, size: 8, offset: 872)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1212, file: !1150, line: 91, baseType: !543, size: 8, offset: 880)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1212, file: !1150, line: 92, baseType: !543, size: 8, offset: 888)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1212, file: !1150, line: 93, baseType: !543, size: 8, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1212, file: !1150, line: 94, baseType: !543, size: 8, offset: 904)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1212, file: !1150, line: 95, baseType: !1229, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1231, line: 11, size: 128, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1230, file: !1231, line: 12, baseType: !168, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1230, file: !1231, line: 13, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1237, line: 56, size: 1344, elements: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1236, file: !1237, line: 61, baseType: !183, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1236, file: !1237, line: 62, baseType: !183, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1236, file: !1237, line: 63, baseType: !183, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1236, file: !1237, line: 64, baseType: !183, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1236, file: !1237, line: 65, baseType: !183, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1236, file: !1237, line: 66, baseType: !183, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1236, file: !1237, line: 68, baseType: !183, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1236, file: !1237, line: 69, baseType: !183, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1236, file: !1237, line: 70, baseType: !183, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1236, file: !1237, line: 71, baseType: !183, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1236, file: !1237, line: 72, baseType: !183, size: 64, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1236, file: !1237, line: 73, baseType: !183, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1236, file: !1237, line: 74, baseType: !183, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1236, file: !1237, line: 75, baseType: !183, size: 64, offset: 832)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1236, file: !1237, line: 76, baseType: !183, size: 64, offset: 896)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1236, file: !1237, line: 81, baseType: !183, size: 64, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1236, file: !1237, line: 83, baseType: !183, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1236, file: !1237, line: 84, baseType: !183, size: 64, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1237, line: 85, baseType: !183, size: 64, offset: 1152)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1236, file: !1237, line: 86, baseType: !183, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1236, file: !1237, line: 87, baseType: !183, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1212, file: !1150, line: 96, baseType: !406, size: 32, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1155, file: !1150, line: 308, baseType: !1262, size: 4608, align: 512)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1150, line: 289, size: 4608, align: 512, elements: !1263)
!1263 = !{!1264, !1265, !1274}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1262, file: !1150, line: 290, baseType: !1173, size: 4096, align: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1262, file: !1150, line: 291, baseType: !1266, size: 512, offset: 4096)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1150, line: 268, size: 512, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1266, file: !1150, line: 269, baseType: !252, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1266, file: !1150, line: 270, baseType: !252, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1266, file: !1150, line: 271, baseType: !1271, size: 384, offset: 128)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 384, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 6)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1262, file: !1150, line: 292, baseType: !1275, offset: 4608)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 0)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1155, file: !1150, line: 309, baseType: !1279, size: 32768)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 32768, elements: !1280)
!1280 = !{!1281}
!1281 = !DISubrange(count: 4096)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !224, line: 378, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !389, file: !224, line: 384, baseType: !711, size: 192, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !244, file: !224, line: 500, baseType: !92, offset: 6656)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !244, file: !224, line: 501, baseType: !1287, size: 64, offset: 6656)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !224, line: 387, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !244, file: !224, line: 516, baseType: !1290, size: 64, offset: 6720)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1292, line: 18, flags: DIFlagFwdDecl)
!1292 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !244, file: !224, line: 519, baseType: !211, size: 64, offset: 6784)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !244, file: !224, line: 521, baseType: !1295, size: 64, offset: 6848)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !224, line: 521, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !244, file: !224, line: 545, baseType: !274, size: 32, offset: 6912)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !244, file: !224, line: 548, baseType: !977, size: 8, offset: 6944)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !244, file: !224, line: 550, baseType: !1300, offset: 6952)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1301, line: 142, elements: !106)
!1301 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !244, file: !224, line: 554, baseType: !1303, size: 256, offset: 6976)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1304, line: 102, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1303, file: !1304, line: 103, baseType: !282, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1303, file: !1304, line: 104, baseType: !79, size: 128, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1303, file: !1304, line: 105, baseType: !1309, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1304, line: 21, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !244, file: !224, line: 557, baseType: !406, size: 32, offset: 7232)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !241, file: !224, line: 565, baseType: !1316, offset: 7296)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: -1)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !223, file: !224, line: 333, baseType: !1320, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !213, line: 284, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !213, line: 284, size: 64, elements: !1322)
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1321, file: !213, line: 284, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !272, line: 19, baseType: !183)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !223, file: !224, line: 334, baseType: !183, size: 64, offset: 640)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !223, file: !224, line: 343, baseType: !1327, size: 256, offset: 704)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !224, line: 340, size: 256, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1327, file: !224, line: 341, baseType: !231, size: 192, align: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1327, file: !224, line: 342, baseType: !183, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !223, file: !224, line: 351, baseType: !79, size: 128, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !223, file: !224, line: 353, baseType: !1333, size: 64, offset: 1088)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !224, line: 353, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !223, file: !224, line: 356, baseType: !1336, size: 64, offset: 1152)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !224, line: 356, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !223, file: !224, line: 359, baseType: !183, size: 64, offset: 1216)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !223, file: !224, line: 361, baseType: !211, size: 64, offset: 1280)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !223, file: !224, line: 362, baseType: !62, size: 64, offset: 1344)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !223, file: !224, line: 365, baseType: !282, size: 64, offset: 1408)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !223, file: !224, line: 373, baseType: !1344, offset: 1472)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !224, line: 296, elements: !106)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !190, file: !158, line: 90, baseType: !185, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !190, file: !158, line: 91, baseType: !1347, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !148, file: !72, line: 143, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !85}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1355)
!1355 = !{!1356, !1357, !1361, !1365, !1373, !1377}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1354, file: !18, line: 40, baseType: !17, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1354, file: !18, line: 41, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!977}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1354, file: !18, line: 42, baseType: !1362, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!62}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1354, file: !18, line: 43, baseType: !1366, size: 64, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1354, file: !18, line: 44, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1369}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1354, file: !18, line: 45, baseType: !1378, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !62}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !148, file: !72, line: 144, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!1369, !85}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !148, file: !72, line: 145, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !85, !1389, !1395}
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1292, line: 23, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 21, size: 32, elements: !1392)
!1392 = !{!1393}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1391, file: !1292, line: 22, baseType: !1394, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !59, line: 32, baseType: !873)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1292, line: 28, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1292, line: 26, size: 32, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1397, file: !1292, line: 27, baseType: !1400, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !59, line: 33, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !166, line: 50, baseType: !7)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !71, file: !72, line: 70, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1405, line: 123, size: 1024, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1548, !1549, !1550, !1551, !1552}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1404, file: !1405, line: 124, baseType: !274, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1404, file: !1405, line: 125, baseType: !274, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1404, file: !1405, line: 135, baseType: !1403, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1404, file: !1405, line: 136, baseType: !75, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1404, file: !1405, line: 138, baseType: !231, size: 192, align: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1404, file: !1405, line: 140, baseType: !1369, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1404, file: !1405, line: 141, baseType: !7, size: 32, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1404, file: !1405, line: 142, baseType: !1415, size: 256, offset: 512)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1404, file: !1405, line: 142, size: 256, elements: !1416)
!1416 = !{!1417, !1471, !1475}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1415, file: !1405, line: 143, baseType: !1418, size: 192)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1405, line: 91, size: 192, elements: !1419)
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1418, file: !1405, line: 92, baseType: !183, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1418, file: !1405, line: 94, baseType: !248, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1418, file: !1405, line: 100, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1405, line: 180, size: 704, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1441, !1442, !1443, !1469, !1470}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1424, file: !1405, line: 182, baseType: !1403, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1405, line: 183, baseType: !7, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1424, file: !1405, line: 186, baseType: !1429, size: 192, offset: 128)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1430, line: 19, size: 192, elements: !1431)
!1430 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1431 = !{!1432, !1439, !1440}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1429, file: !1430, line: 20, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1434, line: 292, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1433, file: !1434, line: 293, baseType: !92)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1433, file: !1434, line: 295, baseType: !58, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1433, file: !1434, line: 296, baseType: !62, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1429, file: !1430, line: 21, baseType: !7, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1429, file: !1430, line: 22, baseType: !7, size: 32, offset: 160)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1424, file: !1405, line: 187, baseType: !406, size: 32, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1424, file: !1405, line: 188, baseType: !406, size: 32, offset: 352)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1424, file: !1405, line: 189, baseType: !1444, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1405, line: 168, size: 320, elements: !1446)
!1446 = !{!1447, !1453, !1457, !1461, !1465}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1445, file: !1405, line: 169, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!60, !1451, !1423}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !213, line: 539, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1445, file: !1405, line: 171, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!60, !1403, !75, !174}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1445, file: !1405, line: 173, baseType: !1458, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!60, !1403}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1445, file: !1405, line: 174, baseType: !1462, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!60, !1403, !1403, !75}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1445, file: !1405, line: 176, baseType: !1466, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!60, !1451, !1403, !1423}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1424, file: !1405, line: 192, baseType: !79, size: 128, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1424, file: !1405, line: 194, baseType: !682, size: 128, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1415, file: !1405, line: 144, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1405, line: 103, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1472, file: !1405, line: 104, baseType: !1403, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1415, file: !1405, line: 145, baseType: !1476, size: 256)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1405, line: 107, size: 256, elements: !1477)
!1477 = !{!1478, !1543, !1546, !1547}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1476, file: !1405, line: 108, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1405, line: 217, size: 768, elements: !1482)
!1482 = !{!1483, !1503, !1507, !1511, !1516, !1520, !1524, !1528, !1529, !1530, !1531, !1539}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1481, file: !1405, line: 222, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!60, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1405, line: 197, size: 1088, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1488, file: !1405, line: 199, baseType: !1403, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1488, file: !1405, line: 200, baseType: !211, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1488, file: !1405, line: 201, baseType: !1451, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1488, file: !1405, line: 202, baseType: !62, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1488, file: !1405, line: 205, baseType: !351, size: 192, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1488, file: !1405, line: 206, baseType: !351, size: 192, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1488, file: !1405, line: 207, baseType: !60, size: 32, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1488, file: !1405, line: 208, baseType: !79, size: 128, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1488, file: !1405, line: 209, baseType: !133, size: 64, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1488, file: !1405, line: 211, baseType: !180, size: 64, offset: 896)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1488, file: !1405, line: 212, baseType: !977, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1488, file: !1405, line: 213, baseType: !977, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1488, file: !1405, line: 214, baseType: !1336, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1481, file: !1405, line: 223, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1487}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1481, file: !1405, line: 236, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!60, !1451, !62}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1481, file: !1405, line: 238, baseType: !1512, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!62, !1451, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1481, file: !1405, line: 239, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!62, !1451, !62, !1515}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1481, file: !1405, line: 240, baseType: !1521, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1451, !62}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1481, file: !1405, line: 242, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!164, !1487, !133, !180, !214}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1481, file: !1405, line: 252, baseType: !180, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1481, file: !1405, line: 259, baseType: !977, size: 8, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1481, file: !1405, line: 260, baseType: !1525, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1481, file: !1405, line: 263, baseType: !1532, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1535, !1487, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1536, line: 52, baseType: !7)
!1536 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1405, line: 27, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1481, file: !1405, line: 266, baseType: !1540, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!60, !1487, !222}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1476, file: !1405, line: 109, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1405, line: 31, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1476, file: !1405, line: 110, baseType: !214, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1476, file: !1405, line: 111, baseType: !1403, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1404, file: !1405, line: 148, baseType: !62, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1404, file: !1405, line: 154, baseType: !252, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1405, line: 156, baseType: !175, size: 16, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1404, file: !1405, line: 157, baseType: !174, size: 16, offset: 912)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1404, file: !1405, line: 158, baseType: !1553, size: 64, offset: 960)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1405, line: 32, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !71, file: !72, line: 71, baseType: !1556, size: 32, offset: 448)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1557, line: 19, size: 32, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1556, file: !1557, line: 20, baseType: !412, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !71, file: !72, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !71, file: !72, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !71, file: !72, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !71, file: !72, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !71, file: !72, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !68, file: !30, line: 463, baseType: !1566, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !68, file: !30, line: 465, baseType: !1568, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !68, file: !30, line: 467, baseType: !75, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !30, line: 468, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1582, !1587, !1591}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1574, file: !30, line: 88, baseType: !75, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1574, file: !30, line: 89, baseType: !187, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1574, file: !30, line: 90, baseType: !1579, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!60, !1566, !128}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1574, file: !30, line: 91, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!133, !1566, !1586, !1389, !1395}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1574, file: !30, line: 93, baseType: !1588, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{null, !1566}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1574, file: !30, line: 95, baseType: !1592, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1594)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1595)
!1595 = !{!1596, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1594, file: !37, line: 279, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!60, !1566}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1594, file: !37, line: 280, baseType: !1588, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1594, file: !37, line: 281, baseType: !1597, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1594, file: !37, line: 282, baseType: !1597, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1594, file: !37, line: 283, baseType: !1597, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1594, file: !37, line: 284, baseType: !1597, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1594, file: !37, line: 285, baseType: !1597, size: 64, offset: 384)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1594, file: !37, line: 286, baseType: !1597, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1594, file: !37, line: 287, baseType: !1597, size: 64, offset: 512)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1594, file: !37, line: 288, baseType: !1597, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1594, file: !37, line: 289, baseType: !1597, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1594, file: !37, line: 290, baseType: !1597, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1594, file: !37, line: 291, baseType: !1597, size: 64, offset: 768)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1594, file: !37, line: 292, baseType: !1597, size: 64, offset: 832)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1594, file: !37, line: 293, baseType: !1597, size: 64, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1594, file: !37, line: 294, baseType: !1597, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1594, file: !37, line: 295, baseType: !1597, size: 64, offset: 1024)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1594, file: !37, line: 296, baseType: !1597, size: 64, offset: 1088)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1594, file: !37, line: 297, baseType: !1597, size: 64, offset: 1152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1594, file: !37, line: 298, baseType: !1597, size: 64, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1594, file: !37, line: 299, baseType: !1597, size: 64, offset: 1280)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1594, file: !37, line: 300, baseType: !1597, size: 64, offset: 1344)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1594, file: !37, line: 301, baseType: !1597, size: 64, offset: 1408)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !68, file: !30, line: 470, baseType: !1623, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1625, line: 82, size: 1408, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1712, !1715, !1718}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1624, file: !1625, line: 83, baseType: !75, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1624, file: !1625, line: 84, baseType: !75, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1624, file: !1625, line: 85, baseType: !1566, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1624, file: !1625, line: 86, baseType: !187, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1624, file: !1625, line: 87, baseType: !187, size: 64, offset: 256)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1624, file: !1625, line: 88, baseType: !187, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1624, file: !1625, line: 90, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!60, !1566, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1639)
!1639 = !{!1640, !1641, !1642, !1646, !1647, !1648, !1649, !1663, !1676, !1677, !1678, !1679, !1680, !1688, !1689, !1690, !1691, !1692, !1693}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !24, line: 96, baseType: !75, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1638, file: !24, line: 97, baseType: !1623, size: 64, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1638, file: !24, line: 99, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1645, line: 189, flags: DIFlagFwdDecl)
!1645 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1638, file: !24, line: 100, baseType: !75, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1638, file: !24, line: 102, baseType: !977, size: 8, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1638, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1638, file: !24, line: 105, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1653, line: 262, size: 1600, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1654 = !{!1655, !1657, !1658, !1662}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !1653, line: 263, baseType: !1656, size: 256)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !1198)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1652, file: !1653, line: 264, baseType: !1656, size: 256, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1652, file: !1653, line: 265, baseType: !1659, size: 1024, offset: 512)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1652, file: !1653, line: 266, baseType: !1369, size: 64, offset: 1536)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1638, file: !24, line: 106, baseType: !1664, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1653, line: 210, size: 256, elements: !1667)
!1667 = !{!1668, !1672, !1674, !1675}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1666, file: !1653, line: 211, baseType: !1669, size: 72)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 72, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 9)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1666, file: !1653, line: 212, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1653, line: 14, baseType: !183)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1666, file: !1653, line: 213, baseType: !407, size: 32, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1666, file: !1653, line: 214, baseType: !407, size: 32, offset: 224)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1638, file: !24, line: 108, baseType: !1597, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1638, file: !24, line: 109, baseType: !1588, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1638, file: !24, line: 110, baseType: !1597, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1638, file: !24, line: 111, baseType: !1588, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1638, file: !24, line: 112, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!60, !1566, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1685, file: !37, line: 51, baseType: !60, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1638, file: !24, line: 113, baseType: !1597, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1638, file: !24, line: 114, baseType: !187, size: 64, offset: 832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1638, file: !24, line: 115, baseType: !187, size: 64, offset: 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !24, line: 117, baseType: !1592, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1638, file: !24, line: 118, baseType: !1588, size: 64, offset: 1024)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1638, file: !24, line: 120, baseType: !1694, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1624, file: !1625, line: 91, baseType: !1579, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1624, file: !1625, line: 92, baseType: !1597, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1624, file: !1625, line: 93, baseType: !1588, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1624, file: !1625, line: 94, baseType: !1597, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1624, file: !1625, line: 95, baseType: !1588, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1624, file: !1625, line: 97, baseType: !1597, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1624, file: !1625, line: 98, baseType: !1597, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1624, file: !1625, line: 100, baseType: !1681, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1624, file: !1625, line: 101, baseType: !1597, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1624, file: !1625, line: 103, baseType: !1597, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1624, file: !1625, line: 105, baseType: !1597, size: 64, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1624, file: !1625, line: 107, baseType: !1592, size: 64, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1624, file: !1625, line: 109, baseType: !1709, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1625, line: 109, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1624, file: !1625, line: 111, baseType: !1713, size: 64, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1625, line: 111, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1624, file: !1625, line: 112, baseType: !1716, offset: 1344)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1717, line: 187, elements: !106)
!1717 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1624, file: !1625, line: 114, baseType: !977, size: 8, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !68, file: !30, line: 471, baseType: !1637, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !68, file: !30, line: 473, baseType: !62, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !68, file: !30, line: 475, baseType: !62, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !68, file: !30, line: 480, baseType: !351, size: 192, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !68, file: !30, line: 484, baseType: !1724, size: 576, offset: 1216)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1724, file: !30, line: 362, baseType: !79, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1724, file: !30, line: 363, baseType: !79, size: 128, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1724, file: !30, line: 364, baseType: !79, size: 128, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1724, file: !30, line: 365, baseType: !79, size: 128, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1724, file: !30, line: 366, baseType: !977, size: 8, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1724, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !68, file: !30, line: 485, baseType: !1733, size: 2304, offset: 1792)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1830, !1834}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1733, file: !37, line: 566, baseType: !1684, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1733, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1733, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1733, file: !37, line: 569, baseType: !977, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1733, file: !37, line: 570, baseType: !977, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1733, file: !37, line: 571, baseType: !977, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1733, file: !37, line: 572, baseType: !977, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1733, file: !37, line: 573, baseType: !977, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1733, file: !37, line: 574, baseType: !977, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1733, file: !37, line: 575, baseType: !977, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1733, file: !37, line: 576, baseType: !977, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1733, file: !37, line: 577, baseType: !406, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1733, file: !37, line: 578, baseType: !92, offset: 96)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1733, file: !37, line: 580, baseType: !79, size: 128, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1733, file: !37, line: 581, baseType: !711, size: 192, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1733, file: !37, line: 582, baseType: !1751, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1753, line: 43, size: 1472, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1762, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1752, file: !1753, line: 44, baseType: !75, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1752, file: !1753, line: 45, baseType: !60, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1752, file: !1753, line: 46, baseType: !79, size: 128, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !1753, line: 47, baseType: !92, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1752, file: !1753, line: 48, baseType: !1760, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1752, file: !1753, line: 49, baseType: !1763, size: 320, offset: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1764, line: 11, size: 320, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !{!1766, !1767, !1768, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1763, file: !1764, line: 16, baseType: !675, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1763, file: !1764, line: 17, baseType: !183, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1763, file: !1764, line: 18, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1764, line: 19, baseType: !406, size: 32, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1752, file: !1753, line: 50, baseType: !183, size: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1752, file: !1753, line: 51, baseType: !482, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1752, file: !1753, line: 52, baseType: !482, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1752, file: !1753, line: 53, baseType: !482, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1752, file: !1753, line: 54, baseType: !482, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1752, file: !1753, line: 55, baseType: !482, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1752, file: !1753, line: 56, baseType: !183, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1752, file: !1753, line: 57, baseType: !183, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1752, file: !1753, line: 58, baseType: !183, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1752, file: !1753, line: 59, baseType: !183, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1752, file: !1753, line: 60, baseType: !183, size: 64, offset: 1280)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1752, file: !1753, line: 61, baseType: !1566, size: 64, offset: 1344)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1752, file: !1753, line: 62, baseType: !977, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1752, file: !1753, line: 63, baseType: !977, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1733, file: !37, line: 583, baseType: !977, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1733, file: !37, line: 584, baseType: !977, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1733, file: !37, line: 585, baseType: !977, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1733, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1733, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1733, file: !37, line: 592, baseType: !474, size: 512, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1733, file: !37, line: 593, baseType: !252, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1733, file: !37, line: 594, baseType: !1303, size: 256, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1733, file: !37, line: 595, baseType: !682, size: 128, offset: 1408)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1733, file: !37, line: 596, baseType: !1760, size: 64, offset: 1536)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1733, file: !37, line: 597, baseType: !274, size: 32, offset: 1600)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1733, file: !37, line: 598, baseType: !274, size: 32, offset: 1632)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1733, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1733, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1733, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1733, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1733, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1733, file: !37, line: 604, baseType: !977, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1733, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1733, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1733, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1733, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1733, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1733, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1733, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1733, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1733, file: !37, line: 613, baseType: !60, size: 32, offset: 1792)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1733, file: !37, line: 614, baseType: !60, size: 32, offset: 1824)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1733, file: !37, line: 615, baseType: !252, size: 64, offset: 1856)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1733, file: !37, line: 616, baseType: !252, size: 64, offset: 1920)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1733, file: !37, line: 617, baseType: !252, size: 64, offset: 1984)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1733, file: !37, line: 618, baseType: !252, size: 64, offset: 2048)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1733, file: !37, line: 620, baseType: !1821, size: 64, offset: 2112)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !37, line: 537, baseType: !92)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1822, file: !37, line: 538, baseType: !7, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1822, file: !37, line: 540, baseType: !79, size: 128, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1822, file: !37, line: 543, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1733, file: !37, line: 621, baseType: !1831, size: 64, offset: 2176)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1566, !635}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1733, file: !37, line: 622, baseType: !1835, size: 64, offset: 2240)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !68, file: !30, line: 486, baseType: !1838, size: 64, offset: 4096)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1847, !1848, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1839, file: !37, line: 643, baseType: !1594, size: 1472)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1839, file: !37, line: 644, baseType: !1597, size: 64, offset: 1472)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1839, file: !37, line: 645, baseType: !1844, size: 64, offset: 1536)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1566, !977}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1839, file: !37, line: 646, baseType: !1597, size: 64, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1839, file: !37, line: 647, baseType: !1588, size: 64, offset: 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1839, file: !37, line: 648, baseType: !1588, size: 64, offset: 1728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !68, file: !30, line: 493, baseType: !1851, size: 64, offset: 4160)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !68, file: !30, line: 499, baseType: !79, size: 128, offset: 4224)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !68, file: !30, line: 502, baseType: !1855, size: 64, offset: 4352)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !68, file: !30, line: 504, baseType: !1859, size: 64, offset: 4416)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !68, file: !30, line: 505, baseType: !252, size: 64, offset: 4480)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !68, file: !30, line: 510, baseType: !252, size: 64, offset: 4544)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !68, file: !30, line: 511, baseType: !1863, size: 64, offset: 4608)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !68, file: !30, line: 513, baseType: !1867, size: 64, offset: 4672)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1868, file: !30, line: 293, baseType: !7, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1868, file: !30, line: 294, baseType: !183, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !68, file: !30, line: 515, baseType: !79, size: 128, offset: 4736)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !68, file: !30, line: 526, baseType: !1874, offset: 4864)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1875, line: 5, elements: !106)
!1875 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !68, file: !30, line: 528, baseType: !1877, size: 64, offset: 4864)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1879, line: 14, flags: DIFlagFwdDecl)
!1879 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !68, file: !30, line: 529, baseType: !1881, size: 64, offset: 4928)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1625, line: 22, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !68, file: !30, line: 534, baseType: !1884, size: 32, offset: 4992)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !59, line: 16, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !59, line: 13, baseType: !406)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !68, file: !30, line: 535, baseType: !406, size: 32, offset: 5024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !68, file: !30, line: 537, baseType: !92, offset: 5056)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !68, file: !30, line: 538, baseType: !79, size: 128, offset: 5056)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !68, file: !30, line: 540, baseType: !1890, size: 64, offset: 5184)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1892, line: 54, size: 960, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1904, !1908, !1909, !1910, !1911, !1915, !1919, !1920}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1891, file: !1892, line: 55, baseType: !75, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1891, file: !1892, line: 56, baseType: !1643, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1891, file: !1892, line: 58, baseType: !187, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1891, file: !1892, line: 59, baseType: !187, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1891, file: !1892, line: 60, baseType: !85, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1891, file: !1892, line: 62, baseType: !1579, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1891, file: !1892, line: 63, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!133, !1566, !1586}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1891, file: !1892, line: 65, baseType: !1905, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1890}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1891, file: !1892, line: 66, baseType: !1588, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1891, file: !1892, line: 68, baseType: !1597, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1891, file: !1892, line: 70, baseType: !1352, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1891, file: !1892, line: 71, baseType: !1912, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1369, !1566}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1891, file: !1892, line: 73, baseType: !1916, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1566, !1389, !1395}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1891, file: !1892, line: 75, baseType: !1592, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1891, file: !1892, line: 77, baseType: !1713, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !68, file: !30, line: 541, baseType: !187, size: 64, offset: 5248)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !68, file: !30, line: 543, baseType: !1588, size: 64, offset: 5312)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !68, file: !30, line: 544, baseType: !1924, size: 64, offset: 5376)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !68, file: !30, line: 545, baseType: !1927, size: 64, offset: 5440)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !68, file: !30, line: 547, baseType: !977, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !68, file: !30, line: 548, baseType: !977, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !68, file: !30, line: 549, baseType: !977, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !68, file: !30, line: 550, baseType: !977, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !64, file: !65, line: 245, baseType: !252, size: 64, offset: 5568)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !64, file: !65, line: 246, baseType: !7, size: 32, offset: 5632)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !64, file: !65, line: 247, baseType: !60, size: 32, offset: 5664)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !64, file: !65, line: 249, baseType: !79, size: 128, offset: 5696)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !64, file: !65, line: 250, baseType: !79, size: 128, offset: 5824)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !64, file: !65, line: 251, baseType: !79, size: 128, offset: 5952)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !64, file: !65, line: 252, baseType: !79, size: 128, offset: 6080)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !64, file: !65, line: 254, baseType: !1941, size: 64, offset: 6208)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !65, line: 411, size: 6464, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1950, !1951, !1952, !1956, !1960, !1961, !1962, !1963, !1964}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1942, file: !65, line: 412, baseType: !79, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1942, file: !65, line: 413, baseType: !133, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1942, file: !65, line: 416, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!60, !63}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1942, file: !65, line: 417, baseType: !1947, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1942, file: !65, line: 418, baseType: !1947, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1942, file: !65, line: 421, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!977, !63}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1942, file: !65, line: 422, baseType: !1957, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!60, !63, !1684}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1942, file: !65, line: 423, baseType: !1947, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1942, file: !65, line: 426, baseType: !61, size: 8, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1942, file: !65, line: 427, baseType: !68, size: 5568, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1942, file: !65, line: 428, baseType: !79, size: 128, offset: 6208)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1942, file: !65, line: 429, baseType: !79, size: 128, offset: 6336)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !64, file: !65, line: 255, baseType: !1966, size: 64, offset: 6272)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !65, line: 202, size: 6720, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1981, !1985, !1986, !1987, !1988, !1989}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1967, file: !65, line: 203, baseType: !68, size: 5568)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1967, file: !65, line: 204, baseType: !61, size: 8, offset: 5568)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1967, file: !65, line: 205, baseType: !79, size: 128, offset: 5632)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1967, file: !65, line: 206, baseType: !79, size: 128, offset: 5760)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1967, file: !65, line: 207, baseType: !79, size: 128, offset: 5888)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1967, file: !65, line: 209, baseType: !1941, size: 64, offset: 6016)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1967, file: !65, line: 210, baseType: !1976, size: 64, offset: 6080)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !65, line: 369, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1977, file: !65, line: 370, baseType: !914, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1977, file: !65, line: 371, baseType: !1976, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1967, file: !65, line: 212, baseType: !1982, size: 400, offset: 6144)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 400, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 50)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1967, file: !65, line: 213, baseType: !61, size: 8, offset: 6544)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1967, file: !65, line: 214, baseType: !61, size: 8, offset: 6552)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1967, file: !65, line: 215, baseType: !7, size: 32, offset: 6560)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1967, file: !65, line: 216, baseType: !61, size: 8, offset: 6592)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1967, file: !65, line: 217, baseType: !1990, size: 64, offset: 6656)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !65, line: 217, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !64, file: !65, line: 256, baseType: !1993, size: 64, offset: 6336)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !65, line: 374, size: 1664, elements: !1995)
!1995 = !{!1996, !1997, !2005, !2006, !2010, !2014, !2015, !2016, !2017}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1994, file: !65, line: 375, baseType: !75, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1994, file: !65, line: 376, baseType: !1998, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1653, line: 220, size: 128, elements: !2001)
!2001 = !{!2002, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2000, file: !1653, line: 221, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 64, elements: !512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2000, file: !1653, line: 222, baseType: !1673, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1994, file: !65, line: 377, baseType: !7, size: 32, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1994, file: !65, line: 378, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!60, !63, !1998}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1994, file: !65, line: 379, baseType: !2011, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !63}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1994, file: !65, line: 380, baseType: !2011, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1994, file: !65, line: 381, baseType: !1957, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1994, file: !65, line: 382, baseType: !1947, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1994, file: !65, line: 383, baseType: !1638, size: 1152, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !64, file: !65, line: 257, baseType: !2019, size: 64, offset: 6400)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !65, line: 226, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2059, !2060}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2020, file: !65, line: 227, baseType: !1966, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2020, file: !65, line: 228, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !65, line: 388, size: 2240, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2041, !2042, !2046, !2050, !2054, !2058}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2025, file: !65, line: 389, baseType: !79, size: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !65, line: 390, baseType: !133, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2025, file: !65, line: 391, baseType: !2030, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1653, line: 225, size: 640, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2032, file: !1653, line: 226, baseType: !2003, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2032, file: !1653, line: 227, baseType: !1673, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2032, file: !1653, line: 230, baseType: !2037, size: 512, offset: 128)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 512, elements: !512)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !1653, line: 228, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2038, file: !1653, line: 229, baseType: !2003, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !65, line: 392, baseType: !7, size: 32, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2025, file: !65, line: 393, baseType: !2043, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!60, !2019, !2030}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2025, file: !65, line: 395, baseType: !2047, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2019}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2025, file: !65, line: 396, baseType: !2051, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!60, !2019, !1684}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2025, file: !65, line: 397, baseType: !2055, size: 64, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!60, !2019}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2025, file: !65, line: 398, baseType: !1994, size: 1664, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2020, file: !65, line: 229, baseType: !62, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !2020, file: !65, line: 230, baseType: !1684, size: 32, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !64, file: !65, line: 259, baseType: !1976, size: 64, offset: 6464)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !64, file: !65, line: 261, baseType: !60, size: 32, offset: 6528)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !64, file: !65, line: 262, baseType: !60, size: 32, offset: 6560)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !64, file: !65, line: 263, baseType: !7, size: 32, offset: 6592)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !64, file: !65, line: 264, baseType: !79, size: 128, offset: 6656)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !64, file: !65, line: 265, baseType: !79, size: 128, offset: 6784)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 267, baseType: !1982, size: 400, offset: 6912)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !65, line: 268, baseType: !60, size: 32, offset: 7328)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !64, file: !65, line: 269, baseType: !1990, size: 64, offset: 7360)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !65, line: 270, baseType: !62, size: 64, offset: 7424)
!2071 = !{!2072, !0}
!2072 = !DIGlobalVariableExpression(var: !2073, expr: !DIExpression())
!2073 = distinct !DIGlobalVariable(name: "pnp_bus_type", scope: !2, file: !3, line: 257, type: !1624, isLocal: false, isDefinition: true)
!2074 = !{i32 7, !"Dwarf Version", i32 4}
!2075 = !{i32 2, !"Debug Info Version", i32 3}
!2076 = !{i32 1, !"wchar_size", i32 2}
!2077 = !{i32 1, !"Code Model", i32 2}
!2078 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2079 = distinct !DISubprogram(name: "compare_pnp_id", scope: !3, file: !3, line: 29, type: !2080, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!60, !1976, !75}
!2082 = !DILocalVariable(name: "pos", arg: 1, scope: !2079, file: !3, line: 29, type: !1976)
!2083 = !DILocation(line: 29, column: 35, scope: !2079)
!2084 = !DILocalVariable(name: "id", arg: 2, scope: !2079, file: !3, line: 29, type: !75)
!2085 = !DILocation(line: 29, column: 52, scope: !2079)
!2086 = !DILocation(line: 31, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 31, column: 6)
!2088 = !DILocation(line: 31, column: 11, scope: !2087)
!2089 = !DILocation(line: 31, column: 15, scope: !2087)
!2090 = !DILocation(line: 31, column: 18, scope: !2087)
!2091 = !DILocation(line: 31, column: 29, scope: !2087)
!2092 = !DILocation(line: 31, column: 22, scope: !2087)
!2093 = !DILocation(line: 31, column: 33, scope: !2087)
!2094 = !DILocation(line: 31, column: 6, scope: !2079)
!2095 = !DILocation(line: 32, column: 3, scope: !2087)
!2096 = !DILocation(line: 33, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 33, column: 6)
!2098 = !DILocation(line: 33, column: 6, scope: !2097)
!2099 = !DILocation(line: 33, column: 31, scope: !2097)
!2100 = !DILocation(line: 33, column: 6, scope: !2079)
!2101 = !DILocation(line: 34, column: 3, scope: !2097)
!2102 = !DILocation(line: 35, column: 2, scope: !2079)
!2103 = !DILocation(line: 35, column: 9, scope: !2079)
!2104 = !DILocation(line: 36, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 36, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 35, column: 14)
!2107 = !DILocation(line: 36, column: 19, scope: !2105)
!2108 = !DILocation(line: 36, column: 23, scope: !2105)
!2109 = !DILocation(line: 36, column: 7, scope: !2105)
!2110 = !DILocation(line: 36, column: 30, scope: !2105)
!2111 = !DILocation(line: 36, column: 7, scope: !2106)
!2112 = !DILocation(line: 37, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 37, column: 8)
!2114 = !DILocation(line: 37, column: 26, scope: !2113)
!2115 = !DILocation(line: 37, column: 30, scope: !2113)
!2116 = !DILocation(line: 37, column: 8, scope: !2113)
!2117 = !DILocation(line: 37, column: 34, scope: !2113)
!2118 = !DILocation(line: 37, column: 8, scope: !2105)
!2119 = !DILocation(line: 38, column: 5, scope: !2113)
!2120 = !DILocation(line: 37, column: 37, scope: !2113)
!2121 = !DILocation(line: 39, column: 9, scope: !2106)
!2122 = !DILocation(line: 39, column: 14, scope: !2106)
!2123 = !DILocation(line: 39, column: 7, scope: !2106)
!2124 = distinct !{!2124, !2102, !2125}
!2125 = !DILocation(line: 40, column: 2, scope: !2079)
!2126 = !DILocation(line: 41, column: 2, scope: !2079)
!2127 = !DILocation(line: 42, column: 1, scope: !2079)
!2128 = distinct !DISubprogram(name: "compare_func", scope: !3, file: !3, line: 16, type: !2129, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!60, !75, !75}
!2131 = !DILocalVariable(name: "ida", arg: 1, scope: !2128, file: !3, line: 16, type: !75)
!2132 = !DILocation(line: 16, column: 37, scope: !2128)
!2133 = !DILocalVariable(name: "idb", arg: 2, scope: !2128, file: !3, line: 16, type: !75)
!2134 = !DILocation(line: 16, column: 54, scope: !2128)
!2135 = !DILocalVariable(name: "i", scope: !2128, file: !3, line: 18, type: !60)
!2136 = !DILocation(line: 18, column: 6, scope: !2128)
!2137 = !DILocation(line: 21, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 21, column: 2)
!2139 = !DILocation(line: 21, column: 7, scope: !2138)
!2140 = !DILocation(line: 21, column: 14, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 21, column: 2)
!2142 = !DILocation(line: 21, column: 16, scope: !2141)
!2143 = !DILocation(line: 21, column: 2, scope: !2138)
!2144 = !DILocation(line: 22, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 22, column: 7)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 21, column: 26)
!2147 = !DILocation(line: 22, column: 11, scope: !2145)
!2148 = !DILocation(line: 22, column: 14, scope: !2145)
!2149 = !DILocation(line: 22, column: 21, scope: !2145)
!2150 = !DILocation(line: 23, column: 7, scope: !2145)
!2151 = !DILocation(line: 23, column: 11, scope: !2145)
!2152 = !DILocation(line: 23, column: 14, scope: !2145)
!2153 = !DILocation(line: 23, column: 21, scope: !2145)
!2154 = !DILocation(line: 23, column: 24, scope: !2145)
!2155 = !DILocation(line: 23, column: 43, scope: !2145)
!2156 = !DILocation(line: 23, column: 40, scope: !2145)
!2157 = !DILocation(line: 22, column: 7, scope: !2146)
!2158 = !DILocation(line: 24, column: 4, scope: !2145)
!2159 = !DILocation(line: 25, column: 2, scope: !2146)
!2160 = !DILocation(line: 21, column: 22, scope: !2141)
!2161 = !DILocation(line: 21, column: 2, scope: !2141)
!2162 = distinct !{!2162, !2143, !2163}
!2163 = !DILocation(line: 25, column: 2, scope: !2138)
!2164 = !DILocation(line: 26, column: 2, scope: !2128)
!2165 = !DILocation(line: 27, column: 1, scope: !2128)
!2166 = distinct !DISubprogram(name: "pnp_device_attach", scope: !3, file: !3, line: 60, type: !1948, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2167 = !DILocalVariable(name: "pnp_dev", arg: 1, scope: !2166, file: !3, line: 60, type: !63)
!2168 = !DILocation(line: 60, column: 39, scope: !2166)
!2169 = !DILocation(line: 62, column: 2, scope: !2166)
!2170 = !DILocation(line: 63, column: 6, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 63, column: 6)
!2172 = !DILocation(line: 63, column: 15, scope: !2171)
!2173 = !DILocation(line: 63, column: 22, scope: !2171)
!2174 = !DILocation(line: 63, column: 6, scope: !2166)
!2175 = !DILocation(line: 64, column: 3, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 63, column: 36)
!2177 = !DILocation(line: 65, column: 3, scope: !2176)
!2178 = !DILocation(line: 67, column: 2, scope: !2166)
!2179 = !DILocation(line: 67, column: 11, scope: !2166)
!2180 = !DILocation(line: 67, column: 18, scope: !2166)
!2181 = !DILocation(line: 68, column: 2, scope: !2166)
!2182 = !DILocation(line: 69, column: 2, scope: !2166)
!2183 = !DILocation(line: 70, column: 1, scope: !2166)
!2184 = distinct !DISubprogram(name: "pnp_device_detach", scope: !3, file: !3, line: 72, type: !2012, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2185 = !DILocalVariable(name: "pnp_dev", arg: 1, scope: !2184, file: !3, line: 72, type: !63)
!2186 = !DILocation(line: 72, column: 40, scope: !2184)
!2187 = !DILocation(line: 74, column: 2, scope: !2184)
!2188 = !DILocation(line: 75, column: 6, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 75, column: 6)
!2190 = !DILocation(line: 75, column: 15, scope: !2189)
!2191 = !DILocation(line: 75, column: 22, scope: !2189)
!2192 = !DILocation(line: 75, column: 6, scope: !2184)
!2193 = !DILocation(line: 76, column: 3, scope: !2189)
!2194 = !DILocation(line: 76, column: 12, scope: !2189)
!2195 = !DILocation(line: 76, column: 19, scope: !2189)
!2196 = !DILocation(line: 77, column: 2, scope: !2184)
!2197 = !DILocation(line: 78, column: 1, scope: !2184)
!2198 = distinct !DISubprogram(name: "pnp_bus_match", scope: !3, file: !3, line: 152, type: !1635, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2199 = !DILocalVariable(name: "dev", arg: 1, scope: !2198, file: !3, line: 152, type: !1566)
!2200 = !DILocation(line: 152, column: 41, scope: !2198)
!2201 = !DILocalVariable(name: "drv", arg: 2, scope: !2198, file: !3, line: 152, type: !1637)
!2202 = !DILocation(line: 152, column: 68, scope: !2198)
!2203 = !DILocalVariable(name: "pnp_dev", scope: !2198, file: !3, line: 154, type: !63)
!2204 = !DILocation(line: 154, column: 18, scope: !2198)
!2205 = !DILocalVariable(name: "__mptr", scope: !2206, file: !3, line: 154, type: !62)
!2206 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 154, column: 28)
!2207 = !DILocation(line: 154, column: 28, scope: !2206)
!2208 = !DILocation(line: 154, column: 28, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 154, column: 28)
!2210 = !DILocalVariable(name: "pnp_drv", scope: !2198, file: !3, line: 155, type: !1993)
!2211 = !DILocation(line: 155, column: 21, scope: !2198)
!2212 = !DILocalVariable(name: "__mptr", scope: !2213, file: !3, line: 155, type: !62)
!2213 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 155, column: 31)
!2214 = !DILocation(line: 155, column: 31, scope: !2213)
!2215 = !DILocation(line: 155, column: 31, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 155, column: 31)
!2217 = !DILocation(line: 157, column: 19, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 157, column: 6)
!2219 = !DILocation(line: 157, column: 28, scope: !2218)
!2220 = !DILocation(line: 157, column: 6, scope: !2218)
!2221 = !DILocation(line: 157, column: 37, scope: !2218)
!2222 = !DILocation(line: 157, column: 6, scope: !2198)
!2223 = !DILocation(line: 158, column: 3, scope: !2218)
!2224 = !DILocation(line: 159, column: 2, scope: !2198)
!2225 = !DILocation(line: 160, column: 1, scope: !2198)
!2226 = distinct !DISubprogram(name: "pnp_device_probe", scope: !3, file: !3, line: 80, type: !1598, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2227 = !DILocalVariable(name: "dev", arg: 1, scope: !2226, file: !3, line: 80, type: !1566)
!2228 = !DILocation(line: 80, column: 44, scope: !2226)
!2229 = !DILocalVariable(name: "error", scope: !2226, file: !3, line: 82, type: !60)
!2230 = !DILocation(line: 82, column: 6, scope: !2226)
!2231 = !DILocalVariable(name: "pnp_drv", scope: !2226, file: !3, line: 83, type: !1993)
!2232 = !DILocation(line: 83, column: 21, scope: !2226)
!2233 = !DILocalVariable(name: "pnp_dev", scope: !2226, file: !3, line: 84, type: !63)
!2234 = !DILocation(line: 84, column: 18, scope: !2226)
!2235 = !DILocalVariable(name: "dev_id", scope: !2226, file: !3, line: 85, type: !1998)
!2236 = !DILocation(line: 85, column: 30, scope: !2226)
!2237 = !DILocalVariable(name: "__mptr", scope: !2238, file: !3, line: 86, type: !62)
!2238 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 86, column: 12)
!2239 = !DILocation(line: 86, column: 12, scope: !2238)
!2240 = !DILocation(line: 86, column: 12, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 86, column: 12)
!2242 = !DILocation(line: 86, column: 10, scope: !2226)
!2243 = !DILocalVariable(name: "__mptr", scope: !2244, file: !3, line: 87, type: !62)
!2244 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 87, column: 12)
!2245 = !DILocation(line: 87, column: 12, scope: !2244)
!2246 = !DILocation(line: 87, column: 12, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 87, column: 12)
!2248 = !DILocation(line: 87, column: 10, scope: !2226)
!2249 = !DILocation(line: 89, column: 28, scope: !2226)
!2250 = !DILocation(line: 89, column: 10, scope: !2226)
!2251 = !DILocation(line: 89, column: 8, scope: !2226)
!2252 = !DILocation(line: 90, column: 6, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 90, column: 6)
!2254 = !DILocation(line: 90, column: 12, scope: !2253)
!2255 = !DILocation(line: 90, column: 6, scope: !2226)
!2256 = !DILocation(line: 91, column: 10, scope: !2253)
!2257 = !DILocation(line: 91, column: 3, scope: !2253)
!2258 = !DILocation(line: 93, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 93, column: 6)
!2260 = !DILocation(line: 93, column: 15, scope: !2259)
!2261 = !DILocation(line: 93, column: 22, scope: !2259)
!2262 = !DILocation(line: 93, column: 6, scope: !2226)
!2263 = !DILocation(line: 94, column: 9, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 94, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 93, column: 28)
!2266 = !DILocation(line: 94, column: 18, scope: !2264)
!2267 = !DILocation(line: 94, column: 24, scope: !2264)
!2268 = !DILocation(line: 94, column: 7, scope: !2265)
!2269 = !DILocation(line: 95, column: 29, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 94, column: 57)
!2271 = !DILocation(line: 95, column: 12, scope: !2270)
!2272 = !DILocation(line: 95, column: 10, scope: !2270)
!2273 = !DILocation(line: 96, column: 8, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 96, column: 8)
!2275 = !DILocation(line: 96, column: 14, scope: !2274)
!2276 = !DILocation(line: 96, column: 8, scope: !2270)
!2277 = !DILocation(line: 97, column: 12, scope: !2274)
!2278 = !DILocation(line: 97, column: 5, scope: !2274)
!2279 = !DILocation(line: 98, column: 3, scope: !2270)
!2280 = !DILocation(line: 99, column: 2, scope: !2265)
!2281 = !DILocation(line: 99, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 99, column: 13)
!2283 = !DILocation(line: 99, column: 23, scope: !2282)
!2284 = !DILocation(line: 99, column: 29, scope: !2282)
!2285 = !DILocation(line: 100, column: 6, scope: !2282)
!2286 = !DILocation(line: 99, column: 13, scope: !2259)
!2287 = !DILocation(line: 101, column: 27, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 100, column: 33)
!2289 = !DILocation(line: 101, column: 11, scope: !2288)
!2290 = !DILocation(line: 101, column: 9, scope: !2288)
!2291 = !DILocation(line: 102, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 102, column: 7)
!2293 = !DILocation(line: 102, column: 13, scope: !2292)
!2294 = !DILocation(line: 102, column: 7, scope: !2288)
!2295 = !DILocation(line: 103, column: 11, scope: !2292)
!2296 = !DILocation(line: 103, column: 4, scope: !2292)
!2297 = !DILocation(line: 104, column: 2, scope: !2288)
!2298 = !DILocation(line: 105, column: 8, scope: !2226)
!2299 = !DILocation(line: 106, column: 6, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 106, column: 6)
!2301 = !DILocation(line: 106, column: 15, scope: !2300)
!2302 = !DILocation(line: 106, column: 6, scope: !2226)
!2303 = !DILocation(line: 107, column: 25, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 106, column: 22)
!2305 = !DILocation(line: 107, column: 34, scope: !2304)
!2306 = !DILocation(line: 107, column: 12, scope: !2304)
!2307 = !DILocation(line: 107, column: 10, scope: !2304)
!2308 = !DILocation(line: 108, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 108, column: 7)
!2310 = !DILocation(line: 108, column: 14, scope: !2309)
!2311 = !DILocation(line: 108, column: 7, scope: !2304)
!2312 = !DILocation(line: 109, column: 12, scope: !2309)
!2313 = !DILocation(line: 109, column: 21, scope: !2309)
!2314 = !DILocation(line: 109, column: 27, scope: !2309)
!2315 = !DILocation(line: 109, column: 36, scope: !2309)
!2316 = !DILocation(line: 109, column: 10, scope: !2309)
!2317 = !DILocation(line: 109, column: 4, scope: !2309)
!2318 = !DILocation(line: 110, column: 2, scope: !2304)
!2319 = !DILocation(line: 111, column: 6, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 111, column: 6)
!2321 = !DILocation(line: 111, column: 12, scope: !2320)
!2322 = !DILocation(line: 111, column: 6, scope: !2226)
!2323 = !DILocation(line: 112, column: 21, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 111, column: 18)
!2325 = !DILocation(line: 112, column: 3, scope: !2324)
!2326 = !DILocation(line: 112, column: 12, scope: !2324)
!2327 = !DILocation(line: 112, column: 19, scope: !2324)
!2328 = !DILocation(line: 113, column: 9, scope: !2324)
!2329 = !DILocation(line: 114, column: 2, scope: !2324)
!2330 = !DILocation(line: 115, column: 3, scope: !2320)
!2331 = !DILocation(line: 117, column: 9, scope: !2226)
!2332 = !DILocation(line: 117, column: 2, scope: !2226)
!2333 = !DILabel(scope: !2226, name: "fail", file: !3, line: 119)
!2334 = !DILocation(line: 119, column: 1, scope: !2226)
!2335 = !DILocation(line: 120, column: 20, scope: !2226)
!2336 = !DILocation(line: 120, column: 2, scope: !2226)
!2337 = !DILocation(line: 121, column: 9, scope: !2226)
!2338 = !DILocation(line: 121, column: 2, scope: !2226)
!2339 = !DILocation(line: 122, column: 1, scope: !2226)
!2340 = distinct !DISubprogram(name: "pnp_device_remove", scope: !3, file: !3, line: 124, type: !1598, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2341 = !DILocalVariable(name: "dev", arg: 1, scope: !2340, file: !3, line: 124, type: !1566)
!2342 = !DILocation(line: 124, column: 45, scope: !2340)
!2343 = !DILocalVariable(name: "pnp_dev", scope: !2340, file: !3, line: 126, type: !63)
!2344 = !DILocation(line: 126, column: 18, scope: !2340)
!2345 = !DILocalVariable(name: "__mptr", scope: !2346, file: !3, line: 126, type: !62)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 126, column: 28)
!2347 = !DILocation(line: 126, column: 28, scope: !2346)
!2348 = !DILocation(line: 126, column: 28, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 126, column: 28)
!2350 = !DILocalVariable(name: "drv", scope: !2340, file: !3, line: 127, type: !1993)
!2351 = !DILocation(line: 127, column: 21, scope: !2340)
!2352 = !DILocation(line: 127, column: 27, scope: !2340)
!2353 = !DILocation(line: 127, column: 36, scope: !2340)
!2354 = !DILocation(line: 129, column: 6, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 129, column: 6)
!2356 = !DILocation(line: 129, column: 6, scope: !2340)
!2357 = !DILocation(line: 130, column: 7, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 130, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 129, column: 11)
!2360 = !DILocation(line: 130, column: 12, scope: !2358)
!2361 = !DILocation(line: 130, column: 7, scope: !2359)
!2362 = !DILocation(line: 131, column: 4, scope: !2358)
!2363 = !DILocation(line: 131, column: 9, scope: !2358)
!2364 = !DILocation(line: 131, column: 16, scope: !2358)
!2365 = !DILocation(line: 132, column: 3, scope: !2359)
!2366 = !DILocation(line: 132, column: 12, scope: !2359)
!2367 = !DILocation(line: 132, column: 19, scope: !2359)
!2368 = !DILocation(line: 133, column: 2, scope: !2359)
!2369 = !DILocation(line: 135, column: 6, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 135, column: 6)
!2371 = !DILocation(line: 135, column: 15, scope: !2370)
!2372 = !DILocation(line: 135, column: 22, scope: !2370)
!2373 = !DILocation(line: 136, column: 8, scope: !2370)
!2374 = !DILocation(line: 136, column: 12, scope: !2370)
!2375 = !DILocation(line: 136, column: 17, scope: !2370)
!2376 = !DILocation(line: 136, column: 22, scope: !2370)
!2377 = !DILocation(line: 136, column: 28, scope: !2370)
!2378 = !DILocation(line: 135, column: 6, scope: !2340)
!2379 = !DILocation(line: 137, column: 19, scope: !2370)
!2380 = !DILocation(line: 137, column: 3, scope: !2370)
!2381 = !DILocation(line: 139, column: 20, scope: !2340)
!2382 = !DILocation(line: 139, column: 2, scope: !2340)
!2383 = !DILocation(line: 140, column: 2, scope: !2340)
!2384 = distinct !DISubprogram(name: "pnp_device_shutdown", scope: !3, file: !3, line: 143, type: !1589, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2385 = !DILocalVariable(name: "dev", arg: 1, scope: !2384, file: !3, line: 143, type: !1566)
!2386 = !DILocation(line: 143, column: 48, scope: !2384)
!2387 = !DILocalVariable(name: "pnp_dev", scope: !2384, file: !3, line: 145, type: !63)
!2388 = !DILocation(line: 145, column: 18, scope: !2384)
!2389 = !DILocalVariable(name: "__mptr", scope: !2390, file: !3, line: 145, type: !62)
!2390 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 145, column: 28)
!2391 = !DILocation(line: 145, column: 28, scope: !2390)
!2392 = !DILocation(line: 145, column: 28, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 145, column: 28)
!2394 = !DILocalVariable(name: "drv", scope: !2384, file: !3, line: 146, type: !1993)
!2395 = !DILocation(line: 146, column: 21, scope: !2384)
!2396 = !DILocation(line: 146, column: 27, scope: !2384)
!2397 = !DILocation(line: 146, column: 36, scope: !2384)
!2398 = !DILocation(line: 148, column: 6, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 148, column: 6)
!2400 = !DILocation(line: 148, column: 10, scope: !2399)
!2401 = !DILocation(line: 148, column: 13, scope: !2399)
!2402 = !DILocation(line: 148, column: 18, scope: !2399)
!2403 = !DILocation(line: 148, column: 6, scope: !2384)
!2404 = !DILocation(line: 149, column: 3, scope: !2399)
!2405 = !DILocation(line: 149, column: 8, scope: !2399)
!2406 = !DILocation(line: 149, column: 17, scope: !2399)
!2407 = !DILocation(line: 150, column: 1, scope: !2384)
!2408 = distinct !DISubprogram(name: "pnp_register_driver", scope: !3, file: !3, line: 267, type: !2409, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!60, !1993}
!2411 = !DILocalVariable(name: "drv", arg: 1, scope: !2408, file: !3, line: 267, type: !1993)
!2412 = !DILocation(line: 267, column: 44, scope: !2408)
!2413 = !DILocation(line: 269, column: 21, scope: !2408)
!2414 = !DILocation(line: 269, column: 26, scope: !2408)
!2415 = !DILocation(line: 269, column: 2, scope: !2408)
!2416 = !DILocation(line: 269, column: 7, scope: !2408)
!2417 = !DILocation(line: 269, column: 14, scope: !2408)
!2418 = !DILocation(line: 269, column: 19, scope: !2408)
!2419 = !DILocation(line: 270, column: 2, scope: !2408)
!2420 = !DILocation(line: 270, column: 7, scope: !2408)
!2421 = !DILocation(line: 270, column: 14, scope: !2408)
!2422 = !DILocation(line: 270, column: 18, scope: !2408)
!2423 = !DILocation(line: 272, column: 26, scope: !2408)
!2424 = !DILocation(line: 272, column: 31, scope: !2408)
!2425 = !DILocation(line: 272, column: 9, scope: !2408)
!2426 = !DILocation(line: 272, column: 2, scope: !2408)
!2427 = distinct !DISubprogram(name: "pnp_unregister_driver", scope: !3, file: !3, line: 275, type: !2428, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !1993}
!2430 = !DILocalVariable(name: "drv", arg: 1, scope: !2427, file: !3, line: 275, type: !1993)
!2431 = !DILocation(line: 275, column: 47, scope: !2427)
!2432 = !DILocation(line: 277, column: 21, scope: !2427)
!2433 = !DILocation(line: 277, column: 26, scope: !2427)
!2434 = !DILocation(line: 277, column: 2, scope: !2427)
!2435 = !DILocation(line: 278, column: 1, scope: !2427)
!2436 = distinct !DISubprogram(name: "pnp_add_id", scope: !3, file: !3, line: 285, type: !2437, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!1976, !63, !75}
!2439 = !DILocalVariable(name: "dev", arg: 1, scope: !2436, file: !3, line: 285, type: !63)
!2440 = !DILocation(line: 285, column: 43, scope: !2436)
!2441 = !DILocalVariable(name: "id", arg: 2, scope: !2436, file: !3, line: 285, type: !75)
!2442 = !DILocation(line: 285, column: 60, scope: !2436)
!2443 = !DILocalVariable(name: "dev_id", scope: !2436, file: !3, line: 287, type: !1976)
!2444 = !DILocation(line: 287, column: 17, scope: !2436)
!2445 = !DILocalVariable(name: "ptr", scope: !2436, file: !3, line: 287, type: !1976)
!2446 = !DILocation(line: 287, column: 26, scope: !2436)
!2447 = !DILocation(line: 289, column: 11, scope: !2436)
!2448 = !DILocation(line: 289, column: 9, scope: !2436)
!2449 = !DILocation(line: 290, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 290, column: 6)
!2451 = !DILocation(line: 290, column: 6, scope: !2436)
!2452 = !DILocation(line: 291, column: 3, scope: !2450)
!2453 = !DILocation(line: 293, column: 18, scope: !2436)
!2454 = !DILocation(line: 293, column: 2, scope: !2436)
!2455 = !DILocation(line: 293, column: 10, scope: !2436)
!2456 = !DILocation(line: 293, column: 16, scope: !2436)
!2457 = !DILocation(line: 294, column: 18, scope: !2436)
!2458 = !DILocation(line: 294, column: 2, scope: !2436)
!2459 = !DILocation(line: 294, column: 10, scope: !2436)
!2460 = !DILocation(line: 294, column: 16, scope: !2436)
!2461 = !DILocation(line: 295, column: 18, scope: !2436)
!2462 = !DILocation(line: 295, column: 2, scope: !2436)
!2463 = !DILocation(line: 295, column: 10, scope: !2436)
!2464 = !DILocation(line: 295, column: 16, scope: !2436)
!2465 = !DILocation(line: 296, column: 18, scope: !2436)
!2466 = !DILocation(line: 296, column: 2, scope: !2436)
!2467 = !DILocation(line: 296, column: 10, scope: !2436)
!2468 = !DILocation(line: 296, column: 16, scope: !2436)
!2469 = !DILocation(line: 297, column: 18, scope: !2436)
!2470 = !DILocation(line: 297, column: 2, scope: !2436)
!2471 = !DILocation(line: 297, column: 10, scope: !2436)
!2472 = !DILocation(line: 297, column: 16, scope: !2436)
!2473 = !DILocation(line: 298, column: 18, scope: !2436)
!2474 = !DILocation(line: 298, column: 2, scope: !2436)
!2475 = !DILocation(line: 298, column: 10, scope: !2436)
!2476 = !DILocation(line: 298, column: 16, scope: !2436)
!2477 = !DILocation(line: 299, column: 18, scope: !2436)
!2478 = !DILocation(line: 299, column: 2, scope: !2436)
!2479 = !DILocation(line: 299, column: 10, scope: !2436)
!2480 = !DILocation(line: 299, column: 16, scope: !2436)
!2481 = !DILocation(line: 300, column: 2, scope: !2436)
!2482 = !DILocation(line: 300, column: 10, scope: !2436)
!2483 = !DILocation(line: 300, column: 16, scope: !2436)
!2484 = !DILocation(line: 302, column: 2, scope: !2436)
!2485 = !DILocation(line: 302, column: 10, scope: !2436)
!2486 = !DILocation(line: 302, column: 15, scope: !2436)
!2487 = !DILocation(line: 303, column: 8, scope: !2436)
!2488 = !DILocation(line: 303, column: 13, scope: !2436)
!2489 = !DILocation(line: 303, column: 6, scope: !2436)
!2490 = !DILocation(line: 304, column: 2, scope: !2436)
!2491 = !DILocation(line: 304, column: 9, scope: !2436)
!2492 = !DILocation(line: 304, column: 13, scope: !2436)
!2493 = !DILocation(line: 304, column: 16, scope: !2436)
!2494 = !DILocation(line: 304, column: 21, scope: !2436)
!2495 = !DILocation(line: 0, scope: !2436)
!2496 = !DILocation(line: 305, column: 9, scope: !2436)
!2497 = !DILocation(line: 305, column: 14, scope: !2436)
!2498 = !DILocation(line: 305, column: 7, scope: !2436)
!2499 = distinct !{!2499, !2490, !2497}
!2500 = !DILocation(line: 306, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 306, column: 6)
!2502 = !DILocation(line: 306, column: 6, scope: !2436)
!2503 = !DILocation(line: 307, column: 15, scope: !2501)
!2504 = !DILocation(line: 307, column: 3, scope: !2501)
!2505 = !DILocation(line: 307, column: 8, scope: !2501)
!2506 = !DILocation(line: 307, column: 13, scope: !2501)
!2507 = !DILocation(line: 309, column: 13, scope: !2501)
!2508 = !DILocation(line: 309, column: 3, scope: !2501)
!2509 = !DILocation(line: 309, column: 8, scope: !2501)
!2510 = !DILocation(line: 309, column: 11, scope: !2501)
!2511 = !DILocation(line: 311, column: 9, scope: !2436)
!2512 = !DILocation(line: 311, column: 2, scope: !2436)
!2513 = !DILocation(line: 312, column: 1, scope: !2436)
!2514 = distinct !DISubprogram(name: "kzalloc", scope: !51, file: !51, line: 662, type: !2515, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!62, !180, !58}
!2517 = !DILocalVariable(name: "s", arg: 1, scope: !2518, file: !51, line: 445, type: !1027)
!2518 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2519, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!62, !1027, !58, !180}
!2521 = !DILocation(line: 445, column: 72, scope: !2518, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 552, column: 10, scope: !2523, inlinedAt: !2526)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !51, line: 540, column: 34)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !51, line: 540, column: 6)
!2525 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2515, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2526 = distinct !DILocation(line: 664, column: 9, scope: !2514)
!2527 = !DILocalVariable(name: "flags", arg: 2, scope: !2518, file: !51, line: 446, type: !58)
!2528 = !DILocation(line: 446, column: 9, scope: !2518, inlinedAt: !2522)
!2529 = !DILocalVariable(name: "size", arg: 3, scope: !2518, file: !51, line: 446, type: !180)
!2530 = !DILocation(line: 446, column: 23, scope: !2518, inlinedAt: !2522)
!2531 = !DILocalVariable(name: "ret", scope: !2518, file: !51, line: 448, type: !62)
!2532 = !DILocation(line: 448, column: 8, scope: !2518, inlinedAt: !2522)
!2533 = !DILocalVariable(name: "flags", arg: 1, scope: !2534, file: !51, line: 318, type: !58)
!2534 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2535, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!50, !58}
!2537 = !DILocation(line: 318, column: 67, scope: !2534, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 553, column: 20, scope: !2523, inlinedAt: !2526)
!2539 = !DILocalVariable(name: "size", arg: 1, scope: !2540, file: !51, line: 346, type: !180)
!2540 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2541, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!7, !180}
!2543 = !DILocation(line: 346, column: 58, scope: !2540, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 547, column: 11, scope: !2523, inlinedAt: !2526)
!2545 = !DILocalVariable(name: "size", arg: 1, scope: !2546, file: !51, line: 472, type: !180)
!2546 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2547, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!62, !180, !58, !7}
!2549 = !DILocation(line: 472, column: 28, scope: !2546, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 481, column: 9, scope: !2551, inlinedAt: !2552)
!2551 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2515, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2552 = distinct !DILocation(line: 545, column: 11, scope: !2553, inlinedAt: !2526)
!2553 = distinct !DILexicalBlock(scope: !2523, file: !51, line: 544, column: 7)
!2554 = !DILocalVariable(name: "flags", arg: 2, scope: !2546, file: !51, line: 472, type: !58)
!2555 = !DILocation(line: 472, column: 40, scope: !2546, inlinedAt: !2550)
!2556 = !DILocalVariable(name: "order", arg: 3, scope: !2546, file: !51, line: 472, type: !7)
!2557 = !DILocation(line: 472, column: 60, scope: !2546, inlinedAt: !2550)
!2558 = !DILocalVariable(name: "size", arg: 1, scope: !2551, file: !51, line: 478, type: !180)
!2559 = !DILocation(line: 478, column: 51, scope: !2551, inlinedAt: !2552)
!2560 = !DILocalVariable(name: "flags", arg: 2, scope: !2551, file: !51, line: 478, type: !58)
!2561 = !DILocation(line: 478, column: 63, scope: !2551, inlinedAt: !2552)
!2562 = !DILocalVariable(name: "order", scope: !2551, file: !51, line: 480, type: !7)
!2563 = !DILocation(line: 480, column: 15, scope: !2551, inlinedAt: !2552)
!2564 = !DILocalVariable(name: "size", arg: 1, scope: !2525, file: !51, line: 538, type: !180)
!2565 = !DILocation(line: 538, column: 45, scope: !2525, inlinedAt: !2526)
!2566 = !DILocalVariable(name: "flags", arg: 2, scope: !2525, file: !51, line: 538, type: !58)
!2567 = !DILocation(line: 538, column: 57, scope: !2525, inlinedAt: !2526)
!2568 = !DILocalVariable(name: "index", scope: !2523, file: !51, line: 542, type: !7)
!2569 = !DILocation(line: 542, column: 16, scope: !2523, inlinedAt: !2526)
!2570 = !DILocalVariable(name: "size", arg: 1, scope: !2514, file: !51, line: 662, type: !180)
!2571 = !DILocation(line: 662, column: 36, scope: !2514)
!2572 = !DILocalVariable(name: "flags", arg: 2, scope: !2514, file: !51, line: 662, type: !58)
!2573 = !DILocation(line: 662, column: 48, scope: !2514)
!2574 = !DILocation(line: 664, column: 17, scope: !2514)
!2575 = !DILocation(line: 664, column: 23, scope: !2514)
!2576 = !DILocation(line: 664, column: 29, scope: !2514)
!2577 = !DILocation(line: 540, column: 27, scope: !2524, inlinedAt: !2526)
!2578 = !DILocation(line: 540, column: 6, scope: !2524, inlinedAt: !2526)
!2579 = !DILocation(line: 540, column: 6, scope: !2525, inlinedAt: !2526)
!2580 = !DILocation(line: 544, column: 7, scope: !2553, inlinedAt: !2526)
!2581 = !DILocation(line: 544, column: 12, scope: !2553, inlinedAt: !2526)
!2582 = !DILocation(line: 544, column: 7, scope: !2523, inlinedAt: !2526)
!2583 = !DILocation(line: 545, column: 25, scope: !2553, inlinedAt: !2526)
!2584 = !DILocation(line: 545, column: 31, scope: !2553, inlinedAt: !2526)
!2585 = !DILocation(line: 480, column: 33, scope: !2551, inlinedAt: !2552)
!2586 = !DILocation(line: 480, column: 23, scope: !2551, inlinedAt: !2552)
!2587 = !DILocation(line: 481, column: 29, scope: !2551, inlinedAt: !2552)
!2588 = !DILocation(line: 481, column: 35, scope: !2551, inlinedAt: !2552)
!2589 = !DILocation(line: 481, column: 42, scope: !2551, inlinedAt: !2552)
!2590 = !DILocation(line: 474, column: 23, scope: !2546, inlinedAt: !2550)
!2591 = !DILocation(line: 474, column: 29, scope: !2546, inlinedAt: !2550)
!2592 = !DILocation(line: 474, column: 36, scope: !2546, inlinedAt: !2550)
!2593 = !DILocation(line: 474, column: 9, scope: !2546, inlinedAt: !2550)
!2594 = !DILocation(line: 545, column: 4, scope: !2553, inlinedAt: !2526)
!2595 = !DILocation(line: 547, column: 25, scope: !2523, inlinedAt: !2526)
!2596 = !DILocation(line: 348, column: 7, scope: !2597, inlinedAt: !2544)
!2597 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 348, column: 6)
!2598 = !DILocation(line: 348, column: 6, scope: !2540, inlinedAt: !2544)
!2599 = !DILocation(line: 349, column: 3, scope: !2597, inlinedAt: !2544)
!2600 = !DILocation(line: 351, column: 6, scope: !2601, inlinedAt: !2544)
!2601 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 351, column: 6)
!2602 = !DILocation(line: 351, column: 11, scope: !2601, inlinedAt: !2544)
!2603 = !DILocation(line: 351, column: 6, scope: !2540, inlinedAt: !2544)
!2604 = !DILocation(line: 352, column: 3, scope: !2601, inlinedAt: !2544)
!2605 = !DILocation(line: 354, column: 32, scope: !2606, inlinedAt: !2544)
!2606 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 354, column: 6)
!2607 = !DILocation(line: 354, column: 37, scope: !2606, inlinedAt: !2544)
!2608 = !DILocation(line: 354, column: 42, scope: !2606, inlinedAt: !2544)
!2609 = !DILocation(line: 354, column: 45, scope: !2606, inlinedAt: !2544)
!2610 = !DILocation(line: 354, column: 50, scope: !2606, inlinedAt: !2544)
!2611 = !DILocation(line: 354, column: 6, scope: !2540, inlinedAt: !2544)
!2612 = !DILocation(line: 355, column: 3, scope: !2606, inlinedAt: !2544)
!2613 = !DILocation(line: 356, column: 32, scope: !2614, inlinedAt: !2544)
!2614 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 356, column: 6)
!2615 = !DILocation(line: 356, column: 37, scope: !2614, inlinedAt: !2544)
!2616 = !DILocation(line: 356, column: 43, scope: !2614, inlinedAt: !2544)
!2617 = !DILocation(line: 356, column: 46, scope: !2614, inlinedAt: !2544)
!2618 = !DILocation(line: 356, column: 51, scope: !2614, inlinedAt: !2544)
!2619 = !DILocation(line: 356, column: 6, scope: !2540, inlinedAt: !2544)
!2620 = !DILocation(line: 357, column: 3, scope: !2614, inlinedAt: !2544)
!2621 = !DILocation(line: 358, column: 6, scope: !2622, inlinedAt: !2544)
!2622 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 358, column: 6)
!2623 = !DILocation(line: 358, column: 11, scope: !2622, inlinedAt: !2544)
!2624 = !DILocation(line: 358, column: 6, scope: !2540, inlinedAt: !2544)
!2625 = !DILocation(line: 358, column: 26, scope: !2622, inlinedAt: !2544)
!2626 = !DILocation(line: 359, column: 6, scope: !2627, inlinedAt: !2544)
!2627 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 359, column: 6)
!2628 = !DILocation(line: 359, column: 11, scope: !2627, inlinedAt: !2544)
!2629 = !DILocation(line: 359, column: 6, scope: !2540, inlinedAt: !2544)
!2630 = !DILocation(line: 359, column: 26, scope: !2627, inlinedAt: !2544)
!2631 = !DILocation(line: 360, column: 6, scope: !2632, inlinedAt: !2544)
!2632 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 360, column: 6)
!2633 = !DILocation(line: 360, column: 11, scope: !2632, inlinedAt: !2544)
!2634 = !DILocation(line: 360, column: 6, scope: !2540, inlinedAt: !2544)
!2635 = !DILocation(line: 360, column: 26, scope: !2632, inlinedAt: !2544)
!2636 = !DILocation(line: 361, column: 6, scope: !2637, inlinedAt: !2544)
!2637 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 361, column: 6)
!2638 = !DILocation(line: 361, column: 11, scope: !2637, inlinedAt: !2544)
!2639 = !DILocation(line: 361, column: 6, scope: !2540, inlinedAt: !2544)
!2640 = !DILocation(line: 361, column: 26, scope: !2637, inlinedAt: !2544)
!2641 = !DILocation(line: 362, column: 6, scope: !2642, inlinedAt: !2544)
!2642 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 362, column: 6)
!2643 = !DILocation(line: 362, column: 11, scope: !2642, inlinedAt: !2544)
!2644 = !DILocation(line: 362, column: 6, scope: !2540, inlinedAt: !2544)
!2645 = !DILocation(line: 362, column: 26, scope: !2642, inlinedAt: !2544)
!2646 = !DILocation(line: 363, column: 6, scope: !2647, inlinedAt: !2544)
!2647 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 363, column: 6)
!2648 = !DILocation(line: 363, column: 11, scope: !2647, inlinedAt: !2544)
!2649 = !DILocation(line: 363, column: 6, scope: !2540, inlinedAt: !2544)
!2650 = !DILocation(line: 363, column: 26, scope: !2647, inlinedAt: !2544)
!2651 = !DILocation(line: 364, column: 6, scope: !2652, inlinedAt: !2544)
!2652 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 364, column: 6)
!2653 = !DILocation(line: 364, column: 11, scope: !2652, inlinedAt: !2544)
!2654 = !DILocation(line: 364, column: 6, scope: !2540, inlinedAt: !2544)
!2655 = !DILocation(line: 364, column: 26, scope: !2652, inlinedAt: !2544)
!2656 = !DILocation(line: 365, column: 6, scope: !2657, inlinedAt: !2544)
!2657 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 365, column: 6)
!2658 = !DILocation(line: 365, column: 11, scope: !2657, inlinedAt: !2544)
!2659 = !DILocation(line: 365, column: 6, scope: !2540, inlinedAt: !2544)
!2660 = !DILocation(line: 365, column: 26, scope: !2657, inlinedAt: !2544)
!2661 = !DILocation(line: 366, column: 6, scope: !2662, inlinedAt: !2544)
!2662 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 366, column: 6)
!2663 = !DILocation(line: 366, column: 11, scope: !2662, inlinedAt: !2544)
!2664 = !DILocation(line: 366, column: 6, scope: !2540, inlinedAt: !2544)
!2665 = !DILocation(line: 366, column: 26, scope: !2662, inlinedAt: !2544)
!2666 = !DILocation(line: 367, column: 6, scope: !2667, inlinedAt: !2544)
!2667 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 367, column: 6)
!2668 = !DILocation(line: 367, column: 11, scope: !2667, inlinedAt: !2544)
!2669 = !DILocation(line: 367, column: 6, scope: !2540, inlinedAt: !2544)
!2670 = !DILocation(line: 367, column: 26, scope: !2667, inlinedAt: !2544)
!2671 = !DILocation(line: 368, column: 6, scope: !2672, inlinedAt: !2544)
!2672 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 368, column: 6)
!2673 = !DILocation(line: 368, column: 11, scope: !2672, inlinedAt: !2544)
!2674 = !DILocation(line: 368, column: 6, scope: !2540, inlinedAt: !2544)
!2675 = !DILocation(line: 368, column: 26, scope: !2672, inlinedAt: !2544)
!2676 = !DILocation(line: 369, column: 6, scope: !2677, inlinedAt: !2544)
!2677 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 369, column: 6)
!2678 = !DILocation(line: 369, column: 11, scope: !2677, inlinedAt: !2544)
!2679 = !DILocation(line: 369, column: 6, scope: !2540, inlinedAt: !2544)
!2680 = !DILocation(line: 369, column: 26, scope: !2677, inlinedAt: !2544)
!2681 = !DILocation(line: 370, column: 6, scope: !2682, inlinedAt: !2544)
!2682 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 370, column: 6)
!2683 = !DILocation(line: 370, column: 11, scope: !2682, inlinedAt: !2544)
!2684 = !DILocation(line: 370, column: 6, scope: !2540, inlinedAt: !2544)
!2685 = !DILocation(line: 370, column: 26, scope: !2682, inlinedAt: !2544)
!2686 = !DILocation(line: 371, column: 6, scope: !2687, inlinedAt: !2544)
!2687 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 371, column: 6)
!2688 = !DILocation(line: 371, column: 11, scope: !2687, inlinedAt: !2544)
!2689 = !DILocation(line: 371, column: 6, scope: !2540, inlinedAt: !2544)
!2690 = !DILocation(line: 371, column: 26, scope: !2687, inlinedAt: !2544)
!2691 = !DILocation(line: 372, column: 6, scope: !2692, inlinedAt: !2544)
!2692 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 372, column: 6)
!2693 = !DILocation(line: 372, column: 11, scope: !2692, inlinedAt: !2544)
!2694 = !DILocation(line: 372, column: 6, scope: !2540, inlinedAt: !2544)
!2695 = !DILocation(line: 372, column: 26, scope: !2692, inlinedAt: !2544)
!2696 = !DILocation(line: 373, column: 6, scope: !2697, inlinedAt: !2544)
!2697 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 373, column: 6)
!2698 = !DILocation(line: 373, column: 11, scope: !2697, inlinedAt: !2544)
!2699 = !DILocation(line: 373, column: 6, scope: !2540, inlinedAt: !2544)
!2700 = !DILocation(line: 373, column: 26, scope: !2697, inlinedAt: !2544)
!2701 = !DILocation(line: 374, column: 6, scope: !2702, inlinedAt: !2544)
!2702 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 374, column: 6)
!2703 = !DILocation(line: 374, column: 11, scope: !2702, inlinedAt: !2544)
!2704 = !DILocation(line: 374, column: 6, scope: !2540, inlinedAt: !2544)
!2705 = !DILocation(line: 374, column: 26, scope: !2702, inlinedAt: !2544)
!2706 = !DILocation(line: 375, column: 6, scope: !2707, inlinedAt: !2544)
!2707 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 375, column: 6)
!2708 = !DILocation(line: 375, column: 11, scope: !2707, inlinedAt: !2544)
!2709 = !DILocation(line: 375, column: 6, scope: !2540, inlinedAt: !2544)
!2710 = !DILocation(line: 375, column: 27, scope: !2707, inlinedAt: !2544)
!2711 = !DILocation(line: 376, column: 6, scope: !2712, inlinedAt: !2544)
!2712 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 376, column: 6)
!2713 = !DILocation(line: 376, column: 11, scope: !2712, inlinedAt: !2544)
!2714 = !DILocation(line: 376, column: 6, scope: !2540, inlinedAt: !2544)
!2715 = !DILocation(line: 376, column: 32, scope: !2712, inlinedAt: !2544)
!2716 = !DILocation(line: 377, column: 6, scope: !2717, inlinedAt: !2544)
!2717 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 377, column: 6)
!2718 = !DILocation(line: 377, column: 11, scope: !2717, inlinedAt: !2544)
!2719 = !DILocation(line: 377, column: 6, scope: !2540, inlinedAt: !2544)
!2720 = !DILocation(line: 377, column: 32, scope: !2717, inlinedAt: !2544)
!2721 = !DILocation(line: 378, column: 6, scope: !2722, inlinedAt: !2544)
!2722 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 378, column: 6)
!2723 = !DILocation(line: 378, column: 11, scope: !2722, inlinedAt: !2544)
!2724 = !DILocation(line: 378, column: 6, scope: !2540, inlinedAt: !2544)
!2725 = !DILocation(line: 378, column: 32, scope: !2722, inlinedAt: !2544)
!2726 = !DILocation(line: 379, column: 6, scope: !2727, inlinedAt: !2544)
!2727 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 379, column: 6)
!2728 = !DILocation(line: 379, column: 11, scope: !2727, inlinedAt: !2544)
!2729 = !DILocation(line: 379, column: 6, scope: !2540, inlinedAt: !2544)
!2730 = !DILocation(line: 379, column: 33, scope: !2727, inlinedAt: !2544)
!2731 = !DILocation(line: 380, column: 6, scope: !2732, inlinedAt: !2544)
!2732 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 380, column: 6)
!2733 = !DILocation(line: 380, column: 11, scope: !2732, inlinedAt: !2544)
!2734 = !DILocation(line: 380, column: 6, scope: !2540, inlinedAt: !2544)
!2735 = !DILocation(line: 380, column: 33, scope: !2732, inlinedAt: !2544)
!2736 = !DILocation(line: 381, column: 6, scope: !2737, inlinedAt: !2544)
!2737 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 381, column: 6)
!2738 = !DILocation(line: 381, column: 11, scope: !2737, inlinedAt: !2544)
!2739 = !DILocation(line: 381, column: 6, scope: !2540, inlinedAt: !2544)
!2740 = !DILocation(line: 381, column: 33, scope: !2737, inlinedAt: !2544)
!2741 = !DILocation(line: 382, column: 2, scope: !2742, inlinedAt: !2544)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !51, line: 382, column: 2)
!2743 = distinct !DILexicalBlock(scope: !2540, file: !51, line: 382, column: 2)
!2744 = !{i32 -2144237004, i32 -2144236975, i32 -2144236929, i32 -2144236871, i32 -2144236817, i32 -2144236763, i32 -2144236708, i32 -2144236677}
!2745 = !DILocation(line: 382, column: 2, scope: !2746, inlinedAt: !2544)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !51, line: 382, column: 2)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !51, line: 382, column: 2)
!2748 = !{i32 -2144236234, i32 -2144236227, i32 -2144236173, i32 -2144236142, i32 -2144236112}
!2749 = !DILocation(line: 382, column: 2, scope: !2747, inlinedAt: !2544)
!2750 = !DILocation(line: 386, column: 1, scope: !2540, inlinedAt: !2544)
!2751 = !DILocation(line: 547, column: 9, scope: !2523, inlinedAt: !2526)
!2752 = !DILocation(line: 549, column: 8, scope: !2753, inlinedAt: !2526)
!2753 = distinct !DILexicalBlock(scope: !2523, file: !51, line: 549, column: 7)
!2754 = !DILocation(line: 549, column: 7, scope: !2523, inlinedAt: !2526)
!2755 = !DILocation(line: 550, column: 4, scope: !2753, inlinedAt: !2526)
!2756 = !DILocation(line: 553, column: 33, scope: !2523, inlinedAt: !2526)
!2757 = !DILocation(line: 325, column: 6, scope: !2758, inlinedAt: !2538)
!2758 = distinct !DILexicalBlock(scope: !2534, file: !51, line: 325, column: 6)
!2759 = !DILocation(line: 325, column: 6, scope: !2534, inlinedAt: !2538)
!2760 = !DILocation(line: 326, column: 3, scope: !2758, inlinedAt: !2538)
!2761 = !DILocation(line: 332, column: 9, scope: !2534, inlinedAt: !2538)
!2762 = !DILocation(line: 332, column: 15, scope: !2534, inlinedAt: !2538)
!2763 = !DILocation(line: 332, column: 2, scope: !2534, inlinedAt: !2538)
!2764 = !DILocation(line: 336, column: 1, scope: !2534, inlinedAt: !2538)
!2765 = !DILocation(line: 553, column: 5, scope: !2523, inlinedAt: !2526)
!2766 = !DILocation(line: 553, column: 41, scope: !2523, inlinedAt: !2526)
!2767 = !DILocation(line: 554, column: 5, scope: !2523, inlinedAt: !2526)
!2768 = !DILocation(line: 554, column: 12, scope: !2523, inlinedAt: !2526)
!2769 = !DILocation(line: 448, column: 31, scope: !2518, inlinedAt: !2522)
!2770 = !DILocation(line: 448, column: 34, scope: !2518, inlinedAt: !2522)
!2771 = !DILocation(line: 448, column: 14, scope: !2518, inlinedAt: !2522)
!2772 = !DILocation(line: 450, column: 22, scope: !2518, inlinedAt: !2522)
!2773 = !DILocation(line: 450, column: 25, scope: !2518, inlinedAt: !2522)
!2774 = !DILocation(line: 450, column: 30, scope: !2518, inlinedAt: !2522)
!2775 = !DILocation(line: 450, column: 36, scope: !2518, inlinedAt: !2522)
!2776 = !DILocation(line: 450, column: 8, scope: !2518, inlinedAt: !2522)
!2777 = !DILocation(line: 450, column: 6, scope: !2518, inlinedAt: !2522)
!2778 = !DILocation(line: 451, column: 9, scope: !2518, inlinedAt: !2522)
!2779 = !DILocation(line: 552, column: 3, scope: !2523, inlinedAt: !2526)
!2780 = !DILocation(line: 557, column: 19, scope: !2525, inlinedAt: !2526)
!2781 = !DILocation(line: 557, column: 25, scope: !2525, inlinedAt: !2526)
!2782 = !DILocation(line: 557, column: 9, scope: !2525, inlinedAt: !2526)
!2783 = !DILocation(line: 557, column: 2, scope: !2525, inlinedAt: !2526)
!2784 = !DILocation(line: 558, column: 1, scope: !2525, inlinedAt: !2526)
!2785 = !DILocation(line: 664, column: 2, scope: !2514)
!2786 = distinct !DISubprogram(name: "__tolower", scope: !2787, file: !2787, line: 42, type: !2788, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2787 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/lizy2001/genbc/linux")
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!61, !61}
!2790 = !DILocalVariable(name: "c", arg: 1, scope: !2786, file: !2787, line: 42, type: !61)
!2791 = !DILocation(line: 42, column: 53, scope: !2786)
!2792 = !DILocation(line: 44, column: 6, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2786, file: !2787, line: 44, column: 6)
!2794 = !DILocation(line: 44, column: 6, scope: !2786)
!2795 = !DILocation(line: 45, column: 5, scope: !2793)
!2796 = !DILocation(line: 45, column: 3, scope: !2793)
!2797 = !DILocation(line: 46, column: 9, scope: !2786)
!2798 = !DILocation(line: 46, column: 2, scope: !2786)
!2799 = distinct !DISubprogram(name: "__toupper", scope: !2787, file: !2787, line: 49, type: !2788, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2800 = !DILocalVariable(name: "c", arg: 1, scope: !2799, file: !2787, line: 49, type: !61)
!2801 = !DILocation(line: 49, column: 53, scope: !2799)
!2802 = !DILocation(line: 51, column: 6, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !2787, line: 51, column: 6)
!2804 = !DILocation(line: 51, column: 6, scope: !2799)
!2805 = !DILocation(line: 52, column: 5, scope: !2803)
!2806 = !DILocation(line: 52, column: 3, scope: !2803)
!2807 = !DILocation(line: 53, column: 9, scope: !2799)
!2808 = !DILocation(line: 53, column: 2, scope: !2799)
!2809 = distinct !DISubprogram(name: "match_device", scope: !3, file: !3, line: 44, type: !2810, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!1998, !1993, !63}
!2812 = !DILocalVariable(name: "drv", arg: 1, scope: !2809, file: !3, line: 44, type: !1993)
!2813 = !DILocation(line: 44, column: 68, scope: !2809)
!2814 = !DILocalVariable(name: "dev", arg: 2, scope: !2809, file: !3, line: 45, type: !63)
!2815 = !DILocation(line: 45, column: 23, scope: !2809)
!2816 = !DILocalVariable(name: "drv_id", scope: !2809, file: !3, line: 47, type: !1998)
!2817 = !DILocation(line: 47, column: 30, scope: !2809)
!2818 = !DILocation(line: 47, column: 39, scope: !2809)
!2819 = !DILocation(line: 47, column: 44, scope: !2809)
!2820 = !DILocation(line: 49, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 49, column: 6)
!2822 = !DILocation(line: 49, column: 6, scope: !2809)
!2823 = !DILocation(line: 50, column: 3, scope: !2821)
!2824 = !DILocation(line: 52, column: 2, scope: !2809)
!2825 = !DILocation(line: 52, column: 10, scope: !2809)
!2826 = !DILocation(line: 52, column: 18, scope: !2809)
!2827 = !DILocation(line: 52, column: 9, scope: !2809)
!2828 = !DILocation(line: 53, column: 22, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 53, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 52, column: 22)
!2831 = !DILocation(line: 53, column: 27, scope: !2829)
!2832 = !DILocation(line: 53, column: 31, scope: !2829)
!2833 = !DILocation(line: 53, column: 39, scope: !2829)
!2834 = !DILocation(line: 53, column: 7, scope: !2829)
!2835 = !DILocation(line: 53, column: 7, scope: !2830)
!2836 = !DILocation(line: 54, column: 11, scope: !2829)
!2837 = !DILocation(line: 54, column: 4, scope: !2829)
!2838 = !DILocation(line: 55, column: 9, scope: !2830)
!2839 = distinct !{!2839, !2824, !2840}
!2840 = !DILocation(line: 56, column: 2, scope: !2809)
!2841 = !DILocation(line: 57, column: 2, scope: !2809)
!2842 = !DILocation(line: 58, column: 1, scope: !2809)
!2843 = distinct !DISubprogram(name: "pnp_bus_suspend", scope: !3, file: !3, line: 195, type: !1598, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2844 = !DILocalVariable(name: "dev", arg: 1, scope: !2843, file: !3, line: 195, type: !1566)
!2845 = !DILocation(line: 195, column: 43, scope: !2843)
!2846 = !DILocation(line: 197, column: 27, scope: !2843)
!2847 = !DILocation(line: 197, column: 32, scope: !2843)
!2848 = !DILocation(line: 197, column: 9, scope: !2843)
!2849 = !DILocation(line: 197, column: 2, scope: !2843)
!2850 = distinct !DISubprogram(name: "pnp_bus_resume", scope: !3, file: !3, line: 210, type: !1598, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2851 = !DILocalVariable(name: "dev", arg: 1, scope: !2850, file: !3, line: 210, type: !1566)
!2852 = !DILocation(line: 210, column: 42, scope: !2850)
!2853 = !DILocalVariable(name: "pnp_dev", scope: !2850, file: !3, line: 212, type: !63)
!2854 = !DILocation(line: 212, column: 18, scope: !2850)
!2855 = !DILocalVariable(name: "__mptr", scope: !2856, file: !3, line: 212, type: !62)
!2856 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 212, column: 28)
!2857 = !DILocation(line: 212, column: 28, scope: !2856)
!2858 = !DILocation(line: 212, column: 28, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 212, column: 28)
!2860 = !DILocalVariable(name: "pnp_drv", scope: !2850, file: !3, line: 213, type: !1993)
!2861 = !DILocation(line: 213, column: 21, scope: !2850)
!2862 = !DILocation(line: 213, column: 31, scope: !2850)
!2863 = !DILocation(line: 213, column: 40, scope: !2850)
!2864 = !DILocalVariable(name: "error", scope: !2850, file: !3, line: 214, type: !60)
!2865 = !DILocation(line: 214, column: 6, scope: !2850)
!2866 = !DILocation(line: 216, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 216, column: 6)
!2868 = !DILocation(line: 216, column: 6, scope: !2850)
!2869 = !DILocation(line: 217, column: 3, scope: !2867)
!2870 = !DILocation(line: 219, column: 6, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 219, column: 6)
!2872 = !DILocation(line: 219, column: 15, scope: !2871)
!2873 = !DILocation(line: 219, column: 25, scope: !2871)
!2874 = !DILocation(line: 219, column: 6, scope: !2850)
!2875 = !DILocation(line: 220, column: 11, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 219, column: 33)
!2877 = !DILocation(line: 220, column: 20, scope: !2876)
!2878 = !DILocation(line: 220, column: 30, scope: !2876)
!2879 = !DILocation(line: 220, column: 37, scope: !2876)
!2880 = !DILocation(line: 220, column: 9, scope: !2876)
!2881 = !DILocation(line: 221, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 221, column: 7)
!2883 = !DILocation(line: 221, column: 7, scope: !2876)
!2884 = !DILocation(line: 222, column: 11, scope: !2882)
!2885 = !DILocation(line: 222, column: 4, scope: !2882)
!2886 = !DILocation(line: 223, column: 2, scope: !2876)
!2887 = !DILocation(line: 225, column: 6, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 225, column: 6)
!2889 = !DILocation(line: 225, column: 6, scope: !2850)
!2890 = !DILocation(line: 226, column: 25, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 225, column: 30)
!2892 = !DILocation(line: 226, column: 11, scope: !2891)
!2893 = !DILocation(line: 226, column: 9, scope: !2891)
!2894 = !DILocation(line: 227, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 227, column: 7)
!2896 = !DILocation(line: 227, column: 7, scope: !2891)
!2897 = !DILocation(line: 228, column: 11, scope: !2895)
!2898 = !DILocation(line: 228, column: 4, scope: !2895)
!2899 = !DILocation(line: 229, column: 2, scope: !2891)
!2900 = !DILocation(line: 231, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 231, column: 6)
!2902 = !DILocation(line: 231, column: 15, scope: !2901)
!2903 = !DILocation(line: 231, column: 22, scope: !2901)
!2904 = !DILocation(line: 231, column: 25, scope: !2901)
!2905 = !DILocation(line: 231, column: 28, scope: !2901)
!2906 = !DILocation(line: 231, column: 37, scope: !2901)
!2907 = !DILocation(line: 231, column: 44, scope: !2901)
!2908 = !DILocation(line: 231, column: 48, scope: !2901)
!2909 = !DILocation(line: 231, column: 6, scope: !2850)
!2910 = !DILocation(line: 232, column: 11, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 231, column: 56)
!2912 = !DILocation(line: 232, column: 20, scope: !2911)
!2913 = !DILocation(line: 232, column: 27, scope: !2911)
!2914 = !DILocation(line: 232, column: 31, scope: !2911)
!2915 = !DILocation(line: 232, column: 38, scope: !2911)
!2916 = !DILocation(line: 232, column: 9, scope: !2911)
!2917 = !DILocation(line: 233, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 233, column: 7)
!2919 = !DILocation(line: 233, column: 7, scope: !2911)
!2920 = !DILocation(line: 234, column: 11, scope: !2918)
!2921 = !DILocation(line: 234, column: 4, scope: !2918)
!2922 = !DILocation(line: 235, column: 2, scope: !2911)
!2923 = !DILocation(line: 237, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 237, column: 6)
!2925 = !DILocation(line: 237, column: 15, scope: !2924)
!2926 = !DILocation(line: 237, column: 6, scope: !2850)
!2927 = !DILocation(line: 238, column: 11, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 237, column: 23)
!2929 = !DILocation(line: 238, column: 20, scope: !2928)
!2930 = !DILocation(line: 238, column: 27, scope: !2928)
!2931 = !DILocation(line: 238, column: 9, scope: !2928)
!2932 = !DILocation(line: 239, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 239, column: 7)
!2934 = !DILocation(line: 239, column: 7, scope: !2928)
!2935 = !DILocation(line: 240, column: 11, scope: !2933)
!2936 = !DILocation(line: 240, column: 4, scope: !2933)
!2937 = !DILocation(line: 241, column: 2, scope: !2928)
!2938 = !DILocation(line: 243, column: 2, scope: !2850)
!2939 = !DILocation(line: 244, column: 1, scope: !2850)
!2940 = distinct !DISubprogram(name: "pnp_bus_freeze", scope: !3, file: !3, line: 200, type: !1598, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2941 = !DILocalVariable(name: "dev", arg: 1, scope: !2940, file: !3, line: 200, type: !1566)
!2942 = !DILocation(line: 200, column: 42, scope: !2940)
!2943 = !DILocation(line: 202, column: 27, scope: !2940)
!2944 = !DILocation(line: 202, column: 32, scope: !2940)
!2945 = !DILocation(line: 202, column: 9, scope: !2940)
!2946 = !DILocation(line: 202, column: 2, scope: !2940)
!2947 = distinct !DISubprogram(name: "pnp_bus_poweroff", scope: !3, file: !3, line: 205, type: !1598, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2948 = !DILocalVariable(name: "dev", arg: 1, scope: !2947, file: !3, line: 205, type: !1566)
!2949 = !DILocation(line: 205, column: 44, scope: !2947)
!2950 = !DILocation(line: 207, column: 27, scope: !2947)
!2951 = !DILocation(line: 207, column: 32, scope: !2947)
!2952 = !DILocation(line: 207, column: 9, scope: !2947)
!2953 = !DILocation(line: 207, column: 2, scope: !2947)
!2954 = distinct !DISubprogram(name: "__pnp_bus_suspend", scope: !3, file: !3, line: 162, type: !1682, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!2955 = !DILocalVariable(name: "dev", arg: 1, scope: !2954, file: !3, line: 162, type: !1566)
!2956 = !DILocation(line: 162, column: 45, scope: !2954)
!2957 = !DILocalVariable(name: "state", arg: 2, scope: !2954, file: !3, line: 162, type: !1684)
!2958 = !DILocation(line: 162, column: 63, scope: !2954)
!2959 = !DILocalVariable(name: "pnp_dev", scope: !2954, file: !3, line: 164, type: !63)
!2960 = !DILocation(line: 164, column: 18, scope: !2954)
!2961 = !DILocalVariable(name: "__mptr", scope: !2962, file: !3, line: 164, type: !62)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 164, column: 28)
!2963 = !DILocation(line: 164, column: 28, scope: !2962)
!2964 = !DILocation(line: 164, column: 28, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 164, column: 28)
!2966 = !DILocalVariable(name: "pnp_drv", scope: !2954, file: !3, line: 165, type: !1993)
!2967 = !DILocation(line: 165, column: 21, scope: !2954)
!2968 = !DILocation(line: 165, column: 31, scope: !2954)
!2969 = !DILocation(line: 165, column: 40, scope: !2954)
!2970 = !DILocalVariable(name: "error", scope: !2954, file: !3, line: 166, type: !60)
!2971 = !DILocation(line: 166, column: 6, scope: !2954)
!2972 = !DILocation(line: 168, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 168, column: 6)
!2974 = !DILocation(line: 168, column: 6, scope: !2954)
!2975 = !DILocation(line: 169, column: 3, scope: !2973)
!2976 = !DILocation(line: 171, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 171, column: 6)
!2978 = !DILocation(line: 171, column: 15, scope: !2977)
!2979 = !DILocation(line: 171, column: 22, scope: !2977)
!2980 = !DILocation(line: 171, column: 25, scope: !2977)
!2981 = !DILocation(line: 171, column: 28, scope: !2977)
!2982 = !DILocation(line: 171, column: 37, scope: !2977)
!2983 = !DILocation(line: 171, column: 44, scope: !2977)
!2984 = !DILocation(line: 171, column: 48, scope: !2977)
!2985 = !DILocation(line: 171, column: 6, scope: !2954)
!2986 = !DILocation(line: 172, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 171, column: 57)
!2988 = !DILocation(line: 172, column: 20, scope: !2987)
!2989 = !DILocation(line: 172, column: 27, scope: !2987)
!2990 = !DILocation(line: 172, column: 31, scope: !2987)
!2991 = !DILocation(line: 172, column: 39, scope: !2987)
!2992 = !DILocation(line: 172, column: 9, scope: !2987)
!2993 = !DILocation(line: 173, column: 3, scope: !2987)
!2994 = !DILocation(line: 173, column: 3, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 173, column: 3)
!2996 = !DILocation(line: 174, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 174, column: 7)
!2998 = !DILocation(line: 174, column: 7, scope: !2987)
!2999 = !DILocation(line: 175, column: 11, scope: !2997)
!3000 = !DILocation(line: 175, column: 4, scope: !2997)
!3001 = !DILocation(line: 176, column: 2, scope: !2987)
!3002 = !DILocation(line: 178, column: 6, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 178, column: 6)
!3004 = !DILocation(line: 178, column: 15, scope: !3003)
!3005 = !DILocation(line: 178, column: 6, scope: !2954)
!3006 = !DILocation(line: 179, column: 11, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 178, column: 24)
!3008 = !DILocation(line: 179, column: 20, scope: !3007)
!3009 = !DILocation(line: 179, column: 28, scope: !3007)
!3010 = !DILocation(line: 179, column: 9, scope: !3007)
!3011 = !DILocation(line: 180, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 180, column: 7)
!3013 = !DILocation(line: 180, column: 7, scope: !3007)
!3014 = !DILocation(line: 181, column: 11, scope: !3012)
!3015 = !DILocation(line: 181, column: 4, scope: !3012)
!3016 = !DILocation(line: 182, column: 2, scope: !3007)
!3017 = !DILocation(line: 184, column: 6, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 184, column: 6)
!3019 = !DILocation(line: 184, column: 6, scope: !2954)
!3020 = !DILocation(line: 185, column: 24, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 184, column: 32)
!3022 = !DILocation(line: 185, column: 11, scope: !3021)
!3023 = !DILocation(line: 185, column: 9, scope: !3021)
!3024 = !DILocation(line: 186, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 186, column: 7)
!3026 = !DILocation(line: 186, column: 7, scope: !3021)
!3027 = !DILocation(line: 187, column: 11, scope: !3025)
!3028 = !DILocation(line: 187, column: 4, scope: !3025)
!3029 = !DILocation(line: 188, column: 2, scope: !3021)
!3030 = !DILocation(line: 190, column: 6, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 190, column: 6)
!3032 = !DILocation(line: 190, column: 6, scope: !2954)
!3033 = !DILocation(line: 191, column: 3, scope: !3031)
!3034 = !DILocation(line: 191, column: 12, scope: !3031)
!3035 = !DILocation(line: 191, column: 22, scope: !3031)
!3036 = !DILocation(line: 191, column: 30, scope: !3031)
!3037 = !DILocation(line: 192, column: 2, scope: !2954)
!3038 = !DILocation(line: 193, column: 1, scope: !2954)
!3039 = distinct !DISubprogram(name: "get_order", scope: !3040, file: !3040, line: 29, type: !3041, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!3040 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!60, !183}
!3043 = !DILocalVariable(name: "x", arg: 1, scope: !3044, file: !3045, line: 366, type: !254)
!3044 = distinct !DISubprogram(name: "fls64", scope: !3045, file: !3045, line: 366, type: !3046, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!3045 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!60, !254}
!3048 = !DILocation(line: 366, column: 40, scope: !3044, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 46, column: 9, scope: !3039)
!3050 = !DILocalVariable(name: "bitpos", scope: !3044, file: !3045, line: 368, type: !60)
!3051 = !DILocation(line: 368, column: 6, scope: !3044, inlinedAt: !3049)
!3052 = !DILocalVariable(name: "size", arg: 1, scope: !3039, file: !3040, line: 29, type: !183)
!3053 = !DILocation(line: 29, column: 63, scope: !3039)
!3054 = !DILocation(line: 31, column: 27, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3039, file: !3040, line: 31, column: 6)
!3056 = !DILocation(line: 31, column: 6, scope: !3055)
!3057 = !DILocation(line: 31, column: 6, scope: !3039)
!3058 = !DILocation(line: 32, column: 8, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3040, line: 32, column: 7)
!3060 = distinct !DILexicalBlock(scope: !3055, file: !3040, line: 31, column: 34)
!3061 = !DILocation(line: 32, column: 7, scope: !3060)
!3062 = !DILocation(line: 33, column: 4, scope: !3059)
!3063 = !DILocation(line: 35, column: 7, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !3040, line: 35, column: 7)
!3065 = !DILocation(line: 35, column: 12, scope: !3064)
!3066 = !DILocation(line: 35, column: 7, scope: !3060)
!3067 = !DILocation(line: 36, column: 4, scope: !3064)
!3068 = !DILocation(line: 38, column: 10, scope: !3060)
!3069 = !DILocation(line: 38, column: 28, scope: !3060)
!3070 = !DILocation(line: 38, column: 41, scope: !3060)
!3071 = !DILocation(line: 38, column: 3, scope: !3060)
!3072 = !DILocation(line: 41, column: 6, scope: !3039)
!3073 = !DILocation(line: 42, column: 7, scope: !3039)
!3074 = !DILocation(line: 46, column: 15, scope: !3039)
!3075 = !DILocation(line: 374, column: 2, scope: !3044, inlinedAt: !3049)
!3076 = !DILocation(line: 376, column: 14, scope: !3044, inlinedAt: !3049)
!3077 = !{i32 638751}
!3078 = !DILocation(line: 377, column: 9, scope: !3044, inlinedAt: !3049)
!3079 = !DILocation(line: 377, column: 16, scope: !3044, inlinedAt: !3049)
!3080 = !DILocation(line: 46, column: 2, scope: !3039)
!3081 = !DILocation(line: 48, column: 1, scope: !3039)
!3082 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3083, file: !3083, line: 30, type: !3084, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!3083 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!60, !252}
!3086 = !DILocation(line: 366, column: 40, scope: !3044, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 32, column: 9, scope: !3082)
!3088 = !DILocation(line: 368, column: 6, scope: !3044, inlinedAt: !3087)
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3082, file: !3083, line: 30, type: !252)
!3090 = !DILocation(line: 30, column: 21, scope: !3082)
!3091 = !DILocation(line: 32, column: 15, scope: !3082)
!3092 = !DILocation(line: 374, column: 2, scope: !3044, inlinedAt: !3087)
!3093 = !DILocation(line: 376, column: 14, scope: !3044, inlinedAt: !3087)
!3094 = !DILocation(line: 377, column: 9, scope: !3044, inlinedAt: !3087)
!3095 = !DILocation(line: 377, column: 16, scope: !3044, inlinedAt: !3087)
!3096 = !DILocation(line: 32, column: 18, scope: !3082)
!3097 = !DILocation(line: 32, column: 2, scope: !3082)
!3098 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1096, file: !1096, line: 137, type: !3099, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !106)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!62, !1027, !1369, !180, !58}
!3101 = !DILocalVariable(name: "s", arg: 1, scope: !3098, file: !1096, line: 137, type: !1027)
!3102 = !DILocation(line: 137, column: 54, scope: !3098)
!3103 = !DILocalVariable(name: "object", arg: 2, scope: !3098, file: !1096, line: 137, type: !1369)
!3104 = !DILocation(line: 137, column: 69, scope: !3098)
!3105 = !DILocalVariable(name: "size", arg: 3, scope: !3098, file: !1096, line: 138, type: !180)
!3106 = !DILocation(line: 138, column: 12, scope: !3098)
!3107 = !DILocalVariable(name: "flags", arg: 4, scope: !3098, file: !1096, line: 138, type: !58)
!3108 = !DILocation(line: 138, column: 24, scope: !3098)
!3109 = !DILocation(line: 140, column: 17, scope: !3098)
!3110 = !DILocation(line: 140, column: 2, scope: !3098)
