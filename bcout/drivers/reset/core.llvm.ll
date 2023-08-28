; ModuleID = '../bcout/drivers/reset/core.llvm.bc'
source_filename = "drivers/reset/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.reset_controller_dev = type { %struct.reset_control_ops*, %struct.module*, %struct.list_head, %struct.list_head, %struct.device*, %struct.device_node*, i32, i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)*, i32 }
%struct.reset_control_ops = type { i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)* }
%struct.module = type opaque
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.reset_control_lookup = type { %struct.list_head, i8*, i32, i8*, i8* }
%struct.reset_control = type { %struct.reset_controller_dev*, %struct.list_head, i32, %struct.kref, i8, i8, i8, %struct.atomic_t, %struct.atomic_t }
%struct.reset_control_array = type { %struct.reset_control, i32, [0 x %struct.reset_control*] }

@reset_list_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reset_list_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reset_list_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@reset_controller_list = internal global %struct.list_head { %struct.list_head* @reset_controller_list, %struct.list_head* @reset_controller_list }, align 8, !dbg !2119
@reset_lookup_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reset_lookup_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reset_lookup_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2121
@.str = private unnamed_addr constant [54 x i8] c"\014%s(): reset lookup entry badly specified, skipping\0A\00", align 1
@__func__.reset_controller_add_lookup = private unnamed_addr constant [28 x i8] c"reset_controller_add_lookup\00", align 1
@reset_lookup_list = internal global %struct.list_head { %struct.list_head* @reset_lookup_list, %struct.list_head* @reset_lookup_list }, align 8, !dbg !2123
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/reset/core.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"reset %s (ID: %u) is not acquired\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"reset-names\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_controller_register(%struct.reset_controller_dev* %rcdev) #0 !dbg !2130 {
entry:
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !2133, metadata !DIExpression()), !dbg !2134
  %0 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2135
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %0, i32 0, i32 7, !dbg !2137
  %1 = load i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)*, i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)** %of_xlate, align 8, !dbg !2137
  %tobool = icmp ne i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)* %1, null, !dbg !2135
  br i1 %tobool, label %if.end, label %if.then, !dbg !2138

if.then:                                          ; preds = %entry
  %2 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2139
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %2, i32 0, i32 6, !dbg !2141
  store i32 1, i32* %of_reset_n_cells, align 8, !dbg !2142
  %3 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2143
  %of_xlate1 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %3, i32 0, i32 7, !dbg !2144
  store i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)* @of_reset_simple_xlate, i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)** %of_xlate1, align 8, !dbg !2145
  br label %if.end, !dbg !2146

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2147
  %reset_control_head = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %4, i32 0, i32 3, !dbg !2148
  call void @INIT_LIST_HEAD(%struct.list_head* %reset_control_head) #7, !dbg !2149
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !2150
  %5 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2151
  %list = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %5, i32 0, i32 2, !dbg !2152
  call void @list_add(%struct.list_head* %list, %struct.list_head* @reset_controller_list) #7, !dbg !2153
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !2154
  ret i32 0, !dbg !2155
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_reset_simple_xlate(%struct.reset_controller_dev* %rcdev, %struct.of_phandle_args* %reset_spec) #0 !dbg !2156 {
entry:
  %retval = alloca i32, align 4
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  %reset_spec.addr = alloca %struct.of_phandle_args*, align 8
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !2157, metadata !DIExpression()), !dbg !2158
  store %struct.of_phandle_args* %reset_spec, %struct.of_phandle_args** %reset_spec.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %reset_spec.addr, metadata !2159, metadata !DIExpression()), !dbg !2160
  %0 = load %struct.of_phandle_args*, %struct.of_phandle_args** %reset_spec.addr, align 8, !dbg !2161
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %0, i32 0, i32 2, !dbg !2163
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !2161
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2161
  %2 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2164
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %2, i32 0, i32 8, !dbg !2165
  %3 = load i32, i32* %nr_resets, align 8, !dbg !2165
  %cmp = icmp uge i32 %1, %3, !dbg !2166
  br i1 %cmp, label %if.then, label %if.end, !dbg !2167

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2168
  br label %return, !dbg !2168

if.end:                                           ; preds = %entry
  %4 = load %struct.of_phandle_args*, %struct.of_phandle_args** %reset_spec.addr, align 8, !dbg !2169
  %args1 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %4, i32 0, i32 2, !dbg !2170
  %arrayidx2 = getelementptr [16 x i32], [16 x i32]* %args1, i64 0, i64 0, !dbg !2169
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !2169
  store i32 %5, i32* %retval, align 4, !dbg !2171
  br label %return, !dbg !2171

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2172
  ret i32 %6, !dbg !2172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2173 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2177, metadata !DIExpression()), !dbg !2178
  br label %do.body, !dbg !2179

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2180

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2182

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2180

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2184
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2184
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2184
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2184
  br label %do.end3, !dbg !2184

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2180

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2186
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2187
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2188
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2189
  ret void, !dbg !2190
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2191 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2194, metadata !DIExpression()), !dbg !2195
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2196, metadata !DIExpression()), !dbg !2197
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2198
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2199
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2200
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !2201
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2201
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #7, !dbg !2202
  ret void, !dbg !2203
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @reset_controller_unregister(%struct.reset_controller_dev* %rcdev) #0 !dbg !2204 {
entry:
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !2209
  %0 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2210
  %list = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %0, i32 0, i32 2, !dbg !2211
  call void @list_del(%struct.list_head* %list) #7, !dbg !2212
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !2213
  ret void, !dbg !2214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2215 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2216, metadata !DIExpression()), !dbg !2217
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2218
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !2219
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2220
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2221
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2222
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2223
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2224
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2225
  ret void, !dbg !2226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_reset_controller_register(%struct.device* %dev, %struct.reset_controller_dev* %rcdev) #0 !dbg !2227 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  %rcdevp = alloca %struct.reset_controller_dev**, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2230, metadata !DIExpression()), !dbg !2231
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev*** %rcdevp, metadata !2234, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2236, metadata !DIExpression()), !dbg !2237
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_reset_controller_release, i64 8, i32 3264) #7, !dbg !2238
  %0 = bitcast i8* %call to %struct.reset_controller_dev**, !dbg !2238
  store %struct.reset_controller_dev** %0, %struct.reset_controller_dev*** %rcdevp, align 8, !dbg !2239
  %1 = load %struct.reset_controller_dev**, %struct.reset_controller_dev*** %rcdevp, align 8, !dbg !2240
  %tobool = icmp ne %struct.reset_controller_dev** %1, null, !dbg !2240
  br i1 %tobool, label %if.end, label %if.then, !dbg !2242

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2243
  br label %return, !dbg !2243

if.end:                                           ; preds = %entry
  %2 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2244
  %call1 = call i32 @reset_controller_register(%struct.reset_controller_dev* %2) #7, !dbg !2245
  store i32 %call1, i32* %ret, align 4, !dbg !2246
  %3 = load i32, i32* %ret, align 4, !dbg !2247
  %tobool2 = icmp ne i32 %3, 0, !dbg !2247
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2249

if.then3:                                         ; preds = %if.end
  %4 = load %struct.reset_controller_dev**, %struct.reset_controller_dev*** %rcdevp, align 8, !dbg !2250
  %5 = bitcast %struct.reset_controller_dev** %4 to i8*, !dbg !2250
  call void @devres_free(i8* %5) #7, !dbg !2252
  %6 = load i32, i32* %ret, align 4, !dbg !2253
  store i32 %6, i32* %retval, align 4, !dbg !2254
  br label %return, !dbg !2254

if.end4:                                          ; preds = %if.end
  %7 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2255
  %8 = load %struct.reset_controller_dev**, %struct.reset_controller_dev*** %rcdevp, align 8, !dbg !2256
  store %struct.reset_controller_dev* %7, %struct.reset_controller_dev** %8, align 8, !dbg !2257
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2258
  %10 = load %struct.reset_controller_dev**, %struct.reset_controller_dev*** %rcdevp, align 8, !dbg !2259
  %11 = bitcast %struct.reset_controller_dev** %10 to i8*, !dbg !2259
  call void @devres_add(%struct.device* %9, i8* %11) #7, !dbg !2260
  %12 = load i32, i32* %ret, align 4, !dbg !2261
  store i32 %12, i32* %retval, align 4, !dbg !2262
  br label %return, !dbg !2262

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !2263
  ret i32 %13, !dbg !2263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2264 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2271, metadata !DIExpression()), !dbg !2272
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2273, metadata !DIExpression()), !dbg !2274
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2275, metadata !DIExpression()), !dbg !2276
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2277
  %1 = load i64, i64* %size.addr, align 8, !dbg !2278
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2279
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #7, !dbg !2280
  ret i8* %call, !dbg !2281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_reset_controller_release(%struct.device* %dev, i8* %res) #0 !dbg !2282 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2283, metadata !DIExpression()), !dbg !2284
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2287
  %1 = bitcast i8* %0 to %struct.reset_controller_dev**, !dbg !2288
  %2 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %1, align 8, !dbg !2289
  call void @reset_controller_unregister(%struct.reset_controller_dev* %2) #7, !dbg !2290
  ret void, !dbg !2291
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @reset_controller_add_lookup(%struct.reset_control_lookup* %lookup, i32 %num_entries) #0 !dbg !2292 {
entry:
  %lookup.addr = alloca %struct.reset_control_lookup*, align 8
  %num_entries.addr = alloca i32, align 4
  %entry1 = alloca %struct.reset_control_lookup*, align 8
  %i = alloca i32, align 4
  store %struct.reset_control_lookup* %lookup, %struct.reset_control_lookup** %lookup.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_lookup** %lookup.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i32 %num_entries, i32* %num_entries.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_entries.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.declare(metadata %struct.reset_control_lookup** %entry1, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @mutex_lock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !2304
  store i32 0, i32* %i, align 4, !dbg !2305
  br label %for.cond, !dbg !2307

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2308
  %1 = load i32, i32* %num_entries.addr, align 4, !dbg !2310
  %cmp = icmp ult i32 %0, %1, !dbg !2311
  br i1 %cmp, label %for.body, label %for.end, !dbg !2312

for.body:                                         ; preds = %for.cond
  %2 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup.addr, align 8, !dbg !2313
  %3 = load i32, i32* %i, align 4, !dbg !2315
  %idxprom = zext i32 %3 to i64, !dbg !2313
  %arrayidx = getelementptr %struct.reset_control_lookup, %struct.reset_control_lookup* %2, i64 %idxprom, !dbg !2313
  store %struct.reset_control_lookup* %arrayidx, %struct.reset_control_lookup** %entry1, align 8, !dbg !2316
  %4 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %entry1, align 8, !dbg !2317
  %dev_id = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %4, i32 0, i32 3, !dbg !2319
  %5 = load i8*, i8** %dev_id, align 8, !dbg !2319
  %tobool = icmp ne i8* %5, null, !dbg !2317
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2320

lor.lhs.false:                                    ; preds = %for.body
  %6 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %entry1, align 8, !dbg !2321
  %provider = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %6, i32 0, i32 1, !dbg !2322
  %7 = load i8*, i8** %provider, align 8, !dbg !2322
  %tobool2 = icmp ne i8* %7, null, !dbg !2321
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2323

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.reset_controller_add_lookup, i64 0, i64 0)) #8, !dbg !2324
  br label %for.inc, !dbg !2326

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %entry1, align 8, !dbg !2327
  %list = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %8, i32 0, i32 0, !dbg !2328
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @reset_lookup_list) #7, !dbg !2329
  br label %for.inc, !dbg !2330

for.inc:                                          ; preds = %if.end, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !2331
  %inc = add i32 %9, 1, !dbg !2331
  store i32 %inc, i32* %i, align 4, !dbg !2331
  br label %for.cond, !dbg !2332, !llvm.loop !2333

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !2335
  ret void, !dbg !2336
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2337 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2338, metadata !DIExpression()), !dbg !2339
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2340, metadata !DIExpression()), !dbg !2341
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2342
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2343
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2344
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2344
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2345
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_reset(%struct.reset_control* %rstc) #0 !dbg !2348 {
entry:
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !2351, metadata !DIExpression()), !dbg !2357
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2370, metadata !DIExpression()), !dbg !2371
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !2372, metadata !DIExpression()), !dbg !2374
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i98 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i98, metadata !2375, metadata !DIExpression()), !dbg !2376
  %v.addr.i.i99 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i99, metadata !2377, metadata !DIExpression()), !dbg !2385
  %size.addr.i.i100 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i100, metadata !2387, metadata !DIExpression()), !dbg !2388
  %v.addr.i101 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i101, metadata !2389, metadata !DIExpression()), !dbg !2390
  %v.addr.i1.i91 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i91, metadata !2391, metadata !DIExpression()), !dbg !2397
  %v.addr.i.i92 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i92, metadata !2403, metadata !DIExpression()), !dbg !2405
  %size.addr.i.i93 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i93, metadata !2407, metadata !DIExpression()), !dbg !2408
  %v.addr.i94 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i94, metadata !2409, metadata !DIExpression()), !dbg !2410
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2411, metadata !DIExpression()), !dbg !2415
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2377, metadata !DIExpression()), !dbg !2420
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2387, metadata !DIExpression()), !dbg !2422
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2423, metadata !DIExpression()), !dbg !2424
  %retval = alloca i32, align 4
  %rstc.addr = alloca %struct.reset_control*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on35 = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !2425, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2427, metadata !DIExpression()), !dbg !2428
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2429
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !2429
  br i1 %tobool, label %if.end, label %if.then, !dbg !2431

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2432
  br label %return, !dbg !2432

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2433, metadata !DIExpression()), !dbg !2436
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2436
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !2436
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !2436
  %lnot = xor i1 %call, true, !dbg !2436
  %lnot1 = xor i1 %lnot, true, !dbg !2436
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2436
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2436
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2437
  %tobool2 = icmp ne i32 %3, 0, !dbg !2437
  %lnot3 = xor i1 %tobool2, true, !dbg !2437
  %lnot5 = xor i1 %lnot3, true, !dbg !2437
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2437
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2437
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2437
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !2436

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !2437

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !2439

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2441

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2439

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 300, i32 2305, i64 12) #9, !dbg !2443, !srcloc !2445
  br label %do.end11, !dbg !2443

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #9, !dbg !2446, !srcloc !2448
  br label %do.body12, !dbg !2439

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2449

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2439

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !2439

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2436
  %tobool16 = icmp ne i32 %4, 0, !dbg !2436
  %lnot17 = xor i1 %tobool16, true, !dbg !2436
  %lnot19 = xor i1 %lnot17, true, !dbg !2436
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2436
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2436
  store i64 %conv21, i64* %tmp, align 8, !dbg !2437
  %5 = load i64, i64* %tmp, align 8, !dbg !2436
  %tobool22 = icmp ne i64 %5, 0, !dbg !2451
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2452

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !2453
  br label %return, !dbg !2453

if.end24:                                         ; preds = %if.end15
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2454
  %call25 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !2456
  br i1 %call25, label %if.then26, label %if.end29, !dbg !2457

if.then26:                                        ; preds = %if.end24
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2458
  %call27 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %7) #7, !dbg !2459
  %call28 = call i32 @reset_control_array_reset(%struct.reset_control_array* %call27) #7, !dbg !2460
  store i32 %call28, i32* %retval, align 4, !dbg !2461
  br label %return, !dbg !2461

if.end29:                                         ; preds = %if.end24
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2462
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 0, !dbg !2464
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !2464
  %ops = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %9, i32 0, i32 0, !dbg !2465
  %10 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops, align 8, !dbg !2465
  %reset = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %10, i32 0, i32 0, !dbg !2466
  %11 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %reset, align 8, !dbg !2466
  %tobool30 = icmp ne i32 (%struct.reset_controller_dev*, i64)* %11, null, !dbg !2462
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !2467

if.then31:                                        ; preds = %if.end29
  store i32 -524, i32* %retval, align 4, !dbg !2468
  br label %return, !dbg !2468

if.end32:                                         ; preds = %if.end29
  %12 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2469
  %shared = getelementptr inbounds %struct.reset_control, %struct.reset_control* %12, i32 0, i32 5, !dbg !2470
  %13 = load i8, i8* %shared, align 1, !dbg !2470
  %tobool33 = trunc i8 %13 to i1, !dbg !2470
  br i1 %tobool33, label %if.then34, label %if.else, !dbg !2471

if.then34:                                        ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on35, metadata !2472, metadata !DIExpression()), !dbg !2473
  %14 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2473
  %deassert_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %14, i32 0, i32 7, !dbg !2473
  store %struct.atomic_t* %deassert_count, %struct.atomic_t** %v.addr.i94, align 8
  %15 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i94, align 8, !dbg !2474
  %16 = bitcast %struct.atomic_t* %15 to i8*, !dbg !2474
  store i8* %16, i8** %v.addr.i.i92, align 8
  store i64 4, i64* %size.addr.i.i93, align 8
  %17 = load i8*, i8** %v.addr.i.i92, align 8, !dbg !2475
  %18 = load i64, i64* %size.addr.i.i93, align 8, !dbg !2476
  %conv.i.i95 = trunc i64 %18 to i32, !dbg !2476
  %call.i.i96 = call zeroext i1 @kasan_check_read(i8* %17, i32 %conv.i.i95) #10, !dbg !2477
  %19 = load i8*, i8** %v.addr.i.i92, align 8, !dbg !2478
  %20 = load i64, i64* %size.addr.i.i93, align 8, !dbg !2478
  call void @kcsan_check_access(i8* %19, i64 %20, i32 4) #10, !dbg !2478
  %21 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i94, align 8, !dbg !2479
  store %struct.atomic_t* %21, %struct.atomic_t** %v.addr.i1.i91, align 8
  %22 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i91, align 8, !dbg !2480
  %counter.i.i97 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %22, i32 0, i32 0, !dbg !2480
  %23 = load volatile i32, i32* %counter.i.i97, align 4, !dbg !2480
  %cmp = icmp ne i32 %23, 0, !dbg !2473
  %lnot38 = xor i1 %cmp, true, !dbg !2473
  %lnot40 = xor i1 %lnot38, true, !dbg !2473
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !2473
  store i32 %lnot.ext41, i32* %__ret_warn_on35, align 4, !dbg !2473
  %24 = load i32, i32* %__ret_warn_on35, align 4, !dbg !2481
  %tobool42 = icmp ne i32 %24, 0, !dbg !2481
  %lnot43 = xor i1 %tobool42, true, !dbg !2481
  %lnot45 = xor i1 %lnot43, true, !dbg !2481
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !2481
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !2481
  %tobool48 = icmp ne i64 %conv47, 0, !dbg !2481
  br i1 %tobool48, label %if.then49, label %if.end58, !dbg !2473

if.then49:                                        ; preds = %if.then34
  br label %do.body50, !dbg !2481

do.body50:                                        ; preds = %if.then49
  br label %do.body51, !dbg !2483

do.body51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !2485

do.end52:                                         ; preds = %do.body51
  br label %do.body53, !dbg !2483

do.body53:                                        ; preds = %do.end52
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 310, i32 2305, i64 12) #9, !dbg !2487, !srcloc !2489
  br label %do.end54, !dbg !2487

do.end54:                                         ; preds = %do.body53
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #9, !dbg !2490, !srcloc !2492
  br label %do.body55, !dbg !2483

do.body55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !2493

do.end56:                                         ; preds = %do.body55
  br label %do.end57, !dbg !2483

do.end57:                                         ; preds = %do.end56
  br label %if.end58, !dbg !2483

if.end58:                                         ; preds = %do.end57, %if.then34
  %25 = load i32, i32* %__ret_warn_on35, align 4, !dbg !2473
  %tobool60 = icmp ne i32 %25, 0, !dbg !2473
  %lnot61 = xor i1 %tobool60, true, !dbg !2473
  %lnot63 = xor i1 %lnot61, true, !dbg !2473
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !2473
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !2473
  store i64 %conv65, i64* %tmp59, align 8, !dbg !2481
  %26 = load i64, i64* %tmp59, align 8, !dbg !2473
  %tobool66 = icmp ne i64 %26, 0, !dbg !2495
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !2496

if.then67:                                        ; preds = %if.end58
  store i32 -22, i32* %retval, align 4, !dbg !2497
  br label %return, !dbg !2497

if.end68:                                         ; preds = %if.end58
  %27 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2498
  %triggered_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %27, i32 0, i32 8, !dbg !2499
  store %struct.atomic_t* %triggered_count, %struct.atomic_t** %v.addr.i101, align 8
  %28 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i101, align 8, !dbg !2500
  %29 = bitcast %struct.atomic_t* %28 to i8*, !dbg !2500
  store i8* %29, i8** %v.addr.i.i99, align 8
  store i64 4, i64* %size.addr.i.i100, align 8
  %30 = load i8*, i8** %v.addr.i.i99, align 8, !dbg !2501
  %31 = load i64, i64* %size.addr.i.i100, align 8, !dbg !2502
  %conv.i.i102 = trunc i64 %31 to i32, !dbg !2502
  %call.i.i103 = call zeroext i1 @kasan_check_write(i8* %30, i32 %conv.i.i102) #10, !dbg !2503
  %32 = load i8*, i8** %v.addr.i.i99, align 8, !dbg !2504
  %33 = load i64, i64* %size.addr.i.i100, align 8, !dbg !2504
  call void @kcsan_check_access(i8* %32, i64 %33, i32 7) #10, !dbg !2504
  %34 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i101, align 8, !dbg !2505
  store %struct.atomic_t* %34, %struct.atomic_t** %v.addr.i1.i98, align 8
  %35 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i98, align 8, !dbg !2506
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %35, %struct.atomic_t** %v.addr.i.i.i, align 8
  %36 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2507
  %37 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2374
  store i32 %37, i32* %__ret.i.i.i, align 4, !dbg !2374
  %38 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2374
  %39 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2374
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %39, i32 0, i32 0, !dbg !2374
  %40 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %38, i32* %counter.i.i.i) #9, !dbg !2374, !srcloc !2508
  store i32 %40, i32* %__ret.i.i.i, align 4, !dbg !2374
  %41 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2374
  store i32 %41, i32* %tmp.i.i.i, align 4, !dbg !2374
  %42 = load i32, i32* %tmp.i.i.i, align 4, !dbg !2374
  %add.i.i.i = add i32 %36, %42, !dbg !2509
  %cmp70 = icmp ne i32 %add.i.i.i, 1, !dbg !2510
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !2511

if.then72:                                        ; preds = %if.end68
  store i32 0, i32* %retval, align 4, !dbg !2512
  br label %return, !dbg !2512

if.end73:                                         ; preds = %if.end68
  br label %if.end77, !dbg !2513

if.else:                                          ; preds = %if.end32
  %43 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2514
  %acquired = getelementptr inbounds %struct.reset_control, %struct.reset_control* %43, i32 0, i32 4, !dbg !2517
  %44 = load i8, i8* %acquired, align 8, !dbg !2517
  %tobool74 = trunc i8 %44 to i1, !dbg !2517
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !2518

if.then75:                                        ; preds = %if.else
  store i32 -1, i32* %retval, align 4, !dbg !2519
  br label %return, !dbg !2519

if.end76:                                         ; preds = %if.else
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end73
  %45 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2520
  %rcdev78 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %45, i32 0, i32 0, !dbg !2521
  %46 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev78, align 8, !dbg !2521
  %ops79 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %46, i32 0, i32 0, !dbg !2522
  %47 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops79, align 8, !dbg !2522
  %reset80 = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %47, i32 0, i32 0, !dbg !2523
  %48 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %reset80, align 8, !dbg !2523
  %49 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2524
  %rcdev81 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %49, i32 0, i32 0, !dbg !2525
  %50 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev81, align 8, !dbg !2525
  %51 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2526
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %51, i32 0, i32 2, !dbg !2527
  %52 = load i32, i32* %id, align 8, !dbg !2527
  %conv82 = zext i32 %52 to i64, !dbg !2526
  %call83 = call i32 %48(%struct.reset_controller_dev* %50, i64 %conv82) #7, !dbg !2520
  store i32 %call83, i32* %ret, align 4, !dbg !2528
  %53 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2529
  %shared84 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %53, i32 0, i32 5, !dbg !2530
  %54 = load i8, i8* %shared84, align 1, !dbg !2530
  %tobool85 = trunc i8 %54 to i1, !dbg !2530
  br i1 %tobool85, label %land.lhs.true, label %if.end90, !dbg !2531

land.lhs.true:                                    ; preds = %if.end77
  %55 = load i32, i32* %ret, align 4, !dbg !2532
  %tobool87 = icmp ne i32 %55, 0, !dbg !2532
  br i1 %tobool87, label %if.then88, label %if.end90, !dbg !2533

if.then88:                                        ; preds = %land.lhs.true
  %56 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2534
  %triggered_count89 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %56, i32 0, i32 8, !dbg !2535
  store %struct.atomic_t* %triggered_count89, %struct.atomic_t** %v.addr.i, align 8
  %57 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2536
  %58 = bitcast %struct.atomic_t* %57 to i8*, !dbg !2536
  store i8* %58, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %59 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2537
  %60 = load i64, i64* %size.addr.i.i, align 8, !dbg !2538
  %conv.i.i = trunc i64 %60 to i32, !dbg !2538
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %59, i32 %conv.i.i) #10, !dbg !2539
  %61 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2540
  %62 = load i64, i64* %size.addr.i.i, align 8, !dbg !2540
  call void @kcsan_check_access(i8* %61, i64 %62, i32 7) #10, !dbg !2540
  %63 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2541
  store %struct.atomic_t* %63, %struct.atomic_t** %v.addr.i1.i, align 8
  %64 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2542
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %64, i32 0, i32 0, !dbg !2543
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #9, !dbg !2544, !srcloc !2545
  br label %if.end90, !dbg !2546

if.end90:                                         ; preds = %if.then88, %land.lhs.true, %if.end77
  %65 = load i32, i32* %ret, align 4, !dbg !2547
  store i32 %65, i32* %retval, align 4, !dbg !2548
  br label %return, !dbg !2548

return:                                           ; preds = %if.end90, %if.then75, %if.then72, %if.then67, %if.then31, %if.then26, %if.then23, %if.then
  %66 = load i32, i32* %retval, align 4, !dbg !2549
  ret i32 %66, !dbg !2549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2550 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2554, metadata !DIExpression()), !dbg !2555
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2556
  %1 = ptrtoint i8* %0 to i64, !dbg !2556
  %2 = inttoptr i64 %1 to i8*, !dbg !2556
  %3 = ptrtoint i8* %2 to i64, !dbg !2556
  %cmp = icmp uge i64 %3, -4095, !dbg !2556
  %lnot = xor i1 %cmp, true, !dbg !2556
  %lnot1 = xor i1 %lnot, true, !dbg !2556
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2556
  %conv = sext i32 %lnot.ext to i64, !dbg !2556
  %tobool = icmp ne i64 %conv, 0, !dbg !2556
  ret i1 %tobool, !dbg !2557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @reset_control_is_array(%struct.reset_control* %rstc) #0 !dbg !2558 {
entry:
  %rstc.addr = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !2561, metadata !DIExpression()), !dbg !2562
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2563
  %array = getelementptr inbounds %struct.reset_control, %struct.reset_control* %0, i32 0, i32 6, !dbg !2564
  %1 = load i8, i8* %array, align 2, !dbg !2564
  %tobool = trunc i8 %1 to i1, !dbg !2564
  ret i1 %tobool, !dbg !2565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_control_array_reset(%struct.reset_control_array* %resets) #0 !dbg !2566 {
entry:
  %retval = alloca i32, align 4
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !2569, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2571, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2573, metadata !DIExpression()), !dbg !2574
  store i32 0, i32* %i, align 4, !dbg !2575
  br label %for.cond, !dbg !2577

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2578
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !2580
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !2581
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !2581
  %cmp = icmp ult i32 %0, %2, !dbg !2582
  br i1 %cmp, label %for.body, label %for.end, !dbg !2583

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !2584
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !2586
  %4 = load i32, i32* %i, align 4, !dbg !2587
  %idxprom = sext i32 %4 to i64, !dbg !2584
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !2584
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !2584
  %call = call i32 @reset_control_reset(%struct.reset_control* %5) #7, !dbg !2588
  store i32 %call, i32* %ret, align 4, !dbg !2589
  %6 = load i32, i32* %ret, align 4, !dbg !2590
  %tobool = icmp ne i32 %6, 0, !dbg !2590
  br i1 %tobool, label %if.then, label %if.end, !dbg !2592

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %ret, align 4, !dbg !2593
  store i32 %7, i32* %retval, align 4, !dbg !2594
  br label %return, !dbg !2594

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2595

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !2596
  %inc = add i32 %8, 1, !dbg !2596
  store i32 %inc, i32* %i, align 4, !dbg !2596
  br label %for.cond, !dbg !2597, !llvm.loop !2598

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2600
  br label %return, !dbg !2600

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2601
  ret i32 %9, !dbg !2601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %rstc) #0 !dbg !2602 {
entry:
  %rstc.addr = alloca %struct.reset_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_control_array*, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2607, metadata !DIExpression()), !dbg !2609
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2609
  %1 = bitcast %struct.reset_control* %0 to i8*, !dbg !2609
  store i8* %1, i8** %__mptr, align 8, !dbg !2609
  br label %do.body, !dbg !2609

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2610

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2609
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2609
  %3 = bitcast i8* %add.ptr to %struct.reset_control_array*, !dbg !2609
  store %struct.reset_control_array* %3, %struct.reset_control_array** %tmp, align 8, !dbg !2610
  %4 = load %struct.reset_control_array*, %struct.reset_control_array** %tmp, align 8, !dbg !2609
  ret %struct.reset_control_array* %4, !dbg !2612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_assert(%struct.reset_control* %rstc) #0 !dbg !2613 {
entry:
  %v.addr.i1.i166 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i166, metadata !2391, metadata !DIExpression()), !dbg !2614
  %v.addr.i.i167 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i167, metadata !2403, metadata !DIExpression()), !dbg !2621
  %size.addr.i.i168 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i168, metadata !2407, metadata !DIExpression()), !dbg !2623
  %v.addr.i169 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i169, metadata !2409, metadata !DIExpression()), !dbg !2624
  %v.addr.i1.i160 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i160, metadata !2391, metadata !DIExpression()), !dbg !2625
  %v.addr.i.i161 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i161, metadata !2403, metadata !DIExpression()), !dbg !2630
  %size.addr.i.i162 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i162, metadata !2407, metadata !DIExpression()), !dbg !2632
  %v.addr.i163 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i163, metadata !2409, metadata !DIExpression()), !dbg !2633
  %i.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i.i, metadata !2351, metadata !DIExpression()), !dbg !2634
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !2370, metadata !DIExpression()), !dbg !2643
  %__ret.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i.i, metadata !2372, metadata !DIExpression()), !dbg !2644
  %tmp.i.i.i.i = alloca i32, align 4
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !2645, metadata !DIExpression()), !dbg !2646
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2647, metadata !DIExpression()), !dbg !2648
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2649, metadata !DIExpression()), !dbg !2650
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2377, metadata !DIExpression()), !dbg !2651
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2387, metadata !DIExpression()), !dbg !2653
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2654, metadata !DIExpression()), !dbg !2655
  %retval = alloca i32, align 4
  %rstc.addr = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on32 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  %__ret_warn_on66 = alloca i32, align 4
  %tmp91 = alloca i64, align 8
  %__ret_warn_on118 = alloca i32, align 4
  %tmp144 = alloca i64, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2658
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !2658
  br i1 %tobool, label %if.end, label %if.then, !dbg !2660

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2661
  br label %return, !dbg !2661

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2662, metadata !DIExpression()), !dbg !2665
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2665
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !2665
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !2665
  %lnot = xor i1 %call, true, !dbg !2665
  %lnot1 = xor i1 %lnot, true, !dbg !2665
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2665
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2665
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2666
  %tobool2 = icmp ne i32 %3, 0, !dbg !2666
  %lnot3 = xor i1 %tobool2, true, !dbg !2666
  %lnot5 = xor i1 %lnot3, true, !dbg !2666
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2666
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2666
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2666
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !2665

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !2666

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !2668

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2670

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2668

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 349, i32 2305, i64 12) #9, !dbg !2672, !srcloc !2674
  br label %do.end11, !dbg !2672

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #9, !dbg !2675, !srcloc !2677
  br label %do.body12, !dbg !2668

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2678

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2668

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !2668

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2665
  %tobool16 = icmp ne i32 %4, 0, !dbg !2665
  %lnot17 = xor i1 %tobool16, true, !dbg !2665
  %lnot19 = xor i1 %lnot17, true, !dbg !2665
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2665
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2665
  store i64 %conv21, i64* %tmp, align 8, !dbg !2666
  %5 = load i64, i64* %tmp, align 8, !dbg !2665
  %tobool22 = icmp ne i64 %5, 0, !dbg !2680
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2681

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !2682
  br label %return, !dbg !2682

if.end24:                                         ; preds = %if.end15
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2683
  %call25 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !2685
  br i1 %call25, label %if.then26, label %if.end29, !dbg !2686

if.then26:                                        ; preds = %if.end24
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2687
  %call27 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %7) #7, !dbg !2688
  %call28 = call i32 @reset_control_array_assert(%struct.reset_control_array* %call27) #7, !dbg !2689
  store i32 %call28, i32* %retval, align 4, !dbg !2690
  br label %return, !dbg !2690

if.end29:                                         ; preds = %if.end24
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2691
  %shared = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 5, !dbg !2692
  %9 = load i8, i8* %shared, align 1, !dbg !2692
  %tobool30 = trunc i8 %9 to i1, !dbg !2692
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !2693

if.then31:                                        ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on32, metadata !2694, metadata !DIExpression()), !dbg !2695
  %10 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2695
  %triggered_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %10, i32 0, i32 8, !dbg !2695
  store %struct.atomic_t* %triggered_count, %struct.atomic_t** %v.addr.i163, align 8
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i163, align 8, !dbg !2696
  %12 = bitcast %struct.atomic_t* %11 to i8*, !dbg !2696
  store i8* %12, i8** %v.addr.i.i161, align 8
  store i64 4, i64* %size.addr.i.i162, align 8
  %13 = load i8*, i8** %v.addr.i.i161, align 8, !dbg !2697
  %14 = load i64, i64* %size.addr.i.i162, align 8, !dbg !2698
  %conv.i.i164 = trunc i64 %14 to i32, !dbg !2698
  %call.i.i165 = call zeroext i1 @kasan_check_read(i8* %13, i32 %conv.i.i164) #10, !dbg !2699
  %15 = load i8*, i8** %v.addr.i.i161, align 8, !dbg !2700
  %16 = load i64, i64* %size.addr.i.i162, align 8, !dbg !2700
  call void @kcsan_check_access(i8* %15, i64 %16, i32 4) #10, !dbg !2700
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i163, align 8, !dbg !2701
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i1.i160, align 8
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i160, align 8, !dbg !2702
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %18, i32 0, i32 0, !dbg !2702
  %19 = load volatile i32, i32* %counter.i.i, align 4, !dbg !2702
  %cmp = icmp ne i32 %19, 0, !dbg !2695
  %lnot35 = xor i1 %cmp, true, !dbg !2695
  %lnot37 = xor i1 %lnot35, true, !dbg !2695
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2695
  store i32 %lnot.ext38, i32* %__ret_warn_on32, align 4, !dbg !2695
  %20 = load i32, i32* %__ret_warn_on32, align 4, !dbg !2703
  %tobool39 = icmp ne i32 %20, 0, !dbg !2703
  %lnot40 = xor i1 %tobool39, true, !dbg !2703
  %lnot42 = xor i1 %lnot40, true, !dbg !2703
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !2703
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !2703
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !2703
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !2695

if.then46:                                        ; preds = %if.then31
  br label %do.body47, !dbg !2703

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !2705

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !2707

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !2705

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 356, i32 2305, i64 12) #9, !dbg !2709, !srcloc !2711
  br label %do.end51, !dbg !2709

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #9, !dbg !2712, !srcloc !2714
  br label %do.body52, !dbg !2705

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !2715

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !2705

do.end54:                                         ; preds = %do.end53
  br label %if.end55, !dbg !2705

if.end55:                                         ; preds = %do.end54, %if.then31
  %21 = load i32, i32* %__ret_warn_on32, align 4, !dbg !2695
  %tobool57 = icmp ne i32 %21, 0, !dbg !2695
  %lnot58 = xor i1 %tobool57, true, !dbg !2695
  %lnot60 = xor i1 %lnot58, true, !dbg !2695
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2695
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !2695
  store i64 %conv62, i64* %tmp56, align 8, !dbg !2703
  %22 = load i64, i64* %tmp56, align 8, !dbg !2695
  %tobool63 = icmp ne i64 %22, 0, !dbg !2717
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2718

if.then64:                                        ; preds = %if.end55
  store i32 -22, i32* %retval, align 4, !dbg !2719
  br label %return, !dbg !2719

if.end65:                                         ; preds = %if.end55
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on66, metadata !2720, metadata !DIExpression()), !dbg !2721
  %23 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2721
  %deassert_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %23, i32 0, i32 7, !dbg !2721
  store %struct.atomic_t* %deassert_count, %struct.atomic_t** %v.addr.i169, align 8
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i169, align 8, !dbg !2722
  %25 = bitcast %struct.atomic_t* %24 to i8*, !dbg !2722
  store i8* %25, i8** %v.addr.i.i167, align 8
  store i64 4, i64* %size.addr.i.i168, align 8
  %26 = load i8*, i8** %v.addr.i.i167, align 8, !dbg !2723
  %27 = load i64, i64* %size.addr.i.i168, align 8, !dbg !2724
  %conv.i.i170 = trunc i64 %27 to i32, !dbg !2724
  %call.i.i171 = call zeroext i1 @kasan_check_read(i8* %26, i32 %conv.i.i170) #10, !dbg !2725
  %28 = load i8*, i8** %v.addr.i.i167, align 8, !dbg !2726
  %29 = load i64, i64* %size.addr.i.i168, align 8, !dbg !2726
  call void @kcsan_check_access(i8* %28, i64 %29, i32 4) #10, !dbg !2726
  %30 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i169, align 8, !dbg !2727
  store %struct.atomic_t* %30, %struct.atomic_t** %v.addr.i1.i166, align 8
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i166, align 8, !dbg !2728
  %counter.i.i172 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %31, i32 0, i32 0, !dbg !2728
  %32 = load volatile i32, i32* %counter.i.i172, align 4, !dbg !2728
  %cmp68 = icmp eq i32 %32, 0, !dbg !2721
  %lnot70 = xor i1 %cmp68, true, !dbg !2721
  %lnot72 = xor i1 %lnot70, true, !dbg !2721
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !2721
  store i32 %lnot.ext73, i32* %__ret_warn_on66, align 4, !dbg !2721
  %33 = load i32, i32* %__ret_warn_on66, align 4, !dbg !2729
  %tobool74 = icmp ne i32 %33, 0, !dbg !2729
  %lnot75 = xor i1 %tobool74, true, !dbg !2729
  %lnot77 = xor i1 %lnot75, true, !dbg !2729
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2729
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !2729
  %tobool80 = icmp ne i64 %conv79, 0, !dbg !2729
  br i1 %tobool80, label %if.then81, label %if.end90, !dbg !2721

if.then81:                                        ; preds = %if.end65
  br label %do.body82, !dbg !2729

do.body82:                                        ; preds = %if.then81
  br label %do.body83, !dbg !2731

do.body83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !2733

do.end84:                                         ; preds = %do.body83
  br label %do.body85, !dbg !2731

do.body85:                                        ; preds = %do.end84
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 359, i32 2305, i64 12) #9, !dbg !2735, !srcloc !2737
  br label %do.end86, !dbg !2735

do.end86:                                         ; preds = %do.body85
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 166) #9, !dbg !2738, !srcloc !2740
  br label %do.body87, !dbg !2731

do.body87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !2741

do.end88:                                         ; preds = %do.body87
  br label %do.end89, !dbg !2731

do.end89:                                         ; preds = %do.end88
  br label %if.end90, !dbg !2731

if.end90:                                         ; preds = %do.end89, %if.end65
  %34 = load i32, i32* %__ret_warn_on66, align 4, !dbg !2721
  %tobool92 = icmp ne i32 %34, 0, !dbg !2721
  %lnot93 = xor i1 %tobool92, true, !dbg !2721
  %lnot95 = xor i1 %lnot93, true, !dbg !2721
  %lnot.ext96 = zext i1 %lnot95 to i32, !dbg !2721
  %conv97 = sext i32 %lnot.ext96 to i64, !dbg !2721
  store i64 %conv97, i64* %tmp91, align 8, !dbg !2729
  %35 = load i64, i64* %tmp91, align 8, !dbg !2721
  %tobool98 = icmp ne i64 %35, 0, !dbg !2743
  br i1 %tobool98, label %if.then99, label %if.end100, !dbg !2744

if.then99:                                        ; preds = %if.end90
  store i32 -22, i32* %retval, align 4, !dbg !2745
  br label %return, !dbg !2745

if.end100:                                        ; preds = %if.end90
  %36 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2746
  %deassert_count101 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %36, i32 0, i32 7, !dbg !2747
  store %struct.atomic_t* %deassert_count101, %struct.atomic_t** %v.addr.i, align 8
  %37 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2748
  %38 = bitcast %struct.atomic_t* %37 to i8*, !dbg !2748
  store i8* %38, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %39 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2749
  %40 = load i64, i64* %size.addr.i.i, align 8, !dbg !2750
  %conv.i.i = trunc i64 %40 to i32, !dbg !2750
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %39, i32 %conv.i.i) #10, !dbg !2751
  %41 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2752
  %42 = load i64, i64* %size.addr.i.i, align 8, !dbg !2752
  call void @kcsan_check_access(i8* %41, i64 %42, i32 7) #10, !dbg !2752
  %43 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2753
  store %struct.atomic_t* %43, %struct.atomic_t** %v.addr.i1.i, align 8
  %44 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2754
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %44, %struct.atomic_t** %v.addr.i.i.i, align 8
  %45 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2755
  %sub.i.i.i = sub i32 0, %45, !dbg !2756
  %46 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2757
  store i32 %sub.i.i.i, i32* %i.addr.i.i.i.i, align 4
  store %struct.atomic_t* %46, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %47 = load i32, i32* %i.addr.i.i.i.i, align 4, !dbg !2758
  %48 = load i32, i32* %i.addr.i.i.i.i, align 4, !dbg !2644
  store i32 %48, i32* %__ret.i.i.i.i, align 4, !dbg !2644
  %49 = load i32, i32* %__ret.i.i.i.i, align 4, !dbg !2644
  %50 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !2644
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %50, i32 0, i32 0, !dbg !2644
  %51 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i.i, i32 %49, i32* %counter.i.i.i.i) #9, !dbg !2644, !srcloc !2508
  store i32 %51, i32* %__ret.i.i.i.i, align 4, !dbg !2644
  %52 = load i32, i32* %__ret.i.i.i.i, align 4, !dbg !2644
  store i32 %52, i32* %tmp.i.i.i.i, align 4, !dbg !2644
  %53 = load i32, i32* %tmp.i.i.i.i, align 4, !dbg !2644
  %add.i.i.i.i = add i32 %47, %53, !dbg !2759
  %cmp103 = icmp ne i32 %add.i.i.i.i, 0, !dbg !2760
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !2761

if.then105:                                       ; preds = %if.end100
  store i32 0, i32* %retval, align 4, !dbg !2762
  br label %return, !dbg !2762

if.end106:                                        ; preds = %if.end100
  %54 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2763
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %54, i32 0, i32 0, !dbg !2765
  %55 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !2765
  %ops = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %55, i32 0, i32 0, !dbg !2766
  %56 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops, align 8, !dbg !2766
  %assert = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %56, i32 0, i32 1, !dbg !2767
  %57 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %assert, align 8, !dbg !2767
  %tobool107 = icmp ne i32 (%struct.reset_controller_dev*, i64)* %57, null, !dbg !2763
  br i1 %tobool107, label %if.end109, label %if.then108, !dbg !2768

if.then108:                                       ; preds = %if.end106
  store i32 0, i32* %retval, align 4, !dbg !2769
  br label %return, !dbg !2769

if.end109:                                        ; preds = %if.end106
  br label %if.end152, !dbg !2770

if.else:                                          ; preds = %if.end29
  %58 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2771
  %rcdev110 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %58, i32 0, i32 0, !dbg !2774
  %59 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev110, align 8, !dbg !2774
  %ops111 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %59, i32 0, i32 0, !dbg !2775
  %60 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops111, align 8, !dbg !2775
  %assert112 = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %60, i32 0, i32 1, !dbg !2776
  %61 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %assert112, align 8, !dbg !2776
  %tobool113 = icmp ne i32 (%struct.reset_controller_dev*, i64)* %61, null, !dbg !2771
  br i1 %tobool113, label %if.end115, label %if.then114, !dbg !2777

if.then114:                                       ; preds = %if.else
  store i32 -524, i32* %retval, align 4, !dbg !2778
  br label %return, !dbg !2778

if.end115:                                        ; preds = %if.else
  %62 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2779
  %acquired = getelementptr inbounds %struct.reset_control, %struct.reset_control* %62, i32 0, i32 4, !dbg !2781
  %63 = load i8, i8* %acquired, align 8, !dbg !2781
  %tobool116 = trunc i8 %63 to i1, !dbg !2781
  br i1 %tobool116, label %if.end151, label %if.then117, !dbg !2782

if.then117:                                       ; preds = %if.end115
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on118, metadata !2783, metadata !DIExpression()), !dbg !2786
  store i32 1, i32* %__ret_warn_on118, align 4, !dbg !2786
  %64 = load i32, i32* %__ret_warn_on118, align 4, !dbg !2787
  %tobool119 = icmp ne i32 %64, 0, !dbg !2787
  %lnot120 = xor i1 %tobool119, true, !dbg !2787
  %lnot122 = xor i1 %lnot120, true, !dbg !2787
  %lnot.ext123 = zext i1 %lnot122 to i32, !dbg !2787
  %conv124 = sext i32 %lnot.ext123 to i64, !dbg !2787
  %tobool125 = icmp ne i64 %conv124, 0, !dbg !2787
  br i1 %tobool125, label %if.then126, label %if.end143, !dbg !2786

if.then126:                                       ; preds = %if.then117
  br label %do.body127, !dbg !2787

do.body127:                                       ; preds = %if.then126
  br label %do.body128, !dbg !2789

do.body128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !2791

do.end129:                                        ; preds = %do.body128
  %65 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2789
  %rcdev130 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %65, i32 0, i32 0, !dbg !2789
  %66 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev130, align 8, !dbg !2789
  %call131 = call i8* @rcdev_name(%struct.reset_controller_dev* %66) #7, !dbg !2789
  %67 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2789
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %67, i32 0, i32 2, !dbg !2789
  %68 = load i32, i32* %id, align 8, !dbg !2789
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %call131, i32 %68) #7, !dbg !2789
  br label %do.body132, !dbg !2789

do.body132:                                       ; preds = %do.end129
  br label %do.body133, !dbg !2793

do.body133:                                       ; preds = %do.body132
  br label %do.end134, !dbg !2795

do.end134:                                        ; preds = %do.body133
  br label %do.body135, !dbg !2793

do.body135:                                       ; preds = %do.end134
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 2313, i64 12) #9, !dbg !2797, !srcloc !2799
  br label %do.end136, !dbg !2797

do.end136:                                        ; preds = %do.body135
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 167) #9, !dbg !2800, !srcloc !2802
  br label %do.body137, !dbg !2793

do.body137:                                       ; preds = %do.end136
  br label %do.end138, !dbg !2803

do.end138:                                        ; preds = %do.body137
  br label %do.end139, !dbg !2793

do.end139:                                        ; preds = %do.end138
  br label %do.body140, !dbg !2789

do.body140:                                       ; preds = %do.end139
  br label %do.end141, !dbg !2805

do.end141:                                        ; preds = %do.body140
  br label %do.end142, !dbg !2789

do.end142:                                        ; preds = %do.end141
  br label %if.end143, !dbg !2789

if.end143:                                        ; preds = %do.end142, %if.then117
  %69 = load i32, i32* %__ret_warn_on118, align 4, !dbg !2786
  %tobool145 = icmp ne i32 %69, 0, !dbg !2786
  %lnot146 = xor i1 %tobool145, true, !dbg !2786
  %lnot148 = xor i1 %lnot146, true, !dbg !2786
  %lnot.ext149 = zext i1 %lnot148 to i32, !dbg !2786
  %conv150 = sext i32 %lnot.ext149 to i64, !dbg !2786
  store i64 %conv150, i64* %tmp144, align 8, !dbg !2787
  %70 = load i64, i64* %tmp144, align 8, !dbg !2786
  store i32 -1, i32* %retval, align 4, !dbg !2807
  br label %return, !dbg !2807

if.end151:                                        ; preds = %if.end115
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end109
  %71 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2808
  %rcdev153 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %71, i32 0, i32 0, !dbg !2809
  %72 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev153, align 8, !dbg !2809
  %ops154 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %72, i32 0, i32 0, !dbg !2810
  %73 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops154, align 8, !dbg !2810
  %assert155 = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %73, i32 0, i32 1, !dbg !2811
  %74 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %assert155, align 8, !dbg !2811
  %75 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2812
  %rcdev156 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %75, i32 0, i32 0, !dbg !2813
  %76 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev156, align 8, !dbg !2813
  %77 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2814
  %id157 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %77, i32 0, i32 2, !dbg !2815
  %78 = load i32, i32* %id157, align 8, !dbg !2815
  %conv158 = zext i32 %78 to i64, !dbg !2814
  %call159 = call i32 %74(%struct.reset_controller_dev* %76, i64 %conv158) #7, !dbg !2808
  store i32 %call159, i32* %retval, align 4, !dbg !2816
  br label %return, !dbg !2816

return:                                           ; preds = %if.end152, %if.end143, %if.then114, %if.then108, %if.then105, %if.then99, %if.then64, %if.then26, %if.then23, %if.then
  %79 = load i32, i32* %retval, align 4, !dbg !2817
  ret i32 %79, !dbg !2817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_control_array_assert(%struct.reset_control_array* %resets) #0 !dbg !2818 {
entry:
  %retval = alloca i32, align 4
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2823, metadata !DIExpression()), !dbg !2824
  store i32 0, i32* %i, align 4, !dbg !2825
  br label %for.cond, !dbg !2827

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2828
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !2830
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !2831
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !2831
  %cmp = icmp ult i32 %0, %2, !dbg !2832
  br i1 %cmp, label %for.body, label %for.end, !dbg !2833

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !2834
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !2836
  %4 = load i32, i32* %i, align 4, !dbg !2837
  %idxprom = sext i32 %4 to i64, !dbg !2834
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !2834
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !2834
  %call = call i32 @reset_control_assert(%struct.reset_control* %5) #7, !dbg !2838
  store i32 %call, i32* %ret, align 4, !dbg !2839
  %6 = load i32, i32* %ret, align 4, !dbg !2840
  %tobool = icmp ne i32 %6, 0, !dbg !2840
  br i1 %tobool, label %if.then, label %if.end, !dbg !2842

if.then:                                          ; preds = %for.body
  br label %err, !dbg !2843

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2844

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !2845
  %inc = add i32 %7, 1, !dbg !2845
  store i32 %inc, i32* %i, align 4, !dbg !2845
  br label %for.cond, !dbg !2846, !llvm.loop !2847

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !2850), !dbg !2851
  br label %while.cond, !dbg !2852

while.cond:                                       ; preds = %while.body, %err
  %8 = load i32, i32* %i, align 4, !dbg !2853
  %dec = add i32 %8, -1, !dbg !2853
  store i32 %dec, i32* %i, align 4, !dbg !2853
  %tobool1 = icmp ne i32 %8, 0, !dbg !2852
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2852

while.body:                                       ; preds = %while.cond
  %9 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !2854
  %rstc2 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %9, i32 0, i32 2, !dbg !2855
  %10 = load i32, i32* %i, align 4, !dbg !2856
  %idxprom3 = sext i32 %10 to i64, !dbg !2854
  %arrayidx4 = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc2, i64 0, i64 %idxprom3, !dbg !2854
  %11 = load %struct.reset_control*, %struct.reset_control** %arrayidx4, align 8, !dbg !2854
  %call5 = call i32 @reset_control_deassert(%struct.reset_control* %11) #7, !dbg !2857
  br label %while.cond, !dbg !2852, !llvm.loop !2858

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %ret, align 4, !dbg !2860
  store i32 %12, i32* %retval, align 4, !dbg !2861
  br label %return, !dbg !2861

return:                                           ; preds = %while.end, %for.end
  %13 = load i32, i32* %retval, align 4, !dbg !2862
  ret i32 %13, !dbg !2862
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @rcdev_name(%struct.reset_controller_dev* %rcdev) #0 !dbg !2863 {
entry:
  %retval = alloca i8*, align 8
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !2866, metadata !DIExpression()), !dbg !2867
  %0 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2868
  %dev = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %0, i32 0, i32 4, !dbg !2870
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2870
  %tobool = icmp ne %struct.device* %1, null, !dbg !2868
  br i1 %tobool, label %if.then, label %if.end, !dbg !2871

if.then:                                          ; preds = %entry
  %2 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2872
  %dev1 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %2, i32 0, i32 4, !dbg !2873
  %3 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !2873
  %call = call i8* @dev_name(%struct.device* %3) #7, !dbg !2874
  store i8* %call, i8** %retval, align 8, !dbg !2875
  br label %return, !dbg !2875

if.end:                                           ; preds = %entry
  %4 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2876
  %of_node = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %4, i32 0, i32 5, !dbg !2878
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2878
  %tobool2 = icmp ne %struct.device_node* %5, null, !dbg !2876
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2879

if.then3:                                         ; preds = %if.end
  %6 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !2880
  %of_node4 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %6, i32 0, i32 5, !dbg !2881
  %7 = load %struct.device_node*, %struct.device_node** %of_node4, align 8, !dbg !2881
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %7, i32 0, i32 2, !dbg !2882
  %8 = load i8*, i8** %full_name, align 8, !dbg !2882
  store i8* %8, i8** %retval, align 8, !dbg !2883
  br label %return, !dbg !2883

if.end5:                                          ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !2884
  br label %return, !dbg !2884

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !2885
  ret i8* %9, !dbg !2885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_deassert(%struct.reset_control* %rstc) #0 !dbg !2886 {
entry:
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !2351, metadata !DIExpression()), !dbg !2887
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2370, metadata !DIExpression()), !dbg !2894
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !2372, metadata !DIExpression()), !dbg !2895
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i118 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i118, metadata !2375, metadata !DIExpression()), !dbg !2896
  %v.addr.i.i119 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i119, metadata !2377, metadata !DIExpression()), !dbg !2897
  %size.addr.i.i120 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i120, metadata !2387, metadata !DIExpression()), !dbg !2899
  %v.addr.i121 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i121, metadata !2389, metadata !DIExpression()), !dbg !2900
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2391, metadata !DIExpression()), !dbg !2901
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2403, metadata !DIExpression()), !dbg !2906
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2407, metadata !DIExpression()), !dbg !2908
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2409, metadata !DIExpression()), !dbg !2909
  %retval = alloca i32, align 4
  %rstc.addr = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on32 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  %__ret_warn_on73 = alloca i32, align 4
  %tmp98 = alloca i64, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2912
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !2912
  br i1 %tobool, label %if.end, label %if.then, !dbg !2914

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2915
  br label %return, !dbg !2915

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2916, metadata !DIExpression()), !dbg !2919
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2919
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !2919
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !2919
  %lnot = xor i1 %call, true, !dbg !2919
  %lnot1 = xor i1 %lnot, true, !dbg !2919
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2919
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2919
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2920
  %tobool2 = icmp ne i32 %3, 0, !dbg !2920
  %lnot3 = xor i1 %tobool2, true, !dbg !2920
  %lnot5 = xor i1 %lnot3, true, !dbg !2920
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2920
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2920
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2920
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !2919

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !2920

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !2922

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2924

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2922

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 407, i32 2305, i64 12) #9, !dbg !2926, !srcloc !2928
  br label %do.end11, !dbg !2926

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #9, !dbg !2929, !srcloc !2931
  br label %do.body12, !dbg !2922

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2932

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2922

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !2922

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2919
  %tobool16 = icmp ne i32 %4, 0, !dbg !2919
  %lnot17 = xor i1 %tobool16, true, !dbg !2919
  %lnot19 = xor i1 %lnot17, true, !dbg !2919
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2919
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2919
  store i64 %conv21, i64* %tmp, align 8, !dbg !2920
  %5 = load i64, i64* %tmp, align 8, !dbg !2919
  %tobool22 = icmp ne i64 %5, 0, !dbg !2934
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2935

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !2936
  br label %return, !dbg !2936

if.end24:                                         ; preds = %if.end15
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2937
  %call25 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !2939
  br i1 %call25, label %if.then26, label %if.end29, !dbg !2940

if.then26:                                        ; preds = %if.end24
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2941
  %call27 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %7) #7, !dbg !2942
  %call28 = call i32 @reset_control_array_deassert(%struct.reset_control_array* %call27) #7, !dbg !2943
  store i32 %call28, i32* %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

if.end29:                                         ; preds = %if.end24
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2945
  %shared = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 5, !dbg !2946
  %9 = load i8, i8* %shared, align 1, !dbg !2946
  %tobool30 = trunc i8 %9 to i1, !dbg !2946
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !2947

if.then31:                                        ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on32, metadata !2948, metadata !DIExpression()), !dbg !2949
  %10 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2949
  %triggered_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %10, i32 0, i32 8, !dbg !2949
  store %struct.atomic_t* %triggered_count, %struct.atomic_t** %v.addr.i, align 8
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2950
  %12 = bitcast %struct.atomic_t* %11 to i8*, !dbg !2950
  store i8* %12, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %13 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2951
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !2952
  %conv.i.i = trunc i64 %14 to i32, !dbg !2952
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %13, i32 %conv.i.i) #10, !dbg !2953
  %15 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2954
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !2954
  call void @kcsan_check_access(i8* %15, i64 %16, i32 4) #10, !dbg !2954
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2955
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i1.i, align 8
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2956
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %18, i32 0, i32 0, !dbg !2956
  %19 = load volatile i32, i32* %counter.i.i, align 4, !dbg !2956
  %cmp = icmp ne i32 %19, 0, !dbg !2949
  %lnot35 = xor i1 %cmp, true, !dbg !2949
  %lnot37 = xor i1 %lnot35, true, !dbg !2949
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !2949
  store i32 %lnot.ext38, i32* %__ret_warn_on32, align 4, !dbg !2949
  %20 = load i32, i32* %__ret_warn_on32, align 4, !dbg !2957
  %tobool39 = icmp ne i32 %20, 0, !dbg !2957
  %lnot40 = xor i1 %tobool39, true, !dbg !2957
  %lnot42 = xor i1 %lnot40, true, !dbg !2957
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !2957
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !2957
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !2957
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !2949

if.then46:                                        ; preds = %if.then31
  br label %do.body47, !dbg !2957

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !2959

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !2961

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !2959

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 414, i32 2305, i64 12) #9, !dbg !2963, !srcloc !2965
  br label %do.end51, !dbg !2963

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #9, !dbg !2966, !srcloc !2968
  br label %do.body52, !dbg !2959

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !2969

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !2959

do.end54:                                         ; preds = %do.end53
  br label %if.end55, !dbg !2959

if.end55:                                         ; preds = %do.end54, %if.then31
  %21 = load i32, i32* %__ret_warn_on32, align 4, !dbg !2949
  %tobool57 = icmp ne i32 %21, 0, !dbg !2949
  %lnot58 = xor i1 %tobool57, true, !dbg !2949
  %lnot60 = xor i1 %lnot58, true, !dbg !2949
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !2949
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !2949
  store i64 %conv62, i64* %tmp56, align 8, !dbg !2957
  %22 = load i64, i64* %tmp56, align 8, !dbg !2949
  %tobool63 = icmp ne i64 %22, 0, !dbg !2971
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2972

if.then64:                                        ; preds = %if.end55
  store i32 -22, i32* %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

if.end65:                                         ; preds = %if.end55
  %23 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2974
  %deassert_count = getelementptr inbounds %struct.reset_control, %struct.reset_control* %23, i32 0, i32 7, !dbg !2975
  store %struct.atomic_t* %deassert_count, %struct.atomic_t** %v.addr.i121, align 8
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i121, align 8, !dbg !2976
  %25 = bitcast %struct.atomic_t* %24 to i8*, !dbg !2976
  store i8* %25, i8** %v.addr.i.i119, align 8
  store i64 4, i64* %size.addr.i.i120, align 8
  %26 = load i8*, i8** %v.addr.i.i119, align 8, !dbg !2977
  %27 = load i64, i64* %size.addr.i.i120, align 8, !dbg !2978
  %conv.i.i122 = trunc i64 %27 to i32, !dbg !2978
  %call.i.i123 = call zeroext i1 @kasan_check_write(i8* %26, i32 %conv.i.i122) #10, !dbg !2979
  %28 = load i8*, i8** %v.addr.i.i119, align 8, !dbg !2980
  %29 = load i64, i64* %size.addr.i.i120, align 8, !dbg !2980
  call void @kcsan_check_access(i8* %28, i64 %29, i32 7) #10, !dbg !2980
  %30 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i121, align 8, !dbg !2981
  store %struct.atomic_t* %30, %struct.atomic_t** %v.addr.i1.i118, align 8
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i118, align 8, !dbg !2982
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %31, %struct.atomic_t** %v.addr.i.i.i, align 8
  %32 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2983
  %33 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2895
  store i32 %33, i32* %__ret.i.i.i, align 4, !dbg !2895
  %34 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2895
  %35 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2895
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %35, i32 0, i32 0, !dbg !2895
  %36 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %34, i32* %counter.i.i.i) #9, !dbg !2895, !srcloc !2508
  store i32 %36, i32* %__ret.i.i.i, align 4, !dbg !2895
  %37 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2895
  store i32 %37, i32* %tmp.i.i.i, align 4, !dbg !2895
  %38 = load i32, i32* %tmp.i.i.i, align 4, !dbg !2895
  %add.i.i.i = add i32 %32, %38, !dbg !2984
  %cmp67 = icmp ne i32 %add.i.i.i, 1, !dbg !2985
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !2986

if.then69:                                        ; preds = %if.end65
  store i32 0, i32* %retval, align 4, !dbg !2987
  br label %return, !dbg !2987

if.end70:                                         ; preds = %if.end65
  br label %if.end106, !dbg !2988

if.else:                                          ; preds = %if.end29
  %39 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !2989
  %acquired = getelementptr inbounds %struct.reset_control, %struct.reset_control* %39, i32 0, i32 4, !dbg !2992
  %40 = load i8, i8* %acquired, align 8, !dbg !2992
  %tobool71 = trunc i8 %40 to i1, !dbg !2992
  br i1 %tobool71, label %if.end105, label %if.then72, !dbg !2993

if.then72:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on73, metadata !2994, metadata !DIExpression()), !dbg !2997
  store i32 1, i32* %__ret_warn_on73, align 4, !dbg !2997
  %41 = load i32, i32* %__ret_warn_on73, align 4, !dbg !2998
  %tobool74 = icmp ne i32 %41, 0, !dbg !2998
  %lnot75 = xor i1 %tobool74, true, !dbg !2998
  %lnot77 = xor i1 %lnot75, true, !dbg !2998
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !2998
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !2998
  %tobool80 = icmp ne i64 %conv79, 0, !dbg !2998
  br i1 %tobool80, label %if.then81, label %if.end97, !dbg !2997

if.then81:                                        ; preds = %if.then72
  br label %do.body82, !dbg !2998

do.body82:                                        ; preds = %if.then81
  br label %do.body83, !dbg !3000

do.body83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !3002

do.end84:                                         ; preds = %do.body83
  %42 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3000
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %42, i32 0, i32 0, !dbg !3000
  %43 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3000
  %call85 = call i8* @rcdev_name(%struct.reset_controller_dev* %43) #7, !dbg !3000
  %44 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3000
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %44, i32 0, i32 2, !dbg !3000
  %45 = load i32, i32* %id, align 8, !dbg !3000
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %call85, i32 %45) #7, !dbg !3000
  br label %do.body86, !dbg !3000

do.body86:                                        ; preds = %do.end84
  br label %do.body87, !dbg !3004

do.body87:                                        ; preds = %do.body86
  br label %do.end88, !dbg !3006

do.end88:                                         ; preds = %do.body87
  br label %do.body89, !dbg !3004

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 422, i32 2313, i64 12) #9, !dbg !3008, !srcloc !3010
  br label %do.end90, !dbg !3008

do.end90:                                         ; preds = %do.body89
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #9, !dbg !3011, !srcloc !3013
  br label %do.body91, !dbg !3004

do.body91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !3014

do.end92:                                         ; preds = %do.body91
  br label %do.end93, !dbg !3004

do.end93:                                         ; preds = %do.end92
  br label %do.body94, !dbg !3000

do.body94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !3016

do.end95:                                         ; preds = %do.body94
  br label %do.end96, !dbg !3000

do.end96:                                         ; preds = %do.end95
  br label %if.end97, !dbg !3000

if.end97:                                         ; preds = %do.end96, %if.then72
  %46 = load i32, i32* %__ret_warn_on73, align 4, !dbg !2997
  %tobool99 = icmp ne i32 %46, 0, !dbg !2997
  %lnot100 = xor i1 %tobool99, true, !dbg !2997
  %lnot102 = xor i1 %lnot100, true, !dbg !2997
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !2997
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !2997
  store i64 %conv104, i64* %tmp98, align 8, !dbg !2998
  %47 = load i64, i64* %tmp98, align 8, !dbg !2997
  store i32 -1, i32* %retval, align 4, !dbg !3018
  br label %return, !dbg !3018

if.end105:                                        ; preds = %if.else
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end70
  %48 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3019
  %rcdev107 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %48, i32 0, i32 0, !dbg !3021
  %49 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev107, align 8, !dbg !3021
  %ops = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %49, i32 0, i32 0, !dbg !3022
  %50 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops, align 8, !dbg !3022
  %deassert = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %50, i32 0, i32 2, !dbg !3023
  %51 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %deassert, align 8, !dbg !3023
  %tobool108 = icmp ne i32 (%struct.reset_controller_dev*, i64)* %51, null, !dbg !3019
  br i1 %tobool108, label %if.end110, label %if.then109, !dbg !3024

if.then109:                                       ; preds = %if.end106
  store i32 0, i32* %retval, align 4, !dbg !3025
  br label %return, !dbg !3025

if.end110:                                        ; preds = %if.end106
  %52 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3026
  %rcdev111 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %52, i32 0, i32 0, !dbg !3027
  %53 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev111, align 8, !dbg !3027
  %ops112 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %53, i32 0, i32 0, !dbg !3028
  %54 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops112, align 8, !dbg !3028
  %deassert113 = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %54, i32 0, i32 2, !dbg !3029
  %55 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %deassert113, align 8, !dbg !3029
  %56 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3030
  %rcdev114 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %56, i32 0, i32 0, !dbg !3031
  %57 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev114, align 8, !dbg !3031
  %58 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3032
  %id115 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %58, i32 0, i32 2, !dbg !3033
  %59 = load i32, i32* %id115, align 8, !dbg !3033
  %conv116 = zext i32 %59 to i64, !dbg !3032
  %call117 = call i32 %55(%struct.reset_controller_dev* %57, i64 %conv116) #7, !dbg !3026
  store i32 %call117, i32* %retval, align 4, !dbg !3034
  br label %return, !dbg !3034

return:                                           ; preds = %if.end110, %if.then109, %if.end97, %if.then69, %if.then64, %if.then26, %if.then23, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !3035
  ret i32 %60, !dbg !3035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_control_array_deassert(%struct.reset_control_array* %resets) #0 !dbg !3036 {
entry:
  %retval = alloca i32, align 4
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i32 0, i32* %i, align 4, !dbg !3043
  br label %for.cond, !dbg !3045

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3046
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3048
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !3049
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !3049
  %cmp = icmp ult i32 %0, %2, !dbg !3050
  br i1 %cmp, label %for.body, label %for.end, !dbg !3051

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3052
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !3054
  %4 = load i32, i32* %i, align 4, !dbg !3055
  %idxprom = sext i32 %4 to i64, !dbg !3052
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !3052
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !3052
  %call = call i32 @reset_control_deassert(%struct.reset_control* %5) #7, !dbg !3056
  store i32 %call, i32* %ret, align 4, !dbg !3057
  %6 = load i32, i32* %ret, align 4, !dbg !3058
  %tobool = icmp ne i32 %6, 0, !dbg !3058
  br i1 %tobool, label %if.then, label %if.end, !dbg !3060

if.then:                                          ; preds = %for.body
  br label %err, !dbg !3061

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3062

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !3063
  %inc = add i32 %7, 1, !dbg !3063
  store i32 %inc, i32* %i, align 4, !dbg !3063
  br label %for.cond, !dbg !3064, !llvm.loop !3065

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3067
  br label %return, !dbg !3067

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !3068), !dbg !3069
  br label %while.cond, !dbg !3070

while.cond:                                       ; preds = %while.body, %err
  %8 = load i32, i32* %i, align 4, !dbg !3071
  %dec = add i32 %8, -1, !dbg !3071
  store i32 %dec, i32* %i, align 4, !dbg !3071
  %tobool1 = icmp ne i32 %8, 0, !dbg !3070
  br i1 %tobool1, label %while.body, label %while.end, !dbg !3070

while.body:                                       ; preds = %while.cond
  %9 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3072
  %rstc2 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %9, i32 0, i32 2, !dbg !3073
  %10 = load i32, i32* %i, align 4, !dbg !3074
  %idxprom3 = sext i32 %10 to i64, !dbg !3072
  %arrayidx4 = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc2, i64 0, i64 %idxprom3, !dbg !3072
  %11 = load %struct.reset_control*, %struct.reset_control** %arrayidx4, align 8, !dbg !3072
  %call5 = call i32 @reset_control_assert(%struct.reset_control* %11) #7, !dbg !3075
  br label %while.cond, !dbg !3070, !llvm.loop !3076

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %ret, align 4, !dbg !3078
  store i32 %12, i32* %retval, align 4, !dbg !3079
  br label %return, !dbg !3079

return:                                           ; preds = %while.end, %for.end
  %13 = load i32, i32* %retval, align 4, !dbg !3080
  ret i32 %13, !dbg !3080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_status(%struct.reset_control* %rstc) #0 !dbg !3081 {
entry:
  %retval = alloca i32, align 4
  %rstc.addr = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !3082, metadata !DIExpression()), !dbg !3083
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3084
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !3084
  br i1 %tobool, label %if.end, label %if.then, !dbg !3086

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3087
  br label %return, !dbg !3087

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3088, metadata !DIExpression()), !dbg !3091
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3091
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !3091
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !3091
  %lnot = xor i1 %call, true, !dbg !3091
  %lnot1 = xor i1 %lnot, true, !dbg !3091
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3091
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3091
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !3092
  %tobool2 = icmp ne i32 %3, 0, !dbg !3092
  %lnot3 = xor i1 %tobool2, true, !dbg !3092
  %lnot5 = xor i1 %lnot3, true, !dbg !3092
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3092
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3092
  %tobool7 = icmp ne i64 %conv, 0, !dbg !3092
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !3091

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !3092

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !3094

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !3096

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !3094

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 452, i32 2305, i64 12) #9, !dbg !3098, !srcloc !3100
  br label %do.end11, !dbg !3098

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #9, !dbg !3101, !srcloc !3103
  br label %do.body12, !dbg !3094

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3104

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !3094

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !3094

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3091
  %tobool16 = icmp ne i32 %4, 0, !dbg !3091
  %lnot17 = xor i1 %tobool16, true, !dbg !3091
  %lnot19 = xor i1 %lnot17, true, !dbg !3091
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3091
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3091
  store i64 %conv21, i64* %tmp, align 8, !dbg !3092
  %5 = load i64, i64* %tmp, align 8, !dbg !3091
  %tobool22 = icmp ne i64 %5, 0, !dbg !3106
  br i1 %tobool22, label %if.then25, label %lor.lhs.false, !dbg !3107

lor.lhs.false:                                    ; preds = %if.end15
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3108
  %call23 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !3109
  br i1 %call23, label %if.then25, label %if.end26, !dbg !3110

if.then25:                                        ; preds = %lor.lhs.false, %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !3111
  br label %return, !dbg !3111

if.end26:                                         ; preds = %lor.lhs.false
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3112
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %7, i32 0, i32 0, !dbg !3114
  %8 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3114
  %ops = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %8, i32 0, i32 0, !dbg !3115
  %9 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops, align 8, !dbg !3115
  %status = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %9, i32 0, i32 3, !dbg !3116
  %10 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %status, align 8, !dbg !3116
  %tobool27 = icmp ne i32 (%struct.reset_controller_dev*, i64)* %10, null, !dbg !3112
  br i1 %tobool27, label %if.then28, label %if.end35, !dbg !3117

if.then28:                                        ; preds = %if.end26
  %11 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3118
  %rcdev29 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %11, i32 0, i32 0, !dbg !3119
  %12 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev29, align 8, !dbg !3119
  %ops30 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %12, i32 0, i32 0, !dbg !3120
  %13 = load %struct.reset_control_ops*, %struct.reset_control_ops** %ops30, align 8, !dbg !3120
  %status31 = getelementptr inbounds %struct.reset_control_ops, %struct.reset_control_ops* %13, i32 0, i32 3, !dbg !3121
  %14 = load i32 (%struct.reset_controller_dev*, i64)*, i32 (%struct.reset_controller_dev*, i64)** %status31, align 8, !dbg !3121
  %15 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3122
  %rcdev32 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %15, i32 0, i32 0, !dbg !3123
  %16 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev32, align 8, !dbg !3123
  %17 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3124
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %17, i32 0, i32 2, !dbg !3125
  %18 = load i32, i32* %id, align 8, !dbg !3125
  %conv33 = zext i32 %18 to i64, !dbg !3124
  %call34 = call i32 %14(%struct.reset_controller_dev* %16, i64 %conv33) #7, !dbg !3118
  store i32 %call34, i32* %retval, align 4, !dbg !3126
  br label %return, !dbg !3126

if.end35:                                         ; preds = %if.end26
  store i32 -524, i32* %retval, align 4, !dbg !3127
  br label %return, !dbg !3127

return:                                           ; preds = %if.end35, %if.then28, %if.then25, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3128
  ret i32 %19, !dbg !3128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_acquire(%struct.reset_control* %rstc) #0 !dbg !3129 {
entry:
  %retval = alloca i32, align 4
  %rstc.addr = alloca %struct.reset_control*, align 8
  %rc = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp35 = alloca %struct.reset_control*, align 8
  %__mptr52 = alloca i8*, align 8
  %tmp57 = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rc, metadata !3132, metadata !DIExpression()), !dbg !3133
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3134
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !3134
  br i1 %tobool, label %if.end, label %if.then, !dbg !3136

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3137
  br label %return, !dbg !3137

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3138, metadata !DIExpression()), !dbg !3141
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3141
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !3141
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !3141
  %lnot = xor i1 %call, true, !dbg !3141
  %lnot1 = xor i1 %lnot, true, !dbg !3141
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3141
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3141
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !3142
  %tobool2 = icmp ne i32 %3, 0, !dbg !3142
  %lnot3 = xor i1 %tobool2, true, !dbg !3142
  %lnot5 = xor i1 %lnot3, true, !dbg !3142
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3142
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3142
  %tobool7 = icmp ne i64 %conv, 0, !dbg !3142
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !3141

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !3142

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !3144

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !3146

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !3144

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 489, i32 2305, i64 12) #9, !dbg !3148, !srcloc !3150
  br label %do.end11, !dbg !3148

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #9, !dbg !3151, !srcloc !3153
  br label %do.body12, !dbg !3144

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3154

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !3144

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !3144

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3141
  %tobool16 = icmp ne i32 %4, 0, !dbg !3141
  %lnot17 = xor i1 %tobool16, true, !dbg !3141
  %lnot19 = xor i1 %lnot17, true, !dbg !3141
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3141
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3141
  store i64 %conv21, i64* %tmp, align 8, !dbg !3142
  %5 = load i64, i64* %tmp, align 8, !dbg !3141
  %tobool22 = icmp ne i64 %5, 0, !dbg !3156
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3157

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !3158
  br label %return, !dbg !3158

if.end24:                                         ; preds = %if.end15
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3159
  %call25 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !3161
  br i1 %call25, label %if.then26, label %if.end29, !dbg !3162

if.then26:                                        ; preds = %if.end24
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3163
  %call27 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %7) #7, !dbg !3164
  %call28 = call i32 @reset_control_array_acquire(%struct.reset_control_array* %call27) #7, !dbg !3165
  store i32 %call28, i32* %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

if.end29:                                         ; preds = %if.end24
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !3167
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3168
  %acquired = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 4, !dbg !3170
  %9 = load i8, i8* %acquired, align 8, !dbg !3170
  %tobool30 = trunc i8 %9 to i1, !dbg !3170
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !3171

if.then31:                                        ; preds = %if.end29
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3172
  store i32 0, i32* %retval, align 4, !dbg !3174
  br label %return, !dbg !3174

if.end32:                                         ; preds = %if.end29
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3175, metadata !DIExpression()), !dbg !3178
  %10 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3178
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %10, i32 0, i32 0, !dbg !3178
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3178
  %reset_control_head = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %11, i32 0, i32 3, !dbg !3178
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %reset_control_head, i32 0, i32 0, !dbg !3178
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3178
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !3178
  store i8* %13, i8** %__mptr, align 8, !dbg !3178
  br label %do.body33, !dbg !3178

do.body33:                                        ; preds = %if.end32
  br label %do.end34, !dbg !3179

do.end34:                                         ; preds = %do.body33
  %14 = load i8*, i8** %__mptr, align 8, !dbg !3178
  %add.ptr = getelementptr i8, i8* %14, i64 -8, !dbg !3178
  %15 = bitcast i8* %add.ptr to %struct.reset_control*, !dbg !3178
  store %struct.reset_control* %15, %struct.reset_control** %tmp35, align 8, !dbg !3179
  %16 = load %struct.reset_control*, %struct.reset_control** %tmp35, align 8, !dbg !3178
  store %struct.reset_control* %16, %struct.reset_control** %rc, align 8, !dbg !3181
  br label %for.cond, !dbg !3181

for.cond:                                         ; preds = %do.end56, %do.end34
  %17 = load %struct.reset_control*, %struct.reset_control** %rc, align 8, !dbg !3182
  %list = getelementptr inbounds %struct.reset_control, %struct.reset_control* %17, i32 0, i32 1, !dbg !3182
  %18 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3182
  %rcdev36 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %18, i32 0, i32 0, !dbg !3182
  %19 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev36, align 8, !dbg !3182
  %reset_control_head37 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %19, i32 0, i32 3, !dbg !3182
  %cmp = icmp eq %struct.list_head* %list, %reset_control_head37, !dbg !3182
  %lnot39 = xor i1 %cmp, true, !dbg !3182
  br i1 %lnot39, label %for.body, label %for.end, !dbg !3181

for.body:                                         ; preds = %for.cond
  %20 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3184
  %21 = load %struct.reset_control*, %struct.reset_control** %rc, align 8, !dbg !3187
  %cmp41 = icmp ne %struct.reset_control* %20, %21, !dbg !3188
  br i1 %cmp41, label %land.lhs.true, label %if.end51, !dbg !3189

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3190
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %22, i32 0, i32 2, !dbg !3191
  %23 = load i32, i32* %id, align 8, !dbg !3191
  %24 = load %struct.reset_control*, %struct.reset_control** %rc, align 8, !dbg !3192
  %id43 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %24, i32 0, i32 2, !dbg !3193
  %25 = load i32, i32* %id43, align 8, !dbg !3193
  %cmp44 = icmp eq i32 %23, %25, !dbg !3194
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !3195

if.then46:                                        ; preds = %land.lhs.true
  %26 = load %struct.reset_control*, %struct.reset_control** %rc, align 8, !dbg !3196
  %acquired47 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %26, i32 0, i32 4, !dbg !3199
  %27 = load i8, i8* %acquired47, align 8, !dbg !3199
  %tobool48 = trunc i8 %27 to i1, !dbg !3199
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !3200

if.then49:                                        ; preds = %if.then46
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3201
  store i32 -16, i32* %retval, align 4, !dbg !3203
  br label %return, !dbg !3203

if.end50:                                         ; preds = %if.then46
  br label %if.end51, !dbg !3204

if.end51:                                         ; preds = %if.end50, %land.lhs.true, %for.body
  br label %for.inc, !dbg !3205

for.inc:                                          ; preds = %if.end51
  call void @llvm.dbg.declare(metadata i8** %__mptr52, metadata !3206, metadata !DIExpression()), !dbg !3208
  %28 = load %struct.reset_control*, %struct.reset_control** %rc, align 8, !dbg !3208
  %list53 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %28, i32 0, i32 1, !dbg !3208
  %next54 = getelementptr inbounds %struct.list_head, %struct.list_head* %list53, i32 0, i32 0, !dbg !3208
  %29 = load %struct.list_head*, %struct.list_head** %next54, align 8, !dbg !3208
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !3208
  store i8* %30, i8** %__mptr52, align 8, !dbg !3208
  br label %do.body55, !dbg !3208

do.body55:                                        ; preds = %for.inc
  br label %do.end56, !dbg !3209

do.end56:                                         ; preds = %do.body55
  %31 = load i8*, i8** %__mptr52, align 8, !dbg !3208
  %add.ptr58 = getelementptr i8, i8* %31, i64 -8, !dbg !3208
  %32 = bitcast i8* %add.ptr58 to %struct.reset_control*, !dbg !3208
  store %struct.reset_control* %32, %struct.reset_control** %tmp57, align 8, !dbg !3209
  %33 = load %struct.reset_control*, %struct.reset_control** %tmp57, align 8, !dbg !3208
  store %struct.reset_control* %33, %struct.reset_control** %rc, align 8, !dbg !3182
  br label %for.cond, !dbg !3182, !llvm.loop !3211

for.end:                                          ; preds = %for.cond
  %34 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3213
  %acquired59 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %34, i32 0, i32 4, !dbg !3214
  store i8 1, i8* %acquired59, align 8, !dbg !3215
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3216
  store i32 0, i32* %retval, align 4, !dbg !3217
  br label %return, !dbg !3217

return:                                           ; preds = %for.end, %if.then49, %if.then31, %if.then26, %if.then23, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !3218
  ret i32 %35, !dbg !3218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_control_array_acquire(%struct.reset_control_array* %resets) #0 !dbg !3219 {
entry:
  %retval = alloca i32, align 4
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i32 0, i32* %i, align 4, !dbg !3226
  br label %for.cond, !dbg !3228

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3229
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3231
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !3232
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !3232
  %cmp = icmp ult i32 %0, %2, !dbg !3233
  br i1 %cmp, label %for.body, label %for.end, !dbg !3234

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3235
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !3237
  %4 = load i32, i32* %i, align 4, !dbg !3238
  %idxprom = zext i32 %4 to i64, !dbg !3235
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !3235
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !3235
  %call = call i32 @reset_control_acquire(%struct.reset_control* %5) #7, !dbg !3239
  store i32 %call, i32* %err, align 4, !dbg !3240
  %6 = load i32, i32* %err, align 4, !dbg !3241
  %cmp1 = icmp slt i32 %6, 0, !dbg !3243
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3244

if.then:                                          ; preds = %for.body
  br label %release, !dbg !3245

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3246

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !3247
  %inc = add i32 %7, 1, !dbg !3247
  store i32 %inc, i32* %i, align 4, !dbg !3247
  br label %for.cond, !dbg !3248, !llvm.loop !3249

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3251
  br label %return, !dbg !3251

release:                                          ; preds = %if.then
  call void @llvm.dbg.label(metadata !3252), !dbg !3253
  br label %while.cond, !dbg !3254

while.cond:                                       ; preds = %while.body, %release
  %8 = load i32, i32* %i, align 4, !dbg !3255
  %dec = add i32 %8, -1, !dbg !3255
  store i32 %dec, i32* %i, align 4, !dbg !3255
  %tobool = icmp ne i32 %8, 0, !dbg !3254
  br i1 %tobool, label %while.body, label %while.end, !dbg !3254

while.body:                                       ; preds = %while.cond
  %9 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3256
  %rstc2 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %9, i32 0, i32 2, !dbg !3257
  %10 = load i32, i32* %i, align 4, !dbg !3258
  %idxprom3 = zext i32 %10 to i64, !dbg !3256
  %arrayidx4 = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc2, i64 0, i64 %idxprom3, !dbg !3256
  %11 = load %struct.reset_control*, %struct.reset_control** %arrayidx4, align 8, !dbg !3256
  call void @reset_control_release(%struct.reset_control* %11) #7, !dbg !3259
  br label %while.cond, !dbg !3254, !llvm.loop !3260

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %err, align 4, !dbg !3262
  store i32 %12, i32* %retval, align 4, !dbg !3263
  br label %return, !dbg !3263

return:                                           ; preds = %while.end, %for.end
  %13 = load i32, i32* %retval, align 4, !dbg !3264
  ret i32 %13, !dbg !3264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @reset_control_release(%struct.reset_control* %rstc) #0 !dbg !3265 {
entry:
  %rstc.addr = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3270
  %tobool = icmp ne %struct.reset_control* %0, null, !dbg !3270
  br i1 %tobool, label %lor.lhs.false, label %if.then21, !dbg !3272

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3273, metadata !DIExpression()), !dbg !3275
  %1 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3275
  %2 = bitcast %struct.reset_control* %1 to i8*, !dbg !3275
  %call = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !3275
  %lnot = xor i1 %call, true, !dbg !3275
  %lnot1 = xor i1 %lnot, true, !dbg !3275
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3275
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3275
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !3276
  %tobool2 = icmp ne i32 %3, 0, !dbg !3276
  %lnot3 = xor i1 %tobool2, true, !dbg !3276
  %lnot5 = xor i1 %lnot3, true, !dbg !3276
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3276
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3276
  %tobool7 = icmp ne i64 %conv, 0, !dbg !3276
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3275

if.then:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !3276

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !3278

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !3280

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !3278

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 530, i32 2305, i64 12) #9, !dbg !3282, !srcloc !3284
  br label %do.end10, !dbg !3282

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 175) #9, !dbg !3285, !srcloc !3287
  br label %do.body11, !dbg !3278

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !3288

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !3278

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !3278

if.end:                                           ; preds = %do.end13, %lor.lhs.false
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3275
  %tobool14 = icmp ne i32 %4, 0, !dbg !3275
  %lnot15 = xor i1 %tobool14, true, !dbg !3275
  %lnot17 = xor i1 %lnot15, true, !dbg !3275
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !3275
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !3275
  store i64 %conv19, i64* %tmp, align 8, !dbg !3276
  %5 = load i64, i64* %tmp, align 8, !dbg !3275
  %tobool20 = icmp ne i64 %5, 0, !dbg !3290
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3291

if.then21:                                        ; preds = %if.end, %entry
  br label %if.end26, !dbg !3292

if.end22:                                         ; preds = %if.end
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3293
  %call23 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %6) #7, !dbg !3295
  br i1 %call23, label %if.then24, label %if.else, !dbg !3296

if.then24:                                        ; preds = %if.end22
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3297
  %call25 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %7) #7, !dbg !3298
  call void @reset_control_array_release(%struct.reset_control_array* %call25) #7, !dbg !3299
  br label %if.end26, !dbg !3299

if.else:                                          ; preds = %if.end22
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3300
  %acquired = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 4, !dbg !3301
  store i8 0, i8* %acquired, align 8, !dbg !3302
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.else, %if.then24
  ret void, !dbg !3303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reset_control_array_release(%struct.reset_control_array* %resets) #0 !dbg !3304 {
entry:
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %i = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3309, metadata !DIExpression()), !dbg !3310
  store i32 0, i32* %i, align 4, !dbg !3311
  br label %for.cond, !dbg !3313

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3314
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3316
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !3317
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !3317
  %cmp = icmp ult i32 %0, %2, !dbg !3318
  br i1 %cmp, label %for.body, label %for.end, !dbg !3319

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3320
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !3321
  %4 = load i32, i32* %i, align 4, !dbg !3322
  %idxprom = zext i32 %4 to i64, !dbg !3320
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !3320
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !3320
  call void @reset_control_release(%struct.reset_control* %5) #7, !dbg !3323
  br label %for.inc, !dbg !3323

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !3324
  %inc = add i32 %6, 1, !dbg !3324
  store i32 %inc, i32* %i, align 4, !dbg !3324
  br label %for.cond, !dbg !3325, !llvm.loop !3326

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.reset_control* @__of_reset_control_get(%struct.device_node* %node, i8* %id, i32 %index, i1 zeroext %shared, i1 zeroext %optional, i1 zeroext %acquired) #0 !dbg !3329 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %id.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %rstc = alloca %struct.reset_control*, align 8
  %r = alloca %struct.reset_controller_dev*, align 8
  %rcdev = alloca %struct.reset_controller_dev*, align 8
  %args = alloca %struct.of_phandle_args, align 8
  %rstc_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_controller_dev*, align 8
  %__mptr41 = alloca i8*, align 8
  %tmp45 = alloca %struct.reset_controller_dev*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp72 = alloca i64, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3332, metadata !DIExpression()), !dbg !3333
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3334, metadata !DIExpression()), !dbg !3335
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3336, metadata !DIExpression()), !dbg !3337
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3338, metadata !DIExpression()), !dbg !3339
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3340, metadata !DIExpression()), !dbg !3341
  %frombool2 = zext i1 %acquired to i8
  store i8 %frombool2, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %r, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %args, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.declare(metadata i32* %rstc_id, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3354, metadata !DIExpression()), !dbg !3355
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3356
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3356
  br i1 %tobool, label %if.end, label %if.then, !dbg !3358

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #7, !dbg !3359
  %1 = bitcast i8* %call to %struct.reset_control*, !dbg !3359
  store %struct.reset_control* %1, %struct.reset_control** %retval, align 8, !dbg !3360
  br label %return, !dbg !3360

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %id.addr, align 8, !dbg !3361
  %tobool3 = icmp ne i8* %2, null, !dbg !3361
  br i1 %tobool3, label %if.then4, label %if.end16, !dbg !3363

if.then4:                                         ; preds = %if.end
  %3 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3364
  %4 = load i8*, i8** %id.addr, align 8, !dbg !3366
  %call5 = call i32 @of_property_match_string(%struct.device_node* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %4) #7, !dbg !3367
  store i32 %call5, i32* %index.addr, align 4, !dbg !3368
  %5 = load i32, i32* %index.addr, align 4, !dbg !3369
  %cmp = icmp eq i32 %5, -84, !dbg !3371
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !3372

if.then6:                                         ; preds = %if.then4
  %6 = load i32, i32* %index.addr, align 4, !dbg !3373
  %conv = sext i32 %6 to i64, !dbg !3373
  %call7 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !3374
  %7 = bitcast i8* %call7 to %struct.reset_control*, !dbg !3374
  store %struct.reset_control* %7, %struct.reset_control** %retval, align 8, !dbg !3375
  br label %return, !dbg !3375

if.end8:                                          ; preds = %if.then4
  %8 = load i32, i32* %index.addr, align 4, !dbg !3376
  %cmp9 = icmp slt i32 %8, 0, !dbg !3378
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !3379

if.then11:                                        ; preds = %if.end8
  %9 = load i8, i8* %optional.addr, align 1, !dbg !3380
  %tobool12 = trunc i8 %9 to i1, !dbg !3380
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !3380

cond.true:                                        ; preds = %if.then11
  br label %cond.end, !dbg !3380

cond.false:                                       ; preds = %if.then11
  %call14 = call i8* @ERR_PTR(i64 -2) #7, !dbg !3381
  br label %cond.end, !dbg !3380

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call14, %cond.false ], !dbg !3380
  %10 = bitcast i8* %cond to %struct.reset_control*, !dbg !3380
  store %struct.reset_control* %10, %struct.reset_control** %retval, align 8, !dbg !3382
  br label %return, !dbg !3382

if.end15:                                         ; preds = %if.end8
  br label %if.end16, !dbg !3383

if.end16:                                         ; preds = %if.end15, %if.end
  %11 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3384
  %12 = load i32, i32* %index.addr, align 4, !dbg !3385
  %call17 = call i32 @of_parse_phandle_with_args(%struct.device_node* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %12, %struct.of_phandle_args* %args) #7, !dbg !3386
  store i32 %call17, i32* %ret, align 4, !dbg !3387
  %13 = load i32, i32* %ret, align 4, !dbg !3388
  %cmp18 = icmp eq i32 %13, -22, !dbg !3390
  br i1 %cmp18, label %if.then20, label %if.end23, !dbg !3391

if.then20:                                        ; preds = %if.end16
  %14 = load i32, i32* %ret, align 4, !dbg !3392
  %conv21 = sext i32 %14 to i64, !dbg !3392
  %call22 = call i8* @ERR_PTR(i64 %conv21) #7, !dbg !3393
  %15 = bitcast i8* %call22 to %struct.reset_control*, !dbg !3393
  store %struct.reset_control* %15, %struct.reset_control** %retval, align 8, !dbg !3394
  br label %return, !dbg !3394

if.end23:                                         ; preds = %if.end16
  %16 = load i32, i32* %ret, align 4, !dbg !3395
  %tobool24 = icmp ne i32 %16, 0, !dbg !3395
  br i1 %tobool24, label %if.then25, label %if.end34, !dbg !3397

if.then25:                                        ; preds = %if.end23
  %17 = load i8, i8* %optional.addr, align 1, !dbg !3398
  %tobool26 = trunc i8 %17 to i1, !dbg !3398
  br i1 %tobool26, label %cond.true28, label %cond.false29, !dbg !3398

cond.true28:                                      ; preds = %if.then25
  br label %cond.end32, !dbg !3398

cond.false29:                                     ; preds = %if.then25
  %18 = load i32, i32* %ret, align 4, !dbg !3399
  %conv30 = sext i32 %18 to i64, !dbg !3399
  %call31 = call i8* @ERR_PTR(i64 %conv30) #7, !dbg !3400
  br label %cond.end32, !dbg !3398

cond.end32:                                       ; preds = %cond.false29, %cond.true28
  %cond33 = phi i8* [ null, %cond.true28 ], [ %call31, %cond.false29 ], !dbg !3398
  %19 = bitcast i8* %cond33 to %struct.reset_control*, !dbg !3398
  store %struct.reset_control* %19, %struct.reset_control** %retval, align 8, !dbg !3401
  br label %return, !dbg !3401

if.end34:                                         ; preds = %if.end23
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !3402
  store %struct.reset_controller_dev* null, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3403
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3404, metadata !DIExpression()), !dbg !3407
  %20 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @reset_controller_list, i32 0, i32 0), align 8, !dbg !3407
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !3407
  store i8* %21, i8** %__mptr, align 8, !dbg !3407
  br label %do.body, !dbg !3407

do.body:                                          ; preds = %if.end34
  br label %do.end, !dbg !3408

do.end:                                           ; preds = %do.body
  %22 = load i8*, i8** %__mptr, align 8, !dbg !3407
  %add.ptr = getelementptr i8, i8* %22, i64 -16, !dbg !3407
  %23 = bitcast i8* %add.ptr to %struct.reset_controller_dev*, !dbg !3407
  store %struct.reset_controller_dev* %23, %struct.reset_controller_dev** %tmp, align 8, !dbg !3408
  %24 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %tmp, align 8, !dbg !3407
  store %struct.reset_controller_dev* %24, %struct.reset_controller_dev** %r, align 8, !dbg !3410
  br label %for.cond, !dbg !3410

for.cond:                                         ; preds = %do.end44, %do.end
  %25 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %r, align 8, !dbg !3411
  %list = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %25, i32 0, i32 2, !dbg !3411
  %cmp35 = icmp eq %struct.list_head* %list, @reset_controller_list, !dbg !3411
  %lnot = xor i1 %cmp35, true, !dbg !3411
  br i1 %lnot, label %for.body, label %for.end, !dbg !3410

for.body:                                         ; preds = %for.cond
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !3413
  %26 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3413
  %27 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %r, align 8, !dbg !3416
  %of_node = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %27, i32 0, i32 5, !dbg !3417
  %28 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3417
  %cmp37 = icmp eq %struct.device_node* %26, %28, !dbg !3418
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !3419

if.then39:                                        ; preds = %for.body
  %29 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %r, align 8, !dbg !3420
  store %struct.reset_controller_dev* %29, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3422
  br label %for.end, !dbg !3423

if.end40:                                         ; preds = %for.body
  br label %for.inc, !dbg !3424

for.inc:                                          ; preds = %if.end40
  call void @llvm.dbg.declare(metadata i8** %__mptr41, metadata !3425, metadata !DIExpression()), !dbg !3427
  %30 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %r, align 8, !dbg !3427
  %list42 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %30, i32 0, i32 2, !dbg !3427
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list42, i32 0, i32 0, !dbg !3427
  %31 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3427
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !3427
  store i8* %32, i8** %__mptr41, align 8, !dbg !3427
  br label %do.body43, !dbg !3427

do.body43:                                        ; preds = %for.inc
  br label %do.end44, !dbg !3428

do.end44:                                         ; preds = %do.body43
  %33 = load i8*, i8** %__mptr41, align 8, !dbg !3427
  %add.ptr46 = getelementptr i8, i8* %33, i64 -16, !dbg !3427
  %34 = bitcast i8* %add.ptr46 to %struct.reset_controller_dev*, !dbg !3427
  store %struct.reset_controller_dev* %34, %struct.reset_controller_dev** %tmp45, align 8, !dbg !3428
  %35 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %tmp45, align 8, !dbg !3427
  store %struct.reset_controller_dev* %35, %struct.reset_controller_dev** %r, align 8, !dbg !3411
  br label %for.cond, !dbg !3411, !llvm.loop !3430

for.end:                                          ; preds = %if.then39, %for.cond
  %36 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3432
  %tobool47 = icmp ne %struct.reset_controller_dev* %36, null, !dbg !3432
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !3434

if.then48:                                        ; preds = %for.end
  %call49 = call i8* @ERR_PTR(i64 -517) #7, !dbg !3435
  %37 = bitcast i8* %call49 to %struct.reset_control*, !dbg !3435
  store %struct.reset_control* %37, %struct.reset_control** %rstc, align 8, !dbg !3437
  br label %out, !dbg !3438

if.end50:                                         ; preds = %for.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3439, metadata !DIExpression()), !dbg !3442
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 1, !dbg !3442
  %38 = load i32, i32* %args_count, align 8, !dbg !3442
  %39 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3442
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %39, i32 0, i32 6, !dbg !3442
  %40 = load i32, i32* %of_reset_n_cells, align 8, !dbg !3442
  %cmp51 = icmp ne i32 %38, %40, !dbg !3442
  %lnot53 = xor i1 %cmp51, true, !dbg !3442
  %lnot54 = xor i1 %lnot53, true, !dbg !3442
  %lnot.ext = zext i1 %lnot54 to i32, !dbg !3442
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3442
  %41 = load i32, i32* %__ret_warn_on, align 4, !dbg !3443
  %tobool55 = icmp ne i32 %41, 0, !dbg !3443
  %lnot56 = xor i1 %tobool55, true, !dbg !3443
  %lnot58 = xor i1 %lnot56, true, !dbg !3443
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !3443
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !3443
  %tobool61 = icmp ne i64 %conv60, 0, !dbg !3443
  br i1 %tobool61, label %if.then62, label %if.end71, !dbg !3442

if.then62:                                        ; preds = %if.end50
  br label %do.body63, !dbg !3443

do.body63:                                        ; preds = %if.then62
  br label %do.body64, !dbg !3445

do.body64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !3447

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !3445

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 645, i32 2305, i64 12) #9, !dbg !3449, !srcloc !3451
  br label %do.end67, !dbg !3449

do.end67:                                         ; preds = %do.body66
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 182) #9, !dbg !3452, !srcloc !3454
  br label %do.body68, !dbg !3445

do.body68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !3455

do.end69:                                         ; preds = %do.body68
  br label %do.end70, !dbg !3445

do.end70:                                         ; preds = %do.end69
  br label %if.end71, !dbg !3445

if.end71:                                         ; preds = %do.end70, %if.end50
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !3442
  %tobool73 = icmp ne i32 %42, 0, !dbg !3442
  %lnot74 = xor i1 %tobool73, true, !dbg !3442
  %lnot76 = xor i1 %lnot74, true, !dbg !3442
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !3442
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !3442
  store i64 %conv78, i64* %tmp72, align 8, !dbg !3443
  %43 = load i64, i64* %tmp72, align 8, !dbg !3442
  %tobool79 = icmp ne i64 %43, 0, !dbg !3457
  br i1 %tobool79, label %if.then80, label %if.end82, !dbg !3458

if.then80:                                        ; preds = %if.end71
  %call81 = call i8* @ERR_PTR(i64 -22) #7, !dbg !3459
  %44 = bitcast i8* %call81 to %struct.reset_control*, !dbg !3459
  store %struct.reset_control* %44, %struct.reset_control** %rstc, align 8, !dbg !3461
  br label %out, !dbg !3462

if.end82:                                         ; preds = %if.end71
  %45 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3463
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %45, i32 0, i32 7, !dbg !3464
  %46 = load i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)*, i32 (%struct.reset_controller_dev*, %struct.of_phandle_args*)** %of_xlate, align 8, !dbg !3464
  %47 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3465
  %call83 = call i32 %46(%struct.reset_controller_dev* %47, %struct.of_phandle_args* %args) #7, !dbg !3463
  store i32 %call83, i32* %rstc_id, align 4, !dbg !3466
  %48 = load i32, i32* %rstc_id, align 4, !dbg !3467
  %cmp84 = icmp slt i32 %48, 0, !dbg !3469
  br i1 %cmp84, label %if.then86, label %if.end89, !dbg !3470

if.then86:                                        ; preds = %if.end82
  %49 = load i32, i32* %rstc_id, align 4, !dbg !3471
  %conv87 = sext i32 %49 to i64, !dbg !3471
  %call88 = call i8* @ERR_PTR(i64 %conv87) #7, !dbg !3473
  %50 = bitcast i8* %call88 to %struct.reset_control*, !dbg !3473
  store %struct.reset_control* %50, %struct.reset_control** %rstc, align 8, !dbg !3474
  br label %out, !dbg !3475

if.end89:                                         ; preds = %if.end82
  %51 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3476
  %52 = load i32, i32* %rstc_id, align 4, !dbg !3477
  %53 = load i8, i8* %shared.addr, align 1, !dbg !3478
  %tobool90 = trunc i8 %53 to i1, !dbg !3478
  %54 = load i8, i8* %acquired.addr, align 1, !dbg !3479
  %tobool91 = trunc i8 %54 to i1, !dbg !3479
  %call92 = call %struct.reset_control* @__reset_control_get_internal(%struct.reset_controller_dev* %51, i32 %52, i1 zeroext %tobool90, i1 zeroext %tobool91) #7, !dbg !3480
  store %struct.reset_control* %call92, %struct.reset_control** %rstc, align 8, !dbg !3481
  br label %out, !dbg !3482

out:                                              ; preds = %if.end89, %if.then86, %if.then80, %if.then48
  call void @llvm.dbg.label(metadata !3483), !dbg !3484
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3485
  %np93 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !3486
  %55 = load %struct.device_node*, %struct.device_node** %np93, align 8, !dbg !3486
  call void @of_node_put(%struct.device_node* %55) #7, !dbg !3487
  %56 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3488
  store %struct.reset_control* %56, %struct.reset_control** %retval, align 8, !dbg !3489
  br label %return, !dbg !3489

return:                                           ; preds = %out, %cond.end32, %if.then20, %cond.end, %if.then6, %if.then
  %57 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !3490
  ret %struct.reset_control* %57, !dbg !3490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3491 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3494, metadata !DIExpression()), !dbg !3495
  %0 = load i64, i64* %error.addr, align 8, !dbg !3496
  %1 = inttoptr i64 %0 to i8*, !dbg !3497
  ret i8* %1, !dbg !3498
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @__reset_control_get_internal(%struct.reset_controller_dev* %rcdev, i32 %index, i1 zeroext %shared, i1 zeroext %acquired) #0 !dbg !3499 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %rcdev.addr = alloca %struct.reset_controller_dev*, align 8
  %index.addr = alloca i32, align 4
  %shared.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %rstc = alloca %struct.reset_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_control*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  %__mptr44 = alloca i8*, align 8
  %tmp49 = alloca %struct.reset_control*, align 8
  store %struct.reset_controller_dev* %rcdev, %struct.reset_controller_dev** %rcdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev.addr, metadata !3502, metadata !DIExpression()), !dbg !3503
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3504, metadata !DIExpression()), !dbg !3505
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3506, metadata !DIExpression()), !dbg !3507
  %frombool1 = zext i1 %acquired to i8
  store i8 %frombool1, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3510, metadata !DIExpression()), !dbg !3511
  br label %do.body, !dbg !3512

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3513

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3515, metadata !DIExpression()), !dbg !3518
  %0 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !3518
  %reset_control_head = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %0, i32 0, i32 3, !dbg !3518
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %reset_control_head, i32 0, i32 0, !dbg !3518
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3518
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3518
  store i8* %2, i8** %__mptr, align 8, !dbg !3518
  br label %do.body2, !dbg !3518

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3519

do.end3:                                          ; preds = %do.body2
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3518
  %add.ptr = getelementptr i8, i8* %3, i64 -8, !dbg !3518
  %4 = bitcast i8* %add.ptr to %struct.reset_control*, !dbg !3518
  store %struct.reset_control* %4, %struct.reset_control** %tmp, align 8, !dbg !3519
  %5 = load %struct.reset_control*, %struct.reset_control** %tmp, align 8, !dbg !3518
  store %struct.reset_control* %5, %struct.reset_control** %rstc, align 8, !dbg !3521
  br label %for.cond, !dbg !3521

for.cond:                                         ; preds = %do.end48, %do.end3
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3522
  %list = getelementptr inbounds %struct.reset_control, %struct.reset_control* %6, i32 0, i32 1, !dbg !3522
  %7 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !3522
  %reset_control_head4 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %7, i32 0, i32 3, !dbg !3522
  %cmp = icmp eq %struct.list_head* %list, %reset_control_head4, !dbg !3522
  %lnot = xor i1 %cmp, true, !dbg !3522
  br i1 %lnot, label %for.body, label %for.end, !dbg !3521

for.body:                                         ; preds = %for.cond
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3524
  %id = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 2, !dbg !3527
  %9 = load i32, i32* %id, align 8, !dbg !3527
  %10 = load i32, i32* %index.addr, align 4, !dbg !3528
  %cmp5 = icmp eq i32 %9, %10, !dbg !3529
  br i1 %cmp5, label %if.then, label %if.end43, !dbg !3530

if.then:                                          ; preds = %for.body
  %11 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3531
  %shared6 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %11, i32 0, i32 5, !dbg !3534
  %12 = load i8, i8* %shared6, align 1, !dbg !3534
  %tobool = trunc i8 %12 to i1, !dbg !3534
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3535

land.lhs.true:                                    ; preds = %if.then
  %13 = load i8, i8* %shared.addr, align 1, !dbg !3536
  %tobool7 = trunc i8 %13 to i1, !dbg !3536
  br i1 %tobool7, label %if.end, label %land.lhs.true8, !dbg !3537

land.lhs.true8:                                   ; preds = %land.lhs.true
  %14 = load i8, i8* %acquired.addr, align 1, !dbg !3538
  %tobool9 = trunc i8 %14 to i1, !dbg !3538
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !3539

if.then10:                                        ; preds = %land.lhs.true8
  br label %for.end, !dbg !3540

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3541, metadata !DIExpression()), !dbg !3544
  %15 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3544
  %shared11 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %15, i32 0, i32 5, !dbg !3544
  %16 = load i8, i8* %shared11, align 1, !dbg !3544
  %tobool12 = trunc i8 %16 to i1, !dbg !3544
  br i1 %tobool12, label %lor.rhs, label %lor.end, !dbg !3544

lor.rhs:                                          ; preds = %if.end
  %17 = load i8, i8* %shared.addr, align 1, !dbg !3544
  %tobool13 = trunc i8 %17 to i1, !dbg !3544
  %lnot14 = xor i1 %tobool13, true, !dbg !3544
  br label %lor.end, !dbg !3544

lor.end:                                          ; preds = %lor.rhs, %if.end
  %18 = phi i1 [ true, %if.end ], [ %lnot14, %lor.rhs ]
  %lnot15 = xor i1 %18, true, !dbg !3544
  %lnot16 = xor i1 %lnot15, true, !dbg !3544
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3544
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3544
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !3545
  %tobool17 = icmp ne i32 %19, 0, !dbg !3545
  %lnot18 = xor i1 %tobool17, true, !dbg !3545
  %lnot20 = xor i1 %lnot18, true, !dbg !3545
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3545
  %conv = sext i32 %lnot.ext21 to i64, !dbg !3545
  %tobool22 = icmp ne i64 %conv, 0, !dbg !3545
  br i1 %tobool22, label %if.then23, label %if.end32, !dbg !3544

if.then23:                                        ; preds = %lor.end
  br label %do.body24, !dbg !3545

do.body24:                                        ; preds = %if.then23
  br label %do.body25, !dbg !3547

do.body25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !3549

do.end26:                                         ; preds = %do.body25
  br label %do.body27, !dbg !3547

do.body27:                                        ; preds = %do.end26
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 558, i32 2305, i64 12) #9, !dbg !3551, !srcloc !3553
  br label %do.end28, !dbg !3551

do.end28:                                         ; preds = %do.body27
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 178) #9, !dbg !3554, !srcloc !3556
  br label %do.body29, !dbg !3547

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !3557

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !3547

do.end31:                                         ; preds = %do.end30
  br label %if.end32, !dbg !3547

if.end32:                                         ; preds = %do.end31, %lor.end
  %20 = load i32, i32* %__ret_warn_on, align 4, !dbg !3544
  %tobool34 = icmp ne i32 %20, 0, !dbg !3544
  %lnot35 = xor i1 %tobool34, true, !dbg !3544
  %lnot37 = xor i1 %lnot35, true, !dbg !3544
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3544
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3544
  store i64 %conv39, i64* %tmp33, align 8, !dbg !3545
  %21 = load i64, i64* %tmp33, align 8, !dbg !3544
  %tobool40 = icmp ne i64 %21, 0, !dbg !3559
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !3560

if.then41:                                        ; preds = %if.end32
  %call = call i8* @ERR_PTR(i64 -16) #7, !dbg !3561
  %22 = bitcast i8* %call to %struct.reset_control*, !dbg !3561
  store %struct.reset_control* %22, %struct.reset_control** %retval, align 8, !dbg !3562
  br label %return, !dbg !3562

if.end42:                                         ; preds = %if.end32
  %23 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3563
  %refcnt = getelementptr inbounds %struct.reset_control, %struct.reset_control* %23, i32 0, i32 3, !dbg !3564
  call void @kref_get(%struct.kref* %refcnt) #7, !dbg !3565
  %24 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3566
  store %struct.reset_control* %24, %struct.reset_control** %retval, align 8, !dbg !3567
  br label %return, !dbg !3567

if.end43:                                         ; preds = %for.body
  br label %for.inc, !dbg !3568

for.inc:                                          ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i8** %__mptr44, metadata !3569, metadata !DIExpression()), !dbg !3571
  %25 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3571
  %list45 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %25, i32 0, i32 1, !dbg !3571
  %next46 = getelementptr inbounds %struct.list_head, %struct.list_head* %list45, i32 0, i32 0, !dbg !3571
  %26 = load %struct.list_head*, %struct.list_head** %next46, align 8, !dbg !3571
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !3571
  store i8* %27, i8** %__mptr44, align 8, !dbg !3571
  br label %do.body47, !dbg !3571

do.body47:                                        ; preds = %for.inc
  br label %do.end48, !dbg !3572

do.end48:                                         ; preds = %do.body47
  %28 = load i8*, i8** %__mptr44, align 8, !dbg !3571
  %add.ptr50 = getelementptr i8, i8* %28, i64 -8, !dbg !3571
  %29 = bitcast i8* %add.ptr50 to %struct.reset_control*, !dbg !3571
  store %struct.reset_control* %29, %struct.reset_control** %tmp49, align 8, !dbg !3572
  %30 = load %struct.reset_control*, %struct.reset_control** %tmp49, align 8, !dbg !3571
  store %struct.reset_control* %30, %struct.reset_control** %rstc, align 8, !dbg !3522
  br label %for.cond, !dbg !3522, !llvm.loop !3574

for.end:                                          ; preds = %if.then10, %for.cond
  %call51 = call i8* @kzalloc(i64 48, i32 3264) #7, !dbg !3576
  %31 = bitcast i8* %call51 to %struct.reset_control*, !dbg !3576
  store %struct.reset_control* %31, %struct.reset_control** %rstc, align 8, !dbg !3577
  %32 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3578
  %tobool52 = icmp ne %struct.reset_control* %32, null, !dbg !3578
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !3580

if.then53:                                        ; preds = %for.end
  %call54 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3581
  %33 = bitcast i8* %call54 to %struct.reset_control*, !dbg !3581
  store %struct.reset_control* %33, %struct.reset_control** %retval, align 8, !dbg !3582
  br label %return, !dbg !3582

if.end55:                                         ; preds = %for.end
  %34 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !3583
  %owner = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %34, i32 0, i32 1, !dbg !3584
  %35 = load %struct.module*, %struct.module** %owner, align 8, !dbg !3584
  %call56 = call zeroext i1 @try_module_get(%struct.module* %35) #7, !dbg !3585
  %36 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !3586
  %37 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3587
  %rcdev57 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %37, i32 0, i32 0, !dbg !3588
  store %struct.reset_controller_dev* %36, %struct.reset_controller_dev** %rcdev57, align 8, !dbg !3589
  %38 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3590
  %list58 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %38, i32 0, i32 1, !dbg !3591
  %39 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev.addr, align 8, !dbg !3592
  %reset_control_head59 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %39, i32 0, i32 3, !dbg !3593
  call void @list_add(%struct.list_head* %list58, %struct.list_head* %reset_control_head59) #7, !dbg !3594
  %40 = load i32, i32* %index.addr, align 4, !dbg !3595
  %41 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3596
  %id60 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %41, i32 0, i32 2, !dbg !3597
  store i32 %40, i32* %id60, align 8, !dbg !3598
  %42 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3599
  %refcnt61 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %42, i32 0, i32 3, !dbg !3600
  call void @kref_init(%struct.kref* %refcnt61) #7, !dbg !3601
  %43 = load i8, i8* %acquired.addr, align 1, !dbg !3602
  %tobool62 = trunc i8 %43 to i1, !dbg !3602
  %44 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3603
  %acquired63 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %44, i32 0, i32 4, !dbg !3604
  %frombool64 = zext i1 %tobool62 to i8, !dbg !3605
  store i8 %frombool64, i8* %acquired63, align 8, !dbg !3605
  %45 = load i8, i8* %shared.addr, align 1, !dbg !3606
  %tobool65 = trunc i8 %45 to i1, !dbg !3606
  %46 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3607
  %shared66 = getelementptr inbounds %struct.reset_control, %struct.reset_control* %46, i32 0, i32 5, !dbg !3608
  %frombool67 = zext i1 %tobool65 to i8, !dbg !3609
  store i8 %frombool67, i8* %shared66, align 1, !dbg !3609
  %47 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3610
  store %struct.reset_control* %47, %struct.reset_control** %retval, align 8, !dbg !3611
  br label %return, !dbg !3611

return:                                           ; preds = %if.end55, %if.then53, %if.end42, %if.then41
  %48 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !3612
  ret %struct.reset_control* %48, !dbg !3612
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3613 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  ret void, !dbg !3618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.reset_control* @__reset_control_get(%struct.device* %dev, i8* %id, i32 %index, i1 zeroext %shared, i1 zeroext %optional, i1 zeroext %acquired) #0 !dbg !3619 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3626, metadata !DIExpression()), !dbg !3627
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3628, metadata !DIExpression()), !dbg !3629
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3630, metadata !DIExpression()), !dbg !3631
  %frombool2 = zext i1 %acquired to i8
  store i8 %frombool2, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3632, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3634, metadata !DIExpression()), !dbg !3637
  %0 = load i8, i8* %shared.addr, align 1, !dbg !3637
  %tobool = trunc i8 %0 to i1, !dbg !3637
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !3637

land.rhs:                                         ; preds = %entry
  %1 = load i8, i8* %acquired.addr, align 1, !dbg !3637
  %tobool3 = trunc i8 %1 to i1, !dbg !3637
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ], !dbg !3638
  %lnot = xor i1 %2, true, !dbg !3637
  %lnot4 = xor i1 %lnot, true, !dbg !3637
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !3637
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3637
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !3639
  %tobool5 = icmp ne i32 %3, 0, !dbg !3639
  %lnot6 = xor i1 %tobool5, true, !dbg !3639
  %lnot8 = xor i1 %lnot6, true, !dbg !3639
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3639
  %conv = sext i32 %lnot.ext9 to i64, !dbg !3639
  %tobool10 = icmp ne i64 %conv, 0, !dbg !3639
  br i1 %tobool10, label %if.then, label %if.end, !dbg !3637

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !3639

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !3641

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !3643

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !3641

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 732, i32 2305, i64 12) #9, !dbg !3645, !srcloc !3647
  br label %do.end13, !dbg !3645

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 187) #9, !dbg !3648, !srcloc !3650
  br label %do.body14, !dbg !3641

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3651

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !3641

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !3641

if.end:                                           ; preds = %do.end16, %land.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3637
  %tobool17 = icmp ne i32 %4, 0, !dbg !3637
  %lnot18 = xor i1 %tobool17, true, !dbg !3637
  %lnot20 = xor i1 %lnot18, true, !dbg !3637
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3637
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3637
  store i64 %conv22, i64* %tmp, align 8, !dbg !3639
  %5 = load i64, i64* %tmp, align 8, !dbg !3637
  %tobool23 = icmp ne i64 %5, 0, !dbg !3653
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3654

if.then24:                                        ; preds = %if.end
  %call = call i8* @ERR_PTR(i64 -22) #7, !dbg !3655
  %6 = bitcast i8* %call to %struct.reset_control*, !dbg !3655
  store %struct.reset_control* %6, %struct.reset_control** %retval, align 8, !dbg !3656
  br label %return, !dbg !3656

if.end25:                                         ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3657
  %of_node = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 23, !dbg !3659
  %8 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3659
  %tobool26 = icmp ne %struct.device_node* %8, null, !dbg !3657
  br i1 %tobool26, label %if.then27, label %if.end33, !dbg !3660

if.then27:                                        ; preds = %if.end25
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3661
  %of_node28 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 23, !dbg !3662
  %10 = load %struct.device_node*, %struct.device_node** %of_node28, align 8, !dbg !3662
  %11 = load i8*, i8** %id.addr, align 8, !dbg !3663
  %12 = load i32, i32* %index.addr, align 4, !dbg !3664
  %13 = load i8, i8* %shared.addr, align 1, !dbg !3665
  %tobool29 = trunc i8 %13 to i1, !dbg !3665
  %14 = load i8, i8* %optional.addr, align 1, !dbg !3666
  %tobool30 = trunc i8 %14 to i1, !dbg !3666
  %15 = load i8, i8* %acquired.addr, align 1, !dbg !3667
  %tobool31 = trunc i8 %15 to i1, !dbg !3667
  %call32 = call %struct.reset_control* @__of_reset_control_get(%struct.device_node* %10, i8* %11, i32 %12, i1 zeroext %tobool29, i1 zeroext %tobool30, i1 zeroext %tobool31) #7, !dbg !3668
  store %struct.reset_control* %call32, %struct.reset_control** %retval, align 8, !dbg !3669
  br label %return, !dbg !3669

if.end33:                                         ; preds = %if.end25
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3670
  %17 = load i8*, i8** %id.addr, align 8, !dbg !3671
  %18 = load i8, i8* %shared.addr, align 1, !dbg !3672
  %tobool34 = trunc i8 %18 to i1, !dbg !3672
  %19 = load i8, i8* %optional.addr, align 1, !dbg !3673
  %tobool35 = trunc i8 %19 to i1, !dbg !3673
  %20 = load i8, i8* %acquired.addr, align 1, !dbg !3674
  %tobool36 = trunc i8 %20 to i1, !dbg !3674
  %call37 = call %struct.reset_control* @__reset_control_get_from_lookup(%struct.device* %16, i8* %17, i1 zeroext %tobool34, i1 zeroext %tobool35, i1 zeroext %tobool36) #7, !dbg !3675
  store %struct.reset_control* %call37, %struct.reset_control** %retval, align 8, !dbg !3676
  br label %return, !dbg !3676

return:                                           ; preds = %if.end33, %if.then27, %if.then24
  %21 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !3677
  ret %struct.reset_control* %21, !dbg !3677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @__reset_control_get_from_lookup(%struct.device* %dev, i8* %con_id, i1 zeroext %shared, i1 zeroext %optional, i1 zeroext %acquired) #0 !dbg !3678 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %lookup = alloca %struct.reset_control_lookup*, align 8
  %rcdev = alloca %struct.reset_controller_dev*, align 8
  %dev_id = alloca i8*, align 8
  %rstc = alloca %struct.reset_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_control_lookup*, align 8
  %__mptr26 = alloca i8*, align 8
  %tmp30 = alloca %struct.reset_control_lookup*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3681, metadata !DIExpression()), !dbg !3682
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !3683, metadata !DIExpression()), !dbg !3684
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3685, metadata !DIExpression()), !dbg !3686
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3687, metadata !DIExpression()), !dbg !3688
  %frombool2 = zext i1 %acquired to i8
  store i8 %frombool2, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3689, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.declare(metadata %struct.reset_control_lookup** %lookup, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.declare(metadata i8** %dev_id, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3697
  %call = call i8* @dev_name(%struct.device* %0) #7, !dbg !3698
  store i8* %call, i8** %dev_id, align 8, !dbg !3696
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3699, metadata !DIExpression()), !dbg !3700
  store %struct.reset_control* null, %struct.reset_control** %rstc, align 8, !dbg !3700
  call void @mutex_lock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !3701
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3702, metadata !DIExpression()), !dbg !3705
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @reset_lookup_list, i32 0, i32 0), align 8, !dbg !3705
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3705
  store i8* %2, i8** %__mptr, align 8, !dbg !3705
  br label %do.body, !dbg !3705

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3706

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3705
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3705
  %4 = bitcast i8* %add.ptr to %struct.reset_control_lookup*, !dbg !3705
  store %struct.reset_control_lookup* %4, %struct.reset_control_lookup** %tmp, align 8, !dbg !3706
  %5 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %tmp, align 8, !dbg !3705
  store %struct.reset_control_lookup* %5, %struct.reset_control_lookup** %lookup, align 8, !dbg !3708
  br label %for.cond, !dbg !3708

for.cond:                                         ; preds = %do.end29, %do.end
  %6 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3709
  %list = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %6, i32 0, i32 0, !dbg !3709
  %cmp = icmp eq %struct.list_head* %list, @reset_lookup_list, !dbg !3709
  %lnot = xor i1 %cmp, true, !dbg !3709
  br i1 %lnot, label %for.body, label %for.end, !dbg !3708

for.body:                                         ; preds = %for.cond
  %7 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3711
  %dev_id3 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %7, i32 0, i32 3, !dbg !3714
  %8 = load i8*, i8** %dev_id3, align 8, !dbg !3714
  %9 = load i8*, i8** %dev_id, align 8, !dbg !3715
  %call4 = call i32 @strcmp(i8* %8, i8* %9) #7, !dbg !3716
  %tobool = icmp ne i32 %call4, 0, !dbg !3716
  br i1 %tobool, label %if.then, label %if.end, !dbg !3717

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3718

if.end:                                           ; preds = %for.body
  %10 = load i8*, i8** %con_id.addr, align 8, !dbg !3719
  %tobool5 = icmp ne i8* %10, null, !dbg !3719
  br i1 %tobool5, label %lor.lhs.false, label %land.lhs.true, !dbg !3721

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3722
  %con_id6 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %11, i32 0, i32 4, !dbg !3723
  %12 = load i8*, i8** %con_id6, align 8, !dbg !3723
  %tobool7 = icmp ne i8* %12, null, !dbg !3722
  br i1 %tobool7, label %lor.lhs.false, label %if.then16, !dbg !3724

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %13 = load i8*, i8** %con_id.addr, align 8, !dbg !3725
  %tobool8 = icmp ne i8* %13, null, !dbg !3725
  br i1 %tobool8, label %land.lhs.true9, label %if.end25, !dbg !3726

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %14 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3727
  %con_id10 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %14, i32 0, i32 4, !dbg !3728
  %15 = load i8*, i8** %con_id10, align 8, !dbg !3728
  %tobool11 = icmp ne i8* %15, null, !dbg !3727
  br i1 %tobool11, label %land.lhs.true12, label %if.end25, !dbg !3729

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %16 = load i8*, i8** %con_id.addr, align 8, !dbg !3730
  %17 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3731
  %con_id13 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %17, i32 0, i32 4, !dbg !3732
  %18 = load i8*, i8** %con_id13, align 8, !dbg !3732
  %call14 = call i32 @strcmp(i8* %16, i8* %18) #7, !dbg !3733
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3733
  br i1 %tobool15, label %if.end25, label %if.then16, !dbg !3734

if.then16:                                        ; preds = %land.lhs.true12, %land.lhs.true
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !3735
  %19 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3737
  %provider = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %19, i32 0, i32 1, !dbg !3738
  %20 = load i8*, i8** %provider, align 8, !dbg !3738
  %call17 = call %struct.reset_controller_dev* @__reset_controller_by_name(i8* %20) #7, !dbg !3739
  store %struct.reset_controller_dev* %call17, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3740
  %21 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3741
  %tobool18 = icmp ne %struct.reset_controller_dev* %21, null, !dbg !3741
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !3743

if.then19:                                        ; preds = %if.then16
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3744
  call void @mutex_unlock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !3746
  %call20 = call i8* @ERR_PTR(i64 -517) #7, !dbg !3747
  %22 = bitcast i8* %call20 to %struct.reset_control*, !dbg !3747
  store %struct.reset_control* %22, %struct.reset_control** %retval, align 8, !dbg !3748
  br label %return, !dbg !3748

if.end21:                                         ; preds = %if.then16
  %23 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !3749
  %24 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3750
  %index = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %24, i32 0, i32 2, !dbg !3751
  %25 = load i32, i32* %index, align 8, !dbg !3751
  %26 = load i8, i8* %shared.addr, align 1, !dbg !3752
  %tobool22 = trunc i8 %26 to i1, !dbg !3752
  %27 = load i8, i8* %acquired.addr, align 1, !dbg !3753
  %tobool23 = trunc i8 %27 to i1, !dbg !3753
  %call24 = call %struct.reset_control* @__reset_control_get_internal(%struct.reset_controller_dev* %23, i32 %25, i1 zeroext %tobool22, i1 zeroext %tobool23) #7, !dbg !3754
  store %struct.reset_control* %call24, %struct.reset_control** %rstc, align 8, !dbg !3755
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3756
  br label %for.end, !dbg !3757

if.end25:                                         ; preds = %land.lhs.true12, %land.lhs.true9, %lor.lhs.false
  br label %for.inc, !dbg !3758

for.inc:                                          ; preds = %if.end25, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !3759, metadata !DIExpression()), !dbg !3761
  %28 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !3761
  %list27 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %28, i32 0, i32 0, !dbg !3761
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list27, i32 0, i32 0, !dbg !3761
  %29 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3761
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !3761
  store i8* %30, i8** %__mptr26, align 8, !dbg !3761
  br label %do.body28, !dbg !3761

do.body28:                                        ; preds = %for.inc
  br label %do.end29, !dbg !3762

do.end29:                                         ; preds = %do.body28
  %31 = load i8*, i8** %__mptr26, align 8, !dbg !3761
  %add.ptr31 = getelementptr i8, i8* %31, i64 0, !dbg !3761
  %32 = bitcast i8* %add.ptr31 to %struct.reset_control_lookup*, !dbg !3761
  store %struct.reset_control_lookup* %32, %struct.reset_control_lookup** %tmp30, align 8, !dbg !3762
  %33 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %tmp30, align 8, !dbg !3761
  store %struct.reset_control_lookup* %33, %struct.reset_control_lookup** %lookup, align 8, !dbg !3709
  br label %for.cond, !dbg !3709, !llvm.loop !3764

for.end:                                          ; preds = %if.end21, %for.cond
  call void @mutex_unlock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !3766
  %34 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3767
  %tobool32 = icmp ne %struct.reset_control* %34, null, !dbg !3767
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !3769

if.then33:                                        ; preds = %for.end
  %35 = load i8, i8* %optional.addr, align 1, !dbg !3770
  %tobool34 = trunc i8 %35 to i1, !dbg !3770
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !3770

cond.true:                                        ; preds = %if.then33
  br label %cond.end, !dbg !3770

cond.false:                                       ; preds = %if.then33
  %call35 = call i8* @ERR_PTR(i64 -2) #7, !dbg !3771
  br label %cond.end, !dbg !3770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call35, %cond.false ], !dbg !3770
  %36 = bitcast i8* %cond to %struct.reset_control*, !dbg !3770
  store %struct.reset_control* %36, %struct.reset_control** %retval, align 8, !dbg !3772
  br label %return, !dbg !3772

if.end36:                                         ; preds = %for.end
  %37 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3773
  store %struct.reset_control* %37, %struct.reset_control** %retval, align 8, !dbg !3774
  br label %return, !dbg !3774

return:                                           ; preds = %if.end36, %cond.end, %if.then19
  %38 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !3775
  ret %struct.reset_control* %38, !dbg !3775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @reset_control_put(%struct.reset_control* %rstc) #0 !dbg !3776 {
entry:
  %rstc.addr = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !3777, metadata !DIExpression()), !dbg !3778
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3779
  %1 = bitcast %struct.reset_control* %0 to i8*, !dbg !3779
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !3781
  br i1 %call, label %if.then, label %if.end, !dbg !3782

if.then:                                          ; preds = %entry
  br label %return, !dbg !3783

if.end:                                           ; preds = %entry
  %2 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3784
  %call1 = call zeroext i1 @reset_control_is_array(%struct.reset_control* %2) #7, !dbg !3786
  br i1 %call1, label %if.then2, label %if.end4, !dbg !3787

if.then2:                                         ; preds = %if.end
  %3 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3788
  %call3 = call %struct.reset_control_array* @rstc_to_array(%struct.reset_control* %3) #7, !dbg !3790
  call void @reset_control_array_put(%struct.reset_control_array* %call3) #7, !dbg !3791
  br label %return, !dbg !3792

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !3793
  %4 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3794
  call void @__reset_control_put_internal(%struct.reset_control* %4) #7, !dbg !3795
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3796
  br label %return, !dbg !3797

return:                                           ; preds = %if.end4, %if.then2, %if.then
  ret void, !dbg !3797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !3798 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3799, metadata !DIExpression()), !dbg !3800
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3801
  %tobool = icmp ne i8* %0, null, !dbg !3801
  %lnot = xor i1 %tobool, true, !dbg !3801
  %lnot1 = xor i1 %lnot, true, !dbg !3801
  %lnot2 = xor i1 %lnot1, true, !dbg !3801
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3801
  %conv = sext i32 %lnot.ext to i64, !dbg !3801
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3801
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !3802

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3803
  %2 = ptrtoint i8* %1 to i64, !dbg !3803
  %3 = inttoptr i64 %2 to i8*, !dbg !3803
  %4 = ptrtoint i8* %3 to i64, !dbg !3803
  %cmp = icmp uge i64 %4, -4095, !dbg !3803
  %lnot5 = xor i1 %cmp, true, !dbg !3803
  %lnot7 = xor i1 %lnot5, true, !dbg !3803
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3803
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3803
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3802
  br label %lor.end, !dbg !3802

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !3804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reset_control_array_put(%struct.reset_control_array* %resets) #0 !dbg !3805 {
entry:
  %resets.addr = alloca %struct.reset_control_array*, align 8
  %i = alloca i32, align 4
  store %struct.reset_control_array* %resets, %struct.reset_control_array** %resets.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets.addr, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3808, metadata !DIExpression()), !dbg !3809
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !3810
  store i32 0, i32* %i, align 4, !dbg !3811
  br label %for.cond, !dbg !3813

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3814
  %1 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3816
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %1, i32 0, i32 1, !dbg !3817
  %2 = load i32, i32* %num_rstcs, align 8, !dbg !3817
  %cmp = icmp ult i32 %0, %2, !dbg !3818
  br i1 %cmp, label %for.body, label %for.end, !dbg !3819

for.body:                                         ; preds = %for.cond
  %3 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3820
  %rstc = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %3, i32 0, i32 2, !dbg !3821
  %4 = load i32, i32* %i, align 4, !dbg !3822
  %idxprom = sext i32 %4 to i64, !dbg !3820
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc, i64 0, i64 %idxprom, !dbg !3820
  %5 = load %struct.reset_control*, %struct.reset_control** %arrayidx, align 8, !dbg !3820
  call void @__reset_control_put_internal(%struct.reset_control* %5) #7, !dbg !3823
  br label %for.inc, !dbg !3823

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !3824
  %inc = add i32 %6, 1, !dbg !3824
  store i32 %inc, i32* %i, align 4, !dbg !3824
  br label %for.cond, !dbg !3825, !llvm.loop !3826

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !3828
  %7 = load %struct.reset_control_array*, %struct.reset_control_array** %resets.addr, align 8, !dbg !3829
  %8 = bitcast %struct.reset_control_array* %7 to i8*, !dbg !3829
  call void @kfree(i8* %8) #7, !dbg !3830
  ret void, !dbg !3831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__reset_control_put_internal(%struct.reset_control* %rstc) #0 !dbg !3832 {
entry:
  %rstc.addr = alloca %struct.reset_control*, align 8
  store %struct.reset_control* %rstc, %struct.reset_control** %rstc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc.addr, metadata !3833, metadata !DIExpression()), !dbg !3834
  br label %do.body, !dbg !3835

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3836

do.end:                                           ; preds = %do.body
  %0 = load %struct.reset_control*, %struct.reset_control** %rstc.addr, align 8, !dbg !3838
  %refcnt = getelementptr inbounds %struct.reset_control, %struct.reset_control* %0, i32 0, i32 3, !dbg !3839
  %call = call i32 @kref_put(%struct.kref* %refcnt, void (%struct.kref*)* @__reset_control_release) #7, !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.reset_control* @__devm_reset_control_get(%struct.device* %dev, i8* %id, i32 %index, i1 zeroext %shared, i1 zeroext %optional, i1 zeroext %acquired) #0 !dbg !3842 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %ptr = alloca %struct.reset_control**, align 8
  %rstc = alloca %struct.reset_control*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3843, metadata !DIExpression()), !dbg !3844
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3845, metadata !DIExpression()), !dbg !3846
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3847, metadata !DIExpression()), !dbg !3848
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3849, metadata !DIExpression()), !dbg !3850
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3851, metadata !DIExpression()), !dbg !3852
  %frombool2 = zext i1 %acquired to i8
  store i8 %frombool2, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.declare(metadata %struct.reset_control*** %ptr, metadata !3855, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3857, metadata !DIExpression()), !dbg !3858
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_reset_control_release, i64 8, i32 3264) #7, !dbg !3859
  %0 = bitcast i8* %call to %struct.reset_control**, !dbg !3859
  store %struct.reset_control** %0, %struct.reset_control*** %ptr, align 8, !dbg !3860
  %1 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !3861
  %tobool = icmp ne %struct.reset_control** %1, null, !dbg !3861
  br i1 %tobool, label %if.end, label %if.then, !dbg !3863

if.then:                                          ; preds = %entry
  %call3 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3864
  %2 = bitcast i8* %call3 to %struct.reset_control*, !dbg !3864
  store %struct.reset_control* %2, %struct.reset_control** %retval, align 8, !dbg !3865
  br label %return, !dbg !3865

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3866
  %4 = load i8*, i8** %id.addr, align 8, !dbg !3867
  %5 = load i32, i32* %index.addr, align 4, !dbg !3868
  %6 = load i8, i8* %shared.addr, align 1, !dbg !3869
  %tobool4 = trunc i8 %6 to i1, !dbg !3869
  %7 = load i8, i8* %optional.addr, align 1, !dbg !3870
  %tobool5 = trunc i8 %7 to i1, !dbg !3870
  %8 = load i8, i8* %acquired.addr, align 1, !dbg !3871
  %tobool6 = trunc i8 %8 to i1, !dbg !3871
  %call7 = call %struct.reset_control* @__reset_control_get(%struct.device* %3, i8* %4, i32 %5, i1 zeroext %tobool4, i1 zeroext %tobool5, i1 zeroext %tobool6) #7, !dbg !3872
  store %struct.reset_control* %call7, %struct.reset_control** %rstc, align 8, !dbg !3873
  %9 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3874
  %10 = bitcast %struct.reset_control* %9 to i8*, !dbg !3874
  %call8 = call zeroext i1 @IS_ERR_OR_NULL(i8* %10) #7, !dbg !3876
  br i1 %call8, label %if.then9, label %if.end10, !dbg !3877

if.then9:                                         ; preds = %if.end
  %11 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !3878
  %12 = bitcast %struct.reset_control** %11 to i8*, !dbg !3878
  call void @devres_free(i8* %12) #7, !dbg !3880
  %13 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3881
  store %struct.reset_control* %13, %struct.reset_control** %retval, align 8, !dbg !3882
  br label %return, !dbg !3882

if.end10:                                         ; preds = %if.end
  %14 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3883
  %15 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !3884
  store %struct.reset_control* %14, %struct.reset_control** %15, align 8, !dbg !3885
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3886
  %17 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !3887
  %18 = bitcast %struct.reset_control** %17 to i8*, !dbg !3887
  call void @devres_add(%struct.device* %16, i8* %18) #7, !dbg !3888
  %19 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3889
  store %struct.reset_control* %19, %struct.reset_control** %retval, align 8, !dbg !3890
  br label %return, !dbg !3890

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %20 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !3891
  ret %struct.reset_control* %20, !dbg !3891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_reset_control_release(%struct.device* %dev, i8* %res) #0 !dbg !3892 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3893, metadata !DIExpression()), !dbg !3894
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3895, metadata !DIExpression()), !dbg !3896
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3897
  %1 = bitcast i8* %0 to %struct.reset_control**, !dbg !3898
  %2 = load %struct.reset_control*, %struct.reset_control** %1, align 8, !dbg !3899
  call void @reset_control_put(%struct.reset_control* %2) #7, !dbg !3900
  ret void, !dbg !3901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__device_reset(%struct.device* %dev, i1 zeroext %optional) #0 !dbg !3902 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %optional.addr = alloca i8, align 1
  %rstc = alloca %struct.reset_control*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  %frombool = zext i1 %optional to i8
  store i8 %frombool, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3909, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3911, metadata !DIExpression()), !dbg !3912
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3913
  %1 = load i8, i8* %optional.addr, align 1, !dbg !3914
  %tobool = trunc i8 %1 to i1, !dbg !3914
  %call = call %struct.reset_control* @__reset_control_get(%struct.device* %0, i8* null, i32 0, i1 zeroext false, i1 zeroext %tobool, i1 zeroext true) #7, !dbg !3915
  store %struct.reset_control* %call, %struct.reset_control** %rstc, align 8, !dbg !3916
  %2 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3917
  %3 = bitcast %struct.reset_control* %2 to i8*, !dbg !3917
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #7, !dbg !3919
  br i1 %call1, label %if.then, label %if.end, !dbg !3920

if.then:                                          ; preds = %entry
  %4 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3921
  %5 = bitcast %struct.reset_control* %4 to i8*, !dbg !3921
  %call2 = call i64 @PTR_ERR(i8* %5) #7, !dbg !3922
  %conv = trunc i64 %call2 to i32, !dbg !3922
  store i32 %conv, i32* %retval, align 4, !dbg !3923
  br label %return, !dbg !3923

if.end:                                           ; preds = %entry
  %6 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3924
  %call3 = call i32 @reset_control_reset(%struct.reset_control* %6) #7, !dbg !3925
  store i32 %call3, i32* %ret, align 4, !dbg !3926
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3927
  call void @reset_control_put(%struct.reset_control* %7) #7, !dbg !3928
  %8 = load i32, i32* %ret, align 4, !dbg !3929
  store i32 %8, i32* %retval, align 4, !dbg !3930
  br label %return, !dbg !3930

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3931
  ret i32 %9, !dbg !3931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3932 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3937
  %1 = ptrtoint i8* %0 to i64, !dbg !3938
  ret i64 %1, !dbg !3939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.reset_control* @of_reset_control_array_get(%struct.device_node* %np, i1 zeroext %shared, i1 zeroext %optional, i1 zeroext %acquired) #0 !dbg !3940 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %acquired.addr = alloca i8, align 1
  %resets = alloca %struct.reset_control_array*, align 8
  %rstc = alloca %struct.reset_control*, align 8
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3943, metadata !DIExpression()), !dbg !3944
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !3945, metadata !DIExpression()), !dbg !3946
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  %frombool2 = zext i1 %acquired to i8
  store i8 %frombool2, i8* %acquired.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %acquired.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.declare(metadata %struct.reset_control_array** %resets, metadata !3951, metadata !DIExpression()), !dbg !3952
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.declare(metadata i32* %num, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3957, metadata !DIExpression()), !dbg !3958
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3959
  %call = call i32 @of_reset_control_get_count(%struct.device_node* %0) #7, !dbg !3960
  store i32 %call, i32* %num, align 4, !dbg !3961
  %1 = load i32, i32* %num, align 4, !dbg !3962
  %cmp = icmp slt i32 %1, 0, !dbg !3964
  br i1 %cmp, label %if.then, label %if.end, !dbg !3965

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %optional.addr, align 1, !dbg !3966
  %tobool = trunc i8 %2 to i1, !dbg !3966
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3966

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !3966

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %num, align 4, !dbg !3967
  %conv = sext i32 %3 to i64, !dbg !3967
  %call3 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !3968
  br label %cond.end, !dbg !3966

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call3, %cond.false ], !dbg !3966
  %4 = bitcast i8* %cond to %struct.reset_control*, !dbg !3966
  store %struct.reset_control* %4, %struct.reset_control** %retval, align 8, !dbg !3969
  br label %return, !dbg !3969

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %num, align 4, !dbg !3970
  %conv4 = sext i32 %5 to i64, !dbg !3970
  %call5 = call i64 @__ab_c_size(i64 %conv4, i64 8, i64 56) #7, !dbg !3970
  %call6 = call i8* @kzalloc(i64 %call5, i32 3264) #7, !dbg !3971
  %6 = bitcast i8* %call6 to %struct.reset_control_array*, !dbg !3971
  store %struct.reset_control_array* %6, %struct.reset_control_array** %resets, align 8, !dbg !3972
  %7 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !3973
  %tobool7 = icmp ne %struct.reset_control_array* %7, null, !dbg !3973
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3975

if.then8:                                         ; preds = %if.end
  %call9 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3976
  %8 = bitcast i8* %call9 to %struct.reset_control*, !dbg !3976
  store %struct.reset_control* %8, %struct.reset_control** %retval, align 8, !dbg !3977
  br label %return, !dbg !3977

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !3978
  br label %for.cond, !dbg !3980

for.cond:                                         ; preds = %for.inc, %if.end10
  %9 = load i32, i32* %i, align 4, !dbg !3981
  %10 = load i32, i32* %num, align 4, !dbg !3983
  %cmp11 = icmp slt i32 %9, %10, !dbg !3984
  br i1 %cmp11, label %for.body, label %for.end, !dbg !3985

for.body:                                         ; preds = %for.cond
  %11 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3986
  %12 = load i32, i32* %i, align 4, !dbg !3988
  %13 = load i8, i8* %shared.addr, align 1, !dbg !3989
  %tobool13 = trunc i8 %13 to i1, !dbg !3989
  %14 = load i8, i8* %optional.addr, align 1, !dbg !3990
  %tobool14 = trunc i8 %14 to i1, !dbg !3990
  %15 = load i8, i8* %acquired.addr, align 1, !dbg !3991
  %tobool15 = trunc i8 %15 to i1, !dbg !3991
  %call16 = call %struct.reset_control* @__of_reset_control_get(%struct.device_node* %11, i8* null, i32 %12, i1 zeroext %tobool13, i1 zeroext %tobool14, i1 zeroext %tobool15) #7, !dbg !3992
  store %struct.reset_control* %call16, %struct.reset_control** %rstc, align 8, !dbg !3993
  %16 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3994
  %17 = bitcast %struct.reset_control* %16 to i8*, !dbg !3994
  %call17 = call zeroext i1 @IS_ERR(i8* %17) #7, !dbg !3996
  br i1 %call17, label %if.then18, label %if.end19, !dbg !3997

if.then18:                                        ; preds = %for.body
  br label %err_rst, !dbg !3998

if.end19:                                         ; preds = %for.body
  %18 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !3999
  %19 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4000
  %rstc20 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %19, i32 0, i32 2, !dbg !4001
  %20 = load i32, i32* %i, align 4, !dbg !4002
  %idxprom = sext i32 %20 to i64, !dbg !4000
  %arrayidx = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc20, i64 0, i64 %idxprom, !dbg !4000
  store %struct.reset_control* %18, %struct.reset_control** %arrayidx, align 8, !dbg !4003
  br label %for.inc, !dbg !4004

for.inc:                                          ; preds = %if.end19
  %21 = load i32, i32* %i, align 4, !dbg !4005
  %inc = add i32 %21, 1, !dbg !4005
  store i32 %inc, i32* %i, align 4, !dbg !4005
  br label %for.cond, !dbg !4006, !llvm.loop !4007

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %num, align 4, !dbg !4009
  %23 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4010
  %num_rstcs = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %23, i32 0, i32 1, !dbg !4011
  store i32 %22, i32* %num_rstcs, align 8, !dbg !4012
  %24 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4013
  %base = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %24, i32 0, i32 0, !dbg !4014
  %array = getelementptr inbounds %struct.reset_control, %struct.reset_control* %base, i32 0, i32 6, !dbg !4015
  store i8 1, i8* %array, align 2, !dbg !4016
  %25 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4017
  %base21 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %25, i32 0, i32 0, !dbg !4018
  store %struct.reset_control* %base21, %struct.reset_control** %retval, align 8, !dbg !4019
  br label %return, !dbg !4019

err_rst:                                          ; preds = %if.then18
  call void @llvm.dbg.label(metadata !4020), !dbg !4021
  call void @mutex_lock(%struct.mutex* @reset_list_mutex) #7, !dbg !4022
  br label %while.cond, !dbg !4023

while.cond:                                       ; preds = %while.body, %err_rst
  %26 = load i32, i32* %i, align 4, !dbg !4024
  %dec = add i32 %26, -1, !dbg !4024
  store i32 %dec, i32* %i, align 4, !dbg !4024
  %cmp22 = icmp sge i32 %dec, 0, !dbg !4025
  br i1 %cmp22, label %while.body, label %while.end, !dbg !4023

while.body:                                       ; preds = %while.cond
  %27 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4026
  %rstc24 = getelementptr inbounds %struct.reset_control_array, %struct.reset_control_array* %27, i32 0, i32 2, !dbg !4027
  %28 = load i32, i32* %i, align 4, !dbg !4028
  %idxprom25 = sext i32 %28 to i64, !dbg !4026
  %arrayidx26 = getelementptr [0 x %struct.reset_control*], [0 x %struct.reset_control*]* %rstc24, i64 0, i64 %idxprom25, !dbg !4026
  %29 = load %struct.reset_control*, %struct.reset_control** %arrayidx26, align 8, !dbg !4026
  call void @__reset_control_put_internal(%struct.reset_control* %29) #7, !dbg !4029
  br label %while.cond, !dbg !4023, !llvm.loop !4030

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(%struct.mutex* @reset_list_mutex) #7, !dbg !4032
  %30 = load %struct.reset_control_array*, %struct.reset_control_array** %resets, align 8, !dbg !4033
  %31 = bitcast %struct.reset_control_array* %30 to i8*, !dbg !4033
  call void @kfree(i8* %31) #7, !dbg !4034
  %32 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4035
  store %struct.reset_control* %32, %struct.reset_control** %retval, align 8, !dbg !4036
  br label %return, !dbg !4036

return:                                           ; preds = %while.end, %for.end, %if.then8, %cond.end
  %33 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !4037
  ret %struct.reset_control* %33, !dbg !4037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_reset_control_get_count(%struct.device_node* %node) #0 !dbg !4038 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.device_node*, align 8
  %count = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4043, metadata !DIExpression()), !dbg !4044
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4045
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !4045
  br i1 %tobool, label %if.end, label %if.then, !dbg !4047

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4048
  br label %return, !dbg !4048

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4049
  %call = call i32 @of_count_phandle_with_args(%struct.device_node* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4050
  store i32 %call, i32* %count, align 4, !dbg !4051
  %2 = load i32, i32* %count, align 4, !dbg !4052
  %cmp = icmp eq i32 %2, 0, !dbg !4054
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4055

if.then1:                                         ; preds = %if.end
  store i32 -2, i32* %count, align 4, !dbg !4056
  br label %if.end2, !dbg !4057

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i32, i32* %count, align 4, !dbg !4058
  store i32 %3, i32* %retval, align 4, !dbg !4059
  br label %return, !dbg !4059

return:                                           ; preds = %if.end2, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4060
  ret i32 %4, !dbg !4060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4061 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4064, metadata !DIExpression()), !dbg !4068
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4074, metadata !DIExpression()), !dbg !4075
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4076, metadata !DIExpression()), !dbg !4077
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4078, metadata !DIExpression()), !dbg !4079
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4080, metadata !DIExpression()), !dbg !4084
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4086, metadata !DIExpression()), !dbg !4090
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4092, metadata !DIExpression()), !dbg !4096
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4101, metadata !DIExpression()), !dbg !4102
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4103, metadata !DIExpression()), !dbg !4104
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4105, metadata !DIExpression()), !dbg !4106
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4107, metadata !DIExpression()), !dbg !4108
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4109, metadata !DIExpression()), !dbg !4110
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4111, metadata !DIExpression()), !dbg !4112
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4113, metadata !DIExpression()), !dbg !4114
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4115, metadata !DIExpression()), !dbg !4116
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4117, metadata !DIExpression()), !dbg !4118
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4119, metadata !DIExpression()), !dbg !4120
  %0 = load i64, i64* %size.addr, align 8, !dbg !4121
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4122
  %or = or i32 %1, 256, !dbg !4123
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4124
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4125
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4126

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4127
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4128
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4129

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4130
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4131
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4132
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4133
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4110
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4134
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4135
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4136
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4137
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4138
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4139
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4140
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4140
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4140
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4140
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4140
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4141
  br label %kmalloc.exit, !dbg !4141

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4142
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4143
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4145

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4146
  br label %kmalloc_index.exit.i, !dbg !4146

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4147
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4149
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4150

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4151
  br label %kmalloc_index.exit.i, !dbg !4151

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4152
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4154
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4155

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4156
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4157
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4158

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4159
  br label %kmalloc_index.exit.i, !dbg !4159

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4160
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4162
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4163

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4164
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4165
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4166

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4167
  br label %kmalloc_index.exit.i, !dbg !4167

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4168
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4170
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4171

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4172
  br label %kmalloc_index.exit.i, !dbg !4172

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4173
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4175
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4176

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4177
  br label %kmalloc_index.exit.i, !dbg !4177

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4178
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4180
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4181

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4182
  br label %kmalloc_index.exit.i, !dbg !4182

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4183
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4185
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4186

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4187
  br label %kmalloc_index.exit.i, !dbg !4187

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4188
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4190
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4191

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4192
  br label %kmalloc_index.exit.i, !dbg !4192

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4193
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4195
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4196

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4197
  br label %kmalloc_index.exit.i, !dbg !4197

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4198
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4200
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4201

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4202
  br label %kmalloc_index.exit.i, !dbg !4202

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4203
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4205
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4206

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4207
  br label %kmalloc_index.exit.i, !dbg !4207

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4208
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4210
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4211

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4212
  br label %kmalloc_index.exit.i, !dbg !4212

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4213
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4215
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4216

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4217
  br label %kmalloc_index.exit.i, !dbg !4217

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4218
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4220
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4221

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4222
  br label %kmalloc_index.exit.i, !dbg !4222

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4223
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4225
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4226

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4227
  br label %kmalloc_index.exit.i, !dbg !4227

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4228
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4230
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4231

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4232
  br label %kmalloc_index.exit.i, !dbg !4232

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4233
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4235
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4236

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4237
  br label %kmalloc_index.exit.i, !dbg !4237

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4238
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4240
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4241

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4245
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4246

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4247
  br label %kmalloc_index.exit.i, !dbg !4247

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4248
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4250
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4251

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4252
  br label %kmalloc_index.exit.i, !dbg !4252

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4253
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4255
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4256

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4257
  br label %kmalloc_index.exit.i, !dbg !4257

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4258
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4260
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4261

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4262
  br label %kmalloc_index.exit.i, !dbg !4262

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4263
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4265
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4266

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4267
  br label %kmalloc_index.exit.i, !dbg !4267

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4270
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4271

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4275
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4276

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4280
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4281

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4282
  br label %kmalloc_index.exit.i, !dbg !4282

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4283
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4285
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4286

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4287
  br label %kmalloc_index.exit.i, !dbg !4287

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4288, !srcloc !4291
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #9, !dbg !4292, !srcloc !4295
  unreachable, !dbg !4296

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4297
  store i32 %45, i32* %index.i, align 4, !dbg !4298
  %46 = load i32, i32* %index.i, align 4, !dbg !4299
  %tobool.i = icmp ne i32 %46, 0, !dbg !4299
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4301

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4302
  br label %kmalloc.exit, !dbg !4302

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4303
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4304
  %and.i.i = and i32 %48, 17, !dbg !4304
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4304
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4304
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4304
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4304
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4306

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4307
  br label %kmalloc_type.exit.i, !dbg !4307

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4308
  %and2.i.i = and i32 %49, 1, !dbg !4309
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4308
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4308
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4308
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4310
  br label %kmalloc_type.exit.i, !dbg !4310

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4311
  %idxprom.i = zext i32 %51 to i64, !dbg !4312
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4312
  %52 = load i32, i32* %index.i, align 4, !dbg !4313
  %idxprom6.i = zext i32 %52 to i64, !dbg !4312
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4312
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4312
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4314
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4315
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4316
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4317
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4318
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4318
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4318
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4318
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4318
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4079
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4319
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4320
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4321
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4322
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4323
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4324
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4325
  store i8* %62, i8** %retval.i, align 8, !dbg !4326
  br label %kmalloc.exit, !dbg !4326

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4327
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4328
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4329
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4329
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4329
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4329
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4329
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4330
  br label %kmalloc.exit, !dbg !4330

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4331
  ret i8* %65, !dbg !4332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !4333 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !4339, metadata !DIExpression()), !dbg !4340
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4343, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4345, metadata !DIExpression()), !dbg !4348
  %0 = load i64, i64* %a.addr, align 8, !dbg !4348
  store i64 %0, i64* %__a, align 8, !dbg !4348
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4349, metadata !DIExpression()), !dbg !4348
  %1 = load i64, i64* %b.addr, align 8, !dbg !4348
  store i64 %1, i64* %__b, align 8, !dbg !4348
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4350, metadata !DIExpression()), !dbg !4348
  store i64* %bytes, i64** %__d, align 8, !dbg !4348
  %cmp = icmp eq i64* %__a, %__b, !dbg !4348
  %conv = zext i1 %cmp to i32, !dbg !4348
  %2 = load i64*, i64** %__d, align 8, !dbg !4348
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4348
  %conv2 = zext i1 %cmp1 to i32, !dbg !4348
  %3 = load i64, i64* %__a, align 8, !dbg !4348
  %4 = load i64, i64* %__b, align 8, !dbg !4348
  %5 = load i64*, i64** %__d, align 8, !dbg !4348
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4348
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4348
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4348
  store i64 %8, i64* %5, align 8, !dbg !4348
  %frombool = zext i1 %7 to i8, !dbg !4348
  store i8 %frombool, i8* %tmp, align 1, !dbg !4348
  %9 = load i8, i8* %tmp, align 1, !dbg !4348
  %tobool = trunc i8 %9 to i1, !dbg !4348
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !4352
  br i1 %call, label %if.then, label %if.end, !dbg !4353

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !4354
  br label %return, !dbg !4354

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !4355, metadata !DIExpression()), !dbg !4358
  %10 = load i64, i64* %bytes, align 8, !dbg !4358
  store i64 %10, i64* %__a3, align 8, !dbg !4358
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !4359, metadata !DIExpression()), !dbg !4358
  %11 = load i64, i64* %c.addr, align 8, !dbg !4358
  store i64 %11, i64* %__b4, align 8, !dbg !4358
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !4360, metadata !DIExpression()), !dbg !4358
  store i64* %bytes, i64** %__d5, align 8, !dbg !4358
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !4358
  %conv7 = zext i1 %cmp6 to i32, !dbg !4358
  %12 = load i64*, i64** %__d5, align 8, !dbg !4358
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !4358
  %conv9 = zext i1 %cmp8 to i32, !dbg !4358
  %13 = load i64, i64* %__a3, align 8, !dbg !4358
  %14 = load i64, i64* %__b4, align 8, !dbg !4358
  %15 = load i64*, i64** %__d5, align 8, !dbg !4358
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !4358
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4358
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4358
  store i64 %18, i64* %15, align 8, !dbg !4358
  %frombool11 = zext i1 %17 to i8, !dbg !4358
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !4358
  %19 = load i8, i8* %tmp10, align 1, !dbg !4358
  %tobool12 = trunc i8 %19 to i1, !dbg !4358
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #7, !dbg !4361
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4362

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !4363
  br label %return, !dbg !4363

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !4364
  store i64 %20, i64* %retval, align 8, !dbg !4365
  br label %return, !dbg !4365

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !4366
  ret i64 %21, !dbg !4366
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.reset_control* @devm_reset_control_array_get(%struct.device* %dev, i1 zeroext %shared, i1 zeroext %optional) #0 !dbg !4367 {
entry:
  %retval = alloca %struct.reset_control*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %shared.addr = alloca i8, align 1
  %optional.addr = alloca i8, align 1
  %ptr = alloca %struct.reset_control**, align 8
  %rstc = alloca %struct.reset_control*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4370, metadata !DIExpression()), !dbg !4371
  %frombool = zext i1 %shared to i8
  store i8 %frombool, i8* %shared.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %shared.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  %frombool1 = zext i1 %optional to i8
  store i8 %frombool1, i8* %optional.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %optional.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  call void @llvm.dbg.declare(metadata %struct.reset_control*** %ptr, metadata !4376, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !4378, metadata !DIExpression()), !dbg !4379
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_reset_control_release, i64 8, i32 3264) #7, !dbg !4380
  %0 = bitcast i8* %call to %struct.reset_control**, !dbg !4380
  store %struct.reset_control** %0, %struct.reset_control*** %ptr, align 8, !dbg !4381
  %1 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !4382
  %tobool = icmp ne %struct.reset_control** %1, null, !dbg !4382
  br i1 %tobool, label %if.end, label %if.then, !dbg !4384

if.then:                                          ; preds = %entry
  %call2 = call i8* @ERR_PTR(i64 -12) #7, !dbg !4385
  %2 = bitcast i8* %call2 to %struct.reset_control*, !dbg !4385
  store %struct.reset_control* %2, %struct.reset_control** %retval, align 8, !dbg !4386
  br label %return, !dbg !4386

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4387
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !4388
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4388
  %5 = load i8, i8* %shared.addr, align 1, !dbg !4389
  %tobool3 = trunc i8 %5 to i1, !dbg !4389
  %6 = load i8, i8* %optional.addr, align 1, !dbg !4390
  %tobool4 = trunc i8 %6 to i1, !dbg !4390
  %call5 = call %struct.reset_control* @of_reset_control_array_get(%struct.device_node* %4, i1 zeroext %tobool3, i1 zeroext %tobool4, i1 zeroext true) #7, !dbg !4391
  store %struct.reset_control* %call5, %struct.reset_control** %rstc, align 8, !dbg !4392
  %7 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4393
  %8 = bitcast %struct.reset_control* %7 to i8*, !dbg !4393
  %call6 = call zeroext i1 @IS_ERR_OR_NULL(i8* %8) #7, !dbg !4395
  br i1 %call6, label %if.then7, label %if.end8, !dbg !4396

if.then7:                                         ; preds = %if.end
  %9 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !4397
  %10 = bitcast %struct.reset_control** %9 to i8*, !dbg !4397
  call void @devres_free(i8* %10) #7, !dbg !4399
  %11 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4400
  store %struct.reset_control* %11, %struct.reset_control** %retval, align 8, !dbg !4401
  br label %return, !dbg !4401

if.end8:                                          ; preds = %if.end
  %12 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4402
  %13 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !4403
  store %struct.reset_control* %12, %struct.reset_control** %13, align 8, !dbg !4404
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4405
  %15 = load %struct.reset_control**, %struct.reset_control*** %ptr, align 8, !dbg !4406
  %16 = bitcast %struct.reset_control** %15 to i8*, !dbg !4406
  call void @devres_add(%struct.device* %14, i8* %16) #7, !dbg !4407
  %17 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4408
  store %struct.reset_control* %17, %struct.reset_control** %retval, align 8, !dbg !4409
  br label %return, !dbg !4409

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %18 = load %struct.reset_control*, %struct.reset_control** %retval, align 8, !dbg !4410
  ret %struct.reset_control* %18, !dbg !4410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @reset_control_get_count(%struct.device* %dev) #0 !dbg !4411 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4414
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4416
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4416
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4414
  br i1 %tobool, label %if.then, label %if.end, !dbg !4417

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4418
  %of_node1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 23, !dbg !4419
  %3 = load %struct.device_node*, %struct.device_node** %of_node1, align 8, !dbg !4419
  %call = call i32 @of_reset_control_get_count(%struct.device_node* %3) #7, !dbg !4420
  store i32 %call, i32* %retval, align 4, !dbg !4421
  br label %return, !dbg !4421

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4422
  %call2 = call i32 @reset_control_get_count_from_lookup(%struct.device* %4) #7, !dbg !4423
  store i32 %call2, i32* %retval, align 4, !dbg !4424
  br label %return, !dbg !4424

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4425
  ret i32 %5, !dbg !4425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @reset_control_get_count_from_lookup(%struct.device* %dev) #0 !dbg !4426 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %lookup = alloca %struct.reset_control_lookup*, align 8
  %dev_id = alloca i8*, align 8
  %count = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_control_lookup*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.reset_control_lookup*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.declare(metadata %struct.reset_control_lookup** %lookup, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.declare(metadata i8** %dev_id, metadata !4431, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i32 0, i32* %count, align 4, !dbg !4434
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4435
  %tobool = icmp ne %struct.device* %0, null, !dbg !4435
  br i1 %tobool, label %if.end, label %if.then, !dbg !4437

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4439
  %call = call i8* @dev_name(%struct.device* %1) #7, !dbg !4440
  store i8* %call, i8** %dev_id, align 8, !dbg !4441
  call void @mutex_lock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !4442
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4443, metadata !DIExpression()), !dbg !4446
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @reset_lookup_list, i32 0, i32 0), align 8, !dbg !4446
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4446
  store i8* %3, i8** %__mptr, align 8, !dbg !4446
  br label %do.body, !dbg !4446

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4447

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4446
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4446
  %5 = bitcast i8* %add.ptr to %struct.reset_control_lookup*, !dbg !4446
  store %struct.reset_control_lookup* %5, %struct.reset_control_lookup** %tmp, align 8, !dbg !4447
  %6 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %tmp, align 8, !dbg !4446
  store %struct.reset_control_lookup* %6, %struct.reset_control_lookup** %lookup, align 8, !dbg !4449
  br label %for.cond, !dbg !4449

for.cond:                                         ; preds = %do.end9, %do.end
  %7 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !4450
  %list = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %7, i32 0, i32 0, !dbg !4450
  %cmp = icmp eq %struct.list_head* %list, @reset_lookup_list, !dbg !4450
  %lnot = xor i1 %cmp, true, !dbg !4450
  br i1 %lnot, label %for.body, label %for.end, !dbg !4449

for.body:                                         ; preds = %for.cond
  %8 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !4452
  %dev_id1 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %8, i32 0, i32 3, !dbg !4455
  %9 = load i8*, i8** %dev_id1, align 8, !dbg !4455
  %10 = load i8*, i8** %dev_id, align 8, !dbg !4456
  %call2 = call i32 @strcmp(i8* %9, i8* %10) #7, !dbg !4457
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4457
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4458

if.then4:                                         ; preds = %for.body
  %11 = load i32, i32* %count, align 4, !dbg !4459
  %inc = add i32 %11, 1, !dbg !4459
  store i32 %inc, i32* %count, align 4, !dbg !4459
  br label %if.end5, !dbg !4460

if.end5:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !4461

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4462, metadata !DIExpression()), !dbg !4464
  %12 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %lookup, align 8, !dbg !4464
  %list7 = getelementptr inbounds %struct.reset_control_lookup, %struct.reset_control_lookup* %12, i32 0, i32 0, !dbg !4464
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list7, i32 0, i32 0, !dbg !4464
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4464
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4464
  store i8* %14, i8** %__mptr6, align 8, !dbg !4464
  br label %do.body8, !dbg !4464

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4465

do.end9:                                          ; preds = %do.body8
  %15 = load i8*, i8** %__mptr6, align 8, !dbg !4464
  %add.ptr11 = getelementptr i8, i8* %15, i64 0, !dbg !4464
  %16 = bitcast i8* %add.ptr11 to %struct.reset_control_lookup*, !dbg !4464
  store %struct.reset_control_lookup* %16, %struct.reset_control_lookup** %tmp10, align 8, !dbg !4465
  %17 = load %struct.reset_control_lookup*, %struct.reset_control_lookup** %tmp10, align 8, !dbg !4464
  store %struct.reset_control_lookup* %17, %struct.reset_control_lookup** %lookup, align 8, !dbg !4450
  br label %for.cond, !dbg !4450, !llvm.loop !4467

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @reset_lookup_mutex) #7, !dbg !4469
  %18 = load i32, i32* %count, align 4, !dbg !4470
  %cmp12 = icmp eq i32 %18, 0, !dbg !4472
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4473

if.then13:                                        ; preds = %for.end
  store i32 -2, i32* %count, align 4, !dbg !4474
  br label %if.end14, !dbg !4475

if.end14:                                         ; preds = %if.then13, %for.end
  %19 = load i32, i32* %count, align 4, !dbg !4476
  store i32 %19, i32* %retval, align 4, !dbg !4477
  br label %return, !dbg !4477

return:                                           ; preds = %if.end14, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4478
  ret i32 %20, !dbg !4478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4479 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4482, metadata !DIExpression()), !dbg !4483
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4484, metadata !DIExpression()), !dbg !4485
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4486, metadata !DIExpression()), !dbg !4487
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4488
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4490
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4491
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4492
  br i1 %call, label %if.end, label %if.then, !dbg !4493

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4494

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4495
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4496
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4497
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4498
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4499
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4500
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4501
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4502
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4503
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4504
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4505
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4506
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4508

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4510

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4508

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4512
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4512
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4512
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4512
  br label %do.end7, !dbg !4512

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4508

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4514
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4515 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  ret i1 true, !dbg !4524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4525 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4528
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !4530
  br i1 %call, label %if.end, label %if.then, !dbg !4531

if.then:                                          ; preds = %entry
  br label %return, !dbg !4532

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4533
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4534
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4534
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4535
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4536
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4536
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !4537
  br label %return, !dbg !4538

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4539 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  ret i1 true, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4545 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4550
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4551
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4552
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4553
  br label %do.body, !dbg !4554

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4555

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4557

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4555

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4559
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4559
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4559
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4559
  br label %do.end5, !dbg !4559

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4555

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4561
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4562 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  ret i1 true, !dbg !4570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4571 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  ret void, !dbg !4581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4582 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  ret i1 true, !dbg !4587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4588 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4593
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4595
  %1 = load i8*, i8** %init_name, align 8, !dbg !4595
  %tobool = icmp ne i8* %1, null, !dbg !4593
  br i1 %tobool, label %if.then, label %if.end, !dbg !4596

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4597
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4598
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4598
  store i8* %3, i8** %retval, align 8, !dbg !4599
  br label %return, !dbg !4599

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4600
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4601
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !4602
  store i8* %call, i8** %retval, align 8, !dbg !4603
  br label %return, !dbg !4603

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4604
  ret i8* %5, !dbg !4604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4605 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4610, metadata !DIExpression()), !dbg !4611
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4612
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4613
  %1 = load i8*, i8** %name, align 8, !dbg !4613
  ret i8* %1, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !4615 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4621
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4622
  call void @refcount_inc(%struct.refcount_struct* %refcount) #7, !dbg !4623
  ret void, !dbg !4624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !4625 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  ret i1 true, !dbg !4631
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4632 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4635
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4636
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #7, !dbg !4637
  ret void, !dbg !4638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !4639 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4645
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #7, !dbg !4646
  ret void, !dbg !4647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4648 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4655
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4656
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4659 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4662, metadata !DIExpression()), !dbg !4664
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4668, metadata !DIExpression()), !dbg !4669
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4670, metadata !DIExpression()), !dbg !4672
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2377, metadata !DIExpression()), !dbg !4673
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2387, metadata !DIExpression()), !dbg !4675
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4676, metadata !DIExpression()), !dbg !4677
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4678, metadata !DIExpression()), !dbg !4679
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load i32, i32* %i.addr, align 4, !dbg !4688
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4689
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !4690
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4691
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4691
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4692
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4693
  %conv.i.i = trunc i64 %5 to i32, !dbg !4693
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !4694
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4695
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4695
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !4695
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !4696
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4697
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4672
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !4672
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4672
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4672
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4672
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !4672, !srcloc !4698
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4672
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4672
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4672
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4672
  store i32 %15, i32* %old, align 4, !dbg !4687
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !4699
  %tobool = icmp ne i32* %16, null, !dbg !4699
  br i1 %tobool, label %if.then, label %if.end, !dbg !4701

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !4702
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !4703
  store i32 %17, i32* %18, align 4, !dbg !4704
  br label %if.end, !dbg !4705

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !4706
  %tobool1 = icmp ne i32 %19, 0, !dbg !4706
  %lnot = xor i1 %tobool1, true, !dbg !4706
  %lnot2 = xor i1 %lnot, true, !dbg !4706
  %lnot3 = xor i1 %lnot2, true, !dbg !4706
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4706
  %conv = sext i32 %lnot.ext to i64, !dbg !4706
  %tobool4 = icmp ne i64 %conv, 0, !dbg !4706
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4708

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4709
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #7, !dbg !4710
  br label %if.end17, !dbg !4710

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !4711
  %cmp = icmp slt i32 %21, 0, !dbg !4711
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4711

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !4711
  %23 = load i32, i32* %i.addr, align 4, !dbg !4711
  %add = add i32 %22, %23, !dbg !4711
  %cmp7 = icmp slt i32 %add, 0, !dbg !4711
  br label %lor.end, !dbg !4711

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !4711
  %lnot11 = xor i1 %lnot9, true, !dbg !4711
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4711
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4711
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !4711
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4713

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4714
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #7, !dbg !4715
  br label %if.end16, !dbg !4715

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !4716
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !4717 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4720, metadata !DIExpression()), !dbg !4724
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4728, metadata !DIExpression()), !dbg !4729
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4730, metadata !DIExpression()), !dbg !4732
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4734, metadata !DIExpression()), !dbg !4735
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4736, metadata !DIExpression()), !dbg !4737
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4738, metadata !DIExpression()), !dbg !4739
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4742, metadata !DIExpression()), !dbg !4743
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4744
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !4745
  %1 = load i32, i32* %n.addr, align 4, !dbg !4746
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4747
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4747
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4748
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4749
  %conv.i.i = trunc i64 %5 to i32, !dbg !4749
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !4750
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4751
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4751
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #10, !dbg !4751
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4752
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !4753
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4754
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4754
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !4754
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !4754
  ret void, !dbg !4756
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_controller_dev* @__reset_controller_by_name(i8* %name) #0 !dbg !4757 {
entry:
  %retval = alloca %struct.reset_controller_dev*, align 8
  %name.addr = alloca i8*, align 8
  %rcdev = alloca %struct.reset_controller_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_controller_dev*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp12 = alloca %struct.reset_controller_dev*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.declare(metadata %struct.reset_controller_dev** %rcdev, metadata !4762, metadata !DIExpression()), !dbg !4763
  br label %do.body, !dbg !4764

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4765

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4767, metadata !DIExpression()), !dbg !4770
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @reset_controller_list, i32 0, i32 0), align 8, !dbg !4770
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4770
  store i8* %1, i8** %__mptr, align 8, !dbg !4770
  br label %do.body1, !dbg !4770

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4771

do.end2:                                          ; preds = %do.body1
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4770
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4770
  %3 = bitcast i8* %add.ptr to %struct.reset_controller_dev*, !dbg !4770
  store %struct.reset_controller_dev* %3, %struct.reset_controller_dev** %tmp, align 8, !dbg !4771
  %4 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %tmp, align 8, !dbg !4770
  store %struct.reset_controller_dev* %4, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4773
  br label %for.cond, !dbg !4773

for.cond:                                         ; preds = %do.end11, %do.end2
  %5 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4774
  %list = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %5, i32 0, i32 2, !dbg !4774
  %cmp = icmp eq %struct.list_head* %list, @reset_controller_list, !dbg !4774
  %lnot = xor i1 %cmp, true, !dbg !4774
  br i1 %lnot, label %for.body, label %for.end, !dbg !4773

for.body:                                         ; preds = %for.cond
  %6 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4776
  %dev = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %6, i32 0, i32 4, !dbg !4779
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4779
  %tobool = icmp ne %struct.device* %7, null, !dbg !4776
  br i1 %tobool, label %if.end, label %if.then, !dbg !4780

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4781

if.end:                                           ; preds = %for.body
  %8 = load i8*, i8** %name.addr, align 8, !dbg !4782
  %9 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4784
  %dev3 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %9, i32 0, i32 4, !dbg !4785
  %10 = load %struct.device*, %struct.device** %dev3, align 8, !dbg !4785
  %call = call i8* @dev_name(%struct.device* %10) #7, !dbg !4786
  %call4 = call i32 @strcmp(i8* %8, i8* %call) #7, !dbg !4787
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4787
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4788

if.then6:                                         ; preds = %if.end
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4789
  store %struct.reset_controller_dev* %11, %struct.reset_controller_dev** %retval, align 8, !dbg !4790
  br label %return, !dbg !4790

if.end7:                                          ; preds = %if.end
  br label %for.inc, !dbg !4791

for.inc:                                          ; preds = %if.end7, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !4792, metadata !DIExpression()), !dbg !4794
  %12 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4794
  %list9 = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %12, i32 0, i32 2, !dbg !4794
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list9, i32 0, i32 0, !dbg !4794
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4794
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4794
  store i8* %14, i8** %__mptr8, align 8, !dbg !4794
  br label %do.body10, !dbg !4794

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !4795

do.end11:                                         ; preds = %do.body10
  %15 = load i8*, i8** %__mptr8, align 8, !dbg !4794
  %add.ptr13 = getelementptr i8, i8* %15, i64 -16, !dbg !4794
  %16 = bitcast i8* %add.ptr13 to %struct.reset_controller_dev*, !dbg !4794
  store %struct.reset_controller_dev* %16, %struct.reset_controller_dev** %tmp12, align 8, !dbg !4795
  %17 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %tmp12, align 8, !dbg !4794
  store %struct.reset_controller_dev* %17, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4774
  br label %for.cond, !dbg !4774, !llvm.loop !4797

for.end:                                          ; preds = %for.cond
  store %struct.reset_controller_dev* null, %struct.reset_controller_dev** %retval, align 8, !dbg !4799
  br label %return, !dbg !4799

return:                                           ; preds = %for.end, %if.then6
  %18 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %retval, align 8, !dbg !4800
  ret %struct.reset_controller_dev* %18, !dbg !4800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !4801 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4809
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4811
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #7, !dbg !4812
  br i1 %call, label %if.then, label %if.end, !dbg !4813

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4814
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4816
  call void %1(%struct.kref* %2) #7, !dbg !4814
  store i32 1, i32* %retval, align 4, !dbg !4817
  br label %return, !dbg !4817

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4818
  br label %return, !dbg !4818

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4819
  ret i32 %3, !dbg !4819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__reset_control_release(%struct.kref* %kref) #0 !dbg !4820 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %rstc = alloca %struct.reset_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.reset_control*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.declare(metadata %struct.reset_control** %rstc, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4825, metadata !DIExpression()), !dbg !4827
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4827
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !4827
  store i8* %1, i8** %__mptr, align 8, !dbg !4827
  br label %do.body, !dbg !4827

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4828

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4827
  %add.ptr = getelementptr i8, i8* %2, i64 -28, !dbg !4827
  %3 = bitcast i8* %add.ptr to %struct.reset_control*, !dbg !4827
  store %struct.reset_control* %3, %struct.reset_control** %tmp, align 8, !dbg !4828
  %4 = load %struct.reset_control*, %struct.reset_control** %tmp, align 8, !dbg !4827
  store %struct.reset_control* %4, %struct.reset_control** %rstc, align 8, !dbg !4824
  br label %do.body1, !dbg !4830

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4831

do.end2:                                          ; preds = %do.body1
  %5 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4833
  %rcdev = getelementptr inbounds %struct.reset_control, %struct.reset_control* %5, i32 0, i32 0, !dbg !4834
  %6 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %rcdev, align 8, !dbg !4834
  %owner = getelementptr inbounds %struct.reset_controller_dev, %struct.reset_controller_dev* %6, i32 0, i32 1, !dbg !4835
  %7 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4835
  call void @module_put(%struct.module* %7) #7, !dbg !4836
  %8 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4837
  %list = getelementptr inbounds %struct.reset_control, %struct.reset_control* %8, i32 0, i32 1, !dbg !4838
  call void @list_del(%struct.list_head* %list) #7, !dbg !4839
  %9 = load %struct.reset_control*, %struct.reset_control** %rstc, align 8, !dbg !4840
  %10 = bitcast %struct.reset_control* %9 to i8*, !dbg !4840
  call void @kfree(i8* %10) #7, !dbg !4841
  ret void, !dbg !4842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !4843 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4848
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !4849
  ret i1 %call, !dbg !4850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4851 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4858
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4859
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !4860
  ret i1 %call, !dbg !4861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4862 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4865, metadata !DIExpression()), !dbg !4867
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4871, metadata !DIExpression()), !dbg !4872
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4873, metadata !DIExpression()), !dbg !4875
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2377, metadata !DIExpression()), !dbg !4876
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2387, metadata !DIExpression()), !dbg !4878
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4879, metadata !DIExpression()), !dbg !4880
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4881, metadata !DIExpression()), !dbg !4882
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4889, metadata !DIExpression()), !dbg !4890
  %0 = load i32, i32* %i.addr, align 4, !dbg !4891
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4892
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !4893
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4894
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4894
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4895
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4896
  %conv.i.i = trunc i64 %5 to i32, !dbg !4896
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !4897
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4898
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4898
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !4898
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !4899
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4900
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4875
  %sub.i.i = sub i32 0, %10, !dbg !4875
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !4875
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4875
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4875
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4875
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !4875, !srcloc !4901
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4875
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4875
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4875
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4875
  store i32 %15, i32* %old, align 4, !dbg !4890
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !4902
  %tobool = icmp ne i32* %16, null, !dbg !4902
  br i1 %tobool, label %if.then, label %if.end, !dbg !4904

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !4905
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !4906
  store i32 %17, i32* %18, align 4, !dbg !4907
  br label %if.end, !dbg !4908

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !4909
  %20 = load i32, i32* %i.addr, align 4, !dbg !4911
  %cmp = icmp eq i32 %19, %20, !dbg !4912
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4913

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4914, !srcloc !4916
  store i1 true, i1* %retval, align 1, !dbg !4917
  br label %return, !dbg !4917

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !4918
  %cmp3 = icmp slt i32 %21, 0, !dbg !4918
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !4918

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !4918
  %23 = load i32, i32* %i.addr, align 4, !dbg !4918
  %sub = sub i32 %22, %23, !dbg !4918
  %cmp4 = icmp slt i32 %sub, 0, !dbg !4918
  br label %lor.end, !dbg !4918

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !4918
  %lnot5 = xor i1 %lnot, true, !dbg !4918
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4918
  %conv = sext i32 %lnot.ext to i64, !dbg !4918
  %tobool6 = icmp ne i64 %conv, 0, !dbg !4918
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4920

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4921
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !4922
  br label %if.end8, !dbg !4922

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !4923
  br label %return, !dbg !4923

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !4924
  ret i1 %26, !dbg !4924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !4925 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  ret void, !dbg !4930
}

; Function Attrs: noredzone
declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4931 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4935, metadata !DIExpression()), !dbg !4940
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4942, metadata !DIExpression()), !dbg !4943
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  %0 = load i64, i64* %size.addr, align 8, !dbg !4946
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4948
  br i1 %1, label %if.then, label %if.end447, !dbg !4949

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4950
  %tobool = icmp ne i64 %2, 0, !dbg !4950
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4953

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4955
  %cmp = icmp ult i64 %3, 4096, !dbg !4957
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4958

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4959
  br label %return, !dbg !4959

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub = sub i64 %4, 1, !dbg !4960
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4960
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4960

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub4 = sub i64 %6, 1, !dbg !4960
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4960
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4960

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub6 = sub i64 %8, 1, !dbg !4960
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4960
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4960

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4960

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub9 = sub i64 %9, 1, !dbg !4960
  %and = and i64 %sub9, -9223372036854775808, !dbg !4960
  %tobool10 = icmp ne i64 %and, 0, !dbg !4960
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4960

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4960

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub13 = sub i64 %10, 1, !dbg !4960
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4960
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4960
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4960

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4960

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub18 = sub i64 %11, 1, !dbg !4960
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4960
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4960
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4960

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4960

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub23 = sub i64 %12, 1, !dbg !4960
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4960
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4960
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4960

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4960

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub28 = sub i64 %13, 1, !dbg !4960
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4960
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4960
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4960

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4960

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub33 = sub i64 %14, 1, !dbg !4960
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4960
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4960
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4960

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4960

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub38 = sub i64 %15, 1, !dbg !4960
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4960
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4960
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4960

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4960

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub43 = sub i64 %16, 1, !dbg !4960
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4960
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4960
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4960

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4960

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub48 = sub i64 %17, 1, !dbg !4960
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4960
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4960
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4960

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4960

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub53 = sub i64 %18, 1, !dbg !4960
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4960
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4960
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4960

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4960

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub58 = sub i64 %19, 1, !dbg !4960
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4960
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4960
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4960

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4960

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub63 = sub i64 %20, 1, !dbg !4960
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4960
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4960
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4960

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4960

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub68 = sub i64 %21, 1, !dbg !4960
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4960
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4960
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4960

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4960

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub73 = sub i64 %22, 1, !dbg !4960
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4960
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4960
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4960

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4960

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub78 = sub i64 %23, 1, !dbg !4960
  %and79 = and i64 %sub78, 562949953421312, !dbg !4960
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4960
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4960

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4960

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub83 = sub i64 %24, 1, !dbg !4960
  %and84 = and i64 %sub83, 281474976710656, !dbg !4960
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4960
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4960

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4960

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub88 = sub i64 %25, 1, !dbg !4960
  %and89 = and i64 %sub88, 140737488355328, !dbg !4960
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4960
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4960

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4960

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub93 = sub i64 %26, 1, !dbg !4960
  %and94 = and i64 %sub93, 70368744177664, !dbg !4960
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4960
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4960

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4960

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub98 = sub i64 %27, 1, !dbg !4960
  %and99 = and i64 %sub98, 35184372088832, !dbg !4960
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4960
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4960

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4960

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub103 = sub i64 %28, 1, !dbg !4960
  %and104 = and i64 %sub103, 17592186044416, !dbg !4960
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4960
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4960

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4960

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub108 = sub i64 %29, 1, !dbg !4960
  %and109 = and i64 %sub108, 8796093022208, !dbg !4960
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4960
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4960

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4960

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub113 = sub i64 %30, 1, !dbg !4960
  %and114 = and i64 %sub113, 4398046511104, !dbg !4960
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4960
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4960

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4960

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub118 = sub i64 %31, 1, !dbg !4960
  %and119 = and i64 %sub118, 2199023255552, !dbg !4960
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4960
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4960

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4960

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub123 = sub i64 %32, 1, !dbg !4960
  %and124 = and i64 %sub123, 1099511627776, !dbg !4960
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4960
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4960

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4960

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub128 = sub i64 %33, 1, !dbg !4960
  %and129 = and i64 %sub128, 549755813888, !dbg !4960
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4960
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4960

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4960

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub133 = sub i64 %34, 1, !dbg !4960
  %and134 = and i64 %sub133, 274877906944, !dbg !4960
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4960
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4960

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4960

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub138 = sub i64 %35, 1, !dbg !4960
  %and139 = and i64 %sub138, 137438953472, !dbg !4960
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4960
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4960

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4960

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub143 = sub i64 %36, 1, !dbg !4960
  %and144 = and i64 %sub143, 68719476736, !dbg !4960
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4960
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4960

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4960

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub148 = sub i64 %37, 1, !dbg !4960
  %and149 = and i64 %sub148, 34359738368, !dbg !4960
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4960
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4960

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4960

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub153 = sub i64 %38, 1, !dbg !4960
  %and154 = and i64 %sub153, 17179869184, !dbg !4960
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4960
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4960

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4960

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub158 = sub i64 %39, 1, !dbg !4960
  %and159 = and i64 %sub158, 8589934592, !dbg !4960
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4960
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4960

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4960

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub163 = sub i64 %40, 1, !dbg !4960
  %and164 = and i64 %sub163, 4294967296, !dbg !4960
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4960
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4960

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4960

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub168 = sub i64 %41, 1, !dbg !4960
  %and169 = and i64 %sub168, 2147483648, !dbg !4960
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4960
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4960

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4960

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub173 = sub i64 %42, 1, !dbg !4960
  %and174 = and i64 %sub173, 1073741824, !dbg !4960
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4960
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4960

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4960

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub178 = sub i64 %43, 1, !dbg !4960
  %and179 = and i64 %sub178, 536870912, !dbg !4960
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4960
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4960

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4960

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub183 = sub i64 %44, 1, !dbg !4960
  %and184 = and i64 %sub183, 268435456, !dbg !4960
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4960
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4960

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4960

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub188 = sub i64 %45, 1, !dbg !4960
  %and189 = and i64 %sub188, 134217728, !dbg !4960
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4960
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4960

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4960

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub193 = sub i64 %46, 1, !dbg !4960
  %and194 = and i64 %sub193, 67108864, !dbg !4960
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4960
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4960

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4960

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub198 = sub i64 %47, 1, !dbg !4960
  %and199 = and i64 %sub198, 33554432, !dbg !4960
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4960
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4960

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4960

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub203 = sub i64 %48, 1, !dbg !4960
  %and204 = and i64 %sub203, 16777216, !dbg !4960
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4960
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4960

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4960

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub208 = sub i64 %49, 1, !dbg !4960
  %and209 = and i64 %sub208, 8388608, !dbg !4960
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4960
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4960

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4960

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub213 = sub i64 %50, 1, !dbg !4960
  %and214 = and i64 %sub213, 4194304, !dbg !4960
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4960
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4960

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4960

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub218 = sub i64 %51, 1, !dbg !4960
  %and219 = and i64 %sub218, 2097152, !dbg !4960
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4960
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4960

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4960

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub223 = sub i64 %52, 1, !dbg !4960
  %and224 = and i64 %sub223, 1048576, !dbg !4960
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4960
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4960

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4960

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub228 = sub i64 %53, 1, !dbg !4960
  %and229 = and i64 %sub228, 524288, !dbg !4960
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4960
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4960

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4960

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub233 = sub i64 %54, 1, !dbg !4960
  %and234 = and i64 %sub233, 262144, !dbg !4960
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4960
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4960

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4960

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub238 = sub i64 %55, 1, !dbg !4960
  %and239 = and i64 %sub238, 131072, !dbg !4960
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4960
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4960

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4960

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub243 = sub i64 %56, 1, !dbg !4960
  %and244 = and i64 %sub243, 65536, !dbg !4960
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4960
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4960

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4960

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub248 = sub i64 %57, 1, !dbg !4960
  %and249 = and i64 %sub248, 32768, !dbg !4960
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4960
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4960

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4960

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub253 = sub i64 %58, 1, !dbg !4960
  %and254 = and i64 %sub253, 16384, !dbg !4960
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4960
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4960

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4960

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub258 = sub i64 %59, 1, !dbg !4960
  %and259 = and i64 %sub258, 8192, !dbg !4960
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4960
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4960

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4960

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub263 = sub i64 %60, 1, !dbg !4960
  %and264 = and i64 %sub263, 4096, !dbg !4960
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4960
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4960

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4960

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub268 = sub i64 %61, 1, !dbg !4960
  %and269 = and i64 %sub268, 2048, !dbg !4960
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4960
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4960

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4960

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub273 = sub i64 %62, 1, !dbg !4960
  %and274 = and i64 %sub273, 1024, !dbg !4960
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4960
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4960

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4960

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub278 = sub i64 %63, 1, !dbg !4960
  %and279 = and i64 %sub278, 512, !dbg !4960
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4960
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4960

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4960

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub283 = sub i64 %64, 1, !dbg !4960
  %and284 = and i64 %sub283, 256, !dbg !4960
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4960
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4960

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4960

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub288 = sub i64 %65, 1, !dbg !4960
  %and289 = and i64 %sub288, 128, !dbg !4960
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4960
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4960

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4960

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub293 = sub i64 %66, 1, !dbg !4960
  %and294 = and i64 %sub293, 64, !dbg !4960
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4960
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4960

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4960

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub298 = sub i64 %67, 1, !dbg !4960
  %and299 = and i64 %sub298, 32, !dbg !4960
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4960
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4960

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4960

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub303 = sub i64 %68, 1, !dbg !4960
  %and304 = and i64 %sub303, 16, !dbg !4960
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4960
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4960

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4960

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub308 = sub i64 %69, 1, !dbg !4960
  %and309 = and i64 %sub308, 8, !dbg !4960
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4960
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4960

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4960

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub313 = sub i64 %70, 1, !dbg !4960
  %and314 = and i64 %sub313, 4, !dbg !4960
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4960
  %71 = zext i1 %tobool315 to i64, !dbg !4960
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4960
  br label %cond.end, !dbg !4960

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4960
  br label %cond.end317, !dbg !4960

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4960
  br label %cond.end319, !dbg !4960

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4960
  br label %cond.end321, !dbg !4960

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4960
  br label %cond.end323, !dbg !4960

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4960
  br label %cond.end325, !dbg !4960

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4960
  br label %cond.end327, !dbg !4960

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4960
  br label %cond.end329, !dbg !4960

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4960
  br label %cond.end331, !dbg !4960

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4960
  br label %cond.end333, !dbg !4960

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4960
  br label %cond.end335, !dbg !4960

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4960
  br label %cond.end337, !dbg !4960

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4960
  br label %cond.end339, !dbg !4960

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4960
  br label %cond.end341, !dbg !4960

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4960
  br label %cond.end343, !dbg !4960

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4960
  br label %cond.end345, !dbg !4960

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4960
  br label %cond.end347, !dbg !4960

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4960
  br label %cond.end349, !dbg !4960

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4960
  br label %cond.end351, !dbg !4960

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4960
  br label %cond.end353, !dbg !4960

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4960
  br label %cond.end355, !dbg !4960

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4960
  br label %cond.end357, !dbg !4960

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4960
  br label %cond.end359, !dbg !4960

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4960
  br label %cond.end361, !dbg !4960

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4960
  br label %cond.end363, !dbg !4960

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4960
  br label %cond.end365, !dbg !4960

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4960
  br label %cond.end367, !dbg !4960

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4960
  br label %cond.end369, !dbg !4960

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4960
  br label %cond.end371, !dbg !4960

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4960
  br label %cond.end373, !dbg !4960

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4960
  br label %cond.end375, !dbg !4960

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4960
  br label %cond.end377, !dbg !4960

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4960
  br label %cond.end379, !dbg !4960

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4960
  br label %cond.end381, !dbg !4960

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4960
  br label %cond.end383, !dbg !4960

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4960
  br label %cond.end385, !dbg !4960

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4960
  br label %cond.end387, !dbg !4960

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4960
  br label %cond.end389, !dbg !4960

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4960
  br label %cond.end391, !dbg !4960

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4960
  br label %cond.end393, !dbg !4960

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4960
  br label %cond.end395, !dbg !4960

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4960
  br label %cond.end397, !dbg !4960

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4960
  br label %cond.end399, !dbg !4960

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4960
  br label %cond.end401, !dbg !4960

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4960
  br label %cond.end403, !dbg !4960

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4960
  br label %cond.end405, !dbg !4960

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4960
  br label %cond.end407, !dbg !4960

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4960
  br label %cond.end409, !dbg !4960

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4960
  br label %cond.end411, !dbg !4960

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4960
  br label %cond.end413, !dbg !4960

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4960
  br label %cond.end415, !dbg !4960

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4960
  br label %cond.end417, !dbg !4960

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4960
  br label %cond.end419, !dbg !4960

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4960
  br label %cond.end421, !dbg !4960

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4960
  br label %cond.end423, !dbg !4960

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4960
  br label %cond.end425, !dbg !4960

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4960
  br label %cond.end427, !dbg !4960

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4960
  br label %cond.end429, !dbg !4960

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4960
  br label %cond.end431, !dbg !4960

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4960
  br label %cond.end433, !dbg !4960

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4960
  br label %cond.end435, !dbg !4960

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4960
  br label %cond.end437, !dbg !4960

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4960
  br label %cond.end440, !dbg !4960

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4960

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4960
  br label %cond.end444, !dbg !4960

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4960
  %sub443 = sub i64 %72, 1, !dbg !4960
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4960
  br label %cond.end444, !dbg !4960

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4960
  %sub446 = sub i32 %cond445, 12, !dbg !4961
  %add = add i32 %sub446, 1, !dbg !4962
  store i32 %add, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4964
  %dec = add i64 %73, -1, !dbg !4964
  store i64 %dec, i64* %size.addr, align 8, !dbg !4964
  %74 = load i64, i64* %size.addr, align 8, !dbg !4965
  %shr = lshr i64 %74, 12, !dbg !4965
  store i64 %shr, i64* %size.addr, align 8, !dbg !4965
  %75 = load i64, i64* %size.addr, align 8, !dbg !4966
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4943
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4967
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4968
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4967, !srcloc !4969
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4967
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4970
  %add.i = add i32 %79, 1, !dbg !4971
  store i32 %add.i, i32* %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4973
  ret i32 %80, !dbg !4973
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4974 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4935, metadata !DIExpression()), !dbg !4978
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4942, metadata !DIExpression()), !dbg !4980
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  %0 = load i64, i64* %n.addr, align 8, !dbg !4983
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4980
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4984
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4985
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4984, !srcloc !4969
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4984
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4986
  %add.i = add i32 %4, 1, !dbg !4987
  %sub = sub i32 %add.i, 1, !dbg !4988
  ret i32 %sub, !dbg !4989
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4990 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4994, metadata !DIExpression()), !dbg !4995
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5002
  ret i8* %0, !dbg !5003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5004 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5007, metadata !DIExpression()), !dbg !5008
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5009
  %tobool = trunc i8 %0 to i1, !dbg !5009
  %lnot = xor i1 %tobool, true, !dbg !5009
  %lnot1 = xor i1 %lnot, true, !dbg !5009
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5009
  %conv = sext i32 %lnot.ext to i64, !dbg !5009
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5009
  ret i1 %tobool2, !dbg !5010
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2125, !2126, !2127, !2128}
!llvm.ident = !{!2129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reset_list_mutex", scope: !2, file: !3, line: 19, type: !386, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !70, globals: !2118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/reset/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !63}
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
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !56, line: 119, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !64, line: 305, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !67, !68, !69}
!66 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!67 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!68 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!69 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!70 = !{!71, !73, !74, !78, !91, !2094, !2096, !92, !2097, !2104, !2107, !2108, !2117, !204, !216}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !72, line: 148, baseType: !7)
!72 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !3, line: 41, size: 384, elements: !76)
!76 = !{!77, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rcdev", scope: !75, file: !3, line: 42, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_controller_dev", file: !80, line: 69, size: 704, elements: !81)
!80 = !DIFile(filename: "./include/linux/reset-controller.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !96, !100, !106, !107, !2070, !2071, !2072, !2085}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !79, file: !80, line: 70, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control_ops", file: !80, line: 18, size: 256, elements: !86)
!86 = !{!87, !93, !94, !95}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !85, file: !80, line: 19, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!91, !78, !92}
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "assert", scope: !85, file: !80, line: 20, baseType: !88, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "deassert", scope: !85, file: !80, line: 21, baseType: !88, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !85, file: !80, line: 22, baseType: !88, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !79, file: !80, line: 71, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !99, line: 76, flags: DIFlagFwdDecl)
!99 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !79, file: !80, line: 72, baseType: !101, size: 128, offset: 128)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !72, line: 178, size: 128, elements: !102)
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !72, line: 179, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !101, file: !72, line: 179, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reset_control_head", scope: !79, file: !80, line: 73, baseType: !101, size: 128, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !79, file: !80, line: 74, baseType: !108, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !110)
!110 = !{!111, !1597, !1598, !1601, !1602, !1653, !1747, !1748, !1749, !1750, !1751, !1760, !1865, !1878, !1881, !1882, !1886, !1888, !1889, !1890, !1894, !1900, !1901, !1904, !2019, !2020, !2023, !2024, !2025, !2026, !2058, !2059, !2060, !2063, !2066, !2067, !2068, !2069}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !30, line: 462, baseType: !112, size: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !119, !120, !122, !182, !1434, !1587, !1592, !1593, !1594, !1595, !1596}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 65, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !112, file: !113, line: 66, baseType: !101, size: 128, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !113, line: 67, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !112, file: !113, line: 68, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !113, line: 192, size: 704, elements: !125)
!125 = !{!126, !127, !143, !144}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !124, file: !113, line: 193, baseType: !101, size: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !124, file: !113, line: 194, baseType: !128, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !129, line: 83, baseType: !130)
!129 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !129, line: 71, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !129, line: 72, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !129, line: 72, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !133, file: !129, line: 73, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !129, line: 20, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !136, file: !129, line: 21, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !140, line: 25, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 25, elements: !142)
!142 = !{}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !124, file: !113, line: 195, baseType: !112, size: 512, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !124, file: !113, line: 196, baseType: !145, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !113, line: 156, size: 192, elements: !148)
!148 = !{!149, !154, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !147, file: !113, line: 157, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!91, !123, !121}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !113, line: 158, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!116, !123, !121}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !147, file: !113, line: 159, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!91, !123, !121, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 148, size: 20736, elements: !166)
!166 = !{!167, !172, !176, !177, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !165, file: !113, line: 149, baseType: !168, size: 192)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !170)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!170 = !{!171}
!171 = !DISubrange(count: 3)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !165, file: !113, line: 150, baseType: !173, size: 4096, offset: 192)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 4096, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !165, file: !113, line: 151, baseType: !91, size: 32, offset: 4288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !165, file: !113, line: 152, baseType: !178, size: 16384, offset: 4320)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 16384, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 2048)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !165, file: !113, line: 153, baseType: !91, size: 32, offset: 20704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !112, file: !113, line: 69, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 138, size: 448, elements: !185)
!185 = !{!186, !190, !219, !221, !1380, !1413, !1417}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !184, file: !113, line: 139, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !121}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !184, file: !113, line: 140, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !194, line: 230, size: 128, elements: !195)
!194 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !212}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !193, file: !194, line: 231, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !121, !205, !169}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !72, line: 60, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !202, line: 73, baseType: !203)
!202 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !202, line: 15, baseType: !204)
!204 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !194, line: 30, size: 128, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !194, line: 31, baseType: !116, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !206, file: !194, line: 32, baseType: !210, size: 16, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !72, line: 19, baseType: !211)
!211 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !193, file: !194, line: 232, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!200, !121, !205, !116, !216}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 55, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !202, line: 72, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !202, line: 16, baseType: !92)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !184, file: !113, line: 141, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !184, file: !113, line: 142, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !194, line: 84, size: 320, elements: !226)
!226 = !{!227, !228, !232, !1377, !1378}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !194, line: 85, baseType: !116, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !225, file: !194, line: 86, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!210, !121, !205, !91}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !225, file: !194, line: 88, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!210, !121, !236, !91}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !194, line: 168, size: 448, elements: !238)
!238 = !{!239, !240, !241, !242, !252, !253}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !237, file: !194, line: 169, baseType: !206, size: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !237, file: !194, line: 170, baseType: !216, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !237, file: !194, line: 171, baseType: !73, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !237, file: !194, line: 172, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!200, !246, !121, !236, !169, !249, !216}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !248, line: 526, flags: DIFlagFwdDecl)
!248 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !72, line: 46, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !202, line: 88, baseType: !251)
!251 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !237, file: !194, line: 174, baseType: !243, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !237, file: !194, line: 176, baseType: !254, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!91, !246, !121, !236, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !259, line: 305, size: 1472, elements: !260)
!259 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !263, !264, !265, !273, !274, !1351, !1357, !1358, !1363, !1364, !1367, !1371, !1372, !1373, !1374, !1375}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !258, file: !259, line: 308, baseType: !92, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !258, file: !259, line: 309, baseType: !92, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !258, file: !259, line: 313, baseType: !257, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !258, file: !259, line: 313, baseType: !257, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !258, file: !259, line: 315, baseType: !266, size: 192, align: 64, offset: 256)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !267, line: 24, size: 192, align: 64, elements: !268)
!267 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !270, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !266, file: !267, line: 25, baseType: !92, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !266, file: !267, line: 26, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !266, file: !267, line: 27, baseType: !271, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !258, file: !259, line: 323, baseType: !92, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !258, file: !259, line: 327, baseType: !275, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !259, line: 388, size: 7296, elements: !277)
!277 = !{!278, !1347}
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !259, line: 389, baseType: !279, size: 7296)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !259, line: 389, size: 7296, elements: !280)
!280 = !{!281, !282, !286, !292, !296, !297, !298, !299, !300, !308, !313, !314, !315, !316, !325, !326, !327, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !362, !370, !373, !421, !422, !1317, !1318, !1321, !1325, !1326, !1329, !1330, !1331, !1334, !1346}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !279, file: !259, line: 390, baseType: !257, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !279, file: !259, line: 391, baseType: !283, size: 64, offset: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !267, line: 31, size: 64, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !283, file: !267, line: 32, baseType: !271, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !279, file: !259, line: 392, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !288, line: 23, baseType: !289)
!288 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !290, line: 31, baseType: !291)
!290 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !279, file: !259, line: 394, baseType: !293, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!92, !246, !92, !92, !92, !92}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !279, file: !259, line: 398, baseType: !92, size: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !279, file: !259, line: 399, baseType: !92, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !279, file: !259, line: 405, baseType: !92, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !279, file: !259, line: 406, baseType: !92, size: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !279, file: !259, line: 407, baseType: !301, size: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !248, line: 286, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 286, size: 64, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !303, file: !248, line: 286, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !307, line: 18, baseType: !92)
!307 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !279, file: !259, line: 416, baseType: !309, size: 32, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !72, line: 168, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 166, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !310, file: !72, line: 167, baseType: !91, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !279, file: !259, line: 428, baseType: !309, size: 32, offset: 608)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !279, file: !259, line: 437, baseType: !309, size: 32, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !279, file: !259, line: 447, baseType: !309, size: 32, offset: 672)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !279, file: !259, line: 450, baseType: !317, size: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !318, line: 13, baseType: !319)
!318 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !72, line: 175, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 173, size: 64, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !320, file: !72, line: 174, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !288, line: 22, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !290, line: 30, baseType: !251)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !279, file: !259, line: 452, baseType: !91, size: 32, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !279, file: !259, line: 454, baseType: !128, offset: 800)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !279, file: !259, line: 457, baseType: !328, size: 256, offset: 832)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !329, line: 35, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331, !332, !333, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !328, file: !329, line: 36, baseType: !317, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !328, file: !329, line: 42, baseType: !317, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !328, file: !329, line: 46, baseType: !334, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !129, line: 29, baseType: !136)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !328, file: !329, line: 47, baseType: !101, size: 128, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !279, file: !259, line: 459, baseType: !101, size: 128, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !279, file: !259, line: 466, baseType: !92, size: 64, offset: 1216)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !279, file: !259, line: 467, baseType: !92, size: 64, offset: 1280)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !279, file: !259, line: 469, baseType: !92, size: 64, offset: 1344)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !279, file: !259, line: 470, baseType: !92, size: 64, offset: 1408)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !279, file: !259, line: 471, baseType: !319, size: 64, offset: 1472)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !279, file: !259, line: 472, baseType: !92, size: 64, offset: 1536)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !279, file: !259, line: 473, baseType: !92, size: 64, offset: 1600)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !279, file: !259, line: 474, baseType: !92, size: 64, offset: 1664)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !279, file: !259, line: 475, baseType: !92, size: 64, offset: 1728)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !279, file: !259, line: 477, baseType: !128, offset: 1792)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !279, file: !259, line: 478, baseType: !92, size: 64, offset: 1792)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !279, file: !259, line: 478, baseType: !92, size: 64, offset: 1856)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !279, file: !259, line: 478, baseType: !92, size: 64, offset: 1920)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !279, file: !259, line: 478, baseType: !92, size: 64, offset: 1984)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !279, file: !259, line: 479, baseType: !92, size: 64, offset: 2048)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !279, file: !259, line: 479, baseType: !92, size: 64, offset: 2112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !279, file: !259, line: 479, baseType: !92, size: 64, offset: 2176)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !279, file: !259, line: 480, baseType: !92, size: 64, offset: 2240)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !279, file: !259, line: 480, baseType: !92, size: 64, offset: 2304)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !279, file: !259, line: 480, baseType: !92, size: 64, offset: 2368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !279, file: !259, line: 480, baseType: !92, size: 64, offset: 2432)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !279, file: !259, line: 482, baseType: !359, size: 2816, offset: 2496)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2816, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 44)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !279, file: !259, line: 488, baseType: !363, size: 256, offset: 5312)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !364, line: 60, size: 256, elements: !365)
!364 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !363, file: !364, line: 61, baseType: !367, size: 256)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 256, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 4)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !279, file: !259, line: 490, baseType: !371, size: 64, offset: 5568)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !259, line: 490, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !279, file: !259, line: 493, baseType: !374, size: 896, offset: 5632)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !375, line: 53, baseType: !376)
!375 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 13, size: 896, elements: !377)
!377 = !{!378, !379, !380, !381, !384, !385, !392, !393, !413, !414, !417}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !376, file: !375, line: 18, baseType: !287, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !376, file: !375, line: 28, baseType: !319, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !376, file: !375, line: 31, baseType: !328, size: 256, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !376, file: !375, line: 32, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !375, line: 32, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !376, file: !375, line: 37, baseType: !211, size: 16, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !376, file: !375, line: 40, baseType: !386, size: 192, offset: 512)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !387, line: 53, size: 192, elements: !388)
!387 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !386, file: !387, line: 54, baseType: !317, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !386, file: !387, line: 55, baseType: !128, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !386, file: !387, line: 59, baseType: !101, size: 128, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !376, file: !375, line: 41, baseType: !73, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !376, file: !375, line: 42, baseType: !394, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !397, line: 13, size: 896, elements: !398)
!397 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !396, file: !397, line: 14, baseType: !73, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !396, file: !397, line: 15, baseType: !92, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !396, file: !397, line: 17, baseType: !92, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !396, file: !397, line: 17, baseType: !92, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !396, file: !397, line: 19, baseType: !204, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !396, file: !397, line: 21, baseType: !204, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !396, file: !397, line: 22, baseType: !204, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !396, file: !397, line: 23, baseType: !204, size: 64, offset: 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !396, file: !397, line: 24, baseType: !204, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !396, file: !397, line: 25, baseType: !204, size: 64, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !396, file: !397, line: 26, baseType: !204, size: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !396, file: !397, line: 27, baseType: !204, size: 64, offset: 704)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !396, file: !397, line: 28, baseType: !204, size: 64, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !396, file: !397, line: 29, baseType: !204, size: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !376, file: !375, line: 44, baseType: !309, size: 32, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !376, file: !375, line: 50, baseType: !415, size: 16, offset: 864)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !288, line: 19, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !290, line: 24, baseType: !211)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !376, file: !375, line: 51, baseType: !418, size: 16, offset: 880)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !288, line: 18, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !290, line: 23, baseType: !420)
!420 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !259, line: 495, baseType: !92, size: 64, offset: 6528)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !279, file: !259, line: 497, baseType: !423, size: 64, offset: 6592)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !259, line: 381, size: 384, elements: !425)
!425 = !{!426, !427, !1316}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !424, file: !259, line: 382, baseType: !309, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !424, file: !259, line: 383, baseType: !428, size: 128, offset: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !259, line: 376, size: 128, elements: !429)
!429 = !{!430, !1314}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !428, file: !259, line: 377, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !433, line: 640, size: 48640, elements: !434)
!433 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!434 = !{!435, !443, !445, !446, !451, !452, !453, !454, !455, !456, !457, !458, !462, !480, !491, !586, !587, !588, !599, !600, !602, !603, !604, !605, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !684, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !740, !742, !743, !744, !756, !758, !759, !760, !761, !762, !768, !769, !770, !771, !772, !773, !774, !786, !791, !795, !796, !797, !800, !804, !807, !810, !813, !816, !819, !822, !825, !831, !832, !833, !839, !840, !841, !842, !843, !852, !853, !854, !855, !856, !861, !862, !863, !866, !867, !870, !873, !876, !879, !882, !885, !886, !966, !969, !972, !973, !976, !977, !978, !984, !985, !986, !999, !1000, !1001, !1013, !1018, !1021, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !432, file: !433, line: 646, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !437, line: 56, size: 128, elements: !438)
!437 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !437, line: 57, baseType: !92, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !436, file: !437, line: 58, baseType: !441, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !288, line: 21, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !290, line: 27, baseType: !7)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !432, file: !433, line: 649, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !204)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !432, file: !433, line: 657, baseType: !73, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !432, file: !433, line: 658, baseType: !447, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !56, line: 113, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !56, line: 111, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !448, file: !56, line: 112, baseType: !309, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !433, line: 660, baseType: !7, size: 32, offset: 288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !432, file: !433, line: 661, baseType: !7, size: 32, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !433, line: 684, baseType: !91, size: 32, offset: 352)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !432, file: !433, line: 686, baseType: !91, size: 32, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !432, file: !433, line: 687, baseType: !91, size: 32, offset: 416)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !432, file: !433, line: 688, baseType: !91, size: 32, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !432, file: !433, line: 689, baseType: !7, size: 32, offset: 480)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !432, file: !433, line: 691, baseType: !459, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !433, line: 691, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !432, file: !433, line: 692, baseType: !463, size: 832, offset: 576)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !433, line: 451, size: 832, elements: !464)
!464 = !{!465, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !463, file: !433, line: 453, baseType: !466, size: 128)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !433, line: 325, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !466, file: !433, line: 326, baseType: !92, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !466, file: !433, line: 327, baseType: !441, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !463, file: !433, line: 454, baseType: !266, size: 192, align: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !463, file: !433, line: 455, baseType: !101, size: 128, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !463, file: !433, line: 456, baseType: !7, size: 32, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !463, file: !433, line: 458, baseType: !287, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !463, file: !433, line: 459, baseType: !287, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !463, file: !433, line: 460, baseType: !287, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !463, file: !433, line: 461, baseType: !287, size: 64, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !463, file: !433, line: 463, baseType: !287, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !463, file: !433, line: 465, baseType: !479, offset: 832)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !433, line: 415, elements: !142)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !432, file: !433, line: 693, baseType: !481, size: 384, offset: 1408)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !433, line: 489, size: 384, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !481, file: !433, line: 490, baseType: !101, size: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !481, file: !433, line: 491, baseType: !92, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !481, file: !433, line: 492, baseType: !92, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !481, file: !433, line: 493, baseType: !7, size: 32, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !481, file: !433, line: 494, baseType: !211, size: 16, offset: 288)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !481, file: !433, line: 495, baseType: !211, size: 16, offset: 304)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !481, file: !433, line: 497, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !432, file: !433, line: 697, baseType: !492, size: 1792, offset: 1792)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !433, line: 507, size: 1792, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !583, !584}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !492, file: !433, line: 508, baseType: !266, size: 192, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !492, file: !433, line: 515, baseType: !287, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !492, file: !433, line: 516, baseType: !287, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !492, file: !433, line: 517, baseType: !287, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !492, file: !433, line: 518, baseType: !287, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !492, file: !433, line: 519, baseType: !287, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !492, file: !433, line: 526, baseType: !323, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !492, file: !433, line: 527, baseType: !287, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !433, line: 528, baseType: !7, size: 32, offset: 640)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !492, file: !433, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !492, file: !433, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !492, file: !433, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !492, file: !433, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !492, file: !433, line: 563, baseType: !508, size: 512, offset: 704)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !509)
!509 = !{!510, !518, !519, !524, !576, !580, !581, !582}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !6, line: 119, baseType: !511, size: 256)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !512, line: 9, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !511, file: !512, line: 10, baseType: !266, size: 192, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !511, file: !512, line: 11, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !517, line: 29, baseType: !323)
!517 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !508, file: !6, line: 120, baseType: !516, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !508, file: !6, line: 121, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!5, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !508, file: !6, line: 122, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !527)
!527 = !{!528, !548, !549, !552, !562, !563, !571, !575}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !526, file: !6, line: 160, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !530, file: !6, line: 215, baseType: !334)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !530, file: !6, line: 216, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !530, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !530, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !530, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !530, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !530, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !530, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !530, file: !6, line: 233, baseType: !516, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !530, file: !6, line: 234, baseType: !523, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !530, file: !6, line: 235, baseType: !516, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !530, file: !6, line: 236, baseType: !523, size: 64, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !530, file: !6, line: 237, baseType: !545, size: 4096, offset: 512)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 4096, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 8)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !526, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !526, file: !6, line: 162, baseType: !550, size: 32, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !72, line: 27, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !202, line: 96, baseType: !91)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !526, file: !6, line: 163, baseType: !553, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !554, line: 276, baseType: !555)
!554 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !554, line: 276, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !555, file: !554, line: 276, baseType: !558, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !554, line: 70, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !554, line: 65, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !559, file: !554, line: 66, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !526, file: !6, line: 164, baseType: !523, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !526, file: !6, line: 165, baseType: !564, size: 128, offset: 256)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !512, line: 14, size: 128, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !564, file: !512, line: 15, baseType: !567, size: 128)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !267, line: 125, size: 128, elements: !568)
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !567, file: !267, line: 126, baseType: !283, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !567, file: !267, line: 127, baseType: !271, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !526, file: !6, line: 166, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!516}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !526, file: !6, line: 167, baseType: !516, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !508, file: !6, line: 123, baseType: !577, size: 8, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !288, line: 17, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !290, line: 21, baseType: !579)
!579 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !508, file: !6, line: 124, baseType: !577, size: 8, offset: 456)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !508, file: !6, line: 125, baseType: !577, size: 8, offset: 464)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !508, file: !6, line: 126, baseType: !577, size: 8, offset: 472)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !492, file: !433, line: 572, baseType: !508, size: 512, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !492, file: !433, line: 580, baseType: !585, size: 64, offset: 1728)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !432, file: !433, line: 721, baseType: !7, size: 32, offset: 3584)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !432, file: !433, line: 722, baseType: !91, size: 32, offset: 3616)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !432, file: !433, line: 723, baseType: !589, size: 64, offset: 3648)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !592, line: 17, baseType: !593)
!592 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !592, line: 17, size: 64, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !593, file: !592, line: 17, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 1)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !432, file: !433, line: 724, baseType: !591, size: 64, offset: 3712)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !432, file: !433, line: 749, baseType: !601, offset: 3776)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !433, line: 290, elements: !142)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !432, file: !433, line: 751, baseType: !101, size: 128, offset: 3776)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !432, file: !433, line: 757, baseType: !275, size: 64, offset: 3904)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !432, file: !433, line: 758, baseType: !275, size: 64, offset: 3968)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !432, file: !433, line: 761, baseType: !606, size: 320, offset: 4032)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !364, line: 34, size: 320, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !606, file: !364, line: 35, baseType: !287, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !606, file: !364, line: 36, baseType: !610, size: 256, offset: 64)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !368)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !432, file: !433, line: 766, baseType: !91, size: 32, offset: 4352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !432, file: !433, line: 767, baseType: !91, size: 32, offset: 4384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !432, file: !433, line: 768, baseType: !91, size: 32, offset: 4416)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !432, file: !433, line: 770, baseType: !91, size: 32, offset: 4448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !432, file: !433, line: 772, baseType: !92, size: 64, offset: 4480)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !432, file: !433, line: 775, baseType: !7, size: 32, offset: 4544)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !432, file: !433, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !432, file: !433, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !432, file: !433, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !432, file: !433, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !432, file: !433, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !432, file: !433, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !432, file: !433, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !432, file: !433, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !432, file: !433, line: 831, baseType: !92, size: 64, offset: 4672)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !432, file: !433, line: 833, baseType: !627, size: 384, offset: 4736)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !628)
!628 = !{!629, !634}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !627, file: !12, line: 26, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!204, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !12, line: 27, baseType: !635, size: 320, offset: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !12, line: 27, size: 320, elements: !636)
!636 = !{!637, !647, !674}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !635, file: !12, line: 36, baseType: !638, size: 320)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !12, line: 29, size: 320, elements: !639)
!639 = !{!640, !642, !643, !644, !645, !646}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !638, file: !12, line: 30, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !12, line: 31, baseType: !441, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !12, line: 32, baseType: !441, size: 32, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !638, file: !12, line: 33, baseType: !441, size: 32, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !638, file: !12, line: 34, baseType: !287, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !638, file: !12, line: 35, baseType: !641, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !635, file: !12, line: 46, baseType: !648, size: 192)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !12, line: 38, size: 192, elements: !649)
!649 = !{!650, !651, !652, !673}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !648, file: !12, line: 39, baseType: !550, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !12, line: 41, baseType: !653, size: 64, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !12, line: 41, size: 64, elements: !654)
!654 = !{!655, !663}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !653, file: !12, line: 42, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !658, line: 7, size: 128, elements: !659)
!658 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !657, file: !658, line: 8, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !202, line: 93, baseType: !251)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !657, file: !658, line: 9, baseType: !251, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !653, file: !12, line: 43, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !666, line: 7, size: 64, elements: !667)
!666 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !672}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !666, line: 8, baseType: !669, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !666, line: 5, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !288, line: 20, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !290, line: 26, baseType: !91)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !666, line: 9, baseType: !670, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !648, file: !12, line: 45, baseType: !287, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !635, file: !12, line: 54, baseType: !675, size: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !635, file: !12, line: 48, size: 256, elements: !676)
!676 = !{!677, !680, !681, !682, !683}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !675, file: !12, line: 49, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !675, file: !12, line: 50, baseType: !91, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !675, file: !12, line: 51, baseType: !91, size: 32, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !675, file: !12, line: 52, baseType: !92, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !675, file: !12, line: 53, baseType: !92, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !432, file: !433, line: 835, baseType: !685, size: 32, offset: 5120)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !72, line: 22, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !202, line: 28, baseType: !91)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !432, file: !433, line: 836, baseType: !685, size: 32, offset: 5152)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !432, file: !433, line: 840, baseType: !92, size: 64, offset: 5184)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !432, file: !433, line: 849, baseType: !431, size: 64, offset: 5248)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !432, file: !433, line: 852, baseType: !431, size: 64, offset: 5312)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !432, file: !433, line: 857, baseType: !101, size: 128, offset: 5376)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !432, file: !433, line: 858, baseType: !101, size: 128, offset: 5504)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !432, file: !433, line: 859, baseType: !431, size: 64, offset: 5632)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !432, file: !433, line: 867, baseType: !101, size: 128, offset: 5696)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !432, file: !433, line: 868, baseType: !101, size: 128, offset: 5824)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !432, file: !433, line: 871, baseType: !697, size: 64, offset: 5952)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !699, line: 59, size: 768, elements: !700)
!699 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !702, !703, !704, !715, !716, !723, !732}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !698, file: !699, line: 61, baseType: !447, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !698, file: !699, line: 62, baseType: !7, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !698, file: !699, line: 63, baseType: !128, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !698, file: !699, line: 65, baseType: !705, size: 256, offset: 64)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 256, elements: !368)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !72, line: 182, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !706, file: !72, line: 183, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !72, line: 186, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !72, line: 187, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !710, file: !72, line: 187, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !698, file: !699, line: 66, baseType: !706, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !698, file: !699, line: 68, baseType: !717, size: 128, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !718, line: 40, baseType: !719)
!718 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !718, line: 36, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !718, line: 37, baseType: !128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !719, file: !718, line: 38, baseType: !101, size: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !698, file: !699, line: 69, baseType: !724, size: 128, align: 64, offset: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !72, line: 216, size: 128, align: 64, elements: !725)
!725 = !{!726, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !72, line: 217, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !724, file: !72, line: 218, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{null, !727}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !698, file: !699, line: 70, baseType: !733, size: 128, offset: 640)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 128, elements: !597)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !699, line: 54, size: 128, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !734, file: !699, line: 55, baseType: !91, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !734, file: !699, line: 56, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !699, line: 56, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !432, file: !433, line: 872, baseType: !741, size: 512, offset: 6016)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 512, elements: !368)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !432, file: !433, line: 873, baseType: !101, size: 128, offset: 6528)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !432, file: !433, line: 874, baseType: !101, size: 128, offset: 6656)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !432, file: !433, line: 876, baseType: !745, size: 64, offset: 6784)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !747, line: 26, size: 192, elements: !748)
!747 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !746, file: !747, line: 27, baseType: !7, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !746, file: !747, line: 28, baseType: !751, size: 128, offset: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !752, line: 43, size: 128, elements: !753)
!752 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !751, file: !752, line: 44, baseType: !334)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !751, file: !752, line: 45, baseType: !101, size: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !432, file: !433, line: 879, baseType: !757, size: 64, offset: 6848)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !432, file: !433, line: 882, baseType: !757, size: 64, offset: 6912)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !432, file: !433, line: 884, baseType: !287, size: 64, offset: 6976)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !432, file: !433, line: 885, baseType: !287, size: 64, offset: 7040)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !432, file: !433, line: 890, baseType: !287, size: 64, offset: 7104)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !432, file: !433, line: 891, baseType: !763, size: 128, offset: 7168)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !433, line: 242, size: 128, elements: !764)
!764 = !{!765, !766, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !763, file: !433, line: 244, baseType: !287, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !763, file: !433, line: 245, baseType: !287, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !433, line: 246, baseType: !334, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !432, file: !433, line: 900, baseType: !92, size: 64, offset: 7296)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !432, file: !433, line: 901, baseType: !92, size: 64, offset: 7360)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !432, file: !433, line: 904, baseType: !287, size: 64, offset: 7424)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !432, file: !433, line: 907, baseType: !287, size: 64, offset: 7488)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !432, file: !433, line: 910, baseType: !92, size: 64, offset: 7552)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !432, file: !433, line: 911, baseType: !92, size: 64, offset: 7616)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !432, file: !433, line: 914, baseType: !775, size: 640, offset: 7680)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !776, line: 123, size: 640, elements: !777)
!776 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !784, !785}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !775, file: !776, line: 124, baseType: !779, size: 576)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 576, elements: !170)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !776, line: 108, size: 192, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !780, file: !776, line: 109, baseType: !287, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !780, file: !776, line: 110, baseType: !564, size: 128, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !775, file: !776, line: 125, baseType: !7, size: 32, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !775, file: !776, line: 126, baseType: !7, size: 32, offset: 608)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !432, file: !433, line: 917, baseType: !787, size: 192, offset: 8320)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !776, line: 134, size: 192, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !787, file: !776, line: 135, baseType: !724, size: 128, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !787, file: !776, line: 136, baseType: !7, size: 32, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !432, file: !433, line: 923, baseType: !792, size: 64, offset: 8512)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !433, line: 923, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !432, file: !433, line: 926, baseType: !792, size: 64, offset: 8576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !432, file: !433, line: 929, baseType: !792, size: 64, offset: 8640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !432, file: !433, line: 933, baseType: !798, size: 64, offset: 8704)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !433, line: 933, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !432, file: !433, line: 943, baseType: !801, size: 128, offset: 8768)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 16)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !432, file: !433, line: 945, baseType: !805, size: 64, offset: 8896)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !433, line: 49, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !432, file: !433, line: 956, baseType: !808, size: 64, offset: 8960)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !433, line: 45, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !432, file: !433, line: 959, baseType: !811, size: 64, offset: 9024)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !433, line: 959, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !432, file: !433, line: 962, baseType: !814, size: 64, offset: 9088)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !433, line: 66, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !432, file: !433, line: 966, baseType: !817, size: 64, offset: 9152)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !433, line: 50, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !432, file: !433, line: 969, baseType: !820, size: 64, offset: 9216)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !776, line: 223, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !432, file: !433, line: 970, baseType: !823, size: 64, offset: 9280)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !433, line: 62, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !432, file: !433, line: 971, baseType: !826, size: 64, offset: 9344)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !827, line: 25, baseType: !828)
!827 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !827, line: 23, size: 64, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !828, file: !827, line: 24, baseType: !596, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !432, file: !433, line: 972, baseType: !826, size: 64, offset: 9408)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !432, file: !433, line: 974, baseType: !826, size: 64, offset: 9472)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !432, file: !433, line: 975, baseType: !834, size: 192, offset: 9536)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !835, line: 30, size: 192, elements: !836)
!835 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !834, file: !835, line: 31, baseType: !101, size: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !834, file: !835, line: 32, baseType: !826, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !432, file: !433, line: 976, baseType: !92, size: 64, offset: 9728)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !432, file: !433, line: 977, baseType: !216, size: 64, offset: 9792)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !432, file: !433, line: 978, baseType: !7, size: 32, offset: 9856)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !432, file: !433, line: 980, baseType: !727, size: 64, offset: 9920)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !432, file: !433, line: 989, baseType: !844, size: 128, offset: 9984)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !845, line: 35, size: 128, elements: !846)
!845 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!846 = !{!847, !848, !849}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !844, file: !845, line: 36, baseType: !91, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !844, file: !845, line: 37, baseType: !309, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !844, file: !845, line: 38, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !845, line: 23, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !432, file: !433, line: 992, baseType: !287, size: 64, offset: 10112)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !432, file: !433, line: 993, baseType: !287, size: 64, offset: 10176)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !432, file: !433, line: 996, baseType: !128, offset: 10240)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !432, file: !433, line: 999, baseType: !334, offset: 10240)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !432, file: !433, line: 1001, baseType: !857, size: 64, offset: 10240)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !433, line: 636, size: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !433, line: 637, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !432, file: !433, line: 1005, baseType: !567, size: 128, offset: 10304)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !432, file: !433, line: 1007, baseType: !431, size: 64, offset: 10432)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !432, file: !433, line: 1009, baseType: !864, size: 64, offset: 10496)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !433, line: 1009, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !432, file: !433, line: 1043, baseType: !73, size: 64, offset: 10560)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !432, file: !433, line: 1046, baseType: !868, size: 64, offset: 10624)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !433, line: 41, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !432, file: !433, line: 1050, baseType: !871, size: 64, offset: 10688)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !433, line: 42, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !432, file: !433, line: 1054, baseType: !874, size: 64, offset: 10752)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !433, line: 55, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !432, file: !433, line: 1056, baseType: !877, size: 64, offset: 10816)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !433, line: 40, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !432, file: !433, line: 1058, baseType: !880, size: 64, offset: 10880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !433, line: 47, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !432, file: !433, line: 1061, baseType: !883, size: 64, offset: 10944)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !433, line: 43, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !432, file: !433, line: 1064, baseType: !92, size: 64, offset: 11008)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !432, file: !433, line: 1065, baseType: !887, size: 64, offset: 11072)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !835, line: 14, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !835, line: 12, size: 384, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !835, line: 13, baseType: !892, size: 384)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !835, line: 13, size: 384, elements: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !892, file: !835, line: 13, baseType: !91, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !892, file: !835, line: 13, baseType: !91, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !892, file: !835, line: 13, baseType: !91, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !892, file: !835, line: 13, baseType: !898, size: 256, offset: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !899, line: 32, size: 256, elements: !900)
!899 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!900 = !{!901, !907, !920, !926, !935, !955, !960}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !898, file: !899, line: 37, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 34, size: 64, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !902, file: !899, line: 35, baseType: !686, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !902, file: !899, line: 36, baseType: !906, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !202, line: 49, baseType: !7)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !898, file: !899, line: 45, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 40, size: 192, elements: !909)
!909 = !{!910, !912, !913, !919}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !908, file: !899, line: 41, baseType: !911, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !202, line: 95, baseType: !91)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !908, file: !899, line: 42, baseType: !91, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !908, file: !899, line: 43, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !899, line: 11, baseType: !915)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !899, line: 8, size: 64, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !915, file: !899, line: 9, baseType: !91, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !915, file: !899, line: 10, baseType: !73, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !908, file: !899, line: 44, baseType: !91, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !898, file: !899, line: 52, baseType: !921, size: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 48, size: 128, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !921, file: !899, line: 49, baseType: !686, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !921, file: !899, line: 50, baseType: !906, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !921, file: !899, line: 51, baseType: !914, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !898, file: !899, line: 61, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 55, size: 256, elements: !928)
!928 = !{!929, !930, !931, !932, !934}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !927, file: !899, line: 56, baseType: !686, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !927, file: !899, line: 57, baseType: !906, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !927, file: !899, line: 58, baseType: !91, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !927, file: !899, line: 59, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !202, line: 94, baseType: !203)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !927, file: !899, line: 60, baseType: !933, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !898, file: !899, line: 95, baseType: !936, size: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 64, size: 256, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !936, file: !899, line: 65, baseType: !73, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !899, line: 77, baseType: !940, size: 192, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !899, line: 77, size: 192, elements: !941)
!941 = !{!942, !943, !950}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !940, file: !899, line: 82, baseType: !420, size: 16)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !940, file: !899, line: 88, baseType: !944, size: 192)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !899, line: 84, size: 192, elements: !945)
!945 = !{!946, !948, !949}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !944, file: !899, line: 85, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !546)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !944, file: !899, line: 86, baseType: !73, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !944, file: !899, line: 87, baseType: !73, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !940, file: !899, line: 93, baseType: !951, size: 96)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !899, line: 90, size: 96, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !951, file: !899, line: 91, baseType: !947, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !951, file: !899, line: 92, baseType: !442, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !898, file: !899, line: 101, baseType: !956, size: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 98, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !956, file: !899, line: 99, baseType: !204, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !956, file: !899, line: 100, baseType: !91, size: 32, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !898, file: !899, line: 108, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !899, line: 104, size: 128, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !961, file: !899, line: 105, baseType: !73, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !961, file: !899, line: 106, baseType: !91, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !961, file: !899, line: 107, baseType: !7, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !432, file: !433, line: 1067, baseType: !967, offset: 11136)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !968, line: 12, elements: !142)
!968 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!969 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !432, file: !433, line: 1099, baseType: !970, size: 64, offset: 11136)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !433, line: 56, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !432, file: !433, line: 1103, baseType: !101, size: 128, offset: 11200)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !432, file: !433, line: 1104, baseType: !974, size: 64, offset: 11328)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !433, line: 46, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !432, file: !433, line: 1105, baseType: !386, size: 192, offset: 11392)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !432, file: !433, line: 1106, baseType: !7, size: 32, offset: 11584)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !432, file: !433, line: 1109, baseType: !979, size: 128, offset: 11648)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 128, elements: !982)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !433, line: 51, flags: DIFlagFwdDecl)
!982 = !{!983}
!983 = !DISubrange(count: 2)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !432, file: !433, line: 1110, baseType: !386, size: 192, offset: 11776)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !432, file: !433, line: 1111, baseType: !101, size: 128, offset: 11968)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !432, file: !433, line: 1173, baseType: !987, size: 64, offset: 12096)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !989, line: 62, size: 256, align: 256, elements: !990)
!989 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992, !993, !998}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !988, file: !989, line: 75, baseType: !442, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !988, file: !989, line: 90, baseType: !442, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !988, file: !989, line: 124, baseType: !994, size: 64, offset: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !988, file: !989, line: 109, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !994, file: !989, line: 110, baseType: !289, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !994, file: !989, line: 112, baseType: !289, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !988, file: !989, line: 144, baseType: !442, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !432, file: !433, line: 1174, baseType: !441, size: 32, offset: 12160)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !432, file: !433, line: 1179, baseType: !92, size: 64, offset: 12224)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !432, file: !433, line: 1182, baseType: !1002, size: 128, offset: 12288)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !364, line: 76, size: 128, elements: !1003)
!1003 = !{!1004, !1009, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1002, file: !364, line: 85, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1006, line: 7, size: 64, elements: !1007)
!1006 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1005, file: !1006, line: 12, baseType: !593, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1002, file: !364, line: 88, baseType: !1010, size: 8, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !72, line: 30, baseType: !1011)
!1011 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1002, file: !364, line: 95, baseType: !1010, size: 8, offset: 72)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !433, line: 1184, baseType: !1014, size: 128, offset: 12416)
!1014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !433, line: 1184, size: 128, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1014, file: !433, line: 1185, baseType: !447, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1014, file: !433, line: 1186, baseType: !724, size: 128, align: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !432, file: !433, line: 1190, baseType: !1019, size: 64, offset: 12544)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !433, line: 53, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !432, file: !433, line: 1192, baseType: !1022, size: 128, offset: 12608)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !364, line: 64, size: 128, elements: !1023)
!1023 = !{!1024, !1117, !1118}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1022, file: !364, line: 65, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !259, line: 68, size: 512, align: 128, elements: !1027)
!1027 = !{!1028, !1029, !1109, !1116}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1026, file: !259, line: 69, baseType: !92, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !259, line: 77, baseType: !1030, size: 320, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !259, line: 77, size: 320, elements: !1031)
!1031 = !{!1032, !1041, !1046, !1074, !1082, !1088, !1101, !1108}
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 78, baseType: !1033, size: 320)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 78, size: 320, elements: !1034)
!1034 = !{!1035, !1036, !1039, !1040}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1033, file: !259, line: 84, baseType: !101, size: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1033, file: !259, line: 86, baseType: !1037, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !259, line: 26, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1033, file: !259, line: 87, baseType: !92, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1033, file: !259, line: 94, baseType: !92, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 96, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 96, size: 64, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1042, file: !259, line: 101, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !72, line: 143, baseType: !287)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 103, baseType: !1047, size: 320)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 103, size: 320, elements: !1048)
!1048 = !{!1049, !1059, !1062, !1063}
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !259, line: 104, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !259, line: 104, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1050, file: !259, line: 105, baseType: !101, size: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !259, line: 106, baseType: !1054, size: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !259, line: 106, size: 128, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1054, file: !259, line: 107, baseType: !1025, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1054, file: !259, line: 109, baseType: !91, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1054, file: !259, line: 110, baseType: !91, size: 32, offset: 96)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1047, file: !259, line: 117, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !259, line: 117, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1047, file: !259, line: 119, baseType: !73, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !259, line: 120, baseType: !1064, size: 64, offset: 256)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !259, line: 120, size: 64, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1064, file: !259, line: 121, baseType: !73, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1064, file: !259, line: 122, baseType: !92, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !259, line: 123, baseType: !1069, size: 32)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1064, file: !259, line: 123, size: 32, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1069, file: !259, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1069, file: !259, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1069, file: !259, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 130, baseType: !1075, size: 192)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 130, size: 192, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1075, file: !259, line: 131, baseType: !92, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1075, file: !259, line: 134, baseType: !579, size: 8, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1075, file: !259, line: 135, baseType: !579, size: 8, offset: 72)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1075, file: !259, line: 136, baseType: !309, size: 32, offset: 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1075, file: !259, line: 137, baseType: !7, size: 32, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 139, baseType: !1083, size: 256)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 139, size: 256, elements: !1084)
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1083, file: !259, line: 140, baseType: !92, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1083, file: !259, line: 141, baseType: !309, size: 32, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1083, file: !259, line: 143, baseType: !101, size: 128, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 145, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 145, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1094, !1095, !1100}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1089, file: !259, line: 146, baseType: !92, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1089, file: !259, line: 147, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !248, line: 509, baseType: !1025)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1089, file: !259, line: 148, baseType: !92, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !259, line: 149, baseType: !1096, size: 64, offset: 192)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !259, line: 149, size: 64, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1096, file: !259, line: 150, baseType: !275, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1096, file: !259, line: 151, baseType: !309, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1089, file: !259, line: 156, baseType: !128, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !259, line: 159, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !259, line: 159, size: 128, elements: !1103)
!1103 = !{!1104, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1102, file: !259, line: 161, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !259, line: 161, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1102, file: !259, line: 162, baseType: !73, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1030, file: !259, line: 176, baseType: !724, size: 128, align: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !259, line: 179, baseType: !1110, size: 32, offset: 384)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !259, line: 179, size: 32, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1110, file: !259, line: 184, baseType: !309, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1110, file: !259, line: 192, baseType: !7, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1110, file: !259, line: 194, baseType: !7, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1110, file: !259, line: 195, baseType: !91, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1026, file: !259, line: 199, baseType: !309, size: 32, offset: 416)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1022, file: !364, line: 67, baseType: !442, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1022, file: !364, line: 68, baseType: !442, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !432, file: !433, line: 1206, baseType: !91, size: 32, offset: 12736)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !432, file: !433, line: 1207, baseType: !91, size: 32, offset: 12768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !432, file: !433, line: 1209, baseType: !92, size: 64, offset: 12800)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !432, file: !433, line: 1219, baseType: !287, size: 64, offset: 12864)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !432, file: !433, line: 1220, baseType: !287, size: 64, offset: 12928)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !432, file: !433, line: 1317, baseType: !91, size: 32, offset: 12992)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !432, file: !433, line: 1319, baseType: !431, size: 64, offset: 13056)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !432, file: !433, line: 1322, baseType: !1127, size: 64, offset: 13120)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !433, line: 1322, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !432, file: !433, line: 1326, baseType: !447, size: 32, offset: 13184)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !432, file: !433, line: 1342, baseType: !73, size: 64, offset: 13248)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !432, file: !433, line: 1343, baseType: !289, size: 64, offset: 13312)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !432, file: !433, line: 1344, baseType: !287, size: 64, offset: 13376)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !432, file: !433, line: 1345, baseType: !289, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !432, file: !433, line: 1346, baseType: !289, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !432, file: !433, line: 1347, baseType: !289, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !432, file: !433, line: 1348, baseType: !724, size: 128, align: 64, offset: 13504)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !432, file: !433, line: 1358, baseType: !1138, size: 34816, offset: 13824)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1139, line: 485, size: 34816, elements: !1140)
!1139 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !{!1141, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1170, !1171, !1172, !1173, !1174, !1175, !1178, !1179, !1180}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1138, file: !1139, line: 487, baseType: !1142, size: 192)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, size: 192, elements: !170)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1144, line: 16, size: 64, elements: !1145)
!1144 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1143, file: !1144, line: 17, baseType: !415, size: 16)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1143, file: !1144, line: 18, baseType: !415, size: 16, offset: 16)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1143, file: !1144, line: 19, baseType: !415, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !1144, line: 19, baseType: !415, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1143, file: !1144, line: 19, baseType: !415, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1143, file: !1144, line: 19, baseType: !415, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1143, file: !1144, line: 19, baseType: !415, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1143, file: !1144, line: 20, baseType: !415, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1143, file: !1144, line: 20, baseType: !415, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1143, file: !1144, line: 20, baseType: !415, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1143, file: !1144, line: 20, baseType: !415, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1143, file: !1144, line: 20, baseType: !415, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1143, file: !1144, line: 20, baseType: !415, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1138, file: !1139, line: 491, baseType: !92, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1138, file: !1139, line: 495, baseType: !211, size: 16, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1138, file: !1139, line: 496, baseType: !211, size: 16, offset: 272)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1138, file: !1139, line: 497, baseType: !211, size: 16, offset: 288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1138, file: !1139, line: 498, baseType: !211, size: 16, offset: 304)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1138, file: !1139, line: 502, baseType: !92, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1138, file: !1139, line: 503, baseType: !92, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1138, file: !1139, line: 514, baseType: !1167, size: 256, offset: 448)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 256, elements: !368)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1139, line: 483, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1138, file: !1139, line: 516, baseType: !92, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1138, file: !1139, line: 518, baseType: !92, size: 64, offset: 768)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1138, file: !1139, line: 520, baseType: !92, size: 64, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1138, file: !1139, line: 521, baseType: !92, size: 64, offset: 896)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1138, file: !1139, line: 522, baseType: !92, size: 64, offset: 960)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1138, file: !1139, line: 528, baseType: !1176, size: 64, offset: 1024)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1139, line: 10, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1138, file: !1139, line: 535, baseType: !92, size: 64, offset: 1088)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1138, file: !1139, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1138, file: !1139, line: 540, baseType: !1181, size: 33280, offset: 1536)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1182, line: 317, size: 33280, elements: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1181, file: !1182, line: 330, baseType: !7, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1181, file: !1182, line: 337, baseType: !92, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1181, file: !1182, line: 348, baseType: !1187, size: 32768, offset: 512)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1182, line: 304, size: 32768, elements: !1188)
!1188 = !{!1189, !1204, !1243, !1293, !1310}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1187, file: !1182, line: 305, baseType: !1190, size: 896)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1182, line: 12, size: 896, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1182, line: 13, baseType: !441, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1182, line: 14, baseType: !441, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1182, line: 15, baseType: !441, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1190, file: !1182, line: 16, baseType: !441, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1190, file: !1182, line: 17, baseType: !441, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1190, file: !1182, line: 18, baseType: !441, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1190, file: !1182, line: 19, baseType: !441, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1182, line: 22, baseType: !1200, size: 640, offset: 224)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 640, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 20)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !1182, line: 25, baseType: !441, size: 32, offset: 864)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1187, file: !1182, line: 306, baseType: !1205, size: 4096, align: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1182, line: 34, size: 4096, align: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1226, !1227, !1228, !1232, !1234, !1238}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1205, file: !1182, line: 35, baseType: !415, size: 16)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1205, file: !1182, line: 36, baseType: !415, size: 16, offset: 16)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1205, file: !1182, line: 37, baseType: !415, size: 16, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1205, file: !1182, line: 38, baseType: !415, size: 16, offset: 48)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1182, line: 39, baseType: !1212, size: 128, offset: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1182, line: 39, size: 128, elements: !1213)
!1213 = !{!1214, !1219}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1182, line: 40, baseType: !1215, size: 128)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1182, line: 40, size: 128, elements: !1216)
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1215, file: !1182, line: 41, baseType: !287, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1215, file: !1182, line: 42, baseType: !287, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1182, line: 44, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1182, line: 44, size: 128, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1220, file: !1182, line: 45, baseType: !441, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1220, file: !1182, line: 46, baseType: !441, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1220, file: !1182, line: 47, baseType: !441, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1220, file: !1182, line: 48, baseType: !441, size: 32, offset: 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1205, file: !1182, line: 51, baseType: !441, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1205, file: !1182, line: 52, baseType: !441, size: 32, offset: 224)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1205, file: !1182, line: 55, baseType: !1229, size: 1024, offset: 256)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1024, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1205, file: !1182, line: 58, baseType: !1233, size: 2048, offset: 1280)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 2048, elements: !174)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1205, file: !1182, line: 60, baseType: !1235, size: 384, offset: 3328)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 384, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 12)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1182, line: 62, baseType: !1239, size: 384, offset: 3712)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1182, line: 62, size: 384, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1239, file: !1182, line: 63, baseType: !1235, size: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1239, file: !1182, line: 64, baseType: !1235, size: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1187, file: !1182, line: 307, baseType: !1244, size: 1088)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1182, line: 79, size: 1088, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1292}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1244, file: !1182, line: 80, baseType: !441, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1244, file: !1182, line: 81, baseType: !441, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1244, file: !1182, line: 82, baseType: !441, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1244, file: !1182, line: 83, baseType: !441, size: 32, offset: 96)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1244, file: !1182, line: 84, baseType: !441, size: 32, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1244, file: !1182, line: 85, baseType: !441, size: 32, offset: 160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1244, file: !1182, line: 86, baseType: !441, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1244, file: !1182, line: 88, baseType: !1200, size: 640, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1244, file: !1182, line: 89, baseType: !577, size: 8, offset: 864)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1244, file: !1182, line: 90, baseType: !577, size: 8, offset: 872)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1244, file: !1182, line: 91, baseType: !577, size: 8, offset: 880)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1244, file: !1182, line: 92, baseType: !577, size: 8, offset: 888)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1244, file: !1182, line: 93, baseType: !577, size: 8, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1244, file: !1182, line: 94, baseType: !577, size: 8, offset: 904)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1244, file: !1182, line: 95, baseType: !1261, size: 64, offset: 960)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1263, line: 11, size: 128, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1262, file: !1263, line: 12, baseType: !204, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1262, file: !1263, line: 13, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1269, line: 56, size: 1344, elements: !1270)
!1269 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1268, file: !1269, line: 61, baseType: !92, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1268, file: !1269, line: 62, baseType: !92, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1268, file: !1269, line: 63, baseType: !92, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1268, file: !1269, line: 64, baseType: !92, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1268, file: !1269, line: 65, baseType: !92, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1268, file: !1269, line: 66, baseType: !92, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1268, file: !1269, line: 68, baseType: !92, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1268, file: !1269, line: 69, baseType: !92, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1268, file: !1269, line: 70, baseType: !92, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1268, file: !1269, line: 71, baseType: !92, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1268, file: !1269, line: 72, baseType: !92, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1268, file: !1269, line: 73, baseType: !92, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1268, file: !1269, line: 74, baseType: !92, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1268, file: !1269, line: 75, baseType: !92, size: 64, offset: 832)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1268, file: !1269, line: 76, baseType: !92, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1268, file: !1269, line: 81, baseType: !92, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1268, file: !1269, line: 83, baseType: !92, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1268, file: !1269, line: 84, baseType: !92, size: 64, offset: 1088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1268, file: !1269, line: 85, baseType: !92, size: 64, offset: 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1268, file: !1269, line: 86, baseType: !92, size: 64, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1268, file: !1269, line: 87, baseType: !92, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1244, file: !1182, line: 96, baseType: !441, size: 32, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1187, file: !1182, line: 308, baseType: !1294, size: 4608, align: 512)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1182, line: 289, size: 4608, align: 512, elements: !1295)
!1295 = !{!1296, !1297, !1306}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1294, file: !1182, line: 290, baseType: !1205, size: 4096, align: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1294, file: !1182, line: 291, baseType: !1298, size: 512, offset: 4096)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1182, line: 268, size: 512, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1298, file: !1182, line: 269, baseType: !287, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1298, file: !1182, line: 270, baseType: !287, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1298, file: !1182, line: 271, baseType: !1303, size: 384, offset: 128)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 384, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 6)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1294, file: !1182, line: 292, baseType: !1307, offset: 4608)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 0)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1187, file: !1182, line: 309, baseType: !1311, size: 32768)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 32768, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 4096)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !259, line: 378, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !424, file: !259, line: 384, baseType: !746, size: 192, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !279, file: !259, line: 500, baseType: !128, offset: 6656)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !279, file: !259, line: 501, baseType: !1319, size: 64, offset: 6656)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !259, line: 387, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !279, file: !259, line: 516, baseType: !1322, size: 64, offset: 6720)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1324, line: 18, flags: DIFlagFwdDecl)
!1324 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !279, file: !259, line: 519, baseType: !246, size: 64, offset: 6784)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !279, file: !259, line: 521, baseType: !1327, size: 64, offset: 6848)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !259, line: 521, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !279, file: !259, line: 545, baseType: !309, size: 32, offset: 6912)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !279, file: !259, line: 548, baseType: !1010, size: 8, offset: 6944)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !279, file: !259, line: 550, baseType: !1332, offset: 6952)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1333, line: 142, elements: !142)
!1333 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !279, file: !259, line: 554, baseType: !1335, size: 256, offset: 6976)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1336, line: 102, size: 256, elements: !1337)
!1336 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1335, file: !1336, line: 103, baseType: !317, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1335, file: !1336, line: 104, baseType: !101, size: 128, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1335, file: !1336, line: 105, baseType: !1341, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1336, line: 21, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !1345}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !279, file: !259, line: 557, baseType: !441, size: 32, offset: 7232)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !276, file: !259, line: 565, baseType: !1348, offset: 7296)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: -1)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !258, file: !259, line: 333, baseType: !1352, size: 64, offset: 576)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !248, line: 284, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !248, line: 284, size: 64, elements: !1354)
!1354 = !{!1355}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1353, file: !248, line: 284, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !307, line: 19, baseType: !92)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !258, file: !259, line: 334, baseType: !92, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !258, file: !259, line: 343, baseType: !1359, size: 256, offset: 704)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !259, line: 340, size: 256, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1359, file: !259, line: 341, baseType: !266, size: 192, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1359, file: !259, line: 342, baseType: !92, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !258, file: !259, line: 351, baseType: !101, size: 128, offset: 960)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !258, file: !259, line: 353, baseType: !1365, size: 64, offset: 1088)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !259, line: 353, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !258, file: !259, line: 356, baseType: !1368, size: 64, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !259, line: 356, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !258, file: !259, line: 359, baseType: !92, size: 64, offset: 1216)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !258, file: !259, line: 361, baseType: !246, size: 64, offset: 1280)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !258, file: !259, line: 362, baseType: !73, size: 64, offset: 1344)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !258, file: !259, line: 365, baseType: !317, size: 64, offset: 1408)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !258, file: !259, line: 373, baseType: !1376, offset: 1472)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !259, line: 296, elements: !142)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !225, file: !194, line: 90, baseType: !220, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !225, file: !194, line: 91, baseType: !1379, size: 64, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !184, file: !113, line: 143, baseType: !1381, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1384, !121}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1387)
!1387 = !{!1388, !1389, !1393, !1397, !1405, !1409}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1386, file: !18, line: 40, baseType: !17, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1386, file: !18, line: 41, baseType: !1390, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1010}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1386, file: !18, line: 42, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!73}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1386, file: !18, line: 43, baseType: !1398, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!1401, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1386, file: !18, line: 44, baseType: !1406, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1401}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1386, file: !18, line: 45, baseType: !1410, size: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !73}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !184, file: !113, line: 144, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!1401, !121}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !184, file: !113, line: 145, baseType: !1418, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !121, !1421, !1427}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1324, line: 23, baseType: !1423)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 21, size: 32, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1423, file: !1324, line: 22, baseType: !1426, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !72, line: 32, baseType: !906)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1324, line: 28, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1324, line: 26, size: 32, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1429, file: !1324, line: 27, baseType: !1432, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !72, line: 33, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !202, line: 50, baseType: !7)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !112, file: !113, line: 70, baseType: !1435, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1437, line: 123, size: 1024, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1580, !1581, !1582, !1583, !1584}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1436, file: !1437, line: 124, baseType: !309, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1436, file: !1437, line: 125, baseType: !309, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1436, file: !1437, line: 135, baseType: !1435, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1436, file: !1437, line: 136, baseType: !116, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1436, file: !1437, line: 138, baseType: !266, size: 192, align: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1436, file: !1437, line: 140, baseType: !1401, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1436, file: !1437, line: 141, baseType: !7, size: 32, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1437, line: 142, baseType: !1447, size: 256, offset: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !1437, line: 142, size: 256, elements: !1448)
!1448 = !{!1449, !1503, !1507}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1447, file: !1437, line: 143, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1437, line: 91, size: 192, elements: !1451)
!1451 = !{!1452, !1453, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1450, file: !1437, line: 92, baseType: !92, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1450, file: !1437, line: 94, baseType: !283, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1450, file: !1437, line: 100, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1437, line: 180, size: 704, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1473, !1474, !1475, !1501, !1502}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1456, file: !1437, line: 182, baseType: !1435, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1456, file: !1437, line: 183, baseType: !7, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1456, file: !1437, line: 186, baseType: !1461, size: 192, offset: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1462, line: 19, size: 192, elements: !1463)
!1462 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1471, !1472}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1461, file: !1462, line: 20, baseType: !1465, size: 128)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1466, line: 292, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1465, file: !1466, line: 293, baseType: !128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1465, file: !1466, line: 295, baseType: !71, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1465, file: !1466, line: 296, baseType: !73, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1461, file: !1462, line: 21, baseType: !7, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1461, file: !1462, line: 22, baseType: !7, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1456, file: !1437, line: 187, baseType: !441, size: 32, offset: 320)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1456, file: !1437, line: 188, baseType: !441, size: 32, offset: 352)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1456, file: !1437, line: 189, baseType: !1476, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1437, line: 168, size: 320, elements: !1478)
!1478 = !{!1479, !1485, !1489, !1493, !1497}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1477, file: !1437, line: 169, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!91, !1483, !1455}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !248, line: 539, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1477, file: !1437, line: 171, baseType: !1486, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!91, !1435, !116, !210}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1477, file: !1437, line: 173, baseType: !1490, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!91, !1435}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1477, file: !1437, line: 174, baseType: !1494, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!91, !1435, !1435, !116}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1477, file: !1437, line: 176, baseType: !1498, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!91, !1483, !1435, !1455}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1456, file: !1437, line: 192, baseType: !101, size: 128, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1456, file: !1437, line: 194, baseType: !717, size: 128, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1447, file: !1437, line: 144, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1437, line: 103, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1504, file: !1437, line: 104, baseType: !1435, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1447, file: !1437, line: 145, baseType: !1508, size: 256)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1437, line: 107, size: 256, elements: !1509)
!1509 = !{!1510, !1575, !1578, !1579}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1508, file: !1437, line: 108, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1437, line: 217, size: 768, elements: !1514)
!1514 = !{!1515, !1535, !1539, !1543, !1548, !1552, !1556, !1560, !1561, !1562, !1563, !1571}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1513, file: !1437, line: 222, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!91, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1437, line: 197, size: 1088, elements: !1521)
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1520, file: !1437, line: 199, baseType: !1435, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1520, file: !1437, line: 200, baseType: !246, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1520, file: !1437, line: 201, baseType: !1483, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1520, file: !1437, line: 202, baseType: !73, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1520, file: !1437, line: 205, baseType: !386, size: 192, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1520, file: !1437, line: 206, baseType: !386, size: 192, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1520, file: !1437, line: 207, baseType: !91, size: 32, offset: 640)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1520, file: !1437, line: 208, baseType: !101, size: 128, offset: 704)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1520, file: !1437, line: 209, baseType: !169, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1520, file: !1437, line: 211, baseType: !216, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1520, file: !1437, line: 212, baseType: !1010, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1520, file: !1437, line: 213, baseType: !1010, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1520, file: !1437, line: 214, baseType: !1368, size: 64, offset: 1024)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1513, file: !1437, line: 223, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1519}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1513, file: !1437, line: 236, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!91, !1483, !73}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1513, file: !1437, line: 238, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!73, !1483, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1513, file: !1437, line: 239, baseType: !1549, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!73, !1483, !73, !1547}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1513, file: !1437, line: 240, baseType: !1553, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1483, !73}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1513, file: !1437, line: 242, baseType: !1557, size: 64, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!200, !1519, !169, !216, !249}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1513, file: !1437, line: 252, baseType: !216, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1513, file: !1437, line: 259, baseType: !1010, size: 8, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1513, file: !1437, line: 260, baseType: !1557, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1513, file: !1437, line: 263, baseType: !1564, size: 64, offset: 640)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1567, !1519, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1568, line: 52, baseType: !7)
!1568 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1437, line: 27, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1513, file: !1437, line: 266, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!91, !1519, !257}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1508, file: !1437, line: 109, baseType: !1576, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1437, line: 31, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1508, file: !1437, line: 110, baseType: !249, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1508, file: !1437, line: 111, baseType: !1435, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1436, file: !1437, line: 148, baseType: !73, size: 64, offset: 768)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1436, file: !1437, line: 154, baseType: !287, size: 64, offset: 832)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1436, file: !1437, line: 156, baseType: !211, size: 16, offset: 896)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1436, file: !1437, line: 157, baseType: !210, size: 16, offset: 912)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1436, file: !1437, line: 158, baseType: !1585, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1437, line: 32, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !112, file: !113, line: 71, baseType: !1588, size: 32, offset: 448)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1589, line: 19, size: 32, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1588, file: !1589, line: 20, baseType: !447, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !112, file: !113, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !112, file: !113, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !112, file: !113, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !112, file: !113, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !112, file: !113, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !30, line: 463, baseType: !108, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !109, file: !30, line: 465, baseType: !1599, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !109, file: !30, line: 467, baseType: !116, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !30, line: 468, baseType: !1603, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1613, !1618, !1622}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !30, line: 88, baseType: !116, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1605, file: !30, line: 89, baseType: !222, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1605, file: !30, line: 90, baseType: !1610, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!91, !108, !164}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1605, file: !30, line: 91, baseType: !1614, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!169, !108, !1617, !1421, !1427}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1605, file: !30, line: 93, baseType: !1619, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !108}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1605, file: !30, line: 95, baseType: !1623, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1626)
!1626 = !{!1627, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1625, file: !37, line: 279, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!91, !108}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1625, file: !37, line: 280, baseType: !1619, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1625, file: !37, line: 281, baseType: !1628, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1625, file: !37, line: 282, baseType: !1628, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1625, file: !37, line: 283, baseType: !1628, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1625, file: !37, line: 284, baseType: !1628, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1625, file: !37, line: 285, baseType: !1628, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1625, file: !37, line: 286, baseType: !1628, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1625, file: !37, line: 287, baseType: !1628, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1625, file: !37, line: 288, baseType: !1628, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1625, file: !37, line: 289, baseType: !1628, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1625, file: !37, line: 290, baseType: !1628, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1625, file: !37, line: 291, baseType: !1628, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1625, file: !37, line: 292, baseType: !1628, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1625, file: !37, line: 293, baseType: !1628, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1625, file: !37, line: 294, baseType: !1628, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1625, file: !37, line: 295, baseType: !1628, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1625, file: !37, line: 296, baseType: !1628, size: 64, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1625, file: !37, line: 297, baseType: !1628, size: 64, offset: 1152)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1625, file: !37, line: 298, baseType: !1628, size: 64, offset: 1216)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1625, file: !37, line: 299, baseType: !1628, size: 64, offset: 1280)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1625, file: !37, line: 300, baseType: !1628, size: 64, offset: 1344)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1625, file: !37, line: 301, baseType: !1628, size: 64, offset: 1408)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !30, line: 470, baseType: !1654, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1656, line: 82, size: 1408, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1740, !1743, !1746}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !1656, line: 83, baseType: !116, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1655, file: !1656, line: 84, baseType: !116, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1655, file: !1656, line: 85, baseType: !108, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1655, file: !1656, line: 86, baseType: !222, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1655, file: !1656, line: 87, baseType: !222, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1655, file: !1656, line: 88, baseType: !222, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1655, file: !1656, line: 90, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!91, !108, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1691, !1704, !1705, !1706, !1707, !1708, !1716, !1717, !1718, !1719, !1720, !1721}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !24, line: 96, baseType: !116, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1669, file: !24, line: 97, baseType: !1654, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1669, file: !24, line: 99, baseType: !97, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1669, file: !24, line: 100, baseType: !116, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1669, file: !24, line: 102, baseType: !1010, size: 8, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1669, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1669, file: !24, line: 105, baseType: !1678, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1681, line: 262, size: 1600, elements: !1682)
!1681 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1682 = !{!1683, !1685, !1686, !1690}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1680, file: !1681, line: 263, baseType: !1684, size: 256)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !1230)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1680, file: !1681, line: 264, baseType: !1684, size: 256, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1680, file: !1681, line: 265, baseType: !1687, size: 1024, offset: 512)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !1688)
!1688 = !{!1689}
!1689 = !DISubrange(count: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1680, file: !1681, line: 266, baseType: !1401, size: 64, offset: 1536)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1669, file: !24, line: 106, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1681, line: 210, size: 256, elements: !1695)
!1695 = !{!1696, !1700, !1702, !1703}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1694, file: !1681, line: 211, baseType: !1697, size: 72)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 72, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 9)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1694, file: !1681, line: 212, baseType: !1701, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1681, line: 14, baseType: !92)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1694, file: !1681, line: 213, baseType: !442, size: 32, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1694, file: !1681, line: 214, baseType: !442, size: 32, offset: 224)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1669, file: !24, line: 108, baseType: !1628, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1669, file: !24, line: 109, baseType: !1619, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1669, file: !24, line: 110, baseType: !1628, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1669, file: !24, line: 111, baseType: !1619, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1669, file: !24, line: 112, baseType: !1709, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!91, !108, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1713, file: !37, line: 51, baseType: !91, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1669, file: !24, line: 113, baseType: !1628, size: 64, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1669, file: !24, line: 114, baseType: !222, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1669, file: !24, line: 115, baseType: !222, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1669, file: !24, line: 117, baseType: !1623, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1669, file: !24, line: 118, baseType: !1619, size: 64, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1669, file: !24, line: 120, baseType: !1722, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1655, file: !1656, line: 91, baseType: !1610, size: 64, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1655, file: !1656, line: 92, baseType: !1628, size: 64, offset: 512)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1655, file: !1656, line: 93, baseType: !1619, size: 64, offset: 576)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1655, file: !1656, line: 94, baseType: !1628, size: 64, offset: 640)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1655, file: !1656, line: 95, baseType: !1619, size: 64, offset: 704)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1655, file: !1656, line: 97, baseType: !1628, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1655, file: !1656, line: 98, baseType: !1628, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1655, file: !1656, line: 100, baseType: !1709, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1655, file: !1656, line: 101, baseType: !1628, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1655, file: !1656, line: 103, baseType: !1628, size: 64, offset: 1024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1655, file: !1656, line: 105, baseType: !1628, size: 64, offset: 1088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1655, file: !1656, line: 107, baseType: !1623, size: 64, offset: 1152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1655, file: !1656, line: 109, baseType: !1737, size: 64, offset: 1216)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1656, line: 109, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1655, file: !1656, line: 111, baseType: !1741, size: 64, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1656, line: 111, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1655, file: !1656, line: 112, baseType: !1744, offset: 1344)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1745, line: 187, elements: !142)
!1745 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1655, file: !1656, line: 114, baseType: !1010, size: 8, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !109, file: !30, line: 471, baseType: !1668, size: 64, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !109, file: !30, line: 473, baseType: !73, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !30, line: 475, baseType: !73, size: 64, offset: 960)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !30, line: 480, baseType: !386, size: 192, offset: 1024)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !109, file: !30, line: 484, baseType: !1752, size: 576, offset: 1216)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1752, file: !30, line: 362, baseType: !101, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1752, file: !30, line: 363, baseType: !101, size: 128, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1752, file: !30, line: 364, baseType: !101, size: 128, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1752, file: !30, line: 365, baseType: !101, size: 128, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1752, file: !30, line: 366, baseType: !1010, size: 8, offset: 512)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1752, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !109, file: !30, line: 485, baseType: !1761, size: 2304, offset: 1792)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1858, !1862}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1761, file: !37, line: 566, baseType: !1712, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1761, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1761, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1761, file: !37, line: 569, baseType: !1010, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1761, file: !37, line: 570, baseType: !1010, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1761, file: !37, line: 571, baseType: !1010, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1761, file: !37, line: 572, baseType: !1010, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1761, file: !37, line: 573, baseType: !1010, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1761, file: !37, line: 574, baseType: !1010, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1761, file: !37, line: 575, baseType: !1010, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1761, file: !37, line: 576, baseType: !1010, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1761, file: !37, line: 577, baseType: !441, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1761, file: !37, line: 578, baseType: !128, offset: 96)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1761, file: !37, line: 580, baseType: !101, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1761, file: !37, line: 581, baseType: !746, size: 192, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1761, file: !37, line: 582, baseType: !1779, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1781, line: 43, size: 1472, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1790, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !1781, line: 44, baseType: !116, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1780, file: !1781, line: 45, baseType: !91, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1780, file: !1781, line: 46, baseType: !101, size: 128, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !1781, line: 47, baseType: !128, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1780, file: !1781, line: 48, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1780, file: !1781, line: 49, baseType: !1791, size: 320, offset: 320)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1792, line: 11, size: 320, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1801}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1791, file: !1792, line: 16, baseType: !710, size: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1791, file: !1792, line: 17, baseType: !92, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1791, file: !1792, line: 18, baseType: !1797, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1791, file: !1792, line: 19, baseType: !441, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1780, file: !1781, line: 50, baseType: !92, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1780, file: !1781, line: 51, baseType: !516, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1780, file: !1781, line: 52, baseType: !516, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1780, file: !1781, line: 53, baseType: !516, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1780, file: !1781, line: 54, baseType: !516, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1780, file: !1781, line: 55, baseType: !516, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1780, file: !1781, line: 56, baseType: !92, size: 64, offset: 1024)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1780, file: !1781, line: 57, baseType: !92, size: 64, offset: 1088)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1780, file: !1781, line: 58, baseType: !92, size: 64, offset: 1152)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1780, file: !1781, line: 59, baseType: !92, size: 64, offset: 1216)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1780, file: !1781, line: 60, baseType: !92, size: 64, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1780, file: !1781, line: 61, baseType: !108, size: 64, offset: 1344)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1780, file: !1781, line: 62, baseType: !1010, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1780, file: !1781, line: 63, baseType: !1010, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1761, file: !37, line: 583, baseType: !1010, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1761, file: !37, line: 584, baseType: !1010, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1761, file: !37, line: 585, baseType: !1010, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1761, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1761, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1761, file: !37, line: 592, baseType: !508, size: 512, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1761, file: !37, line: 593, baseType: !287, size: 64, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1761, file: !37, line: 594, baseType: !1335, size: 256, offset: 1152)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1761, file: !37, line: 595, baseType: !717, size: 128, offset: 1408)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1761, file: !37, line: 596, baseType: !1788, size: 64, offset: 1536)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1761, file: !37, line: 597, baseType: !309, size: 32, offset: 1600)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1761, file: !37, line: 598, baseType: !309, size: 32, offset: 1632)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1761, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1761, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1761, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1761, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1761, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1761, file: !37, line: 604, baseType: !1010, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1761, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1761, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1761, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1761, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1761, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1761, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1761, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1761, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1761, file: !37, line: 613, baseType: !91, size: 32, offset: 1792)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1761, file: !37, line: 614, baseType: !91, size: 32, offset: 1824)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1761, file: !37, line: 615, baseType: !287, size: 64, offset: 1856)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1761, file: !37, line: 616, baseType: !287, size: 64, offset: 1920)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1761, file: !37, line: 617, baseType: !287, size: 64, offset: 1984)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1761, file: !37, line: 618, baseType: !287, size: 64, offset: 2048)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1761, file: !37, line: 620, baseType: !1849, size: 64, offset: 2112)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1850, file: !37, line: 537, baseType: !128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1850, file: !37, line: 538, baseType: !7, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1850, file: !37, line: 540, baseType: !101, size: 128, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1850, file: !37, line: 543, baseType: !1856, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1761, file: !37, line: 621, baseType: !1859, size: 64, offset: 2176)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !108, !670}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1761, file: !37, line: 622, baseType: !1863, size: 64, offset: 2240)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !109, file: !30, line: 486, baseType: !1866, size: 64, offset: 4096)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1875, !1876, !1877}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1867, file: !37, line: 643, baseType: !1625, size: 1472)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1867, file: !37, line: 644, baseType: !1628, size: 64, offset: 1472)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1867, file: !37, line: 645, baseType: !1872, size: 64, offset: 1536)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !108, !1010}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1867, file: !37, line: 646, baseType: !1628, size: 64, offset: 1600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1867, file: !37, line: 647, baseType: !1619, size: 64, offset: 1664)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1867, file: !37, line: 648, baseType: !1619, size: 64, offset: 1728)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !109, file: !30, line: 493, baseType: !1879, size: 64, offset: 4160)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !109, file: !30, line: 499, baseType: !101, size: 128, offset: 4224)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !109, file: !30, line: 502, baseType: !1883, size: 64, offset: 4352)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !109, file: !30, line: 504, baseType: !1887, size: 64, offset: 4416)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !109, file: !30, line: 505, baseType: !287, size: 64, offset: 4480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !109, file: !30, line: 510, baseType: !287, size: 64, offset: 4544)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !109, file: !30, line: 511, baseType: !1891, size: 64, offset: 4608)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !109, file: !30, line: 513, baseType: !1895, size: 64, offset: 4672)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1896, file: !30, line: 293, baseType: !7, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1896, file: !30, line: 294, baseType: !92, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !109, file: !30, line: 515, baseType: !101, size: 128, offset: 4736)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !109, file: !30, line: 526, baseType: !1902, offset: 4864)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1903, line: 5, elements: !142)
!1903 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !109, file: !30, line: 528, baseType: !1905, size: 64, offset: 4864)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1907, line: 51, size: 1344, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1908 = !{!1909, !1910, !1912, !1913, !2003, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1906, file: !1907, line: 52, baseType: !116, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1906, file: !1907, line: 53, baseType: !1911, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1907, line: 28, baseType: !441)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1906, file: !1907, line: 54, baseType: !116, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1906, file: !1907, line: 55, baseType: !1914, size: 192, offset: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1915, line: 17, size: 192, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1916 = !{!1917, !1919, !2002}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1914, file: !1915, line: 18, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1914, file: !1915, line: 19, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1915, line: 110, size: 1152, elements: !1923)
!1923 = !{!1924, !1928, !1932, !1938, !1944, !1948, !1952, !1957, !1961, !1962, !1966, !1970, !1974, !1985, !1986, !1987, !1988, !1998}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1922, file: !1915, line: 111, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!1918, !1918}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1922, file: !1915, line: 112, baseType: !1929, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1918}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1922, file: !1915, line: 113, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1010, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1922, file: !1915, line: 114, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1401, !1936, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1922, file: !1915, line: 116, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1010, !1936, !116}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1922, file: !1915, line: 118, baseType: !1949, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!91, !1936, !116, !7, !73, !216}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1922, file: !1915, line: 123, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!91, !1936, !116, !1956, !216}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1922, file: !1915, line: 126, baseType: !1958, size: 64, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!116, !1936}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1922, file: !1915, line: 127, baseType: !1958, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1922, file: !1915, line: 128, baseType: !1963, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1918, !1936}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1922, file: !1915, line: 130, baseType: !1967, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1918, !1936, !1918}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1922, file: !1915, line: 133, baseType: !1971, size: 64, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1918, !1936, !116}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1922, file: !1915, line: 135, baseType: !1975, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!91, !1936, !116, !116, !7, !7, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1915, line: 43, size: 640, elements: !1980)
!1980 = !{!1981, !1982, !1983}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1979, file: !1915, line: 44, baseType: !1918, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1979, file: !1915, line: 45, baseType: !7, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1979, file: !1915, line: 46, baseType: !1984, size: 512, offset: 128)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 512, elements: !546)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1922, file: !1915, line: 140, baseType: !1967, size: 64, offset: 832)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1922, file: !1915, line: 143, baseType: !1963, size: 64, offset: 896)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1922, file: !1915, line: 145, baseType: !1925, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1922, file: !1915, line: 146, baseType: !1989, size: 64, offset: 1024)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!91, !1936, !1992}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1915, line: 29, size: 128, elements: !1994)
!1994 = !{!1995, !1996, !1997}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1993, file: !1915, line: 30, baseType: !7, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1993, file: !1915, line: 31, baseType: !7, size: 32, offset: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1993, file: !1915, line: 32, baseType: !1936, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1922, file: !1915, line: 148, baseType: !1999, size: 64, offset: 1088)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!91, !1936, !108}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1914, file: !1915, line: 20, baseType: !108, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1906, file: !1907, line: 57, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1907, line: 31, size: 704, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010, !2011}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2005, file: !1907, line: 32, baseType: !169, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2005, file: !1907, line: 33, baseType: !91, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2005, file: !1907, line: 34, baseType: !73, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2005, file: !1907, line: 35, baseType: !2004, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2005, file: !1907, line: 43, baseType: !237, size: 448, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1906, file: !1907, line: 58, baseType: !2004, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1906, file: !1907, line: 59, baseType: !1905, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1906, file: !1907, line: 60, baseType: !1905, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1906, file: !1907, line: 61, baseType: !1905, size: 64, offset: 640)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1906, file: !1907, line: 63, baseType: !112, size: 512, offset: 704)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1906, file: !1907, line: 65, baseType: !92, size: 64, offset: 1216)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1906, file: !1907, line: 66, baseType: !73, size: 64, offset: 1280)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !109, file: !30, line: 529, baseType: !1918, size: 64, offset: 4928)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !109, file: !30, line: 534, baseType: !2021, size: 32, offset: 4992)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !72, line: 16, baseType: !2022)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !72, line: 13, baseType: !441)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !30, line: 535, baseType: !441, size: 32, offset: 5024)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !109, file: !30, line: 537, baseType: !128, offset: 5056)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !109, file: !30, line: 538, baseType: !101, size: 128, offset: 5056)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !109, file: !30, line: 540, baseType: !2027, size: 64, offset: 5184)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2029, line: 54, size: 960, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036, !2037, !2041, !2045, !2046, !2047, !2048, !2052, !2056, !2057}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !2029, line: 55, baseType: !116, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2028, file: !2029, line: 56, baseType: !97, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2028, file: !2029, line: 58, baseType: !222, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2028, file: !2029, line: 59, baseType: !222, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2028, file: !2029, line: 60, baseType: !121, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2028, file: !2029, line: 62, baseType: !1610, size: 64, offset: 320)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2028, file: !2029, line: 63, baseType: !2038, size: 64, offset: 384)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!169, !108, !1617}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2028, file: !2029, line: 65, baseType: !2042, size: 64, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !2027}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2028, file: !2029, line: 66, baseType: !1619, size: 64, offset: 512)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2028, file: !2029, line: 68, baseType: !1628, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2028, file: !2029, line: 70, baseType: !1384, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2028, file: !2029, line: 71, baseType: !2049, size: 64, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!1401, !108}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2028, file: !2029, line: 73, baseType: !2053, size: 64, offset: 768)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{null, !108, !1421, !1427}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2028, file: !2029, line: 75, baseType: !1623, size: 64, offset: 832)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2028, file: !2029, line: 77, baseType: !1741, size: 64, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !109, file: !30, line: 541, baseType: !222, size: 64, offset: 5248)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !109, file: !30, line: 543, baseType: !1619, size: 64, offset: 5312)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !109, file: !30, line: 544, baseType: !2061, size: 64, offset: 5376)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !109, file: !30, line: 545, baseType: !2064, size: 64, offset: 5440)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !109, file: !30, line: 547, baseType: !1010, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !109, file: !30, line: 548, baseType: !1010, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !109, file: !30, line: 549, baseType: !1010, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !109, file: !30, line: 550, baseType: !1010, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !79, file: !80, line: 75, baseType: !1905, size: 64, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "of_reset_n_cells", scope: !79, file: !80, line: 76, baseType: !91, size: 32, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "of_xlate", scope: !79, file: !80, line: 77, baseType: !2073, size: 64, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!91, !78, !2076}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2078)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !1907, line: 74, size: 640, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2078, file: !1907, line: 75, baseType: !1905, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2078, file: !1907, line: 76, baseType: !91, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2078, file: !1907, line: 77, baseType: !2083, size: 512, offset: 96)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2084, size: 512, elements: !802)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 104, baseType: !441)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_resets", scope: !79, file: !80, line: 79, baseType: !7, size: 32, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !75, file: !3, line: 43, baseType: !101, size: 128, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !75, file: !3, line: 44, baseType: !7, size: 32, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !75, file: !3, line: 45, baseType: !1588, size: 32, offset: 224)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !75, file: !3, line: 46, baseType: !1010, size: 8, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !75, file: !3, line: 47, baseType: !1010, size: 8, offset: 264)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !75, file: !3, line: 48, baseType: !1010, size: 8, offset: 272)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "deassert_count", scope: !75, file: !3, line: 49, baseType: !309, size: 32, offset: 288)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "triggered_count", scope: !75, file: !3, line: 50, baseType: !309, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !104)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control_array", file: !3, line: 59, size: 448, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2098, file: !3, line: 60, baseType: !75, size: 384)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "num_rstcs", scope: !2098, file: !3, line: 61, baseType: !7, size: 32, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rstc", scope: !2098, file: !3, line: 62, baseType: !2103, offset: 448)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !1349)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2106)
!2106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !91)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control_lookup", file: !80, line: 38, size: 384, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2110, file: !80, line: 39, baseType: !101, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "provider", scope: !2110, file: !80, line: 40, baseType: !116, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2110, file: !80, line: 41, baseType: !7, size: 32, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2110, file: !80, line: 42, baseType: !116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !2110, file: !80, line: 43, baseType: !116, size: 64, offset: 320)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2118 = !{!0, !2119, !2121, !2123}
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(name: "reset_controller_list", scope: !2, file: !3, line: 20, type: !101, isLocal: true, isDefinition: true)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(name: "reset_lookup_mutex", scope: !2, file: !3, line: 22, type: !386, isLocal: true, isDefinition: true)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(name: "reset_lookup_list", scope: !2, file: !3, line: 23, type: !101, isLocal: true, isDefinition: true)
!2125 = !{i32 7, !"Dwarf Version", i32 4}
!2126 = !{i32 2, !"Debug Info Version", i32 3}
!2127 = !{i32 1, !"wchar_size", i32 2}
!2128 = !{i32 1, !"Code Model", i32 2}
!2129 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2130 = distinct !DISubprogram(name: "reset_controller_register", scope: !3, file: !3, line: 99, type: !2131, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!91, !78}
!2133 = !DILocalVariable(name: "rcdev", arg: 1, scope: !2130, file: !3, line: 99, type: !78)
!2134 = !DILocation(line: 99, column: 60, scope: !2130)
!2135 = !DILocation(line: 101, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 101, column: 6)
!2137 = !DILocation(line: 101, column: 14, scope: !2136)
!2138 = !DILocation(line: 101, column: 6, scope: !2130)
!2139 = !DILocation(line: 102, column: 3, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 101, column: 24)
!2141 = !DILocation(line: 102, column: 10, scope: !2140)
!2142 = !DILocation(line: 102, column: 27, scope: !2140)
!2143 = !DILocation(line: 103, column: 3, scope: !2140)
!2144 = !DILocation(line: 103, column: 10, scope: !2140)
!2145 = !DILocation(line: 103, column: 19, scope: !2140)
!2146 = !DILocation(line: 104, column: 2, scope: !2140)
!2147 = !DILocation(line: 106, column: 18, scope: !2130)
!2148 = !DILocation(line: 106, column: 25, scope: !2130)
!2149 = !DILocation(line: 106, column: 2, scope: !2130)
!2150 = !DILocation(line: 108, column: 2, scope: !2130)
!2151 = !DILocation(line: 109, column: 12, scope: !2130)
!2152 = !DILocation(line: 109, column: 19, scope: !2130)
!2153 = !DILocation(line: 109, column: 2, scope: !2130)
!2154 = !DILocation(line: 110, column: 2, scope: !2130)
!2155 = !DILocation(line: 112, column: 2, scope: !2130)
!2156 = distinct !DISubprogram(name: "of_reset_simple_xlate", scope: !3, file: !3, line: 86, type: !2074, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2157 = !DILocalVariable(name: "rcdev", arg: 1, scope: !2156, file: !3, line: 86, type: !78)
!2158 = !DILocation(line: 86, column: 63, scope: !2156)
!2159 = !DILocalVariable(name: "reset_spec", arg: 2, scope: !2156, file: !3, line: 87, type: !2076)
!2160 = !DILocation(line: 87, column: 36, scope: !2156)
!2161 = !DILocation(line: 89, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 89, column: 6)
!2163 = !DILocation(line: 89, column: 18, scope: !2162)
!2164 = !DILocation(line: 89, column: 29, scope: !2162)
!2165 = !DILocation(line: 89, column: 36, scope: !2162)
!2166 = !DILocation(line: 89, column: 26, scope: !2162)
!2167 = !DILocation(line: 89, column: 6, scope: !2156)
!2168 = !DILocation(line: 90, column: 3, scope: !2162)
!2169 = !DILocation(line: 92, column: 9, scope: !2156)
!2170 = !DILocation(line: 92, column: 21, scope: !2156)
!2171 = !DILocation(line: 92, column: 2, scope: !2156)
!2172 = !DILocation(line: 93, column: 1, scope: !2156)
!2173 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2174, file: !2174, line: 33, type: !2175, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2174 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !104}
!2177 = !DILocalVariable(name: "list", arg: 1, scope: !2173, file: !2174, line: 33, type: !104)
!2178 = !DILocation(line: 33, column: 53, scope: !2173)
!2179 = !DILocation(line: 35, column: 2, scope: !2173)
!2180 = !DILocation(line: 35, column: 2, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !2174, line: 35, column: 2)
!2182 = !DILocation(line: 35, column: 2, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2181, file: !2174, line: 35, column: 2)
!2184 = !DILocation(line: 35, column: 2, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !2174, line: 35, column: 2)
!2186 = !DILocation(line: 36, column: 15, scope: !2173)
!2187 = !DILocation(line: 36, column: 2, scope: !2173)
!2188 = !DILocation(line: 36, column: 8, scope: !2173)
!2189 = !DILocation(line: 36, column: 13, scope: !2173)
!2190 = !DILocation(line: 37, column: 1, scope: !2173)
!2191 = distinct !DISubprogram(name: "list_add", scope: !2174, file: !2174, line: 84, type: !2192, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !104, !104}
!2194 = !DILocalVariable(name: "new", arg: 1, scope: !2191, file: !2174, line: 84, type: !104)
!2195 = !DILocation(line: 84, column: 47, scope: !2191)
!2196 = !DILocalVariable(name: "head", arg: 2, scope: !2191, file: !2174, line: 84, type: !104)
!2197 = !DILocation(line: 84, column: 70, scope: !2191)
!2198 = !DILocation(line: 86, column: 13, scope: !2191)
!2199 = !DILocation(line: 86, column: 18, scope: !2191)
!2200 = !DILocation(line: 86, column: 24, scope: !2191)
!2201 = !DILocation(line: 86, column: 30, scope: !2191)
!2202 = !DILocation(line: 86, column: 2, scope: !2191)
!2203 = !DILocation(line: 87, column: 1, scope: !2191)
!2204 = distinct !DISubprogram(name: "reset_controller_unregister", scope: !3, file: !3, line: 120, type: !2205, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !78}
!2207 = !DILocalVariable(name: "rcdev", arg: 1, scope: !2204, file: !3, line: 120, type: !78)
!2208 = !DILocation(line: 120, column: 63, scope: !2204)
!2209 = !DILocation(line: 122, column: 2, scope: !2204)
!2210 = !DILocation(line: 123, column: 12, scope: !2204)
!2211 = !DILocation(line: 123, column: 19, scope: !2204)
!2212 = !DILocation(line: 123, column: 2, scope: !2204)
!2213 = !DILocation(line: 124, column: 2, scope: !2204)
!2214 = !DILocation(line: 125, column: 1, scope: !2204)
!2215 = distinct !DISubprogram(name: "list_del", scope: !2174, file: !2174, line: 144, type: !2175, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2216 = !DILocalVariable(name: "entry", arg: 1, scope: !2215, file: !2174, line: 144, type: !104)
!2217 = !DILocation(line: 144, column: 47, scope: !2215)
!2218 = !DILocation(line: 146, column: 19, scope: !2215)
!2219 = !DILocation(line: 146, column: 2, scope: !2215)
!2220 = !DILocation(line: 147, column: 2, scope: !2215)
!2221 = !DILocation(line: 147, column: 9, scope: !2215)
!2222 = !DILocation(line: 147, column: 14, scope: !2215)
!2223 = !DILocation(line: 148, column: 2, scope: !2215)
!2224 = !DILocation(line: 148, column: 9, scope: !2215)
!2225 = !DILocation(line: 148, column: 14, scope: !2215)
!2226 = !DILocation(line: 149, column: 1, scope: !2215)
!2227 = distinct !DISubprogram(name: "devm_reset_controller_register", scope: !3, file: !3, line: 142, type: !2228, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!91, !108, !78}
!2230 = !DILocalVariable(name: "dev", arg: 1, scope: !2227, file: !3, line: 142, type: !108)
!2231 = !DILocation(line: 142, column: 51, scope: !2227)
!2232 = !DILocalVariable(name: "rcdev", arg: 2, scope: !2227, file: !3, line: 143, type: !78)
!2233 = !DILocation(line: 143, column: 37, scope: !2227)
!2234 = !DILocalVariable(name: "rcdevp", scope: !2227, file: !3, line: 145, type: !2096)
!2235 = !DILocation(line: 145, column: 32, scope: !2227)
!2236 = !DILocalVariable(name: "ret", scope: !2227, file: !3, line: 146, type: !91)
!2237 = !DILocation(line: 146, column: 6, scope: !2227)
!2238 = !DILocation(line: 148, column: 11, scope: !2227)
!2239 = !DILocation(line: 148, column: 9, scope: !2227)
!2240 = !DILocation(line: 150, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 150, column: 6)
!2242 = !DILocation(line: 150, column: 6, scope: !2227)
!2243 = !DILocation(line: 151, column: 3, scope: !2241)
!2244 = !DILocation(line: 153, column: 34, scope: !2227)
!2245 = !DILocation(line: 153, column: 8, scope: !2227)
!2246 = !DILocation(line: 153, column: 6, scope: !2227)
!2247 = !DILocation(line: 154, column: 6, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 154, column: 6)
!2249 = !DILocation(line: 154, column: 6, scope: !2227)
!2250 = !DILocation(line: 155, column: 15, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 154, column: 11)
!2252 = !DILocation(line: 155, column: 3, scope: !2251)
!2253 = !DILocation(line: 156, column: 10, scope: !2251)
!2254 = !DILocation(line: 156, column: 3, scope: !2251)
!2255 = !DILocation(line: 159, column: 12, scope: !2227)
!2256 = !DILocation(line: 159, column: 3, scope: !2227)
!2257 = !DILocation(line: 159, column: 10, scope: !2227)
!2258 = !DILocation(line: 160, column: 13, scope: !2227)
!2259 = !DILocation(line: 160, column: 18, scope: !2227)
!2260 = !DILocation(line: 160, column: 2, scope: !2227)
!2261 = !DILocation(line: 162, column: 9, scope: !2227)
!2262 = !DILocation(line: 162, column: 2, scope: !2227)
!2263 = !DILocation(line: 163, column: 1, scope: !2227)
!2264 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2265, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!73, !2267, !216, !71}
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !108, !73}
!2271 = !DILocalVariable(name: "release", arg: 1, scope: !2264, file: !30, line: 178, type: !2267)
!2272 = !DILocation(line: 178, column: 47, scope: !2264)
!2273 = !DILocalVariable(name: "size", arg: 2, scope: !2264, file: !30, line: 178, type: !216)
!2274 = !DILocation(line: 178, column: 63, scope: !2264)
!2275 = !DILocalVariable(name: "gfp", arg: 3, scope: !2264, file: !30, line: 178, type: !71)
!2276 = !DILocation(line: 178, column: 75, scope: !2264)
!2277 = !DILocation(line: 180, column: 27, scope: !2264)
!2278 = !DILocation(line: 180, column: 36, scope: !2264)
!2279 = !DILocation(line: 180, column: 42, scope: !2264)
!2280 = !DILocation(line: 180, column: 9, scope: !2264)
!2281 = !DILocation(line: 180, column: 2, scope: !2264)
!2282 = distinct !DISubprogram(name: "devm_reset_controller_release", scope: !3, file: !3, line: 128, type: !2269, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2283 = !DILocalVariable(name: "dev", arg: 1, scope: !2282, file: !3, line: 128, type: !108)
!2284 = !DILocation(line: 128, column: 58, scope: !2282)
!2285 = !DILocalVariable(name: "res", arg: 2, scope: !2282, file: !3, line: 128, type: !73)
!2286 = !DILocation(line: 128, column: 69, scope: !2282)
!2287 = !DILocation(line: 130, column: 63, scope: !2282)
!2288 = !DILocation(line: 130, column: 31, scope: !2282)
!2289 = !DILocation(line: 130, column: 30, scope: !2282)
!2290 = !DILocation(line: 130, column: 2, scope: !2282)
!2291 = !DILocation(line: 131, column: 1, scope: !2282)
!2292 = distinct !DISubprogram(name: "reset_controller_add_lookup", scope: !3, file: !3, line: 171, type: !2293, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2295, !7}
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2296 = !DILocalVariable(name: "lookup", arg: 1, scope: !2292, file: !3, line: 171, type: !2295)
!2297 = !DILocation(line: 171, column: 63, scope: !2292)
!2298 = !DILocalVariable(name: "num_entries", arg: 2, scope: !2292, file: !3, line: 172, type: !7)
!2299 = !DILocation(line: 172, column: 19, scope: !2292)
!2300 = !DILocalVariable(name: "entry", scope: !2292, file: !3, line: 174, type: !2295)
!2301 = !DILocation(line: 174, column: 31, scope: !2292)
!2302 = !DILocalVariable(name: "i", scope: !2292, file: !3, line: 175, type: !7)
!2303 = !DILocation(line: 175, column: 15, scope: !2292)
!2304 = !DILocation(line: 177, column: 2, scope: !2292)
!2305 = !DILocation(line: 178, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 178, column: 2)
!2307 = !DILocation(line: 178, column: 7, scope: !2306)
!2308 = !DILocation(line: 178, column: 14, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 178, column: 2)
!2310 = !DILocation(line: 178, column: 18, scope: !2309)
!2311 = !DILocation(line: 178, column: 16, scope: !2309)
!2312 = !DILocation(line: 178, column: 2, scope: !2306)
!2313 = !DILocation(line: 179, column: 12, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 178, column: 36)
!2315 = !DILocation(line: 179, column: 19, scope: !2314)
!2316 = !DILocation(line: 179, column: 9, scope: !2314)
!2317 = !DILocation(line: 181, column: 8, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 181, column: 7)
!2319 = !DILocation(line: 181, column: 15, scope: !2318)
!2320 = !DILocation(line: 181, column: 22, scope: !2318)
!2321 = !DILocation(line: 181, column: 26, scope: !2318)
!2322 = !DILocation(line: 181, column: 33, scope: !2318)
!2323 = !DILocation(line: 181, column: 7, scope: !2314)
!2324 = !DILocation(line: 182, column: 4, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 181, column: 43)
!2326 = !DILocation(line: 184, column: 4, scope: !2325)
!2327 = !DILocation(line: 187, column: 18, scope: !2314)
!2328 = !DILocation(line: 187, column: 25, scope: !2314)
!2329 = !DILocation(line: 187, column: 3, scope: !2314)
!2330 = !DILocation(line: 188, column: 2, scope: !2314)
!2331 = !DILocation(line: 178, column: 32, scope: !2309)
!2332 = !DILocation(line: 178, column: 2, scope: !2309)
!2333 = distinct !{!2333, !2312, !2334}
!2334 = !DILocation(line: 188, column: 2, scope: !2306)
!2335 = !DILocation(line: 189, column: 2, scope: !2292)
!2336 = !DILocation(line: 190, column: 1, scope: !2292)
!2337 = distinct !DISubprogram(name: "list_add_tail", scope: !2174, file: !2174, line: 98, type: !2192, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2338 = !DILocalVariable(name: "new", arg: 1, scope: !2337, file: !2174, line: 98, type: !104)
!2339 = !DILocation(line: 98, column: 52, scope: !2337)
!2340 = !DILocalVariable(name: "head", arg: 2, scope: !2337, file: !2174, line: 98, type: !104)
!2341 = !DILocation(line: 98, column: 75, scope: !2337)
!2342 = !DILocation(line: 100, column: 13, scope: !2337)
!2343 = !DILocation(line: 100, column: 18, scope: !2337)
!2344 = !DILocation(line: 100, column: 24, scope: !2337)
!2345 = !DILocation(line: 100, column: 30, scope: !2337)
!2346 = !DILocation(line: 100, column: 2, scope: !2337)
!2347 = !DILocation(line: 101, column: 1, scope: !2337)
!2348 = distinct !DISubprogram(name: "reset_control_reset", scope: !3, file: !3, line: 293, type: !2349, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!91, !74}
!2351 = !DILocalVariable(name: "i", arg: 1, scope: !2352, file: !2353, line: 163, type: !91)
!2352 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !2353, file: !2353, line: 163, type: !2354, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2353 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!91, !91, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!2357 = !DILocation(line: 163, column: 55, scope: !2352, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 286, column: 9, scope: !2359, inlinedAt: !2363)
!2359 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !2360, file: !2360, line: 284, type: !2361, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2360 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!91, !2356}
!2363 = distinct !DILocation(line: 251, column: 9, scope: !2364, inlinedAt: !2366)
!2364 = distinct !DISubprogram(name: "atomic_inc_return", scope: !2365, file: !2365, line: 248, type: !2361, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2365 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2366 = distinct !DILocation(line: 313, column: 7, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 313, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 309, column: 20)
!2369 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 309, column: 6)
!2370 = !DILocalVariable(name: "v", arg: 2, scope: !2352, file: !2353, line: 163, type: !2356)
!2371 = !DILocation(line: 163, column: 68, scope: !2352, inlinedAt: !2358)
!2372 = !DILocalVariable(name: "__ret", scope: !2373, file: !2353, line: 165, type: !91)
!2373 = distinct !DILexicalBlock(scope: !2352, file: !2353, line: 165, column: 13)
!2374 = !DILocation(line: 165, column: 13, scope: !2373, inlinedAt: !2358)
!2375 = !DILocalVariable(name: "v", arg: 1, scope: !2359, file: !2360, line: 284, type: !2356)
!2376 = !DILocation(line: 284, column: 34, scope: !2359, inlinedAt: !2363)
!2377 = !DILocalVariable(name: "v", arg: 1, scope: !2378, file: !2379, line: 99, type: !2382)
!2378 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2379, file: !2379, line: 99, type: !2380, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2379 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2382, !216}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2385 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 250, column: 2, scope: !2364, inlinedAt: !2366)
!2387 = !DILocalVariable(name: "size", arg: 2, scope: !2378, file: !2379, line: 99, type: !216)
!2388 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !2386)
!2389 = !DILocalVariable(name: "v", arg: 1, scope: !2364, file: !2365, line: 248, type: !2356)
!2390 = !DILocation(line: 248, column: 29, scope: !2364, inlinedAt: !2366)
!2391 = !DILocalVariable(name: "v", arg: 1, scope: !2392, file: !2353, line: 23, type: !2395)
!2392 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2353, file: !2353, line: 23, type: !2393, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!91, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!2397 = !DILocation(line: 23, column: 61, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 28, column: 9, scope: !2399, inlinedAt: !2400)
!2399 = distinct !DISubprogram(name: "atomic_read", scope: !2365, file: !2365, line: 25, type: !2393, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2400 = distinct !DILocation(line: 310, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 310, column: 7)
!2402 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 310, column: 7)
!2403 = !DILocalVariable(name: "v", arg: 1, scope: !2404, file: !2379, line: 69, type: !2382)
!2404 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2379, file: !2379, line: 69, type: !2380, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2405 = !DILocation(line: 69, column: 73, scope: !2404, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 27, column: 2, scope: !2399, inlinedAt: !2400)
!2407 = !DILocalVariable(name: "size", arg: 2, scope: !2404, file: !2379, line: 69, type: !216)
!2408 = !DILocation(line: 69, column: 83, scope: !2404, inlinedAt: !2406)
!2409 = !DILocalVariable(name: "v", arg: 1, scope: !2399, file: !2365, line: 25, type: !2395)
!2410 = !DILocation(line: 25, column: 29, scope: !2399, inlinedAt: !2400)
!2411 = !DILocalVariable(name: "v", arg: 1, scope: !2412, file: !2353, line: 106, type: !2356)
!2412 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !2353, file: !2353, line: 106, type: !2413, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2356}
!2415 = !DILocation(line: 106, column: 55, scope: !2412, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 331, column: 2, scope: !2417, inlinedAt: !2418)
!2417 = distinct !DISubprogram(name: "atomic_dec", scope: !2365, file: !2365, line: 328, type: !2413, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2418 = distinct !DILocation(line: 322, column: 3, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 321, column: 6)
!2420 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 330, column: 2, scope: !2417, inlinedAt: !2418)
!2422 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !2421)
!2423 = !DILocalVariable(name: "v", arg: 1, scope: !2417, file: !2365, line: 328, type: !2356)
!2424 = !DILocation(line: 328, column: 22, scope: !2417, inlinedAt: !2418)
!2425 = !DILocalVariable(name: "rstc", arg: 1, scope: !2348, file: !3, line: 293, type: !74)
!2426 = !DILocation(line: 293, column: 47, scope: !2348)
!2427 = !DILocalVariable(name: "ret", scope: !2348, file: !3, line: 295, type: !91)
!2428 = !DILocation(line: 295, column: 6, scope: !2348)
!2429 = !DILocation(line: 297, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 297, column: 6)
!2431 = !DILocation(line: 297, column: 6, scope: !2348)
!2432 = !DILocation(line: 298, column: 3, scope: !2430)
!2433 = !DILocalVariable(name: "__ret_warn_on", scope: !2434, file: !3, line: 300, type: !91)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 300, column: 6)
!2435 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 300, column: 6)
!2436 = !DILocation(line: 300, column: 6, scope: !2434)
!2437 = !DILocation(line: 300, column: 6, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 300, column: 6)
!2439 = !DILocation(line: 300, column: 6, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 300, column: 6)
!2441 = !DILocation(line: 300, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 300, column: 6)
!2443 = !DILocation(line: 300, column: 6, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 300, column: 6)
!2445 = !{i32 -2143398700, i32 -2143398671, i32 -2143398625, i32 -2143398567, i32 -2143398513, i32 -2143398459, i32 -2143398404, i32 -2143398373}
!2446 = !DILocation(line: 300, column: 6, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 300, column: 6)
!2448 = !{i32 -2143397971, i32 -2143397964, i32 -2143397912, i32 -2143397881, i32 -2143397851}
!2449 = !DILocation(line: 300, column: 6, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 300, column: 6)
!2451 = !DILocation(line: 300, column: 6, scope: !2435)
!2452 = !DILocation(line: 300, column: 6, scope: !2348)
!2453 = !DILocation(line: 301, column: 3, scope: !2435)
!2454 = !DILocation(line: 303, column: 29, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 303, column: 6)
!2456 = !DILocation(line: 303, column: 6, scope: !2455)
!2457 = !DILocation(line: 303, column: 6, scope: !2348)
!2458 = !DILocation(line: 304, column: 50, scope: !2455)
!2459 = !DILocation(line: 304, column: 36, scope: !2455)
!2460 = !DILocation(line: 304, column: 10, scope: !2455)
!2461 = !DILocation(line: 304, column: 3, scope: !2455)
!2462 = !DILocation(line: 306, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 306, column: 6)
!2464 = !DILocation(line: 306, column: 13, scope: !2463)
!2465 = !DILocation(line: 306, column: 20, scope: !2463)
!2466 = !DILocation(line: 306, column: 25, scope: !2463)
!2467 = !DILocation(line: 306, column: 6, scope: !2348)
!2468 = !DILocation(line: 307, column: 3, scope: !2463)
!2469 = !DILocation(line: 309, column: 6, scope: !2369)
!2470 = !DILocation(line: 309, column: 12, scope: !2369)
!2471 = !DILocation(line: 309, column: 6, scope: !2348)
!2472 = !DILocalVariable(name: "__ret_warn_on", scope: !2401, file: !3, line: 310, type: !91)
!2473 = !DILocation(line: 310, column: 7, scope: !2401)
!2474 = !DILocation(line: 27, column: 25, scope: !2399, inlinedAt: !2400)
!2475 = !DILocation(line: 71, column: 19, scope: !2404, inlinedAt: !2406)
!2476 = !DILocation(line: 71, column: 22, scope: !2404, inlinedAt: !2406)
!2477 = !DILocation(line: 71, column: 2, scope: !2404, inlinedAt: !2406)
!2478 = !DILocation(line: 72, column: 2, scope: !2404, inlinedAt: !2406)
!2479 = !DILocation(line: 28, column: 26, scope: !2399, inlinedAt: !2400)
!2480 = !DILocation(line: 29, column: 9, scope: !2392, inlinedAt: !2398)
!2481 = !DILocation(line: 310, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 310, column: 7)
!2483 = !DILocation(line: 310, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 310, column: 7)
!2485 = !DILocation(line: 310, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 310, column: 7)
!2487 = !DILocation(line: 310, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 310, column: 7)
!2489 = !{i32 -2143397220, i32 -2143397191, i32 -2143397145, i32 -2143397087, i32 -2143397033, i32 -2143396979, i32 -2143396924, i32 -2143396893}
!2490 = !DILocation(line: 310, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 310, column: 7)
!2492 = !{i32 -2143396491, i32 -2143396484, i32 -2143396432, i32 -2143396401, i32 -2143396371}
!2493 = !DILocation(line: 310, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 310, column: 7)
!2495 = !DILocation(line: 310, column: 7, scope: !2402)
!2496 = !DILocation(line: 310, column: 7, scope: !2368)
!2497 = !DILocation(line: 311, column: 4, scope: !2402)
!2498 = !DILocation(line: 313, column: 26, scope: !2367)
!2499 = !DILocation(line: 313, column: 32, scope: !2367)
!2500 = !DILocation(line: 250, column: 31, scope: !2364, inlinedAt: !2366)
!2501 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !2386)
!2502 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !2386)
!2503 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !2386)
!2504 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !2386)
!2505 = !DILocation(line: 251, column: 32, scope: !2364, inlinedAt: !2366)
!2506 = !DILocation(line: 286, column: 35, scope: !2359, inlinedAt: !2363)
!2507 = !DILocation(line: 165, column: 9, scope: !2352, inlinedAt: !2358)
!2508 = !{i32 -2147207322}
!2509 = !DILocation(line: 165, column: 11, scope: !2352, inlinedAt: !2358)
!2510 = !DILocation(line: 313, column: 49, scope: !2367)
!2511 = !DILocation(line: 313, column: 7, scope: !2368)
!2512 = !DILocation(line: 314, column: 4, scope: !2367)
!2513 = !DILocation(line: 315, column: 2, scope: !2368)
!2514 = !DILocation(line: 316, column: 8, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 316, column: 7)
!2516 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 315, column: 9)
!2517 = !DILocation(line: 316, column: 14, scope: !2515)
!2518 = !DILocation(line: 316, column: 7, scope: !2516)
!2519 = !DILocation(line: 317, column: 4, scope: !2515)
!2520 = !DILocation(line: 320, column: 8, scope: !2348)
!2521 = !DILocation(line: 320, column: 14, scope: !2348)
!2522 = !DILocation(line: 320, column: 21, scope: !2348)
!2523 = !DILocation(line: 320, column: 26, scope: !2348)
!2524 = !DILocation(line: 320, column: 32, scope: !2348)
!2525 = !DILocation(line: 320, column: 38, scope: !2348)
!2526 = !DILocation(line: 320, column: 45, scope: !2348)
!2527 = !DILocation(line: 320, column: 51, scope: !2348)
!2528 = !DILocation(line: 320, column: 6, scope: !2348)
!2529 = !DILocation(line: 321, column: 6, scope: !2419)
!2530 = !DILocation(line: 321, column: 12, scope: !2419)
!2531 = !DILocation(line: 321, column: 19, scope: !2419)
!2532 = !DILocation(line: 321, column: 22, scope: !2419)
!2533 = !DILocation(line: 321, column: 6, scope: !2348)
!2534 = !DILocation(line: 322, column: 15, scope: !2419)
!2535 = !DILocation(line: 322, column: 21, scope: !2419)
!2536 = !DILocation(line: 330, column: 31, scope: !2417, inlinedAt: !2418)
!2537 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !2421)
!2538 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !2421)
!2539 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !2421)
!2540 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !2421)
!2541 = !DILocation(line: 331, column: 18, scope: !2417, inlinedAt: !2418)
!2542 = !DILocation(line: 109, column: 16, scope: !2412, inlinedAt: !2416)
!2543 = !DILocation(line: 109, column: 19, scope: !2412, inlinedAt: !2416)
!2544 = !DILocation(line: 108, column: 2, scope: !2412, inlinedAt: !2416)
!2545 = !{i32 -2147211481}
!2546 = !DILocation(line: 322, column: 3, scope: !2419)
!2547 = !DILocation(line: 324, column: 9, scope: !2348)
!2548 = !DILocation(line: 324, column: 2, scope: !2348)
!2549 = !DILocation(line: 325, column: 1, scope: !2348)
!2550 = distinct !DISubprogram(name: "IS_ERR", scope: !2551, file: !2551, line: 34, type: !2552, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2551 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!1010, !1401}
!2554 = !DILocalVariable(name: "ptr", arg: 1, scope: !2550, file: !2551, line: 34, type: !1401)
!2555 = !DILocation(line: 34, column: 60, scope: !2550)
!2556 = !DILocation(line: 36, column: 9, scope: !2550)
!2557 = !DILocation(line: 36, column: 2, scope: !2550)
!2558 = distinct !DISubprogram(name: "reset_control_is_array", scope: !3, file: !3, line: 275, type: !2559, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!1010, !74}
!2561 = !DILocalVariable(name: "rstc", arg: 1, scope: !2558, file: !3, line: 275, type: !74)
!2562 = !DILocation(line: 275, column: 65, scope: !2558)
!2563 = !DILocation(line: 277, column: 9, scope: !2558)
!2564 = !DILocation(line: 277, column: 15, scope: !2558)
!2565 = !DILocation(line: 277, column: 2, scope: !2558)
!2566 = distinct !DISubprogram(name: "reset_control_array_reset", scope: !3, file: !3, line: 198, type: !2567, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!91, !2097}
!2569 = !DILocalVariable(name: "resets", arg: 1, scope: !2566, file: !3, line: 198, type: !2097)
!2570 = !DILocation(line: 198, column: 66, scope: !2566)
!2571 = !DILocalVariable(name: "ret", scope: !2566, file: !3, line: 200, type: !91)
!2572 = !DILocation(line: 200, column: 6, scope: !2566)
!2573 = !DILocalVariable(name: "i", scope: !2566, file: !3, line: 200, type: !91)
!2574 = !DILocation(line: 200, column: 11, scope: !2566)
!2575 = !DILocation(line: 202, column: 9, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 202, column: 2)
!2577 = !DILocation(line: 202, column: 7, scope: !2576)
!2578 = !DILocation(line: 202, column: 14, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 202, column: 2)
!2580 = !DILocation(line: 202, column: 18, scope: !2579)
!2581 = !DILocation(line: 202, column: 26, scope: !2579)
!2582 = !DILocation(line: 202, column: 16, scope: !2579)
!2583 = !DILocation(line: 202, column: 2, scope: !2576)
!2584 = !DILocation(line: 203, column: 29, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 202, column: 42)
!2586 = !DILocation(line: 203, column: 37, scope: !2585)
!2587 = !DILocation(line: 203, column: 42, scope: !2585)
!2588 = !DILocation(line: 203, column: 9, scope: !2585)
!2589 = !DILocation(line: 203, column: 7, scope: !2585)
!2590 = !DILocation(line: 204, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 204, column: 7)
!2592 = !DILocation(line: 204, column: 7, scope: !2585)
!2593 = !DILocation(line: 205, column: 11, scope: !2591)
!2594 = !DILocation(line: 205, column: 4, scope: !2591)
!2595 = !DILocation(line: 206, column: 2, scope: !2585)
!2596 = !DILocation(line: 202, column: 38, scope: !2579)
!2597 = !DILocation(line: 202, column: 2, scope: !2579)
!2598 = distinct !{!2598, !2583, !2599}
!2599 = !DILocation(line: 206, column: 2, scope: !2576)
!2600 = !DILocation(line: 208, column: 2, scope: !2566)
!2601 = !DILocation(line: 209, column: 1, scope: !2566)
!2602 = distinct !DISubprogram(name: "rstc_to_array", scope: !3, file: !3, line: 194, type: !2603, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!2097, !74}
!2605 = !DILocalVariable(name: "rstc", arg: 1, scope: !2602, file: !3, line: 194, type: !74)
!2606 = !DILocation(line: 194, column: 37, scope: !2602)
!2607 = !DILocalVariable(name: "__mptr", scope: !2608, file: !3, line: 195, type: !73)
!2608 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 195, column: 9)
!2609 = !DILocation(line: 195, column: 9, scope: !2608)
!2610 = !DILocation(line: 195, column: 9, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 195, column: 9)
!2612 = !DILocation(line: 195, column: 2, scope: !2602)
!2613 = distinct !DISubprogram(name: "reset_control_assert", scope: !3, file: !3, line: 344, type: !2349, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2614 = !DILocation(line: 23, column: 61, scope: !2392, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 28, column: 9, scope: !2399, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 359, column: 7, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 359, column: 7)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 359, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 355, column: 20)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 355, column: 6)
!2621 = !DILocation(line: 69, column: 73, scope: !2404, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 27, column: 2, scope: !2399, inlinedAt: !2616)
!2623 = !DILocation(line: 69, column: 83, scope: !2404, inlinedAt: !2622)
!2624 = !DILocation(line: 25, column: 29, scope: !2399, inlinedAt: !2616)
!2625 = !DILocation(line: 23, column: 61, scope: !2392, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 28, column: 9, scope: !2399, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 356, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 356, column: 7)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 356, column: 7)
!2630 = !DILocation(line: 69, column: 73, scope: !2404, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 27, column: 2, scope: !2399, inlinedAt: !2627)
!2632 = !DILocation(line: 69, column: 83, scope: !2404, inlinedAt: !2631)
!2633 = !DILocation(line: 25, column: 29, scope: !2399, inlinedAt: !2627)
!2634 = !DILocation(line: 163, column: 55, scope: !2352, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 178, column: 9, scope: !2636, inlinedAt: !2637)
!2636 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !2353, file: !2353, line: 176, type: !2354, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2637 = distinct !DILocation(line: 457, column: 9, scope: !2638, inlinedAt: !2639)
!2638 = distinct !DISubprogram(name: "arch_atomic_dec_return", scope: !2360, file: !2360, line: 455, type: !2361, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2639 = distinct !DILocation(line: 341, column: 9, scope: !2640, inlinedAt: !2641)
!2640 = distinct !DISubprogram(name: "atomic_dec_return", scope: !2365, file: !2365, line: 338, type: !2361, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2641 = distinct !DILocation(line: 362, column: 7, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 362, column: 7)
!2643 = !DILocation(line: 163, column: 68, scope: !2352, inlinedAt: !2635)
!2644 = !DILocation(line: 165, column: 13, scope: !2373, inlinedAt: !2635)
!2645 = !DILocalVariable(name: "i", arg: 1, scope: !2636, file: !2353, line: 176, type: !91)
!2646 = !DILocation(line: 176, column: 55, scope: !2636, inlinedAt: !2637)
!2647 = !DILocalVariable(name: "v", arg: 2, scope: !2636, file: !2353, line: 176, type: !2356)
!2648 = !DILocation(line: 176, column: 68, scope: !2636, inlinedAt: !2637)
!2649 = !DILocalVariable(name: "v", arg: 1, scope: !2638, file: !2360, line: 455, type: !2356)
!2650 = !DILocation(line: 455, column: 34, scope: !2638, inlinedAt: !2639)
!2651 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 340, column: 2, scope: !2640, inlinedAt: !2641)
!2653 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !2652)
!2654 = !DILocalVariable(name: "v", arg: 1, scope: !2640, file: !2365, line: 338, type: !2356)
!2655 = !DILocation(line: 338, column: 29, scope: !2640, inlinedAt: !2641)
!2656 = !DILocalVariable(name: "rstc", arg: 1, scope: !2613, file: !3, line: 344, type: !74)
!2657 = !DILocation(line: 344, column: 48, scope: !2613)
!2658 = !DILocation(line: 346, column: 7, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 346, column: 6)
!2660 = !DILocation(line: 346, column: 6, scope: !2613)
!2661 = !DILocation(line: 347, column: 3, scope: !2659)
!2662 = !DILocalVariable(name: "__ret_warn_on", scope: !2663, file: !3, line: 349, type: !91)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 349, column: 6)
!2664 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 349, column: 6)
!2665 = !DILocation(line: 349, column: 6, scope: !2663)
!2666 = !DILocation(line: 349, column: 6, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 349, column: 6)
!2668 = !DILocation(line: 349, column: 6, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 349, column: 6)
!2670 = !DILocation(line: 349, column: 6, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 349, column: 6)
!2672 = !DILocation(line: 349, column: 6, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 349, column: 6)
!2674 = !{i32 -2143395648, i32 -2143395619, i32 -2143395573, i32 -2143395515, i32 -2143395461, i32 -2143395407, i32 -2143395352, i32 -2143395321}
!2675 = !DILocation(line: 349, column: 6, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 349, column: 6)
!2677 = !{i32 -2143394919, i32 -2143394912, i32 -2143394860, i32 -2143394829, i32 -2143394799}
!2678 = !DILocation(line: 349, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 349, column: 6)
!2680 = !DILocation(line: 349, column: 6, scope: !2664)
!2681 = !DILocation(line: 349, column: 6, scope: !2613)
!2682 = !DILocation(line: 350, column: 3, scope: !2664)
!2683 = !DILocation(line: 352, column: 29, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 352, column: 6)
!2685 = !DILocation(line: 352, column: 6, scope: !2684)
!2686 = !DILocation(line: 352, column: 6, scope: !2613)
!2687 = !DILocation(line: 353, column: 51, scope: !2684)
!2688 = !DILocation(line: 353, column: 37, scope: !2684)
!2689 = !DILocation(line: 353, column: 10, scope: !2684)
!2690 = !DILocation(line: 353, column: 3, scope: !2684)
!2691 = !DILocation(line: 355, column: 6, scope: !2620)
!2692 = !DILocation(line: 355, column: 12, scope: !2620)
!2693 = !DILocation(line: 355, column: 6, scope: !2613)
!2694 = !DILocalVariable(name: "__ret_warn_on", scope: !2628, file: !3, line: 356, type: !91)
!2695 = !DILocation(line: 356, column: 7, scope: !2628)
!2696 = !DILocation(line: 27, column: 25, scope: !2399, inlinedAt: !2627)
!2697 = !DILocation(line: 71, column: 19, scope: !2404, inlinedAt: !2631)
!2698 = !DILocation(line: 71, column: 22, scope: !2404, inlinedAt: !2631)
!2699 = !DILocation(line: 71, column: 2, scope: !2404, inlinedAt: !2631)
!2700 = !DILocation(line: 72, column: 2, scope: !2404, inlinedAt: !2631)
!2701 = !DILocation(line: 28, column: 26, scope: !2399, inlinedAt: !2627)
!2702 = !DILocation(line: 29, column: 9, scope: !2392, inlinedAt: !2626)
!2703 = !DILocation(line: 356, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 356, column: 7)
!2705 = !DILocation(line: 356, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 356, column: 7)
!2707 = !DILocation(line: 356, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 356, column: 7)
!2709 = !DILocation(line: 356, column: 7, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 356, column: 7)
!2711 = !{i32 -2143394171, i32 -2143394142, i32 -2143394096, i32 -2143394038, i32 -2143393984, i32 -2143393930, i32 -2143393875, i32 -2143393844}
!2712 = !DILocation(line: 356, column: 7, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 356, column: 7)
!2714 = !{i32 -2143393442, i32 -2143393435, i32 -2143393383, i32 -2143393352, i32 -2143393322}
!2715 = !DILocation(line: 356, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 356, column: 7)
!2717 = !DILocation(line: 356, column: 7, scope: !2629)
!2718 = !DILocation(line: 356, column: 7, scope: !2619)
!2719 = !DILocation(line: 357, column: 4, scope: !2629)
!2720 = !DILocalVariable(name: "__ret_warn_on", scope: !2617, file: !3, line: 359, type: !91)
!2721 = !DILocation(line: 359, column: 7, scope: !2617)
!2722 = !DILocation(line: 27, column: 25, scope: !2399, inlinedAt: !2616)
!2723 = !DILocation(line: 71, column: 19, scope: !2404, inlinedAt: !2622)
!2724 = !DILocation(line: 71, column: 22, scope: !2404, inlinedAt: !2622)
!2725 = !DILocation(line: 71, column: 2, scope: !2404, inlinedAt: !2622)
!2726 = !DILocation(line: 72, column: 2, scope: !2404, inlinedAt: !2622)
!2727 = !DILocation(line: 28, column: 26, scope: !2399, inlinedAt: !2616)
!2728 = !DILocation(line: 29, column: 9, scope: !2392, inlinedAt: !2615)
!2729 = !DILocation(line: 359, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 359, column: 7)
!2731 = !DILocation(line: 359, column: 7, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 359, column: 7)
!2733 = !DILocation(line: 359, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 359, column: 7)
!2735 = !DILocation(line: 359, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 359, column: 7)
!2737 = !{i32 -2143392695, i32 -2143392666, i32 -2143392620, i32 -2143392562, i32 -2143392508, i32 -2143392454, i32 -2143392399, i32 -2143392368}
!2738 = !DILocation(line: 359, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 359, column: 7)
!2740 = !{i32 -2143391966, i32 -2143391959, i32 -2143391907, i32 -2143391876, i32 -2143391846}
!2741 = !DILocation(line: 359, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 359, column: 7)
!2743 = !DILocation(line: 359, column: 7, scope: !2618)
!2744 = !DILocation(line: 359, column: 7, scope: !2619)
!2745 = !DILocation(line: 360, column: 4, scope: !2618)
!2746 = !DILocation(line: 362, column: 26, scope: !2642)
!2747 = !DILocation(line: 362, column: 32, scope: !2642)
!2748 = !DILocation(line: 340, column: 31, scope: !2640, inlinedAt: !2641)
!2749 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !2652)
!2750 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !2652)
!2751 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !2652)
!2752 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !2652)
!2753 = !DILocation(line: 341, column: 32, scope: !2640, inlinedAt: !2641)
!2754 = !DILocation(line: 457, column: 35, scope: !2638, inlinedAt: !2639)
!2755 = !DILocation(line: 178, column: 33, scope: !2636, inlinedAt: !2637)
!2756 = !DILocation(line: 178, column: 32, scope: !2636, inlinedAt: !2637)
!2757 = !DILocation(line: 178, column: 36, scope: !2636, inlinedAt: !2637)
!2758 = !DILocation(line: 165, column: 9, scope: !2352, inlinedAt: !2635)
!2759 = !DILocation(line: 165, column: 11, scope: !2352, inlinedAt: !2635)
!2760 = !DILocation(line: 362, column: 48, scope: !2642)
!2761 = !DILocation(line: 362, column: 7, scope: !2619)
!2762 = !DILocation(line: 363, column: 4, scope: !2642)
!2763 = !DILocation(line: 369, column: 8, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 369, column: 7)
!2765 = !DILocation(line: 369, column: 14, scope: !2764)
!2766 = !DILocation(line: 369, column: 21, scope: !2764)
!2767 = !DILocation(line: 369, column: 26, scope: !2764)
!2768 = !DILocation(line: 369, column: 7, scope: !2619)
!2769 = !DILocation(line: 370, column: 4, scope: !2764)
!2770 = !DILocation(line: 371, column: 2, scope: !2619)
!2771 = !DILocation(line: 377, column: 8, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 377, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 371, column: 9)
!2774 = !DILocation(line: 377, column: 14, scope: !2772)
!2775 = !DILocation(line: 377, column: 21, scope: !2772)
!2776 = !DILocation(line: 377, column: 26, scope: !2772)
!2777 = !DILocation(line: 377, column: 7, scope: !2773)
!2778 = !DILocation(line: 378, column: 4, scope: !2772)
!2779 = !DILocation(line: 380, column: 8, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 380, column: 7)
!2781 = !DILocation(line: 380, column: 14, scope: !2780)
!2782 = !DILocation(line: 380, column: 7, scope: !2773)
!2783 = !DILocalVariable(name: "__ret_warn_on", scope: !2784, file: !3, line: 381, type: !91)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 381, column: 4)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 380, column: 24)
!2786 = !DILocation(line: 381, column: 4, scope: !2784)
!2787 = !DILocation(line: 381, column: 4, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 381, column: 4)
!2789 = !DILocation(line: 381, column: 4, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 381, column: 4)
!2791 = !DILocation(line: 381, column: 4, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 381, column: 4)
!2793 = !DILocation(line: 381, column: 4, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 381, column: 4)
!2795 = !DILocation(line: 381, column: 4, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 381, column: 4)
!2797 = !DILocation(line: 381, column: 4, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 381, column: 4)
!2799 = !{i32 -2143390892, i32 -2143390863, i32 -2143390817, i32 -2143390759, i32 -2143390705, i32 -2143390651, i32 -2143390596, i32 -2143390565}
!2800 = !DILocation(line: 381, column: 4, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 381, column: 4)
!2802 = !{i32 -2143390152, i32 -2143390145, i32 -2143390093, i32 -2143390062, i32 -2143390032}
!2803 = !DILocation(line: 381, column: 4, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 381, column: 4)
!2805 = !DILocation(line: 381, column: 4, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 381, column: 4)
!2807 = !DILocation(line: 383, column: 4, scope: !2785)
!2808 = !DILocation(line: 387, column: 9, scope: !2613)
!2809 = !DILocation(line: 387, column: 15, scope: !2613)
!2810 = !DILocation(line: 387, column: 22, scope: !2613)
!2811 = !DILocation(line: 387, column: 27, scope: !2613)
!2812 = !DILocation(line: 387, column: 34, scope: !2613)
!2813 = !DILocation(line: 387, column: 40, scope: !2613)
!2814 = !DILocation(line: 387, column: 47, scope: !2613)
!2815 = !DILocation(line: 387, column: 53, scope: !2613)
!2816 = !DILocation(line: 387, column: 2, scope: !2613)
!2817 = !DILocation(line: 388, column: 1, scope: !2613)
!2818 = distinct !DISubprogram(name: "reset_control_array_assert", scope: !3, file: !3, line: 211, type: !2567, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2819 = !DILocalVariable(name: "resets", arg: 1, scope: !2818, file: !3, line: 211, type: !2097)
!2820 = !DILocation(line: 211, column: 67, scope: !2818)
!2821 = !DILocalVariable(name: "ret", scope: !2818, file: !3, line: 213, type: !91)
!2822 = !DILocation(line: 213, column: 6, scope: !2818)
!2823 = !DILocalVariable(name: "i", scope: !2818, file: !3, line: 213, type: !91)
!2824 = !DILocation(line: 213, column: 11, scope: !2818)
!2825 = !DILocation(line: 215, column: 9, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 215, column: 2)
!2827 = !DILocation(line: 215, column: 7, scope: !2826)
!2828 = !DILocation(line: 215, column: 14, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 215, column: 2)
!2830 = !DILocation(line: 215, column: 18, scope: !2829)
!2831 = !DILocation(line: 215, column: 26, scope: !2829)
!2832 = !DILocation(line: 215, column: 16, scope: !2829)
!2833 = !DILocation(line: 215, column: 2, scope: !2826)
!2834 = !DILocation(line: 216, column: 30, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 215, column: 42)
!2836 = !DILocation(line: 216, column: 38, scope: !2835)
!2837 = !DILocation(line: 216, column: 43, scope: !2835)
!2838 = !DILocation(line: 216, column: 9, scope: !2835)
!2839 = !DILocation(line: 216, column: 7, scope: !2835)
!2840 = !DILocation(line: 217, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 217, column: 7)
!2842 = !DILocation(line: 217, column: 7, scope: !2835)
!2843 = !DILocation(line: 218, column: 4, scope: !2841)
!2844 = !DILocation(line: 219, column: 2, scope: !2835)
!2845 = !DILocation(line: 215, column: 38, scope: !2829)
!2846 = !DILocation(line: 215, column: 2, scope: !2829)
!2847 = distinct !{!2847, !2833, !2848}
!2848 = !DILocation(line: 219, column: 2, scope: !2826)
!2849 = !DILocation(line: 221, column: 2, scope: !2818)
!2850 = !DILabel(scope: !2818, name: "err", file: !3, line: 223)
!2851 = !DILocation(line: 223, column: 1, scope: !2818)
!2852 = !DILocation(line: 224, column: 2, scope: !2818)
!2853 = !DILocation(line: 224, column: 10, scope: !2818)
!2854 = !DILocation(line: 225, column: 26, scope: !2818)
!2855 = !DILocation(line: 225, column: 34, scope: !2818)
!2856 = !DILocation(line: 225, column: 39, scope: !2818)
!2857 = !DILocation(line: 225, column: 3, scope: !2818)
!2858 = distinct !{!2858, !2852, !2859}
!2859 = !DILocation(line: 225, column: 41, scope: !2818)
!2860 = !DILocation(line: 226, column: 9, scope: !2818)
!2861 = !DILocation(line: 226, column: 2, scope: !2818)
!2862 = !DILocation(line: 227, column: 1, scope: !2818)
!2863 = distinct !DISubprogram(name: "rcdev_name", scope: !3, file: !3, line: 65, type: !2864, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!116, !78}
!2866 = !DILocalVariable(name: "rcdev", arg: 1, scope: !2863, file: !3, line: 65, type: !78)
!2867 = !DILocation(line: 65, column: 60, scope: !2863)
!2868 = !DILocation(line: 67, column: 6, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 67, column: 6)
!2870 = !DILocation(line: 67, column: 13, scope: !2869)
!2871 = !DILocation(line: 67, column: 6, scope: !2863)
!2872 = !DILocation(line: 68, column: 19, scope: !2869)
!2873 = !DILocation(line: 68, column: 26, scope: !2869)
!2874 = !DILocation(line: 68, column: 10, scope: !2869)
!2875 = !DILocation(line: 68, column: 3, scope: !2869)
!2876 = !DILocation(line: 70, column: 6, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 70, column: 6)
!2878 = !DILocation(line: 70, column: 13, scope: !2877)
!2879 = !DILocation(line: 70, column: 6, scope: !2863)
!2880 = !DILocation(line: 71, column: 10, scope: !2877)
!2881 = !DILocation(line: 71, column: 17, scope: !2877)
!2882 = !DILocation(line: 71, column: 26, scope: !2877)
!2883 = !DILocation(line: 71, column: 3, scope: !2877)
!2884 = !DILocation(line: 73, column: 2, scope: !2863)
!2885 = !DILocation(line: 74, column: 1, scope: !2863)
!2886 = distinct !DISubprogram(name: "reset_control_deassert", scope: !3, file: !3, line: 402, type: !2349, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!2887 = !DILocation(line: 163, column: 55, scope: !2352, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 286, column: 9, scope: !2359, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 251, column: 9, scope: !2364, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 417, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 417, column: 7)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 413, column: 20)
!2893 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 413, column: 6)
!2894 = !DILocation(line: 163, column: 68, scope: !2352, inlinedAt: !2888)
!2895 = !DILocation(line: 165, column: 13, scope: !2373, inlinedAt: !2888)
!2896 = !DILocation(line: 284, column: 34, scope: !2359, inlinedAt: !2889)
!2897 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 250, column: 2, scope: !2364, inlinedAt: !2890)
!2899 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !2898)
!2900 = !DILocation(line: 248, column: 29, scope: !2364, inlinedAt: !2890)
!2901 = !DILocation(line: 23, column: 61, scope: !2392, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 28, column: 9, scope: !2399, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 414, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 414, column: 7)
!2905 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 414, column: 7)
!2906 = !DILocation(line: 69, column: 73, scope: !2404, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 27, column: 2, scope: !2399, inlinedAt: !2903)
!2908 = !DILocation(line: 69, column: 83, scope: !2404, inlinedAt: !2907)
!2909 = !DILocation(line: 25, column: 29, scope: !2399, inlinedAt: !2903)
!2910 = !DILocalVariable(name: "rstc", arg: 1, scope: !2886, file: !3, line: 402, type: !74)
!2911 = !DILocation(line: 402, column: 50, scope: !2886)
!2912 = !DILocation(line: 404, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 404, column: 6)
!2914 = !DILocation(line: 404, column: 6, scope: !2886)
!2915 = !DILocation(line: 405, column: 3, scope: !2913)
!2916 = !DILocalVariable(name: "__ret_warn_on", scope: !2917, file: !3, line: 407, type: !91)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 407, column: 6)
!2918 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 407, column: 6)
!2919 = !DILocation(line: 407, column: 6, scope: !2917)
!2920 = !DILocation(line: 407, column: 6, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 407, column: 6)
!2922 = !DILocation(line: 407, column: 6, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 407, column: 6)
!2924 = !DILocation(line: 407, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 407, column: 6)
!2926 = !DILocation(line: 407, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 407, column: 6)
!2928 = !{i32 -2143389323, i32 -2143389294, i32 -2143389248, i32 -2143389190, i32 -2143389136, i32 -2143389082, i32 -2143389027, i32 -2143388996}
!2929 = !DILocation(line: 407, column: 6, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 407, column: 6)
!2931 = !{i32 -2143388594, i32 -2143388587, i32 -2143388535, i32 -2143388504, i32 -2143388474}
!2932 = !DILocation(line: 407, column: 6, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 407, column: 6)
!2934 = !DILocation(line: 407, column: 6, scope: !2918)
!2935 = !DILocation(line: 407, column: 6, scope: !2886)
!2936 = !DILocation(line: 408, column: 3, scope: !2918)
!2937 = !DILocation(line: 410, column: 29, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 410, column: 6)
!2939 = !DILocation(line: 410, column: 6, scope: !2938)
!2940 = !DILocation(line: 410, column: 6, scope: !2886)
!2941 = !DILocation(line: 411, column: 53, scope: !2938)
!2942 = !DILocation(line: 411, column: 39, scope: !2938)
!2943 = !DILocation(line: 411, column: 10, scope: !2938)
!2944 = !DILocation(line: 411, column: 3, scope: !2938)
!2945 = !DILocation(line: 413, column: 6, scope: !2893)
!2946 = !DILocation(line: 413, column: 12, scope: !2893)
!2947 = !DILocation(line: 413, column: 6, scope: !2886)
!2948 = !DILocalVariable(name: "__ret_warn_on", scope: !2904, file: !3, line: 414, type: !91)
!2949 = !DILocation(line: 414, column: 7, scope: !2904)
!2950 = !DILocation(line: 27, column: 25, scope: !2399, inlinedAt: !2903)
!2951 = !DILocation(line: 71, column: 19, scope: !2404, inlinedAt: !2907)
!2952 = !DILocation(line: 71, column: 22, scope: !2404, inlinedAt: !2907)
!2953 = !DILocation(line: 71, column: 2, scope: !2404, inlinedAt: !2907)
!2954 = !DILocation(line: 72, column: 2, scope: !2404, inlinedAt: !2907)
!2955 = !DILocation(line: 28, column: 26, scope: !2399, inlinedAt: !2903)
!2956 = !DILocation(line: 29, column: 9, scope: !2392, inlinedAt: !2902)
!2957 = !DILocation(line: 414, column: 7, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 414, column: 7)
!2959 = !DILocation(line: 414, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 414, column: 7)
!2961 = !DILocation(line: 414, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 414, column: 7)
!2963 = !DILocation(line: 414, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 414, column: 7)
!2965 = !{i32 -2143387846, i32 -2143387817, i32 -2143387771, i32 -2143387713, i32 -2143387659, i32 -2143387605, i32 -2143387550, i32 -2143387519}
!2966 = !DILocation(line: 414, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 414, column: 7)
!2968 = !{i32 -2143387117, i32 -2143387110, i32 -2143387058, i32 -2143387027, i32 -2143386997}
!2969 = !DILocation(line: 414, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 414, column: 7)
!2971 = !DILocation(line: 414, column: 7, scope: !2905)
!2972 = !DILocation(line: 414, column: 7, scope: !2892)
!2973 = !DILocation(line: 415, column: 4, scope: !2905)
!2974 = !DILocation(line: 417, column: 26, scope: !2891)
!2975 = !DILocation(line: 417, column: 32, scope: !2891)
!2976 = !DILocation(line: 250, column: 31, scope: !2364, inlinedAt: !2890)
!2977 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !2898)
!2978 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !2898)
!2979 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !2898)
!2980 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !2898)
!2981 = !DILocation(line: 251, column: 32, scope: !2364, inlinedAt: !2890)
!2982 = !DILocation(line: 286, column: 35, scope: !2359, inlinedAt: !2889)
!2983 = !DILocation(line: 165, column: 9, scope: !2352, inlinedAt: !2888)
!2984 = !DILocation(line: 165, column: 11, scope: !2352, inlinedAt: !2888)
!2985 = !DILocation(line: 417, column: 48, scope: !2891)
!2986 = !DILocation(line: 417, column: 7, scope: !2892)
!2987 = !DILocation(line: 418, column: 4, scope: !2891)
!2988 = !DILocation(line: 419, column: 2, scope: !2892)
!2989 = !DILocation(line: 420, column: 8, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 420, column: 7)
!2991 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 419, column: 9)
!2992 = !DILocation(line: 420, column: 14, scope: !2990)
!2993 = !DILocation(line: 420, column: 7, scope: !2991)
!2994 = !DILocalVariable(name: "__ret_warn_on", scope: !2995, file: !3, line: 421, type: !91)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 421, column: 4)
!2996 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 420, column: 24)
!2997 = !DILocation(line: 421, column: 4, scope: !2995)
!2998 = !DILocation(line: 421, column: 4, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 421, column: 4)
!3000 = !DILocation(line: 421, column: 4, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 421, column: 4)
!3002 = !DILocation(line: 421, column: 4, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 421, column: 4)
!3004 = !DILocation(line: 421, column: 4, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 421, column: 4)
!3006 = !DILocation(line: 421, column: 4, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 421, column: 4)
!3008 = !DILocation(line: 421, column: 4, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 421, column: 4)
!3010 = !{i32 -2143386047, i32 -2143386018, i32 -2143385972, i32 -2143385914, i32 -2143385860, i32 -2143385806, i32 -2143385751, i32 -2143385720}
!3011 = !DILocation(line: 421, column: 4, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 421, column: 4)
!3013 = !{i32 -2143385307, i32 -2143385300, i32 -2143385248, i32 -2143385217, i32 -2143385187}
!3014 = !DILocation(line: 421, column: 4, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 421, column: 4)
!3016 = !DILocation(line: 421, column: 4, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 421, column: 4)
!3018 = !DILocation(line: 423, column: 4, scope: !2996)
!3019 = !DILocation(line: 434, column: 7, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 434, column: 6)
!3021 = !DILocation(line: 434, column: 13, scope: !3020)
!3022 = !DILocation(line: 434, column: 20, scope: !3020)
!3023 = !DILocation(line: 434, column: 25, scope: !3020)
!3024 = !DILocation(line: 434, column: 6, scope: !2886)
!3025 = !DILocation(line: 435, column: 3, scope: !3020)
!3026 = !DILocation(line: 437, column: 9, scope: !2886)
!3027 = !DILocation(line: 437, column: 15, scope: !2886)
!3028 = !DILocation(line: 437, column: 22, scope: !2886)
!3029 = !DILocation(line: 437, column: 27, scope: !2886)
!3030 = !DILocation(line: 437, column: 36, scope: !2886)
!3031 = !DILocation(line: 437, column: 42, scope: !2886)
!3032 = !DILocation(line: 437, column: 49, scope: !2886)
!3033 = !DILocation(line: 437, column: 55, scope: !2886)
!3034 = !DILocation(line: 437, column: 2, scope: !2886)
!3035 = !DILocation(line: 438, column: 1, scope: !2886)
!3036 = distinct !DISubprogram(name: "reset_control_array_deassert", scope: !3, file: !3, line: 229, type: !2567, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3037 = !DILocalVariable(name: "resets", arg: 1, scope: !3036, file: !3, line: 229, type: !2097)
!3038 = !DILocation(line: 229, column: 69, scope: !3036)
!3039 = !DILocalVariable(name: "ret", scope: !3036, file: !3, line: 231, type: !91)
!3040 = !DILocation(line: 231, column: 6, scope: !3036)
!3041 = !DILocalVariable(name: "i", scope: !3036, file: !3, line: 231, type: !91)
!3042 = !DILocation(line: 231, column: 11, scope: !3036)
!3043 = !DILocation(line: 233, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 233, column: 2)
!3045 = !DILocation(line: 233, column: 7, scope: !3044)
!3046 = !DILocation(line: 233, column: 14, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 233, column: 2)
!3048 = !DILocation(line: 233, column: 18, scope: !3047)
!3049 = !DILocation(line: 233, column: 26, scope: !3047)
!3050 = !DILocation(line: 233, column: 16, scope: !3047)
!3051 = !DILocation(line: 233, column: 2, scope: !3044)
!3052 = !DILocation(line: 234, column: 32, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 233, column: 42)
!3054 = !DILocation(line: 234, column: 40, scope: !3053)
!3055 = !DILocation(line: 234, column: 45, scope: !3053)
!3056 = !DILocation(line: 234, column: 9, scope: !3053)
!3057 = !DILocation(line: 234, column: 7, scope: !3053)
!3058 = !DILocation(line: 235, column: 7, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 235, column: 7)
!3060 = !DILocation(line: 235, column: 7, scope: !3053)
!3061 = !DILocation(line: 236, column: 4, scope: !3059)
!3062 = !DILocation(line: 237, column: 2, scope: !3053)
!3063 = !DILocation(line: 233, column: 38, scope: !3047)
!3064 = !DILocation(line: 233, column: 2, scope: !3047)
!3065 = distinct !{!3065, !3051, !3066}
!3066 = !DILocation(line: 237, column: 2, scope: !3044)
!3067 = !DILocation(line: 239, column: 2, scope: !3036)
!3068 = !DILabel(scope: !3036, name: "err", file: !3, line: 241)
!3069 = !DILocation(line: 241, column: 1, scope: !3036)
!3070 = !DILocation(line: 242, column: 2, scope: !3036)
!3071 = !DILocation(line: 242, column: 10, scope: !3036)
!3072 = !DILocation(line: 243, column: 24, scope: !3036)
!3073 = !DILocation(line: 243, column: 32, scope: !3036)
!3074 = !DILocation(line: 243, column: 37, scope: !3036)
!3075 = !DILocation(line: 243, column: 3, scope: !3036)
!3076 = distinct !{!3076, !3070, !3077}
!3077 = !DILocation(line: 243, column: 39, scope: !3036)
!3078 = !DILocation(line: 244, column: 9, scope: !3036)
!3079 = !DILocation(line: 244, column: 2, scope: !3036)
!3080 = !DILocation(line: 245, column: 1, scope: !3036)
!3081 = distinct !DISubprogram(name: "reset_control_status", scope: !3, file: !3, line: 447, type: !2349, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3082 = !DILocalVariable(name: "rstc", arg: 1, scope: !3081, file: !3, line: 447, type: !74)
!3083 = !DILocation(line: 447, column: 48, scope: !3081)
!3084 = !DILocation(line: 449, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 449, column: 6)
!3086 = !DILocation(line: 449, column: 6, scope: !3081)
!3087 = !DILocation(line: 450, column: 3, scope: !3085)
!3088 = !DILocalVariable(name: "__ret_warn_on", scope: !3089, file: !3, line: 452, type: !91)
!3089 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 452, column: 6)
!3090 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 452, column: 6)
!3091 = !DILocation(line: 452, column: 6, scope: !3089)
!3092 = !DILocation(line: 452, column: 6, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 452, column: 6)
!3094 = !DILocation(line: 452, column: 6, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 452, column: 6)
!3096 = !DILocation(line: 452, column: 6, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 452, column: 6)
!3098 = !DILocation(line: 452, column: 6, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 452, column: 6)
!3100 = !{i32 -2143384474, i32 -2143384445, i32 -2143384399, i32 -2143384341, i32 -2143384287, i32 -2143384233, i32 -2143384178, i32 -2143384147}
!3101 = !DILocation(line: 452, column: 6, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 452, column: 6)
!3103 = !{i32 -2143383745, i32 -2143383738, i32 -2143383686, i32 -2143383655, i32 -2143383625}
!3104 = !DILocation(line: 452, column: 6, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 452, column: 6)
!3106 = !DILocation(line: 452, column: 6, scope: !3090)
!3107 = !DILocation(line: 452, column: 28, scope: !3090)
!3108 = !DILocation(line: 452, column: 54, scope: !3090)
!3109 = !DILocation(line: 452, column: 31, scope: !3090)
!3110 = !DILocation(line: 452, column: 6, scope: !3081)
!3111 = !DILocation(line: 453, column: 3, scope: !3090)
!3112 = !DILocation(line: 455, column: 6, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 455, column: 6)
!3114 = !DILocation(line: 455, column: 12, scope: !3113)
!3115 = !DILocation(line: 455, column: 19, scope: !3113)
!3116 = !DILocation(line: 455, column: 24, scope: !3113)
!3117 = !DILocation(line: 455, column: 6, scope: !3081)
!3118 = !DILocation(line: 456, column: 10, scope: !3113)
!3119 = !DILocation(line: 456, column: 16, scope: !3113)
!3120 = !DILocation(line: 456, column: 23, scope: !3113)
!3121 = !DILocation(line: 456, column: 28, scope: !3113)
!3122 = !DILocation(line: 456, column: 35, scope: !3113)
!3123 = !DILocation(line: 456, column: 41, scope: !3113)
!3124 = !DILocation(line: 456, column: 48, scope: !3113)
!3125 = !DILocation(line: 456, column: 54, scope: !3113)
!3126 = !DILocation(line: 456, column: 3, scope: !3113)
!3127 = !DILocation(line: 458, column: 2, scope: !3081)
!3128 = !DILocation(line: 459, column: 1, scope: !3081)
!3129 = distinct !DISubprogram(name: "reset_control_acquire", scope: !3, file: !3, line: 482, type: !2349, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3130 = !DILocalVariable(name: "rstc", arg: 1, scope: !3129, file: !3, line: 482, type: !74)
!3131 = !DILocation(line: 482, column: 49, scope: !3129)
!3132 = !DILocalVariable(name: "rc", scope: !3129, file: !3, line: 484, type: !74)
!3133 = !DILocation(line: 484, column: 24, scope: !3129)
!3134 = !DILocation(line: 486, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 486, column: 6)
!3136 = !DILocation(line: 486, column: 6, scope: !3129)
!3137 = !DILocation(line: 487, column: 3, scope: !3135)
!3138 = !DILocalVariable(name: "__ret_warn_on", scope: !3139, file: !3, line: 489, type: !91)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 489, column: 6)
!3140 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 489, column: 6)
!3141 = !DILocation(line: 489, column: 6, scope: !3139)
!3142 = !DILocation(line: 489, column: 6, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 489, column: 6)
!3144 = !DILocation(line: 489, column: 6, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 489, column: 6)
!3146 = !DILocation(line: 489, column: 6, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 489, column: 6)
!3148 = !DILocation(line: 489, column: 6, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 489, column: 6)
!3150 = !{i32 -2143382927, i32 -2143382898, i32 -2143382852, i32 -2143382794, i32 -2143382740, i32 -2143382686, i32 -2143382631, i32 -2143382600}
!3151 = !DILocation(line: 489, column: 6, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 489, column: 6)
!3153 = !{i32 -2143382198, i32 -2143382191, i32 -2143382139, i32 -2143382108, i32 -2143382078}
!3154 = !DILocation(line: 489, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 489, column: 6)
!3156 = !DILocation(line: 489, column: 6, scope: !3140)
!3157 = !DILocation(line: 489, column: 6, scope: !3129)
!3158 = !DILocation(line: 490, column: 3, scope: !3140)
!3159 = !DILocation(line: 492, column: 29, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 492, column: 6)
!3161 = !DILocation(line: 492, column: 6, scope: !3160)
!3162 = !DILocation(line: 492, column: 6, scope: !3129)
!3163 = !DILocation(line: 493, column: 52, scope: !3160)
!3164 = !DILocation(line: 493, column: 38, scope: !3160)
!3165 = !DILocation(line: 493, column: 10, scope: !3160)
!3166 = !DILocation(line: 493, column: 3, scope: !3160)
!3167 = !DILocation(line: 495, column: 2, scope: !3129)
!3168 = !DILocation(line: 497, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 497, column: 6)
!3170 = !DILocation(line: 497, column: 12, scope: !3169)
!3171 = !DILocation(line: 497, column: 6, scope: !3129)
!3172 = !DILocation(line: 498, column: 3, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 497, column: 22)
!3174 = !DILocation(line: 499, column: 3, scope: !3173)
!3175 = !DILocalVariable(name: "__mptr", scope: !3176, file: !3, line: 502, type: !73)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 502, column: 2)
!3177 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 502, column: 2)
!3178 = !DILocation(line: 502, column: 2, scope: !3176)
!3179 = !DILocation(line: 502, column: 2, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 502, column: 2)
!3181 = !DILocation(line: 502, column: 2, scope: !3177)
!3182 = !DILocation(line: 502, column: 2, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 502, column: 2)
!3184 = !DILocation(line: 503, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 503, column: 7)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 502, column: 66)
!3187 = !DILocation(line: 503, column: 15, scope: !3185)
!3188 = !DILocation(line: 503, column: 12, scope: !3185)
!3189 = !DILocation(line: 503, column: 18, scope: !3185)
!3190 = !DILocation(line: 503, column: 21, scope: !3185)
!3191 = !DILocation(line: 503, column: 27, scope: !3185)
!3192 = !DILocation(line: 503, column: 33, scope: !3185)
!3193 = !DILocation(line: 503, column: 37, scope: !3185)
!3194 = !DILocation(line: 503, column: 30, scope: !3185)
!3195 = !DILocation(line: 503, column: 7, scope: !3186)
!3196 = !DILocation(line: 504, column: 8, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 504, column: 8)
!3198 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 503, column: 41)
!3199 = !DILocation(line: 504, column: 12, scope: !3197)
!3200 = !DILocation(line: 504, column: 8, scope: !3198)
!3201 = !DILocation(line: 505, column: 5, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 504, column: 22)
!3203 = !DILocation(line: 506, column: 5, scope: !3202)
!3204 = !DILocation(line: 508, column: 3, scope: !3198)
!3205 = !DILocation(line: 509, column: 2, scope: !3186)
!3206 = !DILocalVariable(name: "__mptr", scope: !3207, file: !3, line: 502, type: !73)
!3207 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 502, column: 2)
!3208 = !DILocation(line: 502, column: 2, scope: !3207)
!3209 = !DILocation(line: 502, column: 2, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 502, column: 2)
!3211 = distinct !{!3211, !3181, !3212}
!3212 = !DILocation(line: 509, column: 2, scope: !3177)
!3213 = !DILocation(line: 511, column: 2, scope: !3129)
!3214 = !DILocation(line: 511, column: 8, scope: !3129)
!3215 = !DILocation(line: 511, column: 17, scope: !3129)
!3216 = !DILocation(line: 513, column: 2, scope: !3129)
!3217 = !DILocation(line: 514, column: 2, scope: !3129)
!3218 = !DILocation(line: 515, column: 1, scope: !3129)
!3219 = distinct !DISubprogram(name: "reset_control_array_acquire", scope: !3, file: !3, line: 247, type: !2567, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3220 = !DILocalVariable(name: "resets", arg: 1, scope: !3219, file: !3, line: 247, type: !2097)
!3221 = !DILocation(line: 247, column: 68, scope: !3219)
!3222 = !DILocalVariable(name: "i", scope: !3219, file: !3, line: 249, type: !7)
!3223 = !DILocation(line: 249, column: 15, scope: !3219)
!3224 = !DILocalVariable(name: "err", scope: !3219, file: !3, line: 250, type: !91)
!3225 = !DILocation(line: 250, column: 6, scope: !3219)
!3226 = !DILocation(line: 252, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 252, column: 2)
!3228 = !DILocation(line: 252, column: 7, scope: !3227)
!3229 = !DILocation(line: 252, column: 14, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 252, column: 2)
!3231 = !DILocation(line: 252, column: 18, scope: !3230)
!3232 = !DILocation(line: 252, column: 26, scope: !3230)
!3233 = !DILocation(line: 252, column: 16, scope: !3230)
!3234 = !DILocation(line: 252, column: 2, scope: !3227)
!3235 = !DILocation(line: 253, column: 31, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 252, column: 42)
!3237 = !DILocation(line: 253, column: 39, scope: !3236)
!3238 = !DILocation(line: 253, column: 44, scope: !3236)
!3239 = !DILocation(line: 253, column: 9, scope: !3236)
!3240 = !DILocation(line: 253, column: 7, scope: !3236)
!3241 = !DILocation(line: 254, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 254, column: 7)
!3243 = !DILocation(line: 254, column: 11, scope: !3242)
!3244 = !DILocation(line: 254, column: 7, scope: !3236)
!3245 = !DILocation(line: 255, column: 4, scope: !3242)
!3246 = !DILocation(line: 256, column: 2, scope: !3236)
!3247 = !DILocation(line: 252, column: 38, scope: !3230)
!3248 = !DILocation(line: 252, column: 2, scope: !3230)
!3249 = distinct !{!3249, !3234, !3250}
!3250 = !DILocation(line: 256, column: 2, scope: !3227)
!3251 = !DILocation(line: 258, column: 2, scope: !3219)
!3252 = !DILabel(scope: !3219, name: "release", file: !3, line: 260)
!3253 = !DILocation(line: 260, column: 1, scope: !3219)
!3254 = !DILocation(line: 261, column: 2, scope: !3219)
!3255 = !DILocation(line: 261, column: 10, scope: !3219)
!3256 = !DILocation(line: 262, column: 25, scope: !3219)
!3257 = !DILocation(line: 262, column: 33, scope: !3219)
!3258 = !DILocation(line: 262, column: 38, scope: !3219)
!3259 = !DILocation(line: 262, column: 3, scope: !3219)
!3260 = distinct !{!3260, !3254, !3261}
!3261 = !DILocation(line: 262, column: 40, scope: !3219)
!3262 = !DILocation(line: 264, column: 9, scope: !3219)
!3263 = !DILocation(line: 264, column: 2, scope: !3219)
!3264 = !DILocation(line: 265, column: 1, scope: !3219)
!3265 = distinct !DISubprogram(name: "reset_control_release", scope: !3, file: !3, line: 528, type: !3266, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{null, !74}
!3268 = !DILocalVariable(name: "rstc", arg: 1, scope: !3265, file: !3, line: 528, type: !74)
!3269 = !DILocation(line: 528, column: 50, scope: !3265)
!3270 = !DILocation(line: 530, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 530, column: 6)
!3272 = !DILocation(line: 530, column: 12, scope: !3271)
!3273 = !DILocalVariable(name: "__ret_warn_on", scope: !3274, file: !3, line: 530, type: !91)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 530, column: 15)
!3275 = !DILocation(line: 530, column: 15, scope: !3274)
!3276 = !DILocation(line: 530, column: 15, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 530, column: 15)
!3278 = !DILocation(line: 530, column: 15, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 530, column: 15)
!3280 = !DILocation(line: 530, column: 15, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 530, column: 15)
!3282 = !DILocation(line: 530, column: 15, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 530, column: 15)
!3284 = !{i32 -2143377311, i32 -2143377282, i32 -2143377236, i32 -2143377178, i32 -2143377124, i32 -2143377070, i32 -2143377015, i32 -2143376984}
!3285 = !DILocation(line: 530, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 530, column: 15)
!3287 = !{i32 -2143376582, i32 -2143376575, i32 -2143376523, i32 -2143376492, i32 -2143376462}
!3288 = !DILocation(line: 530, column: 15, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 530, column: 15)
!3290 = !DILocation(line: 530, column: 15, scope: !3271)
!3291 = !DILocation(line: 530, column: 6, scope: !3265)
!3292 = !DILocation(line: 531, column: 3, scope: !3271)
!3293 = !DILocation(line: 533, column: 29, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 533, column: 6)
!3295 = !DILocation(line: 533, column: 6, scope: !3294)
!3296 = !DILocation(line: 533, column: 6, scope: !3265)
!3297 = !DILocation(line: 534, column: 45, scope: !3294)
!3298 = !DILocation(line: 534, column: 31, scope: !3294)
!3299 = !DILocation(line: 534, column: 3, scope: !3294)
!3300 = !DILocation(line: 536, column: 3, scope: !3294)
!3301 = !DILocation(line: 536, column: 9, scope: !3294)
!3302 = !DILocation(line: 536, column: 18, scope: !3294)
!3303 = !DILocation(line: 537, column: 1, scope: !3265)
!3304 = distinct !DISubprogram(name: "reset_control_array_release", scope: !3, file: !3, line: 267, type: !3305, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{null, !2097}
!3307 = !DILocalVariable(name: "resets", arg: 1, scope: !3304, file: !3, line: 267, type: !2097)
!3308 = !DILocation(line: 267, column: 69, scope: !3304)
!3309 = !DILocalVariable(name: "i", scope: !3304, file: !3, line: 269, type: !7)
!3310 = !DILocation(line: 269, column: 15, scope: !3304)
!3311 = !DILocation(line: 271, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 271, column: 2)
!3313 = !DILocation(line: 271, column: 7, scope: !3312)
!3314 = !DILocation(line: 271, column: 14, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 271, column: 2)
!3316 = !DILocation(line: 271, column: 18, scope: !3315)
!3317 = !DILocation(line: 271, column: 26, scope: !3315)
!3318 = !DILocation(line: 271, column: 16, scope: !3315)
!3319 = !DILocation(line: 271, column: 2, scope: !3312)
!3320 = !DILocation(line: 272, column: 25, scope: !3315)
!3321 = !DILocation(line: 272, column: 33, scope: !3315)
!3322 = !DILocation(line: 272, column: 38, scope: !3315)
!3323 = !DILocation(line: 272, column: 3, scope: !3315)
!3324 = !DILocation(line: 271, column: 38, scope: !3315)
!3325 = !DILocation(line: 271, column: 2, scope: !3315)
!3326 = distinct !{!3326, !3319, !3327}
!3327 = !DILocation(line: 272, column: 40, scope: !3312)
!3328 = !DILocation(line: 273, column: 1, scope: !3304)
!3329 = distinct !DISubprogram(name: "__of_reset_control_get", scope: !3, file: !3, line: 602, type: !3330, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!74, !1905, !116, !91, !1010, !1010, !1010}
!3332 = !DILocalVariable(name: "node", arg: 1, scope: !3329, file: !3, line: 602, type: !1905)
!3333 = !DILocation(line: 602, column: 66, scope: !3329)
!3334 = !DILocalVariable(name: "id", arg: 2, scope: !3329, file: !3, line: 603, type: !116)
!3335 = !DILocation(line: 603, column: 22, scope: !3329)
!3336 = !DILocalVariable(name: "index", arg: 3, scope: !3329, file: !3, line: 603, type: !91)
!3337 = !DILocation(line: 603, column: 30, scope: !3329)
!3338 = !DILocalVariable(name: "shared", arg: 4, scope: !3329, file: !3, line: 603, type: !1010)
!3339 = !DILocation(line: 603, column: 42, scope: !3329)
!3340 = !DILocalVariable(name: "optional", arg: 5, scope: !3329, file: !3, line: 604, type: !1010)
!3341 = !DILocation(line: 604, column: 15, scope: !3329)
!3342 = !DILocalVariable(name: "acquired", arg: 6, scope: !3329, file: !3, line: 604, type: !1010)
!3343 = !DILocation(line: 604, column: 30, scope: !3329)
!3344 = !DILocalVariable(name: "rstc", scope: !3329, file: !3, line: 606, type: !74)
!3345 = !DILocation(line: 606, column: 24, scope: !3329)
!3346 = !DILocalVariable(name: "r", scope: !3329, file: !3, line: 607, type: !78)
!3347 = !DILocation(line: 607, column: 31, scope: !3329)
!3348 = !DILocalVariable(name: "rcdev", scope: !3329, file: !3, line: 607, type: !78)
!3349 = !DILocation(line: 607, column: 35, scope: !3329)
!3350 = !DILocalVariable(name: "args", scope: !3329, file: !3, line: 608, type: !2078)
!3351 = !DILocation(line: 608, column: 25, scope: !3329)
!3352 = !DILocalVariable(name: "rstc_id", scope: !3329, file: !3, line: 609, type: !91)
!3353 = !DILocation(line: 609, column: 6, scope: !3329)
!3354 = !DILocalVariable(name: "ret", scope: !3329, file: !3, line: 610, type: !91)
!3355 = !DILocation(line: 610, column: 6, scope: !3329)
!3356 = !DILocation(line: 612, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 612, column: 6)
!3358 = !DILocation(line: 612, column: 6, scope: !3329)
!3359 = !DILocation(line: 613, column: 10, scope: !3357)
!3360 = !DILocation(line: 613, column: 3, scope: !3357)
!3361 = !DILocation(line: 615, column: 6, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 615, column: 6)
!3363 = !DILocation(line: 615, column: 6, scope: !3329)
!3364 = !DILocation(line: 616, column: 36, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 615, column: 10)
!3366 = !DILocation(line: 617, column: 23, scope: !3365)
!3367 = !DILocation(line: 616, column: 11, scope: !3365)
!3368 = !DILocation(line: 616, column: 9, scope: !3365)
!3369 = !DILocation(line: 618, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 618, column: 7)
!3371 = !DILocation(line: 618, column: 13, scope: !3370)
!3372 = !DILocation(line: 618, column: 7, scope: !3365)
!3373 = !DILocation(line: 619, column: 19, scope: !3370)
!3374 = !DILocation(line: 619, column: 11, scope: !3370)
!3375 = !DILocation(line: 619, column: 4, scope: !3370)
!3376 = !DILocation(line: 620, column: 7, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 620, column: 7)
!3378 = !DILocation(line: 620, column: 13, scope: !3377)
!3379 = !DILocation(line: 620, column: 7, scope: !3365)
!3380 = !DILocation(line: 621, column: 11, scope: !3377)
!3381 = !DILocation(line: 621, column: 29, scope: !3377)
!3382 = !DILocation(line: 621, column: 4, scope: !3377)
!3383 = !DILocation(line: 622, column: 2, scope: !3365)
!3384 = !DILocation(line: 624, column: 35, scope: !3329)
!3385 = !DILocation(line: 625, column: 7, scope: !3329)
!3386 = !DILocation(line: 624, column: 8, scope: !3329)
!3387 = !DILocation(line: 624, column: 6, scope: !3329)
!3388 = !DILocation(line: 626, column: 6, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 626, column: 6)
!3390 = !DILocation(line: 626, column: 10, scope: !3389)
!3391 = !DILocation(line: 626, column: 6, scope: !3329)
!3392 = !DILocation(line: 627, column: 18, scope: !3389)
!3393 = !DILocation(line: 627, column: 10, scope: !3389)
!3394 = !DILocation(line: 627, column: 3, scope: !3389)
!3395 = !DILocation(line: 628, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 628, column: 6)
!3397 = !DILocation(line: 628, column: 6, scope: !3329)
!3398 = !DILocation(line: 629, column: 10, scope: !3396)
!3399 = !DILocation(line: 629, column: 36, scope: !3396)
!3400 = !DILocation(line: 629, column: 28, scope: !3396)
!3401 = !DILocation(line: 629, column: 3, scope: !3396)
!3402 = !DILocation(line: 631, column: 2, scope: !3329)
!3403 = !DILocation(line: 632, column: 8, scope: !3329)
!3404 = !DILocalVariable(name: "__mptr", scope: !3405, file: !3, line: 633, type: !73)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 633, column: 2)
!3406 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 633, column: 2)
!3407 = !DILocation(line: 633, column: 2, scope: !3405)
!3408 = !DILocation(line: 633, column: 2, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 633, column: 2)
!3410 = !DILocation(line: 633, column: 2, scope: !3406)
!3411 = !DILocation(line: 633, column: 2, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 633, column: 2)
!3413 = !DILocation(line: 634, column: 12, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 634, column: 7)
!3415 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 633, column: 55)
!3416 = !DILocation(line: 634, column: 18, scope: !3414)
!3417 = !DILocation(line: 634, column: 21, scope: !3414)
!3418 = !DILocation(line: 634, column: 15, scope: !3414)
!3419 = !DILocation(line: 634, column: 7, scope: !3415)
!3420 = !DILocation(line: 635, column: 12, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 634, column: 30)
!3422 = !DILocation(line: 635, column: 10, scope: !3421)
!3423 = !DILocation(line: 636, column: 4, scope: !3421)
!3424 = !DILocation(line: 638, column: 2, scope: !3415)
!3425 = !DILocalVariable(name: "__mptr", scope: !3426, file: !3, line: 633, type: !73)
!3426 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 633, column: 2)
!3427 = !DILocation(line: 633, column: 2, scope: !3426)
!3428 = !DILocation(line: 633, column: 2, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 633, column: 2)
!3430 = distinct !{!3430, !3410, !3431}
!3431 = !DILocation(line: 638, column: 2, scope: !3406)
!3432 = !DILocation(line: 640, column: 7, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 640, column: 6)
!3434 = !DILocation(line: 640, column: 6, scope: !3329)
!3435 = !DILocation(line: 641, column: 10, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 640, column: 14)
!3437 = !DILocation(line: 641, column: 8, scope: !3436)
!3438 = !DILocation(line: 642, column: 3, scope: !3436)
!3439 = !DILocalVariable(name: "__ret_warn_on", scope: !3440, file: !3, line: 645, type: !91)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 645, column: 6)
!3441 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 645, column: 6)
!3442 = !DILocation(line: 645, column: 6, scope: !3440)
!3443 = !DILocation(line: 645, column: 6, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 645, column: 6)
!3445 = !DILocation(line: 645, column: 6, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 645, column: 6)
!3447 = !DILocation(line: 645, column: 6, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 645, column: 6)
!3449 = !DILocation(line: 645, column: 6, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 645, column: 6)
!3451 = !{i32 -2143364505, i32 -2143364476, i32 -2143364430, i32 -2143364372, i32 -2143364318, i32 -2143364264, i32 -2143364209, i32 -2143364178}
!3452 = !DILocation(line: 645, column: 6, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 645, column: 6)
!3454 = !{i32 -2143363776, i32 -2143363769, i32 -2143363717, i32 -2143363686, i32 -2143363656}
!3455 = !DILocation(line: 645, column: 6, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 645, column: 6)
!3457 = !DILocation(line: 645, column: 6, scope: !3441)
!3458 = !DILocation(line: 645, column: 6, scope: !3329)
!3459 = !DILocation(line: 646, column: 10, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 645, column: 59)
!3461 = !DILocation(line: 646, column: 8, scope: !3460)
!3462 = !DILocation(line: 647, column: 3, scope: !3460)
!3463 = !DILocation(line: 650, column: 12, scope: !3329)
!3464 = !DILocation(line: 650, column: 19, scope: !3329)
!3465 = !DILocation(line: 650, column: 28, scope: !3329)
!3466 = !DILocation(line: 650, column: 10, scope: !3329)
!3467 = !DILocation(line: 651, column: 6, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 651, column: 6)
!3469 = !DILocation(line: 651, column: 14, scope: !3468)
!3470 = !DILocation(line: 651, column: 6, scope: !3329)
!3471 = !DILocation(line: 652, column: 18, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 651, column: 19)
!3473 = !DILocation(line: 652, column: 10, scope: !3472)
!3474 = !DILocation(line: 652, column: 8, scope: !3472)
!3475 = !DILocation(line: 653, column: 3, scope: !3472)
!3476 = !DILocation(line: 657, column: 38, scope: !3329)
!3477 = !DILocation(line: 657, column: 45, scope: !3329)
!3478 = !DILocation(line: 657, column: 54, scope: !3329)
!3479 = !DILocation(line: 657, column: 62, scope: !3329)
!3480 = !DILocation(line: 657, column: 9, scope: !3329)
!3481 = !DILocation(line: 657, column: 7, scope: !3329)
!3482 = !DILocation(line: 657, column: 2, scope: !3329)
!3483 = !DILabel(scope: !3329, name: "out", file: !3, line: 659)
!3484 = !DILocation(line: 659, column: 1, scope: !3329)
!3485 = !DILocation(line: 660, column: 2, scope: !3329)
!3486 = !DILocation(line: 661, column: 19, scope: !3329)
!3487 = !DILocation(line: 661, column: 2, scope: !3329)
!3488 = !DILocation(line: 663, column: 9, scope: !3329)
!3489 = !DILocation(line: 663, column: 2, scope: !3329)
!3490 = !DILocation(line: 664, column: 1, scope: !3329)
!3491 = distinct !DISubprogram(name: "ERR_PTR", scope: !2551, file: !2551, line: 24, type: !3492, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!73, !204}
!3494 = !DILocalVariable(name: "error", arg: 1, scope: !3491, file: !2551, line: 24, type: !204)
!3495 = !DILocation(line: 24, column: 48, scope: !3491)
!3496 = !DILocation(line: 26, column: 18, scope: !3491)
!3497 = !DILocation(line: 26, column: 9, scope: !3491)
!3498 = !DILocation(line: 26, column: 2, scope: !3491)
!3499 = distinct !DISubprogram(name: "__reset_control_get_internal", scope: !3, file: !3, line: 540, type: !3500, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!74, !78, !7, !1010, !1010}
!3502 = !DILocalVariable(name: "rcdev", arg: 1, scope: !3499, file: !3, line: 541, type: !78)
!3503 = !DILocation(line: 541, column: 34, scope: !3499)
!3504 = !DILocalVariable(name: "index", arg: 2, scope: !3499, file: !3, line: 542, type: !7)
!3505 = !DILocation(line: 542, column: 18, scope: !3499)
!3506 = !DILocalVariable(name: "shared", arg: 3, scope: !3499, file: !3, line: 542, type: !1010)
!3507 = !DILocation(line: 542, column: 30, scope: !3499)
!3508 = !DILocalVariable(name: "acquired", arg: 4, scope: !3499, file: !3, line: 542, type: !1010)
!3509 = !DILocation(line: 542, column: 43, scope: !3499)
!3510 = !DILocalVariable(name: "rstc", scope: !3499, file: !3, line: 544, type: !74)
!3511 = !DILocation(line: 544, column: 24, scope: !3499)
!3512 = !DILocation(line: 546, column: 2, scope: !3499)
!3513 = !DILocation(line: 546, column: 2, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 546, column: 2)
!3515 = !DILocalVariable(name: "__mptr", scope: !3516, file: !3, line: 548, type: !73)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 548, column: 2)
!3517 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 548, column: 2)
!3518 = !DILocation(line: 548, column: 2, scope: !3516)
!3519 = !DILocation(line: 548, column: 2, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 548, column: 2)
!3521 = !DILocation(line: 548, column: 2, scope: !3517)
!3522 = !DILocation(line: 548, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 548, column: 2)
!3524 = !DILocation(line: 549, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 549, column: 7)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 548, column: 62)
!3527 = !DILocation(line: 549, column: 13, scope: !3525)
!3528 = !DILocation(line: 549, column: 19, scope: !3525)
!3529 = !DILocation(line: 549, column: 16, scope: !3525)
!3530 = !DILocation(line: 549, column: 7, scope: !3526)
!3531 = !DILocation(line: 555, column: 9, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 555, column: 8)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 549, column: 26)
!3534 = !DILocation(line: 555, column: 15, scope: !3532)
!3535 = !DILocation(line: 555, column: 22, scope: !3532)
!3536 = !DILocation(line: 555, column: 26, scope: !3532)
!3537 = !DILocation(line: 555, column: 33, scope: !3532)
!3538 = !DILocation(line: 555, column: 37, scope: !3532)
!3539 = !DILocation(line: 555, column: 8, scope: !3533)
!3540 = !DILocation(line: 556, column: 5, scope: !3532)
!3541 = !DILocalVariable(name: "__ret_warn_on", scope: !3542, file: !3, line: 558, type: !91)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 558, column: 8)
!3543 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 558, column: 8)
!3544 = !DILocation(line: 558, column: 8, scope: !3542)
!3545 = !DILocation(line: 558, column: 8, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 558, column: 8)
!3547 = !DILocation(line: 558, column: 8, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 558, column: 8)
!3549 = !DILocation(line: 558, column: 8, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 558, column: 8)
!3551 = !DILocation(line: 558, column: 8, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 558, column: 8)
!3553 = !{i32 -2143371657, i32 -2143371628, i32 -2143371582, i32 -2143371524, i32 -2143371470, i32 -2143371416, i32 -2143371361, i32 -2143371330}
!3554 = !DILocation(line: 558, column: 8, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 558, column: 8)
!3556 = !{i32 -2143370928, i32 -2143370921, i32 -2143370869, i32 -2143370838, i32 -2143370808}
!3557 = !DILocation(line: 558, column: 8, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 558, column: 8)
!3559 = !DILocation(line: 558, column: 8, scope: !3543)
!3560 = !DILocation(line: 558, column: 8, scope: !3533)
!3561 = !DILocation(line: 559, column: 12, scope: !3543)
!3562 = !DILocation(line: 559, column: 5, scope: !3543)
!3563 = !DILocation(line: 561, column: 14, scope: !3533)
!3564 = !DILocation(line: 561, column: 20, scope: !3533)
!3565 = !DILocation(line: 561, column: 4, scope: !3533)
!3566 = !DILocation(line: 562, column: 11, scope: !3533)
!3567 = !DILocation(line: 562, column: 4, scope: !3533)
!3568 = !DILocation(line: 564, column: 2, scope: !3526)
!3569 = !DILocalVariable(name: "__mptr", scope: !3570, file: !3, line: 548, type: !73)
!3570 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 548, column: 2)
!3571 = !DILocation(line: 548, column: 2, scope: !3570)
!3572 = !DILocation(line: 548, column: 2, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 548, column: 2)
!3574 = distinct !{!3574, !3521, !3575}
!3575 = !DILocation(line: 564, column: 2, scope: !3517)
!3576 = !DILocation(line: 566, column: 9, scope: !3499)
!3577 = !DILocation(line: 566, column: 7, scope: !3499)
!3578 = !DILocation(line: 567, column: 7, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 567, column: 6)
!3580 = !DILocation(line: 567, column: 6, scope: !3499)
!3581 = !DILocation(line: 568, column: 10, scope: !3579)
!3582 = !DILocation(line: 568, column: 3, scope: !3579)
!3583 = !DILocation(line: 570, column: 17, scope: !3499)
!3584 = !DILocation(line: 570, column: 24, scope: !3499)
!3585 = !DILocation(line: 570, column: 2, scope: !3499)
!3586 = !DILocation(line: 572, column: 16, scope: !3499)
!3587 = !DILocation(line: 572, column: 2, scope: !3499)
!3588 = !DILocation(line: 572, column: 8, scope: !3499)
!3589 = !DILocation(line: 572, column: 14, scope: !3499)
!3590 = !DILocation(line: 573, column: 12, scope: !3499)
!3591 = !DILocation(line: 573, column: 18, scope: !3499)
!3592 = !DILocation(line: 573, column: 25, scope: !3499)
!3593 = !DILocation(line: 573, column: 32, scope: !3499)
!3594 = !DILocation(line: 573, column: 2, scope: !3499)
!3595 = !DILocation(line: 574, column: 13, scope: !3499)
!3596 = !DILocation(line: 574, column: 2, scope: !3499)
!3597 = !DILocation(line: 574, column: 8, scope: !3499)
!3598 = !DILocation(line: 574, column: 11, scope: !3499)
!3599 = !DILocation(line: 575, column: 13, scope: !3499)
!3600 = !DILocation(line: 575, column: 19, scope: !3499)
!3601 = !DILocation(line: 575, column: 2, scope: !3499)
!3602 = !DILocation(line: 576, column: 19, scope: !3499)
!3603 = !DILocation(line: 576, column: 2, scope: !3499)
!3604 = !DILocation(line: 576, column: 8, scope: !3499)
!3605 = !DILocation(line: 576, column: 17, scope: !3499)
!3606 = !DILocation(line: 577, column: 17, scope: !3499)
!3607 = !DILocation(line: 577, column: 2, scope: !3499)
!3608 = !DILocation(line: 577, column: 8, scope: !3499)
!3609 = !DILocation(line: 577, column: 15, scope: !3499)
!3610 = !DILocation(line: 579, column: 9, scope: !3499)
!3611 = !DILocation(line: 579, column: 2, scope: !3499)
!3612 = !DILocation(line: 580, column: 1, scope: !3499)
!3613 = distinct !DISubprogram(name: "of_node_put", scope: !1907, file: !1907, line: 129, type: !3614, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !1905}
!3616 = !DILocalVariable(name: "node", arg: 1, scope: !3613, file: !1907, line: 129, type: !1905)
!3617 = !DILocation(line: 129, column: 52, scope: !3613)
!3618 = !DILocation(line: 129, column: 60, scope: !3613)
!3619 = distinct !DISubprogram(name: "__reset_control_get", scope: !3, file: !3, line: 728, type: !3620, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!74, !108, !116, !91, !1010, !1010, !1010}
!3622 = !DILocalVariable(name: "dev", arg: 1, scope: !3619, file: !3, line: 728, type: !108)
!3623 = !DILocation(line: 728, column: 58, scope: !3619)
!3624 = !DILocalVariable(name: "id", arg: 2, scope: !3619, file: !3, line: 728, type: !116)
!3625 = !DILocation(line: 728, column: 75, scope: !3619)
!3626 = !DILocalVariable(name: "index", arg: 3, scope: !3619, file: !3, line: 729, type: !91)
!3627 = !DILocation(line: 729, column: 12, scope: !3619)
!3628 = !DILocalVariable(name: "shared", arg: 4, scope: !3619, file: !3, line: 729, type: !1010)
!3629 = !DILocation(line: 729, column: 24, scope: !3619)
!3630 = !DILocalVariable(name: "optional", arg: 5, scope: !3619, file: !3, line: 729, type: !1010)
!3631 = !DILocation(line: 729, column: 37, scope: !3619)
!3632 = !DILocalVariable(name: "acquired", arg: 6, scope: !3619, file: !3, line: 730, type: !1010)
!3633 = !DILocation(line: 730, column: 13, scope: !3619)
!3634 = !DILocalVariable(name: "__ret_warn_on", scope: !3635, file: !3, line: 732, type: !91)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3, line: 732, column: 6)
!3636 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 732, column: 6)
!3637 = !DILocation(line: 732, column: 6, scope: !3635)
!3638 = !DILocation(line: 0, scope: !3635)
!3639 = !DILocation(line: 732, column: 6, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3635, file: !3, line: 732, column: 6)
!3641 = !DILocation(line: 732, column: 6, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 732, column: 6)
!3643 = !DILocation(line: 732, column: 6, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 732, column: 6)
!3645 = !DILocation(line: 732, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 732, column: 6)
!3647 = !{i32 -2143354825, i32 -2143354796, i32 -2143354750, i32 -2143354692, i32 -2143354638, i32 -2143354584, i32 -2143354529, i32 -2143354498}
!3648 = !DILocation(line: 732, column: 6, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 732, column: 6)
!3650 = !{i32 -2143354096, i32 -2143354089, i32 -2143354037, i32 -2143354006, i32 -2143353976}
!3651 = !DILocation(line: 732, column: 6, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 732, column: 6)
!3653 = !DILocation(line: 732, column: 6, scope: !3636)
!3654 = !DILocation(line: 732, column: 6, scope: !3619)
!3655 = !DILocation(line: 733, column: 10, scope: !3636)
!3656 = !DILocation(line: 733, column: 3, scope: !3636)
!3657 = !DILocation(line: 735, column: 6, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 735, column: 6)
!3659 = !DILocation(line: 735, column: 11, scope: !3658)
!3660 = !DILocation(line: 735, column: 6, scope: !3619)
!3661 = !DILocation(line: 736, column: 33, scope: !3658)
!3662 = !DILocation(line: 736, column: 38, scope: !3658)
!3663 = !DILocation(line: 736, column: 47, scope: !3658)
!3664 = !DILocation(line: 736, column: 51, scope: !3658)
!3665 = !DILocation(line: 736, column: 58, scope: !3658)
!3666 = !DILocation(line: 737, column: 12, scope: !3658)
!3667 = !DILocation(line: 737, column: 22, scope: !3658)
!3668 = !DILocation(line: 736, column: 10, scope: !3658)
!3669 = !DILocation(line: 736, column: 3, scope: !3658)
!3670 = !DILocation(line: 739, column: 41, scope: !3619)
!3671 = !DILocation(line: 739, column: 46, scope: !3619)
!3672 = !DILocation(line: 739, column: 50, scope: !3619)
!3673 = !DILocation(line: 739, column: 58, scope: !3619)
!3674 = !DILocation(line: 740, column: 13, scope: !3619)
!3675 = !DILocation(line: 739, column: 9, scope: !3619)
!3676 = !DILocation(line: 739, column: 2, scope: !3619)
!3677 = !DILocation(line: 741, column: 1, scope: !3619)
!3678 = distinct !DISubprogram(name: "__reset_control_get_from_lookup", scope: !3, file: !3, line: 686, type: !3679, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!74, !108, !116, !1010, !1010, !1010}
!3681 = !DILocalVariable(name: "dev", arg: 1, scope: !3678, file: !3, line: 686, type: !108)
!3682 = !DILocation(line: 686, column: 48, scope: !3678)
!3683 = !DILocalVariable(name: "con_id", arg: 2, scope: !3678, file: !3, line: 686, type: !116)
!3684 = !DILocation(line: 686, column: 65, scope: !3678)
!3685 = !DILocalVariable(name: "shared", arg: 3, scope: !3678, file: !3, line: 687, type: !1010)
!3686 = !DILocation(line: 687, column: 10, scope: !3678)
!3687 = !DILocalVariable(name: "optional", arg: 4, scope: !3678, file: !3, line: 687, type: !1010)
!3688 = !DILocation(line: 687, column: 23, scope: !3678)
!3689 = !DILocalVariable(name: "acquired", arg: 5, scope: !3678, file: !3, line: 687, type: !1010)
!3690 = !DILocation(line: 687, column: 38, scope: !3678)
!3691 = !DILocalVariable(name: "lookup", scope: !3678, file: !3, line: 689, type: !2108)
!3692 = !DILocation(line: 689, column: 37, scope: !3678)
!3693 = !DILocalVariable(name: "rcdev", scope: !3678, file: !3, line: 690, type: !78)
!3694 = !DILocation(line: 690, column: 31, scope: !3678)
!3695 = !DILocalVariable(name: "dev_id", scope: !3678, file: !3, line: 691, type: !116)
!3696 = !DILocation(line: 691, column: 14, scope: !3678)
!3697 = !DILocation(line: 691, column: 32, scope: !3678)
!3698 = !DILocation(line: 691, column: 23, scope: !3678)
!3699 = !DILocalVariable(name: "rstc", scope: !3678, file: !3, line: 692, type: !74)
!3700 = !DILocation(line: 692, column: 24, scope: !3678)
!3701 = !DILocation(line: 694, column: 2, scope: !3678)
!3702 = !DILocalVariable(name: "__mptr", scope: !3703, file: !3, line: 696, type: !73)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 696, column: 2)
!3704 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 696, column: 2)
!3705 = !DILocation(line: 696, column: 2, scope: !3703)
!3706 = !DILocation(line: 696, column: 2, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !3, line: 696, column: 2)
!3708 = !DILocation(line: 696, column: 2, scope: !3704)
!3709 = !DILocation(line: 696, column: 2, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 696, column: 2)
!3711 = !DILocation(line: 697, column: 14, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 697, column: 7)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 696, column: 56)
!3714 = !DILocation(line: 697, column: 22, scope: !3712)
!3715 = !DILocation(line: 697, column: 30, scope: !3712)
!3716 = !DILocation(line: 697, column: 7, scope: !3712)
!3717 = !DILocation(line: 697, column: 7, scope: !3713)
!3718 = !DILocation(line: 698, column: 4, scope: !3712)
!3719 = !DILocation(line: 700, column: 9, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 700, column: 7)
!3721 = !DILocation(line: 700, column: 16, scope: !3720)
!3722 = !DILocation(line: 700, column: 20, scope: !3720)
!3723 = !DILocation(line: 700, column: 28, scope: !3720)
!3724 = !DILocation(line: 700, column: 36, scope: !3720)
!3725 = !DILocation(line: 701, column: 9, scope: !3720)
!3726 = !DILocation(line: 701, column: 16, scope: !3720)
!3727 = !DILocation(line: 701, column: 19, scope: !3720)
!3728 = !DILocation(line: 701, column: 27, scope: !3720)
!3729 = !DILocation(line: 701, column: 35, scope: !3720)
!3730 = !DILocation(line: 702, column: 16, scope: !3720)
!3731 = !DILocation(line: 702, column: 24, scope: !3720)
!3732 = !DILocation(line: 702, column: 32, scope: !3720)
!3733 = !DILocation(line: 702, column: 9, scope: !3720)
!3734 = !DILocation(line: 700, column: 7, scope: !3713)
!3735 = !DILocation(line: 703, column: 4, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 702, column: 42)
!3737 = !DILocation(line: 704, column: 39, scope: !3736)
!3738 = !DILocation(line: 704, column: 47, scope: !3736)
!3739 = !DILocation(line: 704, column: 12, scope: !3736)
!3740 = !DILocation(line: 704, column: 10, scope: !3736)
!3741 = !DILocation(line: 705, column: 9, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 705, column: 8)
!3743 = !DILocation(line: 705, column: 8, scope: !3736)
!3744 = !DILocation(line: 706, column: 5, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 705, column: 16)
!3746 = !DILocation(line: 707, column: 5, scope: !3745)
!3747 = !DILocation(line: 709, column: 12, scope: !3745)
!3748 = !DILocation(line: 709, column: 5, scope: !3745)
!3749 = !DILocation(line: 712, column: 40, scope: !3736)
!3750 = !DILocation(line: 713, column: 12, scope: !3736)
!3751 = !DILocation(line: 713, column: 20, scope: !3736)
!3752 = !DILocation(line: 714, column: 12, scope: !3736)
!3753 = !DILocation(line: 714, column: 20, scope: !3736)
!3754 = !DILocation(line: 712, column: 11, scope: !3736)
!3755 = !DILocation(line: 712, column: 9, scope: !3736)
!3756 = !DILocation(line: 715, column: 4, scope: !3736)
!3757 = !DILocation(line: 716, column: 4, scope: !3736)
!3758 = !DILocation(line: 718, column: 2, scope: !3713)
!3759 = !DILocalVariable(name: "__mptr", scope: !3760, file: !3, line: 696, type: !73)
!3760 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 696, column: 2)
!3761 = !DILocation(line: 696, column: 2, scope: !3760)
!3762 = !DILocation(line: 696, column: 2, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 696, column: 2)
!3764 = distinct !{!3764, !3708, !3765}
!3765 = !DILocation(line: 718, column: 2, scope: !3704)
!3766 = !DILocation(line: 720, column: 2, scope: !3678)
!3767 = !DILocation(line: 722, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 722, column: 6)
!3769 = !DILocation(line: 722, column: 6, scope: !3678)
!3770 = !DILocation(line: 723, column: 10, scope: !3768)
!3771 = !DILocation(line: 723, column: 28, scope: !3768)
!3772 = !DILocation(line: 723, column: 3, scope: !3768)
!3773 = !DILocation(line: 725, column: 9, scope: !3678)
!3774 = !DILocation(line: 725, column: 2, scope: !3678)
!3775 = !DILocation(line: 726, column: 1, scope: !3678)
!3776 = distinct !DISubprogram(name: "reset_control_put", scope: !3, file: !3, line: 759, type: !3266, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3777 = !DILocalVariable(name: "rstc", arg: 1, scope: !3776, file: !3, line: 759, type: !74)
!3778 = !DILocation(line: 759, column: 46, scope: !3776)
!3779 = !DILocation(line: 761, column: 21, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 761, column: 6)
!3781 = !DILocation(line: 761, column: 6, scope: !3780)
!3782 = !DILocation(line: 761, column: 6, scope: !3776)
!3783 = !DILocation(line: 762, column: 3, scope: !3780)
!3784 = !DILocation(line: 764, column: 29, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 764, column: 6)
!3786 = !DILocation(line: 764, column: 6, scope: !3785)
!3787 = !DILocation(line: 764, column: 6, scope: !3776)
!3788 = !DILocation(line: 765, column: 41, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3785, file: !3, line: 764, column: 36)
!3790 = !DILocation(line: 765, column: 27, scope: !3789)
!3791 = !DILocation(line: 765, column: 3, scope: !3789)
!3792 = !DILocation(line: 766, column: 3, scope: !3789)
!3793 = !DILocation(line: 769, column: 2, scope: !3776)
!3794 = !DILocation(line: 770, column: 31, scope: !3776)
!3795 = !DILocation(line: 770, column: 2, scope: !3776)
!3796 = !DILocation(line: 771, column: 2, scope: !3776)
!3797 = !DILocation(line: 772, column: 1, scope: !3776)
!3798 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2551, file: !2551, line: 39, type: !2552, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3799 = !DILocalVariable(name: "ptr", arg: 1, scope: !3798, file: !2551, line: 39, type: !1401)
!3800 = !DILocation(line: 39, column: 68, scope: !3798)
!3801 = !DILocation(line: 41, column: 9, scope: !3798)
!3802 = !DILocation(line: 41, column: 24, scope: !3798)
!3803 = !DILocation(line: 41, column: 27, scope: !3798)
!3804 = !DILocation(line: 41, column: 2, scope: !3798)
!3805 = distinct !DISubprogram(name: "reset_control_array_put", scope: !3, file: !3, line: 744, type: !3305, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3806 = !DILocalVariable(name: "resets", arg: 1, scope: !3805, file: !3, line: 744, type: !2097)
!3807 = !DILocation(line: 744, column: 65, scope: !3805)
!3808 = !DILocalVariable(name: "i", scope: !3805, file: !3, line: 746, type: !91)
!3809 = !DILocation(line: 746, column: 6, scope: !3805)
!3810 = !DILocation(line: 748, column: 2, scope: !3805)
!3811 = !DILocation(line: 749, column: 9, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3805, file: !3, line: 749, column: 2)
!3813 = !DILocation(line: 749, column: 7, scope: !3812)
!3814 = !DILocation(line: 749, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 749, column: 2)
!3816 = !DILocation(line: 749, column: 18, scope: !3815)
!3817 = !DILocation(line: 749, column: 26, scope: !3815)
!3818 = !DILocation(line: 749, column: 16, scope: !3815)
!3819 = !DILocation(line: 749, column: 2, scope: !3812)
!3820 = !DILocation(line: 750, column: 32, scope: !3815)
!3821 = !DILocation(line: 750, column: 40, scope: !3815)
!3822 = !DILocation(line: 750, column: 45, scope: !3815)
!3823 = !DILocation(line: 750, column: 3, scope: !3815)
!3824 = !DILocation(line: 749, column: 38, scope: !3815)
!3825 = !DILocation(line: 749, column: 2, scope: !3815)
!3826 = distinct !{!3826, !3819, !3827}
!3827 = !DILocation(line: 750, column: 47, scope: !3812)
!3828 = !DILocation(line: 751, column: 2, scope: !3805)
!3829 = !DILocation(line: 752, column: 8, scope: !3805)
!3830 = !DILocation(line: 752, column: 2, scope: !3805)
!3831 = !DILocation(line: 753, column: 1, scope: !3805)
!3832 = distinct !DISubprogram(name: "__reset_control_put_internal", scope: !3, file: !3, line: 595, type: !3266, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3833 = !DILocalVariable(name: "rstc", arg: 1, scope: !3832, file: !3, line: 595, type: !74)
!3834 = !DILocation(line: 595, column: 64, scope: !3832)
!3835 = !DILocation(line: 597, column: 2, scope: !3832)
!3836 = !DILocation(line: 597, column: 2, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 597, column: 2)
!3838 = !DILocation(line: 599, column: 12, scope: !3832)
!3839 = !DILocation(line: 599, column: 18, scope: !3832)
!3840 = !DILocation(line: 599, column: 2, scope: !3832)
!3841 = !DILocation(line: 600, column: 1, scope: !3832)
!3842 = distinct !DISubprogram(name: "__devm_reset_control_get", scope: !3, file: !3, line: 780, type: !3620, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3843 = !DILocalVariable(name: "dev", arg: 1, scope: !3842, file: !3, line: 780, type: !108)
!3844 = !DILocation(line: 780, column: 63, scope: !3842)
!3845 = !DILocalVariable(name: "id", arg: 2, scope: !3842, file: !3, line: 781, type: !116)
!3846 = !DILocation(line: 781, column: 22, scope: !3842)
!3847 = !DILocalVariable(name: "index", arg: 3, scope: !3842, file: !3, line: 781, type: !91)
!3848 = !DILocation(line: 781, column: 30, scope: !3842)
!3849 = !DILocalVariable(name: "shared", arg: 4, scope: !3842, file: !3, line: 781, type: !1010)
!3850 = !DILocation(line: 781, column: 42, scope: !3842)
!3851 = !DILocalVariable(name: "optional", arg: 5, scope: !3842, file: !3, line: 782, type: !1010)
!3852 = !DILocation(line: 782, column: 15, scope: !3842)
!3853 = !DILocalVariable(name: "acquired", arg: 6, scope: !3842, file: !3, line: 782, type: !1010)
!3854 = !DILocation(line: 782, column: 30, scope: !3842)
!3855 = !DILocalVariable(name: "ptr", scope: !3842, file: !3, line: 784, type: !2117)
!3856 = !DILocation(line: 784, column: 25, scope: !3842)
!3857 = !DILocalVariable(name: "rstc", scope: !3842, file: !3, line: 784, type: !74)
!3858 = !DILocation(line: 784, column: 31, scope: !3842)
!3859 = !DILocation(line: 786, column: 8, scope: !3842)
!3860 = !DILocation(line: 786, column: 6, scope: !3842)
!3861 = !DILocation(line: 788, column: 7, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 788, column: 6)
!3863 = !DILocation(line: 788, column: 6, scope: !3842)
!3864 = !DILocation(line: 789, column: 10, scope: !3862)
!3865 = !DILocation(line: 789, column: 3, scope: !3862)
!3866 = !DILocation(line: 791, column: 29, scope: !3842)
!3867 = !DILocation(line: 791, column: 34, scope: !3842)
!3868 = !DILocation(line: 791, column: 38, scope: !3842)
!3869 = !DILocation(line: 791, column: 45, scope: !3842)
!3870 = !DILocation(line: 791, column: 53, scope: !3842)
!3871 = !DILocation(line: 791, column: 63, scope: !3842)
!3872 = !DILocation(line: 791, column: 9, scope: !3842)
!3873 = !DILocation(line: 791, column: 7, scope: !3842)
!3874 = !DILocation(line: 792, column: 21, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 792, column: 6)
!3876 = !DILocation(line: 792, column: 6, scope: !3875)
!3877 = !DILocation(line: 792, column: 6, scope: !3842)
!3878 = !DILocation(line: 793, column: 15, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 792, column: 28)
!3880 = !DILocation(line: 793, column: 3, scope: !3879)
!3881 = !DILocation(line: 794, column: 10, scope: !3879)
!3882 = !DILocation(line: 794, column: 3, scope: !3879)
!3883 = !DILocation(line: 797, column: 9, scope: !3842)
!3884 = !DILocation(line: 797, column: 3, scope: !3842)
!3885 = !DILocation(line: 797, column: 7, scope: !3842)
!3886 = !DILocation(line: 798, column: 13, scope: !3842)
!3887 = !DILocation(line: 798, column: 18, scope: !3842)
!3888 = !DILocation(line: 798, column: 2, scope: !3842)
!3889 = !DILocation(line: 800, column: 9, scope: !3842)
!3890 = !DILocation(line: 800, column: 2, scope: !3842)
!3891 = !DILocation(line: 801, column: 1, scope: !3842)
!3892 = distinct !DISubprogram(name: "devm_reset_control_release", scope: !3, file: !3, line: 775, type: !2269, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3893 = !DILocalVariable(name: "dev", arg: 1, scope: !3892, file: !3, line: 775, type: !108)
!3894 = !DILocation(line: 775, column: 55, scope: !3892)
!3895 = !DILocalVariable(name: "res", arg: 2, scope: !3892, file: !3, line: 775, type: !73)
!3896 = !DILocation(line: 775, column: 66, scope: !3892)
!3897 = !DILocation(line: 777, column: 46, scope: !3892)
!3898 = !DILocation(line: 777, column: 21, scope: !3892)
!3899 = !DILocation(line: 777, column: 20, scope: !3892)
!3900 = !DILocation(line: 777, column: 2, scope: !3892)
!3901 = !DILocation(line: 778, column: 1, scope: !3892)
!3902 = distinct !DISubprogram(name: "__device_reset", scope: !3, file: !3, line: 814, type: !3903, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!91, !108, !1010}
!3905 = !DILocalVariable(name: "dev", arg: 1, scope: !3902, file: !3, line: 814, type: !108)
!3906 = !DILocation(line: 814, column: 35, scope: !3902)
!3907 = !DILocalVariable(name: "optional", arg: 2, scope: !3902, file: !3, line: 814, type: !1010)
!3908 = !DILocation(line: 814, column: 45, scope: !3902)
!3909 = !DILocalVariable(name: "rstc", scope: !3902, file: !3, line: 816, type: !74)
!3910 = !DILocation(line: 816, column: 24, scope: !3902)
!3911 = !DILocalVariable(name: "ret", scope: !3902, file: !3, line: 817, type: !91)
!3912 = !DILocation(line: 817, column: 6, scope: !3902)
!3913 = !DILocation(line: 819, column: 29, scope: !3902)
!3914 = !DILocation(line: 819, column: 46, scope: !3902)
!3915 = !DILocation(line: 819, column: 9, scope: !3902)
!3916 = !DILocation(line: 819, column: 7, scope: !3902)
!3917 = !DILocation(line: 820, column: 13, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 820, column: 6)
!3919 = !DILocation(line: 820, column: 6, scope: !3918)
!3920 = !DILocation(line: 820, column: 6, scope: !3902)
!3921 = !DILocation(line: 821, column: 18, scope: !3918)
!3922 = !DILocation(line: 821, column: 10, scope: !3918)
!3923 = !DILocation(line: 821, column: 3, scope: !3918)
!3924 = !DILocation(line: 823, column: 28, scope: !3902)
!3925 = !DILocation(line: 823, column: 8, scope: !3902)
!3926 = !DILocation(line: 823, column: 6, scope: !3902)
!3927 = !DILocation(line: 825, column: 20, scope: !3902)
!3928 = !DILocation(line: 825, column: 2, scope: !3902)
!3929 = !DILocation(line: 827, column: 9, scope: !3902)
!3930 = !DILocation(line: 827, column: 2, scope: !3902)
!3931 = !DILocation(line: 828, column: 1, scope: !3902)
!3932 = distinct !DISubprogram(name: "PTR_ERR", scope: !2551, file: !2551, line: 29, type: !3933, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!204, !1401}
!3935 = !DILocalVariable(name: "ptr", arg: 1, scope: !3932, file: !2551, line: 29, type: !1401)
!3936 = !DILocation(line: 29, column: 61, scope: !3932)
!3937 = !DILocation(line: 31, column: 16, scope: !3932)
!3938 = !DILocation(line: 31, column: 9, scope: !3932)
!3939 = !DILocation(line: 31, column: 2, scope: !3932)
!3940 = distinct !DISubprogram(name: "of_reset_control_array_get", scope: !3, file: !3, line: 870, type: !3941, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!74, !1905, !1010, !1010, !1010}
!3943 = !DILocalVariable(name: "np", arg: 1, scope: !3940, file: !3, line: 870, type: !1905)
!3944 = !DILocation(line: 870, column: 48, scope: !3940)
!3945 = !DILocalVariable(name: "shared", arg: 2, scope: !3940, file: !3, line: 870, type: !1010)
!3946 = !DILocation(line: 870, column: 57, scope: !3940)
!3947 = !DILocalVariable(name: "optional", arg: 3, scope: !3940, file: !3, line: 870, type: !1010)
!3948 = !DILocation(line: 870, column: 70, scope: !3940)
!3949 = !DILocalVariable(name: "acquired", arg: 4, scope: !3940, file: !3, line: 871, type: !1010)
!3950 = !DILocation(line: 871, column: 12, scope: !3940)
!3951 = !DILocalVariable(name: "resets", scope: !3940, file: !3, line: 873, type: !2097)
!3952 = !DILocation(line: 873, column: 30, scope: !3940)
!3953 = !DILocalVariable(name: "rstc", scope: !3940, file: !3, line: 874, type: !74)
!3954 = !DILocation(line: 874, column: 24, scope: !3940)
!3955 = !DILocalVariable(name: "num", scope: !3940, file: !3, line: 875, type: !91)
!3956 = !DILocation(line: 875, column: 6, scope: !3940)
!3957 = !DILocalVariable(name: "i", scope: !3940, file: !3, line: 875, type: !91)
!3958 = !DILocation(line: 875, column: 11, scope: !3940)
!3959 = !DILocation(line: 877, column: 35, scope: !3940)
!3960 = !DILocation(line: 877, column: 8, scope: !3940)
!3961 = !DILocation(line: 877, column: 6, scope: !3940)
!3962 = !DILocation(line: 878, column: 6, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 878, column: 6)
!3964 = !DILocation(line: 878, column: 10, scope: !3963)
!3965 = !DILocation(line: 878, column: 6, scope: !3940)
!3966 = !DILocation(line: 879, column: 10, scope: !3963)
!3967 = !DILocation(line: 879, column: 36, scope: !3963)
!3968 = !DILocation(line: 879, column: 28, scope: !3963)
!3969 = !DILocation(line: 879, column: 3, scope: !3963)
!3970 = !DILocation(line: 881, column: 19, scope: !3940)
!3971 = !DILocation(line: 881, column: 11, scope: !3940)
!3972 = !DILocation(line: 881, column: 9, scope: !3940)
!3973 = !DILocation(line: 882, column: 7, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 882, column: 6)
!3975 = !DILocation(line: 882, column: 6, scope: !3940)
!3976 = !DILocation(line: 883, column: 10, scope: !3974)
!3977 = !DILocation(line: 883, column: 3, scope: !3974)
!3978 = !DILocation(line: 885, column: 9, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 885, column: 2)
!3980 = !DILocation(line: 885, column: 7, scope: !3979)
!3981 = !DILocation(line: 885, column: 14, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 885, column: 2)
!3983 = !DILocation(line: 885, column: 18, scope: !3982)
!3984 = !DILocation(line: 885, column: 16, scope: !3982)
!3985 = !DILocation(line: 885, column: 2, scope: !3979)
!3986 = !DILocation(line: 886, column: 33, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 885, column: 28)
!3988 = !DILocation(line: 886, column: 43, scope: !3987)
!3989 = !DILocation(line: 886, column: 46, scope: !3987)
!3990 = !DILocation(line: 886, column: 54, scope: !3987)
!3991 = !DILocation(line: 887, column: 12, scope: !3987)
!3992 = !DILocation(line: 886, column: 10, scope: !3987)
!3993 = !DILocation(line: 886, column: 8, scope: !3987)
!3994 = !DILocation(line: 888, column: 14, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 888, column: 7)
!3996 = !DILocation(line: 888, column: 7, scope: !3995)
!3997 = !DILocation(line: 888, column: 7, scope: !3987)
!3998 = !DILocation(line: 889, column: 4, scope: !3995)
!3999 = !DILocation(line: 890, column: 21, scope: !3987)
!4000 = !DILocation(line: 890, column: 3, scope: !3987)
!4001 = !DILocation(line: 890, column: 11, scope: !3987)
!4002 = !DILocation(line: 890, column: 16, scope: !3987)
!4003 = !DILocation(line: 890, column: 19, scope: !3987)
!4004 = !DILocation(line: 891, column: 2, scope: !3987)
!4005 = !DILocation(line: 885, column: 24, scope: !3982)
!4006 = !DILocation(line: 885, column: 2, scope: !3982)
!4007 = distinct !{!4007, !3985, !4008}
!4008 = !DILocation(line: 891, column: 2, scope: !3979)
!4009 = !DILocation(line: 892, column: 22, scope: !3940)
!4010 = !DILocation(line: 892, column: 2, scope: !3940)
!4011 = !DILocation(line: 892, column: 10, scope: !3940)
!4012 = !DILocation(line: 892, column: 20, scope: !3940)
!4013 = !DILocation(line: 893, column: 2, scope: !3940)
!4014 = !DILocation(line: 893, column: 10, scope: !3940)
!4015 = !DILocation(line: 893, column: 15, scope: !3940)
!4016 = !DILocation(line: 893, column: 21, scope: !3940)
!4017 = !DILocation(line: 895, column: 10, scope: !3940)
!4018 = !DILocation(line: 895, column: 18, scope: !3940)
!4019 = !DILocation(line: 895, column: 2, scope: !3940)
!4020 = !DILabel(scope: !3940, name: "err_rst", file: !3, line: 897)
!4021 = !DILocation(line: 897, column: 1, scope: !3940)
!4022 = !DILocation(line: 898, column: 2, scope: !3940)
!4023 = !DILocation(line: 899, column: 2, scope: !3940)
!4024 = !DILocation(line: 899, column: 9, scope: !3940)
!4025 = !DILocation(line: 899, column: 13, scope: !3940)
!4026 = !DILocation(line: 900, column: 32, scope: !3940)
!4027 = !DILocation(line: 900, column: 40, scope: !3940)
!4028 = !DILocation(line: 900, column: 45, scope: !3940)
!4029 = !DILocation(line: 900, column: 3, scope: !3940)
!4030 = distinct !{!4030, !4023, !4031}
!4031 = !DILocation(line: 900, column: 47, scope: !3940)
!4032 = !DILocation(line: 901, column: 2, scope: !3940)
!4033 = !DILocation(line: 903, column: 8, scope: !3940)
!4034 = !DILocation(line: 903, column: 2, scope: !3940)
!4035 = !DILocation(line: 905, column: 9, scope: !3940)
!4036 = !DILocation(line: 905, column: 2, scope: !3940)
!4037 = !DILocation(line: 906, column: 1, scope: !3940)
!4038 = distinct !DISubprogram(name: "of_reset_control_get_count", scope: !3, file: !3, line: 843, type: !4039, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!91, !1905}
!4041 = !DILocalVariable(name: "node", arg: 1, scope: !4038, file: !3, line: 843, type: !1905)
!4042 = !DILocation(line: 843, column: 59, scope: !4038)
!4043 = !DILocalVariable(name: "count", scope: !4038, file: !3, line: 845, type: !91)
!4044 = !DILocation(line: 845, column: 6, scope: !4038)
!4045 = !DILocation(line: 847, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 847, column: 6)
!4047 = !DILocation(line: 847, column: 6, scope: !4038)
!4048 = !DILocation(line: 848, column: 3, scope: !4046)
!4049 = !DILocation(line: 850, column: 37, scope: !4038)
!4050 = !DILocation(line: 850, column: 10, scope: !4038)
!4051 = !DILocation(line: 850, column: 8, scope: !4038)
!4052 = !DILocation(line: 851, column: 6, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 851, column: 6)
!4054 = !DILocation(line: 851, column: 12, scope: !4053)
!4055 = !DILocation(line: 851, column: 6, scope: !4038)
!4056 = !DILocation(line: 852, column: 9, scope: !4053)
!4057 = !DILocation(line: 852, column: 3, scope: !4053)
!4058 = !DILocation(line: 854, column: 9, scope: !4038)
!4059 = !DILocation(line: 854, column: 2, scope: !4038)
!4060 = !DILocation(line: 855, column: 1, scope: !4038)
!4061 = distinct !DISubprogram(name: "kzalloc", scope: !64, file: !64, line: 662, type: !4062, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!73, !216, !71}
!4064 = !DILocalVariable(name: "s", arg: 1, scope: !4065, file: !64, line: 445, type: !1060)
!4065 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !64, file: !64, line: 445, type: !4066, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!73, !1060, !71, !216}
!4068 = !DILocation(line: 445, column: 72, scope: !4065, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 552, column: 10, scope: !4070, inlinedAt: !4073)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !64, line: 540, column: 34)
!4071 = distinct !DILexicalBlock(scope: !4072, file: !64, line: 540, column: 6)
!4072 = distinct !DISubprogram(name: "kmalloc", scope: !64, file: !64, line: 538, type: !4062, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4073 = distinct !DILocation(line: 664, column: 9, scope: !4061)
!4074 = !DILocalVariable(name: "flags", arg: 2, scope: !4065, file: !64, line: 446, type: !71)
!4075 = !DILocation(line: 446, column: 9, scope: !4065, inlinedAt: !4069)
!4076 = !DILocalVariable(name: "size", arg: 3, scope: !4065, file: !64, line: 446, type: !216)
!4077 = !DILocation(line: 446, column: 23, scope: !4065, inlinedAt: !4069)
!4078 = !DILocalVariable(name: "ret", scope: !4065, file: !64, line: 448, type: !73)
!4079 = !DILocation(line: 448, column: 8, scope: !4065, inlinedAt: !4069)
!4080 = !DILocalVariable(name: "flags", arg: 1, scope: !4081, file: !64, line: 318, type: !71)
!4081 = distinct !DISubprogram(name: "kmalloc_type", scope: !64, file: !64, line: 318, type: !4082, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!63, !71}
!4084 = !DILocation(line: 318, column: 67, scope: !4081, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 553, column: 20, scope: !4070, inlinedAt: !4073)
!4086 = !DILocalVariable(name: "size", arg: 1, scope: !4087, file: !64, line: 346, type: !216)
!4087 = distinct !DISubprogram(name: "kmalloc_index", scope: !64, file: !64, line: 346, type: !4088, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!7, !216}
!4090 = !DILocation(line: 346, column: 58, scope: !4087, inlinedAt: !4091)
!4091 = distinct !DILocation(line: 547, column: 11, scope: !4070, inlinedAt: !4073)
!4092 = !DILocalVariable(name: "size", arg: 1, scope: !4093, file: !64, line: 472, type: !216)
!4093 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !64, file: !64, line: 472, type: !4094, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!73, !216, !71, !7}
!4096 = !DILocation(line: 472, column: 28, scope: !4093, inlinedAt: !4097)
!4097 = distinct !DILocation(line: 481, column: 9, scope: !4098, inlinedAt: !4099)
!4098 = distinct !DISubprogram(name: "kmalloc_large", scope: !64, file: !64, line: 478, type: !4062, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4099 = distinct !DILocation(line: 545, column: 11, scope: !4100, inlinedAt: !4073)
!4100 = distinct !DILexicalBlock(scope: !4070, file: !64, line: 544, column: 7)
!4101 = !DILocalVariable(name: "flags", arg: 2, scope: !4093, file: !64, line: 472, type: !71)
!4102 = !DILocation(line: 472, column: 40, scope: !4093, inlinedAt: !4097)
!4103 = !DILocalVariable(name: "order", arg: 3, scope: !4093, file: !64, line: 472, type: !7)
!4104 = !DILocation(line: 472, column: 60, scope: !4093, inlinedAt: !4097)
!4105 = !DILocalVariable(name: "size", arg: 1, scope: !4098, file: !64, line: 478, type: !216)
!4106 = !DILocation(line: 478, column: 51, scope: !4098, inlinedAt: !4099)
!4107 = !DILocalVariable(name: "flags", arg: 2, scope: !4098, file: !64, line: 478, type: !71)
!4108 = !DILocation(line: 478, column: 63, scope: !4098, inlinedAt: !4099)
!4109 = !DILocalVariable(name: "order", scope: !4098, file: !64, line: 480, type: !7)
!4110 = !DILocation(line: 480, column: 15, scope: !4098, inlinedAt: !4099)
!4111 = !DILocalVariable(name: "size", arg: 1, scope: !4072, file: !64, line: 538, type: !216)
!4112 = !DILocation(line: 538, column: 45, scope: !4072, inlinedAt: !4073)
!4113 = !DILocalVariable(name: "flags", arg: 2, scope: !4072, file: !64, line: 538, type: !71)
!4114 = !DILocation(line: 538, column: 57, scope: !4072, inlinedAt: !4073)
!4115 = !DILocalVariable(name: "index", scope: !4070, file: !64, line: 542, type: !7)
!4116 = !DILocation(line: 542, column: 16, scope: !4070, inlinedAt: !4073)
!4117 = !DILocalVariable(name: "size", arg: 1, scope: !4061, file: !64, line: 662, type: !216)
!4118 = !DILocation(line: 662, column: 36, scope: !4061)
!4119 = !DILocalVariable(name: "flags", arg: 2, scope: !4061, file: !64, line: 662, type: !71)
!4120 = !DILocation(line: 662, column: 48, scope: !4061)
!4121 = !DILocation(line: 664, column: 17, scope: !4061)
!4122 = !DILocation(line: 664, column: 23, scope: !4061)
!4123 = !DILocation(line: 664, column: 29, scope: !4061)
!4124 = !DILocation(line: 540, column: 27, scope: !4071, inlinedAt: !4073)
!4125 = !DILocation(line: 540, column: 6, scope: !4071, inlinedAt: !4073)
!4126 = !DILocation(line: 540, column: 6, scope: !4072, inlinedAt: !4073)
!4127 = !DILocation(line: 544, column: 7, scope: !4100, inlinedAt: !4073)
!4128 = !DILocation(line: 544, column: 12, scope: !4100, inlinedAt: !4073)
!4129 = !DILocation(line: 544, column: 7, scope: !4070, inlinedAt: !4073)
!4130 = !DILocation(line: 545, column: 25, scope: !4100, inlinedAt: !4073)
!4131 = !DILocation(line: 545, column: 31, scope: !4100, inlinedAt: !4073)
!4132 = !DILocation(line: 480, column: 33, scope: !4098, inlinedAt: !4099)
!4133 = !DILocation(line: 480, column: 23, scope: !4098, inlinedAt: !4099)
!4134 = !DILocation(line: 481, column: 29, scope: !4098, inlinedAt: !4099)
!4135 = !DILocation(line: 481, column: 35, scope: !4098, inlinedAt: !4099)
!4136 = !DILocation(line: 481, column: 42, scope: !4098, inlinedAt: !4099)
!4137 = !DILocation(line: 474, column: 23, scope: !4093, inlinedAt: !4097)
!4138 = !DILocation(line: 474, column: 29, scope: !4093, inlinedAt: !4097)
!4139 = !DILocation(line: 474, column: 36, scope: !4093, inlinedAt: !4097)
!4140 = !DILocation(line: 474, column: 9, scope: !4093, inlinedAt: !4097)
!4141 = !DILocation(line: 545, column: 4, scope: !4100, inlinedAt: !4073)
!4142 = !DILocation(line: 547, column: 25, scope: !4070, inlinedAt: !4073)
!4143 = !DILocation(line: 348, column: 7, scope: !4144, inlinedAt: !4091)
!4144 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 348, column: 6)
!4145 = !DILocation(line: 348, column: 6, scope: !4087, inlinedAt: !4091)
!4146 = !DILocation(line: 349, column: 3, scope: !4144, inlinedAt: !4091)
!4147 = !DILocation(line: 351, column: 6, scope: !4148, inlinedAt: !4091)
!4148 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 351, column: 6)
!4149 = !DILocation(line: 351, column: 11, scope: !4148, inlinedAt: !4091)
!4150 = !DILocation(line: 351, column: 6, scope: !4087, inlinedAt: !4091)
!4151 = !DILocation(line: 352, column: 3, scope: !4148, inlinedAt: !4091)
!4152 = !DILocation(line: 354, column: 32, scope: !4153, inlinedAt: !4091)
!4153 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 354, column: 6)
!4154 = !DILocation(line: 354, column: 37, scope: !4153, inlinedAt: !4091)
!4155 = !DILocation(line: 354, column: 42, scope: !4153, inlinedAt: !4091)
!4156 = !DILocation(line: 354, column: 45, scope: !4153, inlinedAt: !4091)
!4157 = !DILocation(line: 354, column: 50, scope: !4153, inlinedAt: !4091)
!4158 = !DILocation(line: 354, column: 6, scope: !4087, inlinedAt: !4091)
!4159 = !DILocation(line: 355, column: 3, scope: !4153, inlinedAt: !4091)
!4160 = !DILocation(line: 356, column: 32, scope: !4161, inlinedAt: !4091)
!4161 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 356, column: 6)
!4162 = !DILocation(line: 356, column: 37, scope: !4161, inlinedAt: !4091)
!4163 = !DILocation(line: 356, column: 43, scope: !4161, inlinedAt: !4091)
!4164 = !DILocation(line: 356, column: 46, scope: !4161, inlinedAt: !4091)
!4165 = !DILocation(line: 356, column: 51, scope: !4161, inlinedAt: !4091)
!4166 = !DILocation(line: 356, column: 6, scope: !4087, inlinedAt: !4091)
!4167 = !DILocation(line: 357, column: 3, scope: !4161, inlinedAt: !4091)
!4168 = !DILocation(line: 358, column: 6, scope: !4169, inlinedAt: !4091)
!4169 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 358, column: 6)
!4170 = !DILocation(line: 358, column: 11, scope: !4169, inlinedAt: !4091)
!4171 = !DILocation(line: 358, column: 6, scope: !4087, inlinedAt: !4091)
!4172 = !DILocation(line: 358, column: 26, scope: !4169, inlinedAt: !4091)
!4173 = !DILocation(line: 359, column: 6, scope: !4174, inlinedAt: !4091)
!4174 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 359, column: 6)
!4175 = !DILocation(line: 359, column: 11, scope: !4174, inlinedAt: !4091)
!4176 = !DILocation(line: 359, column: 6, scope: !4087, inlinedAt: !4091)
!4177 = !DILocation(line: 359, column: 26, scope: !4174, inlinedAt: !4091)
!4178 = !DILocation(line: 360, column: 6, scope: !4179, inlinedAt: !4091)
!4179 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 360, column: 6)
!4180 = !DILocation(line: 360, column: 11, scope: !4179, inlinedAt: !4091)
!4181 = !DILocation(line: 360, column: 6, scope: !4087, inlinedAt: !4091)
!4182 = !DILocation(line: 360, column: 26, scope: !4179, inlinedAt: !4091)
!4183 = !DILocation(line: 361, column: 6, scope: !4184, inlinedAt: !4091)
!4184 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 361, column: 6)
!4185 = !DILocation(line: 361, column: 11, scope: !4184, inlinedAt: !4091)
!4186 = !DILocation(line: 361, column: 6, scope: !4087, inlinedAt: !4091)
!4187 = !DILocation(line: 361, column: 26, scope: !4184, inlinedAt: !4091)
!4188 = !DILocation(line: 362, column: 6, scope: !4189, inlinedAt: !4091)
!4189 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 362, column: 6)
!4190 = !DILocation(line: 362, column: 11, scope: !4189, inlinedAt: !4091)
!4191 = !DILocation(line: 362, column: 6, scope: !4087, inlinedAt: !4091)
!4192 = !DILocation(line: 362, column: 26, scope: !4189, inlinedAt: !4091)
!4193 = !DILocation(line: 363, column: 6, scope: !4194, inlinedAt: !4091)
!4194 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 363, column: 6)
!4195 = !DILocation(line: 363, column: 11, scope: !4194, inlinedAt: !4091)
!4196 = !DILocation(line: 363, column: 6, scope: !4087, inlinedAt: !4091)
!4197 = !DILocation(line: 363, column: 26, scope: !4194, inlinedAt: !4091)
!4198 = !DILocation(line: 364, column: 6, scope: !4199, inlinedAt: !4091)
!4199 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 364, column: 6)
!4200 = !DILocation(line: 364, column: 11, scope: !4199, inlinedAt: !4091)
!4201 = !DILocation(line: 364, column: 6, scope: !4087, inlinedAt: !4091)
!4202 = !DILocation(line: 364, column: 26, scope: !4199, inlinedAt: !4091)
!4203 = !DILocation(line: 365, column: 6, scope: !4204, inlinedAt: !4091)
!4204 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 365, column: 6)
!4205 = !DILocation(line: 365, column: 11, scope: !4204, inlinedAt: !4091)
!4206 = !DILocation(line: 365, column: 6, scope: !4087, inlinedAt: !4091)
!4207 = !DILocation(line: 365, column: 26, scope: !4204, inlinedAt: !4091)
!4208 = !DILocation(line: 366, column: 6, scope: !4209, inlinedAt: !4091)
!4209 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 366, column: 6)
!4210 = !DILocation(line: 366, column: 11, scope: !4209, inlinedAt: !4091)
!4211 = !DILocation(line: 366, column: 6, scope: !4087, inlinedAt: !4091)
!4212 = !DILocation(line: 366, column: 26, scope: !4209, inlinedAt: !4091)
!4213 = !DILocation(line: 367, column: 6, scope: !4214, inlinedAt: !4091)
!4214 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 367, column: 6)
!4215 = !DILocation(line: 367, column: 11, scope: !4214, inlinedAt: !4091)
!4216 = !DILocation(line: 367, column: 6, scope: !4087, inlinedAt: !4091)
!4217 = !DILocation(line: 367, column: 26, scope: !4214, inlinedAt: !4091)
!4218 = !DILocation(line: 368, column: 6, scope: !4219, inlinedAt: !4091)
!4219 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 368, column: 6)
!4220 = !DILocation(line: 368, column: 11, scope: !4219, inlinedAt: !4091)
!4221 = !DILocation(line: 368, column: 6, scope: !4087, inlinedAt: !4091)
!4222 = !DILocation(line: 368, column: 26, scope: !4219, inlinedAt: !4091)
!4223 = !DILocation(line: 369, column: 6, scope: !4224, inlinedAt: !4091)
!4224 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 369, column: 6)
!4225 = !DILocation(line: 369, column: 11, scope: !4224, inlinedAt: !4091)
!4226 = !DILocation(line: 369, column: 6, scope: !4087, inlinedAt: !4091)
!4227 = !DILocation(line: 369, column: 26, scope: !4224, inlinedAt: !4091)
!4228 = !DILocation(line: 370, column: 6, scope: !4229, inlinedAt: !4091)
!4229 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 370, column: 6)
!4230 = !DILocation(line: 370, column: 11, scope: !4229, inlinedAt: !4091)
!4231 = !DILocation(line: 370, column: 6, scope: !4087, inlinedAt: !4091)
!4232 = !DILocation(line: 370, column: 26, scope: !4229, inlinedAt: !4091)
!4233 = !DILocation(line: 371, column: 6, scope: !4234, inlinedAt: !4091)
!4234 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 371, column: 6)
!4235 = !DILocation(line: 371, column: 11, scope: !4234, inlinedAt: !4091)
!4236 = !DILocation(line: 371, column: 6, scope: !4087, inlinedAt: !4091)
!4237 = !DILocation(line: 371, column: 26, scope: !4234, inlinedAt: !4091)
!4238 = !DILocation(line: 372, column: 6, scope: !4239, inlinedAt: !4091)
!4239 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 372, column: 6)
!4240 = !DILocation(line: 372, column: 11, scope: !4239, inlinedAt: !4091)
!4241 = !DILocation(line: 372, column: 6, scope: !4087, inlinedAt: !4091)
!4242 = !DILocation(line: 372, column: 26, scope: !4239, inlinedAt: !4091)
!4243 = !DILocation(line: 373, column: 6, scope: !4244, inlinedAt: !4091)
!4244 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 373, column: 6)
!4245 = !DILocation(line: 373, column: 11, scope: !4244, inlinedAt: !4091)
!4246 = !DILocation(line: 373, column: 6, scope: !4087, inlinedAt: !4091)
!4247 = !DILocation(line: 373, column: 26, scope: !4244, inlinedAt: !4091)
!4248 = !DILocation(line: 374, column: 6, scope: !4249, inlinedAt: !4091)
!4249 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 374, column: 6)
!4250 = !DILocation(line: 374, column: 11, scope: !4249, inlinedAt: !4091)
!4251 = !DILocation(line: 374, column: 6, scope: !4087, inlinedAt: !4091)
!4252 = !DILocation(line: 374, column: 26, scope: !4249, inlinedAt: !4091)
!4253 = !DILocation(line: 375, column: 6, scope: !4254, inlinedAt: !4091)
!4254 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 375, column: 6)
!4255 = !DILocation(line: 375, column: 11, scope: !4254, inlinedAt: !4091)
!4256 = !DILocation(line: 375, column: 6, scope: !4087, inlinedAt: !4091)
!4257 = !DILocation(line: 375, column: 27, scope: !4254, inlinedAt: !4091)
!4258 = !DILocation(line: 376, column: 6, scope: !4259, inlinedAt: !4091)
!4259 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 376, column: 6)
!4260 = !DILocation(line: 376, column: 11, scope: !4259, inlinedAt: !4091)
!4261 = !DILocation(line: 376, column: 6, scope: !4087, inlinedAt: !4091)
!4262 = !DILocation(line: 376, column: 32, scope: !4259, inlinedAt: !4091)
!4263 = !DILocation(line: 377, column: 6, scope: !4264, inlinedAt: !4091)
!4264 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 377, column: 6)
!4265 = !DILocation(line: 377, column: 11, scope: !4264, inlinedAt: !4091)
!4266 = !DILocation(line: 377, column: 6, scope: !4087, inlinedAt: !4091)
!4267 = !DILocation(line: 377, column: 32, scope: !4264, inlinedAt: !4091)
!4268 = !DILocation(line: 378, column: 6, scope: !4269, inlinedAt: !4091)
!4269 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 378, column: 6)
!4270 = !DILocation(line: 378, column: 11, scope: !4269, inlinedAt: !4091)
!4271 = !DILocation(line: 378, column: 6, scope: !4087, inlinedAt: !4091)
!4272 = !DILocation(line: 378, column: 32, scope: !4269, inlinedAt: !4091)
!4273 = !DILocation(line: 379, column: 6, scope: !4274, inlinedAt: !4091)
!4274 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 379, column: 6)
!4275 = !DILocation(line: 379, column: 11, scope: !4274, inlinedAt: !4091)
!4276 = !DILocation(line: 379, column: 6, scope: !4087, inlinedAt: !4091)
!4277 = !DILocation(line: 379, column: 33, scope: !4274, inlinedAt: !4091)
!4278 = !DILocation(line: 380, column: 6, scope: !4279, inlinedAt: !4091)
!4279 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 380, column: 6)
!4280 = !DILocation(line: 380, column: 11, scope: !4279, inlinedAt: !4091)
!4281 = !DILocation(line: 380, column: 6, scope: !4087, inlinedAt: !4091)
!4282 = !DILocation(line: 380, column: 33, scope: !4279, inlinedAt: !4091)
!4283 = !DILocation(line: 381, column: 6, scope: !4284, inlinedAt: !4091)
!4284 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 381, column: 6)
!4285 = !DILocation(line: 381, column: 11, scope: !4284, inlinedAt: !4091)
!4286 = !DILocation(line: 381, column: 6, scope: !4087, inlinedAt: !4091)
!4287 = !DILocation(line: 381, column: 33, scope: !4284, inlinedAt: !4091)
!4288 = !DILocation(line: 382, column: 2, scope: !4289, inlinedAt: !4091)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !64, line: 382, column: 2)
!4290 = distinct !DILexicalBlock(scope: !4087, file: !64, line: 382, column: 2)
!4291 = !{i32 -2143409859, i32 -2143409830, i32 -2143409784, i32 -2143409726, i32 -2143409672, i32 -2143409618, i32 -2143409563, i32 -2143409532}
!4292 = !DILocation(line: 382, column: 2, scope: !4293, inlinedAt: !4091)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !64, line: 382, column: 2)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !64, line: 382, column: 2)
!4295 = !{i32 -2143409089, i32 -2143409082, i32 -2143409028, i32 -2143408997, i32 -2143408967}
!4296 = !DILocation(line: 382, column: 2, scope: !4294, inlinedAt: !4091)
!4297 = !DILocation(line: 386, column: 1, scope: !4087, inlinedAt: !4091)
!4298 = !DILocation(line: 547, column: 9, scope: !4070, inlinedAt: !4073)
!4299 = !DILocation(line: 549, column: 8, scope: !4300, inlinedAt: !4073)
!4300 = distinct !DILexicalBlock(scope: !4070, file: !64, line: 549, column: 7)
!4301 = !DILocation(line: 549, column: 7, scope: !4070, inlinedAt: !4073)
!4302 = !DILocation(line: 550, column: 4, scope: !4300, inlinedAt: !4073)
!4303 = !DILocation(line: 553, column: 33, scope: !4070, inlinedAt: !4073)
!4304 = !DILocation(line: 325, column: 6, scope: !4305, inlinedAt: !4085)
!4305 = distinct !DILexicalBlock(scope: !4081, file: !64, line: 325, column: 6)
!4306 = !DILocation(line: 325, column: 6, scope: !4081, inlinedAt: !4085)
!4307 = !DILocation(line: 326, column: 3, scope: !4305, inlinedAt: !4085)
!4308 = !DILocation(line: 332, column: 9, scope: !4081, inlinedAt: !4085)
!4309 = !DILocation(line: 332, column: 15, scope: !4081, inlinedAt: !4085)
!4310 = !DILocation(line: 332, column: 2, scope: !4081, inlinedAt: !4085)
!4311 = !DILocation(line: 336, column: 1, scope: !4081, inlinedAt: !4085)
!4312 = !DILocation(line: 553, column: 5, scope: !4070, inlinedAt: !4073)
!4313 = !DILocation(line: 553, column: 41, scope: !4070, inlinedAt: !4073)
!4314 = !DILocation(line: 554, column: 5, scope: !4070, inlinedAt: !4073)
!4315 = !DILocation(line: 554, column: 12, scope: !4070, inlinedAt: !4073)
!4316 = !DILocation(line: 448, column: 31, scope: !4065, inlinedAt: !4069)
!4317 = !DILocation(line: 448, column: 34, scope: !4065, inlinedAt: !4069)
!4318 = !DILocation(line: 448, column: 14, scope: !4065, inlinedAt: !4069)
!4319 = !DILocation(line: 450, column: 22, scope: !4065, inlinedAt: !4069)
!4320 = !DILocation(line: 450, column: 25, scope: !4065, inlinedAt: !4069)
!4321 = !DILocation(line: 450, column: 30, scope: !4065, inlinedAt: !4069)
!4322 = !DILocation(line: 450, column: 36, scope: !4065, inlinedAt: !4069)
!4323 = !DILocation(line: 450, column: 8, scope: !4065, inlinedAt: !4069)
!4324 = !DILocation(line: 450, column: 6, scope: !4065, inlinedAt: !4069)
!4325 = !DILocation(line: 451, column: 9, scope: !4065, inlinedAt: !4069)
!4326 = !DILocation(line: 552, column: 3, scope: !4070, inlinedAt: !4073)
!4327 = !DILocation(line: 557, column: 19, scope: !4072, inlinedAt: !4073)
!4328 = !DILocation(line: 557, column: 25, scope: !4072, inlinedAt: !4073)
!4329 = !DILocation(line: 557, column: 9, scope: !4072, inlinedAt: !4073)
!4330 = !DILocation(line: 557, column: 2, scope: !4072, inlinedAt: !4073)
!4331 = !DILocation(line: 558, column: 1, scope: !4072, inlinedAt: !4073)
!4332 = !DILocation(line: 664, column: 2, scope: !4061)
!4333 = distinct !DISubprogram(name: "__ab_c_size", scope: !4334, file: !4334, line: 301, type: !4335, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4334 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!216, !216, !216, !216}
!4337 = !DILocalVariable(name: "a", arg: 1, scope: !4333, file: !4334, line: 301, type: !216)
!4338 = !DILocation(line: 301, column: 54, scope: !4333)
!4339 = !DILocalVariable(name: "b", arg: 2, scope: !4333, file: !4334, line: 301, type: !216)
!4340 = !DILocation(line: 301, column: 64, scope: !4333)
!4341 = !DILocalVariable(name: "c", arg: 3, scope: !4333, file: !4334, line: 301, type: !216)
!4342 = !DILocation(line: 301, column: 74, scope: !4333)
!4343 = !DILocalVariable(name: "bytes", scope: !4333, file: !4334, line: 303, type: !216)
!4344 = !DILocation(line: 303, column: 9, scope: !4333)
!4345 = !DILocalVariable(name: "__a", scope: !4346, file: !4334, line: 305, type: !216)
!4346 = distinct !DILexicalBlock(scope: !4347, file: !4334, line: 305, column: 6)
!4347 = distinct !DILexicalBlock(scope: !4333, file: !4334, line: 305, column: 6)
!4348 = !DILocation(line: 305, column: 6, scope: !4346)
!4349 = !DILocalVariable(name: "__b", scope: !4346, file: !4334, line: 305, type: !216)
!4350 = !DILocalVariable(name: "__d", scope: !4346, file: !4334, line: 305, type: !4351)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!4352 = !DILocation(line: 305, column: 6, scope: !4347)
!4353 = !DILocation(line: 305, column: 6, scope: !4333)
!4354 = !DILocation(line: 306, column: 3, scope: !4347)
!4355 = !DILocalVariable(name: "__a", scope: !4356, file: !4334, line: 307, type: !216)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !4334, line: 307, column: 6)
!4357 = distinct !DILexicalBlock(scope: !4333, file: !4334, line: 307, column: 6)
!4358 = !DILocation(line: 307, column: 6, scope: !4356)
!4359 = !DILocalVariable(name: "__b", scope: !4356, file: !4334, line: 307, type: !216)
!4360 = !DILocalVariable(name: "__d", scope: !4356, file: !4334, line: 307, type: !4351)
!4361 = !DILocation(line: 307, column: 6, scope: !4357)
!4362 = !DILocation(line: 307, column: 6, scope: !4333)
!4363 = !DILocation(line: 308, column: 3, scope: !4357)
!4364 = !DILocation(line: 310, column: 9, scope: !4333)
!4365 = !DILocation(line: 310, column: 2, scope: !4333)
!4366 = !DILocation(line: 311, column: 1, scope: !4333)
!4367 = distinct !DISubprogram(name: "devm_reset_control_array_get", scope: !3, file: !3, line: 923, type: !4368, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!74, !108, !1010, !1010}
!4370 = !DILocalVariable(name: "dev", arg: 1, scope: !4367, file: !3, line: 923, type: !108)
!4371 = !DILocation(line: 923, column: 45, scope: !4367)
!4372 = !DILocalVariable(name: "shared", arg: 2, scope: !4367, file: !3, line: 923, type: !1010)
!4373 = !DILocation(line: 923, column: 55, scope: !4367)
!4374 = !DILocalVariable(name: "optional", arg: 3, scope: !4367, file: !3, line: 923, type: !1010)
!4375 = !DILocation(line: 923, column: 68, scope: !4367)
!4376 = !DILocalVariable(name: "ptr", scope: !4367, file: !3, line: 925, type: !2117)
!4377 = !DILocation(line: 925, column: 25, scope: !4367)
!4378 = !DILocalVariable(name: "rstc", scope: !4367, file: !3, line: 925, type: !74)
!4379 = !DILocation(line: 925, column: 31, scope: !4367)
!4380 = !DILocation(line: 927, column: 8, scope: !4367)
!4381 = !DILocation(line: 927, column: 6, scope: !4367)
!4382 = !DILocation(line: 929, column: 7, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 929, column: 6)
!4384 = !DILocation(line: 929, column: 6, scope: !4367)
!4385 = !DILocation(line: 930, column: 10, scope: !4383)
!4386 = !DILocation(line: 930, column: 3, scope: !4383)
!4387 = !DILocation(line: 932, column: 36, scope: !4367)
!4388 = !DILocation(line: 932, column: 41, scope: !4367)
!4389 = !DILocation(line: 932, column: 50, scope: !4367)
!4390 = !DILocation(line: 932, column: 58, scope: !4367)
!4391 = !DILocation(line: 932, column: 9, scope: !4367)
!4392 = !DILocation(line: 932, column: 7, scope: !4367)
!4393 = !DILocation(line: 933, column: 21, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 933, column: 6)
!4395 = !DILocation(line: 933, column: 6, scope: !4394)
!4396 = !DILocation(line: 933, column: 6, scope: !4367)
!4397 = !DILocation(line: 934, column: 15, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 933, column: 28)
!4399 = !DILocation(line: 934, column: 3, scope: !4398)
!4400 = !DILocation(line: 935, column: 10, scope: !4398)
!4401 = !DILocation(line: 935, column: 3, scope: !4398)
!4402 = !DILocation(line: 938, column: 9, scope: !4367)
!4403 = !DILocation(line: 938, column: 3, scope: !4367)
!4404 = !DILocation(line: 938, column: 7, scope: !4367)
!4405 = !DILocation(line: 939, column: 13, scope: !4367)
!4406 = !DILocation(line: 939, column: 18, scope: !4367)
!4407 = !DILocation(line: 939, column: 2, scope: !4367)
!4408 = !DILocation(line: 941, column: 9, scope: !4367)
!4409 = !DILocation(line: 941, column: 2, scope: !4367)
!4410 = !DILocation(line: 942, column: 1, scope: !4367)
!4411 = distinct !DISubprogram(name: "reset_control_get_count", scope: !3, file: !3, line: 978, type: !1629, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4412 = !DILocalVariable(name: "dev", arg: 1, scope: !4411, file: !3, line: 978, type: !108)
!4413 = !DILocation(line: 978, column: 44, scope: !4411)
!4414 = !DILocation(line: 980, column: 6, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 980, column: 6)
!4416 = !DILocation(line: 980, column: 11, scope: !4415)
!4417 = !DILocation(line: 980, column: 6, scope: !4411)
!4418 = !DILocation(line: 981, column: 37, scope: !4415)
!4419 = !DILocation(line: 981, column: 42, scope: !4415)
!4420 = !DILocation(line: 981, column: 10, scope: !4415)
!4421 = !DILocation(line: 981, column: 3, scope: !4415)
!4422 = !DILocation(line: 983, column: 45, scope: !4411)
!4423 = !DILocation(line: 983, column: 9, scope: !4411)
!4424 = !DILocation(line: 983, column: 2, scope: !4411)
!4425 = !DILocation(line: 984, column: 1, scope: !4411)
!4426 = distinct !DISubprogram(name: "reset_control_get_count_from_lookup", scope: !3, file: !3, line: 945, type: !1629, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4427 = !DILocalVariable(name: "dev", arg: 1, scope: !4426, file: !3, line: 945, type: !108)
!4428 = !DILocation(line: 945, column: 63, scope: !4426)
!4429 = !DILocalVariable(name: "lookup", scope: !4426, file: !3, line: 947, type: !2108)
!4430 = !DILocation(line: 947, column: 37, scope: !4426)
!4431 = !DILocalVariable(name: "dev_id", scope: !4426, file: !3, line: 948, type: !116)
!4432 = !DILocation(line: 948, column: 14, scope: !4426)
!4433 = !DILocalVariable(name: "count", scope: !4426, file: !3, line: 949, type: !91)
!4434 = !DILocation(line: 949, column: 6, scope: !4426)
!4435 = !DILocation(line: 951, column: 7, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 951, column: 6)
!4437 = !DILocation(line: 951, column: 6, scope: !4426)
!4438 = !DILocation(line: 952, column: 3, scope: !4436)
!4439 = !DILocation(line: 954, column: 20, scope: !4426)
!4440 = !DILocation(line: 954, column: 11, scope: !4426)
!4441 = !DILocation(line: 954, column: 9, scope: !4426)
!4442 = !DILocation(line: 955, column: 2, scope: !4426)
!4443 = !DILocalVariable(name: "__mptr", scope: !4444, file: !3, line: 957, type: !73)
!4444 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 957, column: 2)
!4445 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 957, column: 2)
!4446 = !DILocation(line: 957, column: 2, scope: !4444)
!4447 = !DILocation(line: 957, column: 2, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 957, column: 2)
!4449 = !DILocation(line: 957, column: 2, scope: !4445)
!4450 = !DILocation(line: 957, column: 2, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 957, column: 2)
!4452 = !DILocation(line: 958, column: 15, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 958, column: 7)
!4454 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 957, column: 56)
!4455 = !DILocation(line: 958, column: 23, scope: !4453)
!4456 = !DILocation(line: 958, column: 31, scope: !4453)
!4457 = !DILocation(line: 958, column: 8, scope: !4453)
!4458 = !DILocation(line: 958, column: 7, scope: !4454)
!4459 = !DILocation(line: 959, column: 9, scope: !4453)
!4460 = !DILocation(line: 959, column: 4, scope: !4453)
!4461 = !DILocation(line: 960, column: 2, scope: !4454)
!4462 = !DILocalVariable(name: "__mptr", scope: !4463, file: !3, line: 957, type: !73)
!4463 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 957, column: 2)
!4464 = !DILocation(line: 957, column: 2, scope: !4463)
!4465 = !DILocation(line: 957, column: 2, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 957, column: 2)
!4467 = distinct !{!4467, !4449, !4468}
!4468 = !DILocation(line: 960, column: 2, scope: !4445)
!4469 = !DILocation(line: 962, column: 2, scope: !4426)
!4470 = !DILocation(line: 964, column: 6, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 964, column: 6)
!4472 = !DILocation(line: 964, column: 12, scope: !4471)
!4473 = !DILocation(line: 964, column: 6, scope: !4426)
!4474 = !DILocation(line: 965, column: 9, scope: !4471)
!4475 = !DILocation(line: 965, column: 3, scope: !4471)
!4476 = !DILocation(line: 967, column: 9, scope: !4426)
!4477 = !DILocation(line: 967, column: 2, scope: !4426)
!4478 = !DILocation(line: 968, column: 1, scope: !4426)
!4479 = distinct !DISubprogram(name: "__list_add", scope: !2174, file: !2174, line: 63, type: !4480, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !104, !104, !104}
!4482 = !DILocalVariable(name: "new", arg: 1, scope: !4479, file: !2174, line: 63, type: !104)
!4483 = !DILocation(line: 63, column: 49, scope: !4479)
!4484 = !DILocalVariable(name: "prev", arg: 2, scope: !4479, file: !2174, line: 64, type: !104)
!4485 = !DILocation(line: 64, column: 28, scope: !4479)
!4486 = !DILocalVariable(name: "next", arg: 3, scope: !4479, file: !2174, line: 65, type: !104)
!4487 = !DILocation(line: 65, column: 28, scope: !4479)
!4488 = !DILocation(line: 67, column: 24, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4479, file: !2174, line: 67, column: 6)
!4490 = !DILocation(line: 67, column: 29, scope: !4489)
!4491 = !DILocation(line: 67, column: 35, scope: !4489)
!4492 = !DILocation(line: 67, column: 7, scope: !4489)
!4493 = !DILocation(line: 67, column: 6, scope: !4479)
!4494 = !DILocation(line: 68, column: 3, scope: !4489)
!4495 = !DILocation(line: 70, column: 15, scope: !4479)
!4496 = !DILocation(line: 70, column: 2, scope: !4479)
!4497 = !DILocation(line: 70, column: 8, scope: !4479)
!4498 = !DILocation(line: 70, column: 13, scope: !4479)
!4499 = !DILocation(line: 71, column: 14, scope: !4479)
!4500 = !DILocation(line: 71, column: 2, scope: !4479)
!4501 = !DILocation(line: 71, column: 7, scope: !4479)
!4502 = !DILocation(line: 71, column: 12, scope: !4479)
!4503 = !DILocation(line: 72, column: 14, scope: !4479)
!4504 = !DILocation(line: 72, column: 2, scope: !4479)
!4505 = !DILocation(line: 72, column: 7, scope: !4479)
!4506 = !DILocation(line: 72, column: 12, scope: !4479)
!4507 = !DILocation(line: 73, column: 2, scope: !4479)
!4508 = !DILocation(line: 73, column: 2, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4479, file: !2174, line: 73, column: 2)
!4510 = !DILocation(line: 73, column: 2, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4509, file: !2174, line: 73, column: 2)
!4512 = !DILocation(line: 73, column: 2, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !2174, line: 73, column: 2)
!4514 = !DILocation(line: 74, column: 1, scope: !4479)
!4515 = distinct !DISubprogram(name: "__list_add_valid", scope: !2174, file: !2174, line: 45, type: !4516, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!1010, !104, !104, !104}
!4518 = !DILocalVariable(name: "new", arg: 1, scope: !4515, file: !2174, line: 45, type: !104)
!4519 = !DILocation(line: 45, column: 55, scope: !4515)
!4520 = !DILocalVariable(name: "prev", arg: 2, scope: !4515, file: !2174, line: 46, type: !104)
!4521 = !DILocation(line: 46, column: 23, scope: !4515)
!4522 = !DILocalVariable(name: "next", arg: 3, scope: !4515, file: !2174, line: 47, type: !104)
!4523 = !DILocation(line: 47, column: 23, scope: !4515)
!4524 = !DILocation(line: 49, column: 2, scope: !4515)
!4525 = distinct !DISubprogram(name: "__list_del_entry", scope: !2174, file: !2174, line: 130, type: !2175, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4526 = !DILocalVariable(name: "entry", arg: 1, scope: !4525, file: !2174, line: 130, type: !104)
!4527 = !DILocation(line: 130, column: 55, scope: !4525)
!4528 = !DILocation(line: 132, column: 30, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !2174, line: 132, column: 6)
!4530 = !DILocation(line: 132, column: 7, scope: !4529)
!4531 = !DILocation(line: 132, column: 6, scope: !4525)
!4532 = !DILocation(line: 133, column: 3, scope: !4529)
!4533 = !DILocation(line: 135, column: 13, scope: !4525)
!4534 = !DILocation(line: 135, column: 20, scope: !4525)
!4535 = !DILocation(line: 135, column: 26, scope: !4525)
!4536 = !DILocation(line: 135, column: 33, scope: !4525)
!4537 = !DILocation(line: 135, column: 2, scope: !4525)
!4538 = !DILocation(line: 136, column: 1, scope: !4525)
!4539 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2174, file: !2174, line: 51, type: !4540, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!1010, !104}
!4542 = !DILocalVariable(name: "entry", arg: 1, scope: !4539, file: !2174, line: 51, type: !104)
!4543 = !DILocation(line: 51, column: 61, scope: !4539)
!4544 = !DILocation(line: 53, column: 2, scope: !4539)
!4545 = distinct !DISubprogram(name: "__list_del", scope: !2174, file: !2174, line: 110, type: !2192, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4546 = !DILocalVariable(name: "prev", arg: 1, scope: !4545, file: !2174, line: 110, type: !104)
!4547 = !DILocation(line: 110, column: 50, scope: !4545)
!4548 = !DILocalVariable(name: "next", arg: 2, scope: !4545, file: !2174, line: 110, type: !104)
!4549 = !DILocation(line: 110, column: 75, scope: !4545)
!4550 = !DILocation(line: 112, column: 15, scope: !4545)
!4551 = !DILocation(line: 112, column: 2, scope: !4545)
!4552 = !DILocation(line: 112, column: 8, scope: !4545)
!4553 = !DILocation(line: 112, column: 13, scope: !4545)
!4554 = !DILocation(line: 113, column: 2, scope: !4545)
!4555 = !DILocation(line: 113, column: 2, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4545, file: !2174, line: 113, column: 2)
!4557 = !DILocation(line: 113, column: 2, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4556, file: !2174, line: 113, column: 2)
!4559 = !DILocation(line: 113, column: 2, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4556, file: !2174, line: 113, column: 2)
!4561 = !DILocation(line: 114, column: 1, scope: !4545)
!4562 = distinct !DISubprogram(name: "kasan_check_read", scope: !4563, file: !4563, line: 34, type: !4564, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4563 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!1010, !2382, !7}
!4566 = !DILocalVariable(name: "p", arg: 1, scope: !4562, file: !4563, line: 34, type: !2382)
!4567 = !DILocation(line: 34, column: 58, scope: !4562)
!4568 = !DILocalVariable(name: "size", arg: 2, scope: !4562, file: !4563, line: 34, type: !7)
!4569 = !DILocation(line: 34, column: 74, scope: !4562)
!4570 = !DILocation(line: 36, column: 2, scope: !4562)
!4571 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4572, file: !4572, line: 178, type: !4573, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4572 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4573 = !DISubroutineType(types: !4574)
!4574 = !{null, !2382, !216, !91}
!4575 = !DILocalVariable(name: "ptr", arg: 1, scope: !4571, file: !4572, line: 178, type: !2382)
!4576 = !DILocation(line: 178, column: 60, scope: !4571)
!4577 = !DILocalVariable(name: "size", arg: 2, scope: !4571, file: !4572, line: 178, type: !216)
!4578 = !DILocation(line: 178, column: 72, scope: !4571)
!4579 = !DILocalVariable(name: "type", arg: 3, scope: !4571, file: !4572, line: 179, type: !91)
!4580 = !DILocation(line: 179, column: 15, scope: !4571)
!4581 = !DILocation(line: 179, column: 23, scope: !4571)
!4582 = distinct !DISubprogram(name: "kasan_check_write", scope: !4563, file: !4563, line: 38, type: !4564, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4583 = !DILocalVariable(name: "p", arg: 1, scope: !4582, file: !4563, line: 38, type: !2382)
!4584 = !DILocation(line: 38, column: 59, scope: !4582)
!4585 = !DILocalVariable(name: "size", arg: 2, scope: !4582, file: !4563, line: 38, type: !7)
!4586 = !DILocation(line: 38, column: 75, scope: !4582)
!4587 = !DILocation(line: 40, column: 2, scope: !4582)
!4588 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !4589, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!116, !1942}
!4591 = !DILocalVariable(name: "dev", arg: 1, scope: !4588, file: !30, line: 609, type: !1942)
!4592 = !DILocation(line: 609, column: 57, scope: !4588)
!4593 = !DILocation(line: 612, column: 6, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4588, file: !30, line: 612, column: 6)
!4595 = !DILocation(line: 612, column: 11, scope: !4594)
!4596 = !DILocation(line: 612, column: 6, scope: !4588)
!4597 = !DILocation(line: 613, column: 10, scope: !4594)
!4598 = !DILocation(line: 613, column: 15, scope: !4594)
!4599 = !DILocation(line: 613, column: 3, scope: !4594)
!4600 = !DILocation(line: 615, column: 23, scope: !4588)
!4601 = !DILocation(line: 615, column: 28, scope: !4588)
!4602 = !DILocation(line: 615, column: 9, scope: !4588)
!4603 = !DILocation(line: 615, column: 2, scope: !4588)
!4604 = !DILocation(line: 616, column: 1, scope: !4588)
!4605 = distinct !DISubprogram(name: "kobject_name", scope: !113, file: !113, line: 88, type: !4606, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!116, !4608}
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4610 = !DILocalVariable(name: "kobj", arg: 1, scope: !4605, file: !113, line: 88, type: !4608)
!4611 = !DILocation(line: 88, column: 62, scope: !4605)
!4612 = !DILocation(line: 90, column: 9, scope: !4605)
!4613 = !DILocation(line: 90, column: 15, scope: !4605)
!4614 = !DILocation(line: 90, column: 2, scope: !4605)
!4615 = distinct !DISubprogram(name: "kref_get", scope: !1589, file: !1589, line: 43, type: !4616, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!4619 = !DILocalVariable(name: "kref", arg: 1, scope: !4615, file: !1589, line: 43, type: !4618)
!4620 = !DILocation(line: 43, column: 42, scope: !4615)
!4621 = !DILocation(line: 45, column: 16, scope: !4615)
!4622 = !DILocation(line: 45, column: 22, scope: !4615)
!4623 = !DILocation(line: 45, column: 2, scope: !4615)
!4624 = !DILocation(line: 46, column: 1, scope: !4615)
!4625 = distinct !DISubprogram(name: "try_module_get", scope: !4626, file: !4626, line: 751, type: !4627, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4626 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!1010, !97}
!4629 = !DILocalVariable(name: "module", arg: 1, scope: !4625, file: !4626, line: 751, type: !97)
!4630 = !DILocation(line: 751, column: 50, scope: !4625)
!4631 = !DILocation(line: 753, column: 2, scope: !4625)
!4632 = distinct !DISubprogram(name: "kref_init", scope: !1589, file: !1589, line: 29, type: !4616, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4633 = !DILocalVariable(name: "kref", arg: 1, scope: !4632, file: !1589, line: 29, type: !4618)
!4634 = !DILocation(line: 29, column: 43, scope: !4632)
!4635 = !DILocation(line: 31, column: 16, scope: !4632)
!4636 = !DILocation(line: 31, column: 22, scope: !4632)
!4637 = !DILocation(line: 31, column: 2, scope: !4632)
!4638 = !DILocation(line: 32, column: 1, scope: !4632)
!4639 = distinct !DISubprogram(name: "refcount_inc", scope: !56, file: !56, line: 265, type: !4640, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!4643 = !DILocalVariable(name: "r", arg: 1, scope: !4639, file: !56, line: 265, type: !4642)
!4644 = !DILocation(line: 265, column: 45, scope: !4639)
!4645 = !DILocation(line: 267, column: 17, scope: !4639)
!4646 = !DILocation(line: 267, column: 2, scope: !4639)
!4647 = !DILocation(line: 268, column: 1, scope: !4639)
!4648 = distinct !DISubprogram(name: "__refcount_inc", scope: !56, file: !56, line: 248, type: !4649, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{null, !4642, !757}
!4651 = !DILocalVariable(name: "r", arg: 1, scope: !4648, file: !56, line: 248, type: !4642)
!4652 = !DILocation(line: 248, column: 47, scope: !4648)
!4653 = !DILocalVariable(name: "oldp", arg: 2, scope: !4648, file: !56, line: 248, type: !757)
!4654 = !DILocation(line: 248, column: 55, scope: !4648)
!4655 = !DILocation(line: 250, column: 20, scope: !4648)
!4656 = !DILocation(line: 250, column: 23, scope: !4648)
!4657 = !DILocation(line: 250, column: 2, scope: !4648)
!4658 = !DILocation(line: 251, column: 1, scope: !4648)
!4659 = distinct !DISubprogram(name: "__refcount_add", scope: !56, file: !56, line: 191, type: !4660, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !91, !4642, !757}
!4662 = !DILocalVariable(name: "i", arg: 1, scope: !4663, file: !2353, line: 182, type: !91)
!4663 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2353, file: !2353, line: 182, type: !2354, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4664 = !DILocation(line: 182, column: 54, scope: !4663, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 143, column: 9, scope: !4666, inlinedAt: !4667)
!4666 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2365, file: !2365, line: 140, type: !2354, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4667 = distinct !DILocation(line: 193, column: 12, scope: !4659)
!4668 = !DILocalVariable(name: "v", arg: 2, scope: !4663, file: !2353, line: 182, type: !2356)
!4669 = !DILocation(line: 182, column: 67, scope: !4663, inlinedAt: !4665)
!4670 = !DILocalVariable(name: "__ret", scope: !4671, file: !2353, line: 184, type: !91)
!4671 = distinct !DILexicalBlock(scope: !4663, file: !2353, line: 184, column: 9)
!4672 = !DILocation(line: 184, column: 9, scope: !4671, inlinedAt: !4665)
!4673 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 142, column: 2, scope: !4666, inlinedAt: !4667)
!4675 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !4674)
!4676 = !DILocalVariable(name: "i", arg: 1, scope: !4666, file: !2365, line: 140, type: !91)
!4677 = !DILocation(line: 140, column: 30, scope: !4666, inlinedAt: !4667)
!4678 = !DILocalVariable(name: "v", arg: 2, scope: !4666, file: !2365, line: 140, type: !2356)
!4679 = !DILocation(line: 140, column: 43, scope: !4666, inlinedAt: !4667)
!4680 = !DILocalVariable(name: "i", arg: 1, scope: !4659, file: !56, line: 191, type: !91)
!4681 = !DILocation(line: 191, column: 39, scope: !4659)
!4682 = !DILocalVariable(name: "r", arg: 2, scope: !4659, file: !56, line: 191, type: !4642)
!4683 = !DILocation(line: 191, column: 54, scope: !4659)
!4684 = !DILocalVariable(name: "oldp", arg: 3, scope: !4659, file: !56, line: 191, type: !757)
!4685 = !DILocation(line: 191, column: 62, scope: !4659)
!4686 = !DILocalVariable(name: "old", scope: !4659, file: !56, line: 193, type: !91)
!4687 = !DILocation(line: 193, column: 6, scope: !4659)
!4688 = !DILocation(line: 193, column: 37, scope: !4659)
!4689 = !DILocation(line: 193, column: 41, scope: !4659)
!4690 = !DILocation(line: 193, column: 44, scope: !4659)
!4691 = !DILocation(line: 142, column: 31, scope: !4666, inlinedAt: !4667)
!4692 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !4674)
!4693 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !4674)
!4694 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !4674)
!4695 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !4674)
!4696 = !DILocation(line: 143, column: 39, scope: !4666, inlinedAt: !4667)
!4697 = !DILocation(line: 143, column: 42, scope: !4666, inlinedAt: !4667)
!4698 = !{i32 -2147205735}
!4699 = !DILocation(line: 195, column: 6, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4659, file: !56, line: 195, column: 6)
!4701 = !DILocation(line: 195, column: 6, scope: !4659)
!4702 = !DILocation(line: 196, column: 11, scope: !4700)
!4703 = !DILocation(line: 196, column: 4, scope: !4700)
!4704 = !DILocation(line: 196, column: 9, scope: !4700)
!4705 = !DILocation(line: 196, column: 3, scope: !4700)
!4706 = !DILocation(line: 198, column: 6, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4659, file: !56, line: 198, column: 6)
!4708 = !DILocation(line: 198, column: 6, scope: !4659)
!4709 = !DILocation(line: 199, column: 26, scope: !4707)
!4710 = !DILocation(line: 199, column: 3, scope: !4707)
!4711 = !DILocation(line: 200, column: 11, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4707, file: !56, line: 200, column: 11)
!4713 = !DILocation(line: 200, column: 11, scope: !4707)
!4714 = !DILocation(line: 201, column: 26, scope: !4712)
!4715 = !DILocation(line: 201, column: 3, scope: !4712)
!4716 = !DILocation(line: 202, column: 1, scope: !4659)
!4717 = distinct !DISubprogram(name: "refcount_set", scope: !56, file: !56, line: 134, type: !4718, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !4642, !91}
!4720 = !DILocalVariable(name: "v", arg: 1, scope: !4721, file: !2353, line: 39, type: !2356)
!4721 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2353, file: !2353, line: 39, type: !4722, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !2356, !91}
!4724 = !DILocation(line: 39, column: 55, scope: !4721, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 46, column: 2, scope: !4726, inlinedAt: !4727)
!4726 = distinct !DISubprogram(name: "atomic_set", scope: !2365, file: !2365, line: 43, type: !4722, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4727 = distinct !DILocation(line: 136, column: 2, scope: !4717)
!4728 = !DILocalVariable(name: "i", arg: 2, scope: !4721, file: !2353, line: 39, type: !91)
!4729 = !DILocation(line: 39, column: 62, scope: !4721, inlinedAt: !4725)
!4730 = !DILocalVariable(name: "v", arg: 1, scope: !4731, file: !2379, line: 84, type: !2382)
!4731 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2379, file: !2379, line: 84, type: !2380, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4732 = !DILocation(line: 84, column: 74, scope: !4731, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 45, column: 2, scope: !4726, inlinedAt: !4727)
!4734 = !DILocalVariable(name: "size", arg: 2, scope: !4731, file: !2379, line: 84, type: !216)
!4735 = !DILocation(line: 84, column: 84, scope: !4731, inlinedAt: !4733)
!4736 = !DILocalVariable(name: "v", arg: 1, scope: !4726, file: !2365, line: 43, type: !2356)
!4737 = !DILocation(line: 43, column: 22, scope: !4726, inlinedAt: !4727)
!4738 = !DILocalVariable(name: "i", arg: 2, scope: !4726, file: !2365, line: 43, type: !91)
!4739 = !DILocation(line: 43, column: 29, scope: !4726, inlinedAt: !4727)
!4740 = !DILocalVariable(name: "r", arg: 1, scope: !4717, file: !56, line: 134, type: !4642)
!4741 = !DILocation(line: 134, column: 45, scope: !4717)
!4742 = !DILocalVariable(name: "n", arg: 2, scope: !4717, file: !56, line: 134, type: !91)
!4743 = !DILocation(line: 134, column: 52, scope: !4717)
!4744 = !DILocation(line: 136, column: 14, scope: !4717)
!4745 = !DILocation(line: 136, column: 17, scope: !4717)
!4746 = !DILocation(line: 136, column: 23, scope: !4717)
!4747 = !DILocation(line: 45, column: 26, scope: !4726, inlinedAt: !4727)
!4748 = !DILocation(line: 86, column: 20, scope: !4731, inlinedAt: !4733)
!4749 = !DILocation(line: 86, column: 23, scope: !4731, inlinedAt: !4733)
!4750 = !DILocation(line: 86, column: 2, scope: !4731, inlinedAt: !4733)
!4751 = !DILocation(line: 87, column: 2, scope: !4731, inlinedAt: !4733)
!4752 = !DILocation(line: 46, column: 18, scope: !4726, inlinedAt: !4727)
!4753 = !DILocation(line: 46, column: 21, scope: !4726, inlinedAt: !4727)
!4754 = !DILocation(line: 41, column: 2, scope: !4755, inlinedAt: !4725)
!4755 = distinct !DILexicalBlock(scope: !4721, file: !2353, line: 41, column: 2)
!4756 = !DILocation(line: 137, column: 1, scope: !4717)
!4757 = distinct !DISubprogram(name: "__reset_controller_by_name", scope: !3, file: !3, line: 668, type: !4758, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{!78, !116}
!4760 = !DILocalVariable(name: "name", arg: 1, scope: !4757, file: !3, line: 668, type: !116)
!4761 = !DILocation(line: 668, column: 40, scope: !4757)
!4762 = !DILocalVariable(name: "rcdev", scope: !4757, file: !3, line: 670, type: !78)
!4763 = !DILocation(line: 670, column: 31, scope: !4757)
!4764 = !DILocation(line: 672, column: 2, scope: !4757)
!4765 = !DILocation(line: 672, column: 2, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 672, column: 2)
!4767 = !DILocalVariable(name: "__mptr", scope: !4768, file: !3, line: 674, type: !73)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 674, column: 2)
!4769 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 674, column: 2)
!4770 = !DILocation(line: 674, column: 2, scope: !4768)
!4771 = !DILocation(line: 674, column: 2, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 674, column: 2)
!4773 = !DILocation(line: 674, column: 2, scope: !4769)
!4774 = !DILocation(line: 674, column: 2, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 674, column: 2)
!4776 = !DILocation(line: 675, column: 8, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 675, column: 7)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 674, column: 59)
!4779 = !DILocation(line: 675, column: 15, scope: !4777)
!4780 = !DILocation(line: 675, column: 7, scope: !4778)
!4781 = !DILocation(line: 676, column: 4, scope: !4777)
!4782 = !DILocation(line: 678, column: 15, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 678, column: 7)
!4784 = !DILocation(line: 678, column: 30, scope: !4783)
!4785 = !DILocation(line: 678, column: 37, scope: !4783)
!4786 = !DILocation(line: 678, column: 21, scope: !4783)
!4787 = !DILocation(line: 678, column: 8, scope: !4783)
!4788 = !DILocation(line: 678, column: 7, scope: !4778)
!4789 = !DILocation(line: 679, column: 11, scope: !4783)
!4790 = !DILocation(line: 679, column: 4, scope: !4783)
!4791 = !DILocation(line: 680, column: 2, scope: !4778)
!4792 = !DILocalVariable(name: "__mptr", scope: !4793, file: !3, line: 674, type: !73)
!4793 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 674, column: 2)
!4794 = !DILocation(line: 674, column: 2, scope: !4793)
!4795 = !DILocation(line: 674, column: 2, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 674, column: 2)
!4797 = distinct !{!4797, !4773, !4798}
!4798 = !DILocation(line: 680, column: 2, scope: !4769)
!4799 = !DILocation(line: 682, column: 2, scope: !4757)
!4800 = !DILocation(line: 683, column: 1, scope: !4757)
!4801 = distinct !DISubprogram(name: "kref_put", scope: !1589, file: !1589, line: 62, type: !4802, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!91, !4618, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4805 = !DILocalVariable(name: "kref", arg: 1, scope: !4801, file: !1589, line: 62, type: !4618)
!4806 = !DILocation(line: 62, column: 41, scope: !4801)
!4807 = !DILocalVariable(name: "release", arg: 2, scope: !4801, file: !1589, line: 62, type: !4804)
!4808 = !DILocation(line: 62, column: 54, scope: !4801)
!4809 = !DILocation(line: 64, column: 29, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4801, file: !1589, line: 64, column: 6)
!4811 = !DILocation(line: 64, column: 35, scope: !4810)
!4812 = !DILocation(line: 64, column: 6, scope: !4810)
!4813 = !DILocation(line: 64, column: 6, scope: !4801)
!4814 = !DILocation(line: 65, column: 3, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !1589, line: 64, column: 46)
!4816 = !DILocation(line: 65, column: 11, scope: !4815)
!4817 = !DILocation(line: 66, column: 3, scope: !4815)
!4818 = !DILocation(line: 68, column: 2, scope: !4801)
!4819 = !DILocation(line: 69, column: 1, scope: !4801)
!4820 = distinct !DISubprogram(name: "__reset_control_release", scope: !3, file: !3, line: 582, type: !4616, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4821 = !DILocalVariable(name: "kref", arg: 1, scope: !4820, file: !3, line: 582, type: !4618)
!4822 = !DILocation(line: 582, column: 50, scope: !4820)
!4823 = !DILocalVariable(name: "rstc", scope: !4820, file: !3, line: 584, type: !74)
!4824 = !DILocation(line: 584, column: 24, scope: !4820)
!4825 = !DILocalVariable(name: "__mptr", scope: !4826, file: !3, line: 584, type: !73)
!4826 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 584, column: 31)
!4827 = !DILocation(line: 584, column: 31, scope: !4826)
!4828 = !DILocation(line: 584, column: 31, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 584, column: 31)
!4830 = !DILocation(line: 587, column: 2, scope: !4820)
!4831 = !DILocation(line: 587, column: 2, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 587, column: 2)
!4833 = !DILocation(line: 589, column: 13, scope: !4820)
!4834 = !DILocation(line: 589, column: 19, scope: !4820)
!4835 = !DILocation(line: 589, column: 26, scope: !4820)
!4836 = !DILocation(line: 589, column: 2, scope: !4820)
!4837 = !DILocation(line: 591, column: 12, scope: !4820)
!4838 = !DILocation(line: 591, column: 18, scope: !4820)
!4839 = !DILocation(line: 591, column: 2, scope: !4820)
!4840 = !DILocation(line: 592, column: 8, scope: !4820)
!4841 = !DILocation(line: 592, column: 2, scope: !4820)
!4842 = !DILocation(line: 593, column: 1, scope: !4820)
!4843 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !56, file: !56, line: 331, type: !4844, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!1010, !4642}
!4846 = !DILocalVariable(name: "r", arg: 1, scope: !4843, file: !56, line: 331, type: !4642)
!4847 = !DILocation(line: 331, column: 67, scope: !4843)
!4848 = !DILocation(line: 333, column: 33, scope: !4843)
!4849 = !DILocation(line: 333, column: 9, scope: !4843)
!4850 = !DILocation(line: 333, column: 2, scope: !4843)
!4851 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !56, file: !56, line: 313, type: !4852, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!1010, !4642, !757}
!4854 = !DILocalVariable(name: "r", arg: 1, scope: !4851, file: !56, line: 313, type: !4642)
!4855 = !DILocation(line: 313, column: 69, scope: !4851)
!4856 = !DILocalVariable(name: "oldp", arg: 2, scope: !4851, file: !56, line: 313, type: !757)
!4857 = !DILocation(line: 313, column: 77, scope: !4851)
!4858 = !DILocation(line: 315, column: 36, scope: !4851)
!4859 = !DILocation(line: 315, column: 39, scope: !4851)
!4860 = !DILocation(line: 315, column: 9, scope: !4851)
!4861 = !DILocation(line: 315, column: 2, scope: !4851)
!4862 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !56, file: !56, line: 270, type: !4863, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!1010, !91, !4642, !757}
!4865 = !DILocalVariable(name: "i", arg: 1, scope: !4866, file: !2353, line: 188, type: !91)
!4866 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2353, file: !2353, line: 188, type: !2354, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4867 = !DILocation(line: 188, column: 54, scope: !4866, inlinedAt: !4868)
!4868 = distinct !DILocation(line: 221, column: 9, scope: !4869, inlinedAt: !4870)
!4869 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2365, file: !2365, line: 218, type: !2354, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4870 = distinct !DILocation(line: 272, column: 12, scope: !4862)
!4871 = !DILocalVariable(name: "v", arg: 2, scope: !4866, file: !2353, line: 188, type: !2356)
!4872 = !DILocation(line: 188, column: 67, scope: !4866, inlinedAt: !4868)
!4873 = !DILocalVariable(name: "__ret", scope: !4874, file: !2353, line: 190, type: !91)
!4874 = distinct !DILexicalBlock(scope: !4866, file: !2353, line: 190, column: 9)
!4875 = !DILocation(line: 190, column: 9, scope: !4874, inlinedAt: !4868)
!4876 = !DILocation(line: 99, column: 79, scope: !2378, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 220, column: 2, scope: !4869, inlinedAt: !4870)
!4878 = !DILocation(line: 99, column: 89, scope: !2378, inlinedAt: !4877)
!4879 = !DILocalVariable(name: "i", arg: 1, scope: !4869, file: !2365, line: 218, type: !91)
!4880 = !DILocation(line: 218, column: 30, scope: !4869, inlinedAt: !4870)
!4881 = !DILocalVariable(name: "v", arg: 2, scope: !4869, file: !2365, line: 218, type: !2356)
!4882 = !DILocation(line: 218, column: 43, scope: !4869, inlinedAt: !4870)
!4883 = !DILocalVariable(name: "i", arg: 1, scope: !4862, file: !56, line: 270, type: !91)
!4884 = !DILocation(line: 270, column: 61, scope: !4862)
!4885 = !DILocalVariable(name: "r", arg: 2, scope: !4862, file: !56, line: 270, type: !4642)
!4886 = !DILocation(line: 270, column: 76, scope: !4862)
!4887 = !DILocalVariable(name: "oldp", arg: 3, scope: !4862, file: !56, line: 270, type: !757)
!4888 = !DILocation(line: 270, column: 84, scope: !4862)
!4889 = !DILocalVariable(name: "old", scope: !4862, file: !56, line: 272, type: !91)
!4890 = !DILocation(line: 272, column: 6, scope: !4862)
!4891 = !DILocation(line: 272, column: 37, scope: !4862)
!4892 = !DILocation(line: 272, column: 41, scope: !4862)
!4893 = !DILocation(line: 272, column: 44, scope: !4862)
!4894 = !DILocation(line: 220, column: 31, scope: !4869, inlinedAt: !4870)
!4895 = !DILocation(line: 101, column: 20, scope: !2378, inlinedAt: !4877)
!4896 = !DILocation(line: 101, column: 23, scope: !2378, inlinedAt: !4877)
!4897 = !DILocation(line: 101, column: 2, scope: !2378, inlinedAt: !4877)
!4898 = !DILocation(line: 102, column: 2, scope: !2378, inlinedAt: !4877)
!4899 = !DILocation(line: 221, column: 39, scope: !4869, inlinedAt: !4870)
!4900 = !DILocation(line: 221, column: 42, scope: !4869, inlinedAt: !4870)
!4901 = !{i32 -2147204379}
!4902 = !DILocation(line: 274, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4862, file: !56, line: 274, column: 6)
!4904 = !DILocation(line: 274, column: 6, scope: !4862)
!4905 = !DILocation(line: 275, column: 11, scope: !4903)
!4906 = !DILocation(line: 275, column: 4, scope: !4903)
!4907 = !DILocation(line: 275, column: 9, scope: !4903)
!4908 = !DILocation(line: 275, column: 3, scope: !4903)
!4909 = !DILocation(line: 277, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4862, file: !56, line: 277, column: 6)
!4911 = !DILocation(line: 277, column: 13, scope: !4910)
!4912 = !DILocation(line: 277, column: 10, scope: !4910)
!4913 = !DILocation(line: 277, column: 6, scope: !4862)
!4914 = !DILocation(line: 278, column: 3, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !56, line: 277, column: 16)
!4916 = !{i32 -2145252624}
!4917 = !DILocation(line: 279, column: 3, scope: !4915)
!4918 = !DILocation(line: 282, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4862, file: !56, line: 282, column: 6)
!4920 = !DILocation(line: 282, column: 6, scope: !4862)
!4921 = !DILocation(line: 283, column: 26, scope: !4919)
!4922 = !DILocation(line: 283, column: 3, scope: !4919)
!4923 = !DILocation(line: 285, column: 2, scope: !4862)
!4924 = !DILocation(line: 286, column: 1, scope: !4862)
!4925 = distinct !DISubprogram(name: "module_put", scope: !4626, file: !4626, line: 756, type: !4926, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{null, !97}
!4928 = !DILocalVariable(name: "module", arg: 1, scope: !4925, file: !4626, line: 756, type: !97)
!4929 = !DILocation(line: 756, column: 46, scope: !4925)
!4930 = !DILocation(line: 758, column: 1, scope: !4925)
!4931 = distinct !DISubprogram(name: "get_order", scope: !4932, file: !4932, line: 29, type: !4933, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4932 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!91, !92}
!4935 = !DILocalVariable(name: "x", arg: 1, scope: !4936, file: !4937, line: 366, type: !289)
!4936 = distinct !DISubprogram(name: "fls64", scope: !4937, file: !4937, line: 366, type: !4938, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4937 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!91, !289}
!4940 = !DILocation(line: 366, column: 40, scope: !4936, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 46, column: 9, scope: !4931)
!4942 = !DILocalVariable(name: "bitpos", scope: !4936, file: !4937, line: 368, type: !91)
!4943 = !DILocation(line: 368, column: 6, scope: !4936, inlinedAt: !4941)
!4944 = !DILocalVariable(name: "size", arg: 1, scope: !4931, file: !4932, line: 29, type: !92)
!4945 = !DILocation(line: 29, column: 63, scope: !4931)
!4946 = !DILocation(line: 31, column: 27, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4931, file: !4932, line: 31, column: 6)
!4948 = !DILocation(line: 31, column: 6, scope: !4947)
!4949 = !DILocation(line: 31, column: 6, scope: !4931)
!4950 = !DILocation(line: 32, column: 8, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !4932, line: 32, column: 7)
!4952 = distinct !DILexicalBlock(scope: !4947, file: !4932, line: 31, column: 34)
!4953 = !DILocation(line: 32, column: 7, scope: !4952)
!4954 = !DILocation(line: 33, column: 4, scope: !4951)
!4955 = !DILocation(line: 35, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4952, file: !4932, line: 35, column: 7)
!4957 = !DILocation(line: 35, column: 12, scope: !4956)
!4958 = !DILocation(line: 35, column: 7, scope: !4952)
!4959 = !DILocation(line: 36, column: 4, scope: !4956)
!4960 = !DILocation(line: 38, column: 10, scope: !4952)
!4961 = !DILocation(line: 38, column: 28, scope: !4952)
!4962 = !DILocation(line: 38, column: 41, scope: !4952)
!4963 = !DILocation(line: 38, column: 3, scope: !4952)
!4964 = !DILocation(line: 41, column: 6, scope: !4931)
!4965 = !DILocation(line: 42, column: 7, scope: !4931)
!4966 = !DILocation(line: 46, column: 15, scope: !4931)
!4967 = !DILocation(line: 374, column: 2, scope: !4936, inlinedAt: !4941)
!4968 = !DILocation(line: 376, column: 14, scope: !4936, inlinedAt: !4941)
!4969 = !{i32 744585}
!4970 = !DILocation(line: 377, column: 9, scope: !4936, inlinedAt: !4941)
!4971 = !DILocation(line: 377, column: 16, scope: !4936, inlinedAt: !4941)
!4972 = !DILocation(line: 46, column: 2, scope: !4931)
!4973 = !DILocation(line: 48, column: 1, scope: !4931)
!4974 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4975, file: !4975, line: 30, type: !4976, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4975 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!91, !287}
!4978 = !DILocation(line: 366, column: 40, scope: !4936, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 32, column: 9, scope: !4974)
!4980 = !DILocation(line: 368, column: 6, scope: !4936, inlinedAt: !4979)
!4981 = !DILocalVariable(name: "n", arg: 1, scope: !4974, file: !4975, line: 30, type: !287)
!4982 = !DILocation(line: 30, column: 21, scope: !4974)
!4983 = !DILocation(line: 32, column: 15, scope: !4974)
!4984 = !DILocation(line: 374, column: 2, scope: !4936, inlinedAt: !4979)
!4985 = !DILocation(line: 376, column: 14, scope: !4936, inlinedAt: !4979)
!4986 = !DILocation(line: 377, column: 9, scope: !4936, inlinedAt: !4979)
!4987 = !DILocation(line: 377, column: 16, scope: !4936, inlinedAt: !4979)
!4988 = !DILocation(line: 32, column: 18, scope: !4974)
!4989 = !DILocation(line: 32, column: 2, scope: !4974)
!4990 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4991, file: !4991, line: 137, type: !4992, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!4991 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!73, !1060, !1401, !216, !71}
!4994 = !DILocalVariable(name: "s", arg: 1, scope: !4990, file: !4991, line: 137, type: !1060)
!4995 = !DILocation(line: 137, column: 54, scope: !4990)
!4996 = !DILocalVariable(name: "object", arg: 2, scope: !4990, file: !4991, line: 137, type: !1401)
!4997 = !DILocation(line: 137, column: 69, scope: !4990)
!4998 = !DILocalVariable(name: "size", arg: 3, scope: !4990, file: !4991, line: 138, type: !216)
!4999 = !DILocation(line: 138, column: 12, scope: !4990)
!5000 = !DILocalVariable(name: "flags", arg: 4, scope: !4990, file: !4991, line: 138, type: !71)
!5001 = !DILocation(line: 138, column: 24, scope: !4990)
!5002 = !DILocation(line: 140, column: 17, scope: !4990)
!5003 = !DILocation(line: 140, column: 2, scope: !4990)
!5004 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4334, file: !4334, line: 52, type: !5005, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !142)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!1010, !1010}
!5007 = !DILocalVariable(name: "overflow", arg: 1, scope: !5004, file: !4334, line: 52, type: !1010)
!5008 = !DILocation(line: 52, column: 60, scope: !5004)
!5009 = !DILocation(line: 54, column: 9, scope: !5004)
!5010 = !DILocation(line: 54, column: 2, scope: !5004)
