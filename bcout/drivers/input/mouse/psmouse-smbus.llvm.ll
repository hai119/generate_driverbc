; ModuleID = '../bcout/drivers/input/mouse/psmouse-smbus.llvm.bc'
source_filename = "drivers/input/mouse/psmouse-smbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.kmem_cache = type opaque
%struct.workqueue_struct = type opaque
%struct.psmouse = type { i8*, %struct.input_dev*, %struct.ps2dev, %struct.delayed_work, i8*, i8*, %struct.psmouse_protocol*, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, i32 (%struct.psmouse*)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, {}*, {}*, i32 (%struct.psmouse*)*, {}*, {}* }
%struct.input_dev = type opaque
%struct.ps2dev = type { %struct.serio*, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, i8*, i8*, i32 (%struct.psmouse*, i1)*, i32 (%struct.psmouse*)* }
%struct.psmouse_smbus_dev = type { %struct.i2c_board_info, %struct.psmouse*, %struct.i2c_client*, %struct.list_head, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.psmouse_smbus_removal_work = type { %struct.work_struct, %struct.i2c_client* }

@psmouse_smbus_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @psmouse_smbus_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @psmouse_smbus_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@psmouse_smbus_list = internal global %struct.list_head { %struct.list_head* @psmouse_smbus_list, %struct.list_head* @psmouse_smbus_list }, align 8, !dbg !2597
@i2c_bus_type = external dso_local global %struct.bus_type, align 8
@psmouse_smbus_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @psmouse_smbus_notifier_call, %struct.notifier_block* null, i32 0 }, align 8, !dbg !2599
@.str = private unnamed_addr constant [52 x i8] c"\013psmouse: failed to register i2c bus notifier: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@i2c_adapter_type = external dso_local global %struct.device_type, align 8
@i2c_client_type = external dso_local global %struct.device_type, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @psmouse_smbus_cleanup(%struct.psmouse* %psmouse) #0 !dbg !2617 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  %tmp = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !2620, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %tmp, metadata !2622, metadata !DIExpression()), !dbg !2623
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2624
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2625, metadata !DIExpression()), !dbg !2628
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @psmouse_smbus_list, i32 0, i32 0), align 8, !dbg !2628
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !2628
  store i8* %1, i8** %__mptr, align 8, !dbg !2628
  br label %do.body, !dbg !2628

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2629

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2628
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !2628
  %3 = bitcast i8* %add.ptr to %struct.psmouse_smbus_dev*, !dbg !2628
  store %struct.psmouse_smbus_dev* %3, %struct.psmouse_smbus_dev** %tmp1, align 8, !dbg !2629
  %4 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp1, align 8, !dbg !2628
  store %struct.psmouse_smbus_dev* %4, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2631
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2632, metadata !DIExpression()), !dbg !2634
  %5 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2634
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %5, i32 0, i32 3, !dbg !2634
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !2634
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2634
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !2634
  store i8* %7, i8** %__mptr2, align 8, !dbg !2634
  br label %do.body3, !dbg !2634

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2635

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !2634
  %add.ptr6 = getelementptr i8, i8* %8, i64 -96, !dbg !2634
  %9 = bitcast i8* %add.ptr6 to %struct.psmouse_smbus_dev*, !dbg !2634
  store %struct.psmouse_smbus_dev* %9, %struct.psmouse_smbus_dev** %tmp5, align 8, !dbg !2635
  %10 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp5, align 8, !dbg !2634
  store %struct.psmouse_smbus_dev* %10, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !2631
  br label %for.cond, !dbg !2631

for.cond:                                         ; preds = %do.end15, %do.end4
  %11 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2637
  %node7 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %11, i32 0, i32 3, !dbg !2637
  %cmp = icmp eq %struct.list_head* %node7, @psmouse_smbus_list, !dbg !2637
  %lnot = xor i1 %cmp, true, !dbg !2637
  br i1 %lnot, label %for.body, label %for.end, !dbg !2631

for.body:                                         ; preds = %for.cond
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2639
  %13 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2642
  %psmouse8 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %13, i32 0, i32 1, !dbg !2643
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse8, align 8, !dbg !2643
  %cmp9 = icmp eq %struct.psmouse* %12, %14, !dbg !2644
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2645

if.then:                                          ; preds = %for.body
  %15 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2646
  %node10 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %15, i32 0, i32 3, !dbg !2648
  call void @list_del(%struct.list_head* %node10) #9, !dbg !2649
  %16 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2650
  %17 = bitcast %struct.psmouse_smbus_dev* %16 to i8*, !dbg !2650
  call void @kfree(i8* %17) #9, !dbg !2651
  br label %if.end, !dbg !2652

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !2653

for.inc:                                          ; preds = %if.end
  %18 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !2637
  store %struct.psmouse_smbus_dev* %18, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2637
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !2654, metadata !DIExpression()), !dbg !2656
  %19 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !2656
  %node12 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %19, i32 0, i32 3, !dbg !2656
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %node12, i32 0, i32 0, !dbg !2656
  %20 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !2656
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !2656
  store i8* %21, i8** %__mptr11, align 8, !dbg !2656
  br label %do.body14, !dbg !2656

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !2657

do.end15:                                         ; preds = %do.body14
  %22 = load i8*, i8** %__mptr11, align 8, !dbg !2656
  %add.ptr17 = getelementptr i8, i8* %22, i64 -96, !dbg !2656
  %23 = bitcast i8* %add.ptr17 to %struct.psmouse_smbus_dev*, !dbg !2656
  store %struct.psmouse_smbus_dev* %23, %struct.psmouse_smbus_dev** %tmp16, align 8, !dbg !2657
  %24 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp16, align 8, !dbg !2656
  store %struct.psmouse_smbus_dev* %24, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !2637
  br label %for.cond, !dbg !2637, !llvm.loop !2659

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2661
  ret void, !dbg !2662
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2663 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2667, metadata !DIExpression()), !dbg !2668
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2669
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !2670
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2671
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2672
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2673
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2674
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2675
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2676
  ret void, !dbg !2677
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @psmouse_smbus_init(%struct.psmouse* %psmouse, %struct.i2c_board_info* %board, i8* %pdata, i64 %pdata_size, i1 zeroext %need_deactivate, i1 zeroext %leave_breadcrumbs) #0 !dbg !2678 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %board.addr = alloca %struct.i2c_board_info*, align 8
  %pdata.addr = alloca i8*, align 8
  %pdata_size.addr = alloca i64, align 8
  %need_deactivate.addr = alloca i8, align 1
  %leave_breadcrumbs.addr = alloca i8, align 1
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  store %struct.i2c_board_info* %board, %struct.i2c_board_info** %board.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %board.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  store i8* %pdata, i8** %pdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pdata.addr, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i64 %pdata_size, i64* %pdata_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pdata_size.addr, metadata !2689, metadata !DIExpression()), !dbg !2690
  %frombool = zext i1 %need_deactivate to i8
  store i8 %frombool, i8* %need_deactivate.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %need_deactivate.addr, metadata !2691, metadata !DIExpression()), !dbg !2692
  %frombool1 = zext i1 %leave_breadcrumbs to i8
  store i8 %frombool1, i8* %leave_breadcrumbs.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %leave_breadcrumbs.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2697, metadata !DIExpression()), !dbg !2698
  %call = call i8* @kzalloc(i64 120, i32 3264) #9, !dbg !2699
  %0 = bitcast i8* %call to %struct.psmouse_smbus_dev*, !dbg !2699
  store %struct.psmouse_smbus_dev* %0, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2700
  %1 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2701
  %tobool = icmp ne %struct.psmouse_smbus_dev* %1, null, !dbg !2701
  br i1 %tobool, label %if.end, label %if.then, !dbg !2703

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2704
  br label %return, !dbg !2704

if.end:                                           ; preds = %entry
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2705
  %3 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2706
  %psmouse2 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %3, i32 0, i32 1, !dbg !2707
  store %struct.psmouse* %2, %struct.psmouse** %psmouse2, align 8, !dbg !2708
  %4 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2709
  %board3 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %4, i32 0, i32 0, !dbg !2710
  %5 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board.addr, align 8, !dbg !2711
  %6 = bitcast %struct.i2c_board_info* %board3 to i8*, !dbg !2712
  %7 = bitcast %struct.i2c_board_info* %5 to i8*, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 80, i1 false), !dbg !2712
  %8 = load i8, i8* %need_deactivate.addr, align 1, !dbg !2713
  %tobool4 = trunc i8 %8 to i1, !dbg !2713
  %9 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2714
  %need_deactivate5 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %9, i32 0, i32 5, !dbg !2715
  %frombool6 = zext i1 %tobool4 to i8, !dbg !2716
  store i8 %frombool6, i8* %need_deactivate5, align 1, !dbg !2716
  %10 = load i8*, i8** %pdata.addr, align 8, !dbg !2717
  %tobool7 = icmp ne i8* %10, null, !dbg !2717
  br i1 %tobool7, label %if.then8, label %if.end16, !dbg !2719

if.then8:                                         ; preds = %if.end
  %11 = load i8*, i8** %pdata.addr, align 8, !dbg !2720
  %12 = load i64, i64* %pdata_size.addr, align 8, !dbg !2722
  %call9 = call i8* @kmemdup(i8* %11, i64 %12, i32 3264) #9, !dbg !2723
  %13 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2724
  %board10 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %13, i32 0, i32 0, !dbg !2725
  %platform_data = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board10, i32 0, i32 4, !dbg !2726
  store i8* %call9, i8** %platform_data, align 8, !dbg !2727
  %14 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2728
  %board11 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %14, i32 0, i32 0, !dbg !2730
  %platform_data12 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board11, i32 0, i32 4, !dbg !2731
  %15 = load i8*, i8** %platform_data12, align 8, !dbg !2731
  %tobool13 = icmp ne i8* %15, null, !dbg !2728
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2732

if.then14:                                        ; preds = %if.then8
  %16 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2733
  %17 = bitcast %struct.psmouse_smbus_dev* %16 to i8*, !dbg !2733
  call void @kfree(i8* %17) #9, !dbg !2735
  store i32 -12, i32* %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

if.end15:                                         ; preds = %if.then8
  br label %if.end16, !dbg !2737

if.end16:                                         ; preds = %if.end15, %if.end
  %18 = load i8, i8* %need_deactivate.addr, align 1, !dbg !2738
  %tobool17 = trunc i8 %18 to i1, !dbg !2738
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !2740

if.then18:                                        ; preds = %if.end16
  %19 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2741
  %call19 = call i32 @psmouse_deactivate(%struct.psmouse* %19) #9, !dbg !2742
  br label %if.end20, !dbg !2742

if.end20:                                         ; preds = %if.then18, %if.end16
  %20 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2743
  %21 = bitcast %struct.psmouse_smbus_dev* %20 to i8*, !dbg !2743
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2744
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 0, !dbg !2745
  store i8* %21, i8** %private, align 8, !dbg !2746
  %23 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2747
  %protocol_handler = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 26, !dbg !2748
  store i32 (%struct.psmouse*)* @psmouse_smbus_process_byte, i32 (%struct.psmouse*)** %protocol_handler, align 8, !dbg !2749
  %24 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2750
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 30, !dbg !2751
  store i32 (%struct.psmouse*)* @psmouse_smbus_reconnect, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !2752
  %25 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2753
  %fast_reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 31, !dbg !2754
  store i32 (%struct.psmouse*)* @psmouse_smbus_reconnect, i32 (%struct.psmouse*)** %fast_reconnect, align 8, !dbg !2755
  %26 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2756
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %26, i32 0, i32 32, !dbg !2757
  %disconnect21 = bitcast {}** %disconnect to void (%struct.psmouse*)**, !dbg !2757
  store void (%struct.psmouse*)* @psmouse_smbus_disconnect, void (%struct.psmouse*)** %disconnect21, align 8, !dbg !2758
  %27 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !2759
  %resync_time = getelementptr inbounds %struct.psmouse, %struct.psmouse* %27, i32 0, i32 24, !dbg !2760
  store i32 0, i32* %resync_time, align 8, !dbg !2761
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2762
  %28 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2763
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %28, i32 0, i32 3, !dbg !2764
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @psmouse_smbus_list) #9, !dbg !2765
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2766
  %29 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2767
  %30 = bitcast %struct.psmouse_smbus_dev* %29 to i8*, !dbg !2767
  %call22 = call i32 @i2c_for_each_dev(i8* %30, i32 (%struct.device*, i8*)* @psmouse_smbus_create_companion) #9, !dbg !2768
  store i32 %call22, i32* %error, align 4, !dbg !2769
  %31 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2770
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %31, i32 0, i32 2, !dbg !2772
  %32 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !2772
  %tobool23 = icmp ne %struct.i2c_client* %32, null, !dbg !2770
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2773

if.then24:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

if.end25:                                         ; preds = %if.end20
  %33 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2776
  %board26 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %33, i32 0, i32 0, !dbg !2777
  %platform_data27 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board26, i32 0, i32 4, !dbg !2778
  %34 = load i8*, i8** %platform_data27, align 8, !dbg !2778
  call void @kfree(i8* %34) #9, !dbg !2779
  %35 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2780
  %board28 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %35, i32 0, i32 0, !dbg !2781
  %platform_data29 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board28, i32 0, i32 4, !dbg !2782
  store i8* null, i8** %platform_data29, align 8, !dbg !2783
  %36 = load i32, i32* %error, align 4, !dbg !2784
  %cmp = icmp slt i32 %36, 0, !dbg !2786
  br i1 %cmp, label %if.then31, label %lor.lhs.false, !dbg !2787

lor.lhs.false:                                    ; preds = %if.end25
  %37 = load i8, i8* %leave_breadcrumbs.addr, align 1, !dbg !2788
  %tobool30 = trunc i8 %37 to i1, !dbg !2788
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !2789

if.then31:                                        ; preds = %lor.lhs.false, %if.end25
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2790
  %38 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2792
  %node32 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %38, i32 0, i32 3, !dbg !2793
  call void @list_del(%struct.list_head* %node32) #9, !dbg !2794
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !2795
  %39 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !2796
  %40 = bitcast %struct.psmouse_smbus_dev* %39 to i8*, !dbg !2796
  call void @kfree(i8* %40) #9, !dbg !2797
  br label %if.end33, !dbg !2798

if.end33:                                         ; preds = %if.then31, %lor.lhs.false
  %41 = load i32, i32* %error, align 4, !dbg !2799
  %cmp34 = icmp slt i32 %41, 0, !dbg !2800
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !2799

cond.true:                                        ; preds = %if.end33
  %42 = load i32, i32* %error, align 4, !dbg !2801
  br label %cond.end, !dbg !2799

cond.false:                                       ; preds = %if.end33
  br label %cond.end, !dbg !2799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ -11, %cond.false ], !dbg !2799
  store i32 %cond, i32* %retval, align 4, !dbg !2802
  br label %return, !dbg !2802

return:                                           ; preds = %cond.end, %if.then24, %if.then14, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !2803
  ret i32 %43, !dbg !2803
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2804 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2807, metadata !DIExpression()), !dbg !2811
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2817, metadata !DIExpression()), !dbg !2818
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2819, metadata !DIExpression()), !dbg !2820
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2821, metadata !DIExpression()), !dbg !2822
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2823, metadata !DIExpression()), !dbg !2827
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2829, metadata !DIExpression()), !dbg !2833
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2835, metadata !DIExpression()), !dbg !2839
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2844, metadata !DIExpression()), !dbg !2845
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2846, metadata !DIExpression()), !dbg !2847
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2848, metadata !DIExpression()), !dbg !2849
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2850, metadata !DIExpression()), !dbg !2851
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2852, metadata !DIExpression()), !dbg !2853
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2854, metadata !DIExpression()), !dbg !2855
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2856, metadata !DIExpression()), !dbg !2857
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2858, metadata !DIExpression()), !dbg !2859
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2862, metadata !DIExpression()), !dbg !2863
  %0 = load i64, i64* %size.addr, align 8, !dbg !2864
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2865
  %or = or i32 %1, 256, !dbg !2866
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2867
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !2868
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2869

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2870
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2871
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2872

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2873
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2874
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2875
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !2876
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2853
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2877
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2878
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2879
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2880
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2881
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2882
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !2883
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2883
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2883
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2883
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2883
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2884
  br label %kmalloc.exit, !dbg !2884

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2885
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2886
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2886
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2888

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2889
  br label %kmalloc_index.exit.i, !dbg !2889

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2890
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2892
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2893

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2894
  br label %kmalloc_index.exit.i, !dbg !2894

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2895
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2897
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2898

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2899
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2900
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2901

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2902
  br label %kmalloc_index.exit.i, !dbg !2902

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2903
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2905
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2906

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2907
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2908
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2909

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2910
  br label %kmalloc_index.exit.i, !dbg !2910

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2911
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2913
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2914

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2915
  br label %kmalloc_index.exit.i, !dbg !2915

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2916
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2918
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2919

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2920
  br label %kmalloc_index.exit.i, !dbg !2920

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2921
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2923
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2924

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2925
  br label %kmalloc_index.exit.i, !dbg !2925

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2926
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2928
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2929

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2930
  br label %kmalloc_index.exit.i, !dbg !2930

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2931
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2933
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2934

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2935
  br label %kmalloc_index.exit.i, !dbg !2935

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2936
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2938
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2939

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2940
  br label %kmalloc_index.exit.i, !dbg !2940

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2941
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2943
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2944

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2945
  br label %kmalloc_index.exit.i, !dbg !2945

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2946
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2948
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2949

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2950
  br label %kmalloc_index.exit.i, !dbg !2950

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2951
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2953
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2954

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2955
  br label %kmalloc_index.exit.i, !dbg !2955

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2956
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2958
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2959

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2960
  br label %kmalloc_index.exit.i, !dbg !2960

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2961
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2963
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2964

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2965
  br label %kmalloc_index.exit.i, !dbg !2965

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2966
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2968
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2969

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2970
  br label %kmalloc_index.exit.i, !dbg !2970

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2971
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2973
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2974

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2975
  br label %kmalloc_index.exit.i, !dbg !2975

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2976
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2978
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2979

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2980
  br label %kmalloc_index.exit.i, !dbg !2980

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2981
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2983
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2984

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2985
  br label %kmalloc_index.exit.i, !dbg !2985

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2986
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2988
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2989

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2990
  br label %kmalloc_index.exit.i, !dbg !2990

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2991
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2993
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2994

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2995
  br label %kmalloc_index.exit.i, !dbg !2995

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2996
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2998
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2999

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3000
  br label %kmalloc_index.exit.i, !dbg !3000

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3001
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3003
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3004

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3005
  br label %kmalloc_index.exit.i, !dbg !3005

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3006
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3008
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3009

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3010
  br label %kmalloc_index.exit.i, !dbg !3010

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3011
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3013
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3014

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3015
  br label %kmalloc_index.exit.i, !dbg !3015

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3016
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3018
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3019

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3020
  br label %kmalloc_index.exit.i, !dbg !3020

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3021
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3023
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3024

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3025
  br label %kmalloc_index.exit.i, !dbg !3025

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3026
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3028
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3029

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3030
  br label %kmalloc_index.exit.i, !dbg !3030

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3031, !srcloc !3034
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #10, !dbg !3035, !srcloc !3038
  unreachable, !dbg !3039

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3040
  store i32 %45, i32* %index.i, align 4, !dbg !3041
  %46 = load i32, i32* %index.i, align 4, !dbg !3042
  %tobool.i = icmp ne i32 %46, 0, !dbg !3042
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3044

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3045
  br label %kmalloc.exit, !dbg !3045

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3046
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3047
  %and.i.i = and i32 %48, 17, !dbg !3047
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3047
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3047
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3047
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3047
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3049

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3050
  br label %kmalloc_type.exit.i, !dbg !3050

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3051
  %and2.i.i = and i32 %49, 1, !dbg !3052
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3051
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3051
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3051
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3053
  br label %kmalloc_type.exit.i, !dbg !3053

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3054
  %idxprom.i = zext i32 %51 to i64, !dbg !3055
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3055
  %52 = load i32, i32* %index.i, align 4, !dbg !3056
  %idxprom6.i = zext i32 %52 to i64, !dbg !3055
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3055
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3055
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3057
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3058
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3059
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3060
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3061
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3061
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3061
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3061
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3061
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2822
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3062
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3063
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3064
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3065
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3066
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3067
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3068
  store i8* %62, i8** %retval.i, align 8, !dbg !3069
  br label %kmalloc.exit, !dbg !3069

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3070
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3071
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3072
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3072
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3072
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3072
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3072
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3073
  br label %kmalloc.exit, !dbg !3073

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3074
  ret i8* %65, !dbg !3075
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psmouse_smbus_process_byte(%struct.psmouse* %psmouse) #0 !dbg !3076 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  ret i32 2, !dbg !3079
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psmouse_smbus_reconnect(%struct.psmouse* %psmouse) #0 !dbg !3080 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3085
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !3086
  %1 = load i8*, i8** %private, align 8, !dbg !3086
  %2 = bitcast i8* %1 to %struct.psmouse_smbus_dev*, !dbg !3085
  store %struct.psmouse_smbus_dev* %2, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3084
  %3 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3087
  %need_deactivate = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %3, i32 0, i32 5, !dbg !3089
  %4 = load i8, i8* %need_deactivate, align 1, !dbg !3089
  %tobool = trunc i8 %4 to i1, !dbg !3089
  br i1 %tobool, label %if.then, label %if.end, !dbg !3090

if.then:                                          ; preds = %entry
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3091
  %call = call i32 @psmouse_deactivate(%struct.psmouse* %5) #9, !dbg !3092
  br label %if.end, !dbg !3092

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3093
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psmouse_smbus_disconnect(%struct.psmouse* %psmouse) #0 !dbg !3094 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !3097, metadata !DIExpression()), !dbg !3098
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3099
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !3100
  %1 = load i8*, i8** %private, align 8, !dbg !3100
  %2 = bitcast i8* %1 to %struct.psmouse_smbus_dev*, !dbg !3099
  store %struct.psmouse_smbus_dev* %2, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3098
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3101
  %3 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3102
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %3, i32 0, i32 4, !dbg !3104
  %4 = load i8, i8* %dead, align 8, !dbg !3104
  %tobool = trunc i8 %4 to i1, !dbg !3104
  br i1 %tobool, label %if.then, label %if.else, !dbg !3105

if.then:                                          ; preds = %entry
  %5 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3106
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %5, i32 0, i32 3, !dbg !3108
  call void @list_del(%struct.list_head* %node) #9, !dbg !3109
  %6 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3110
  %7 = bitcast %struct.psmouse_smbus_dev* %6 to i8*, !dbg !3110
  call void @kfree(i8* %7) #9, !dbg !3111
  br label %if.end, !dbg !3112

if.else:                                          ; preds = %entry
  %8 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3113
  %dead1 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %8, i32 0, i32 4, !dbg !3115
  store i8 1, i8* %dead1, align 8, !dbg !3116
  %9 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3117
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %9, i32 0, i32 2, !dbg !3118
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3118
  call void @psmouse_smbus_schedule_remove(%struct.i2c_client* %10) #9, !dbg !3119
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3120
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3121
  %private2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0, !dbg !3122
  store i8* null, i8** %private2, align 8, !dbg !3123
  ret void, !dbg !3124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3125 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3128, metadata !DIExpression()), !dbg !3129
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3132
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3133
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3134
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3134
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3135
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_for_each_dev(i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psmouse_smbus_create_companion(%struct.device* %dev, i8* %data) #0 !dbg !3138 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  %addr_list = alloca [2 x i16], align 2
  %adapter = alloca %struct.i2c_adapter*, align 8
  %client = alloca %struct.i2c_client*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3141, metadata !DIExpression()), !dbg !3142
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !3145, metadata !DIExpression()), !dbg !3146
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3147
  %1 = bitcast i8* %0 to %struct.psmouse_smbus_dev*, !dbg !3147
  store %struct.psmouse_smbus_dev* %1, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3146
  call void @llvm.dbg.declare(metadata [2 x i16]* %addr_list, metadata !3148, metadata !DIExpression()), !dbg !3150
  %arrayinit.begin = getelementptr inbounds [2 x i16], [2 x i16]* %addr_list, i64 0, i64 0, !dbg !3151
  %2 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3152
  %board = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %2, i32 0, i32 0, !dbg !3153
  %addr = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %board, i32 0, i32 2, !dbg !3154
  %3 = load i16, i16* %addr, align 2, !dbg !3154
  store i16 %3, i16* %arrayinit.begin, align 2, !dbg !3151
  %arrayinit.element = getelementptr inbounds i16, i16* %arrayinit.begin, i64 1, !dbg !3151
  store i16 -2, i16* %arrayinit.element, align 2, !dbg !3151
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !3157, metadata !DIExpression()), !dbg !3158
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3159
  %call = call %struct.i2c_adapter* @i2c_verify_adapter(%struct.device* %4) #9, !dbg !3160
  store %struct.i2c_adapter* %call, %struct.i2c_adapter** %adapter, align 8, !dbg !3161
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3162
  %tobool = icmp ne %struct.i2c_adapter* %5, null, !dbg !3162
  br i1 %tobool, label %if.end, label %if.then, !dbg !3164

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3165
  br label %return, !dbg !3165

if.end:                                           ; preds = %entry
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3166
  %call1 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %6, i32 268435456) #9, !dbg !3168
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3168
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3169

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3170
  br label %return, !dbg !3170

if.end4:                                          ; preds = %if.end
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter, align 8, !dbg !3171
  %8 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3172
  %board5 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %8, i32 0, i32 0, !dbg !3173
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %addr_list, i64 0, i64 0, !dbg !3174
  %call6 = call %struct.i2c_client* @i2c_new_scanned_device(%struct.i2c_adapter* %7, %struct.i2c_board_info* %board5, i16* %arraydecay, i32 (%struct.i2c_adapter*, i16)* null) #9, !dbg !3175
  store %struct.i2c_client* %call6, %struct.i2c_client** %client, align 8, !dbg !3176
  %9 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3177
  %10 = bitcast %struct.i2c_client* %9 to i8*, !dbg !3177
  %call7 = call zeroext i1 @IS_ERR(i8* %10) #9, !dbg !3179
  br i1 %call7, label %if.then8, label %if.end9, !dbg !3180

if.then8:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !3181
  br label %return, !dbg !3181

if.end9:                                          ; preds = %if.end4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3182
  %12 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3183
  %client10 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %12, i32 0, i32 2, !dbg !3184
  store %struct.i2c_client* %11, %struct.i2c_client** %client10, align 8, !dbg !3185
  store i32 1, i32* %retval, align 4, !dbg !3186
  br label %return, !dbg !3186

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3187
  ret i32 %13, !dbg !3187
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @psmouse_smbus_module_init() #4 section ".init.text" !dbg !3188 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3191, metadata !DIExpression()), !dbg !3192
  %call = call i32 @bus_register_notifier(%struct.bus_type* @i2c_bus_type, %struct.notifier_block* @psmouse_smbus_notifier) #9, !dbg !3193
  store i32 %call, i32* %error, align 4, !dbg !3194
  %0 = load i32, i32* %error, align 4, !dbg !3195
  %tobool = icmp ne i32 %0, 0, !dbg !3195
  br i1 %tobool, label %if.then, label %if.end, !dbg !3197

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error, align 4, !dbg !3198
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %1) #13, !dbg !3198
  %2 = load i32, i32* %error, align 4, !dbg !3200
  store i32 %2, i32* %retval, align 4, !dbg !3201
  br label %return, !dbg !3201

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3202
  br label %return, !dbg !3202

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3203
  ret i32 %3, !dbg !3203
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register_notifier(%struct.bus_type*, %struct.notifier_block*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @psmouse_smbus_module_exit() #0 !dbg !3204 {
entry:
  %call = call i32 @bus_unregister_notifier(%struct.bus_type* @i2c_bus_type, %struct.notifier_block* @psmouse_smbus_notifier) #9, !dbg !3207
  call void @flush_scheduled_work() #9, !dbg !3208
  ret void, !dbg !3209
}

; Function Attrs: noredzone
declare dso_local i32 @bus_unregister_notifier(%struct.bus_type*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @flush_scheduled_work() #0 !dbg !3210 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !3211
  call void @flush_workqueue(%struct.workqueue_struct* %0) #9, !dbg !3212
  ret void, !dbg !3213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3214 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3217
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !3219
  br i1 %call, label %if.end, label %if.then, !dbg !3220

if.then:                                          ; preds = %entry
  br label %return, !dbg !3221

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3222
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3223
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3223
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3224
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3225
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3225
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !3226
  br label %return, !dbg !3227

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3228 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3231, metadata !DIExpression()), !dbg !3232
  ret i1 true, !dbg !3233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3234 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3235, metadata !DIExpression()), !dbg !3236
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3237, metadata !DIExpression()), !dbg !3238
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3239
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3240
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3241
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3242
  br label %do.body, !dbg !3243

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3244

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3246

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3244

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3248
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3248
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3248
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3248
  br label %do.end5, !dbg !3248

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3244

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3250
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3251 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3255, metadata !DIExpression()), !dbg !3260
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3262, metadata !DIExpression()), !dbg !3263
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  %0 = load i64, i64* %size.addr, align 8, !dbg !3266
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3268
  br i1 %1, label %if.then, label %if.end447, !dbg !3269

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3270
  %tobool = icmp ne i64 %2, 0, !dbg !3270
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3273

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3275
  %cmp = icmp ult i64 %3, 4096, !dbg !3277
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3278

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3279
  br label %return, !dbg !3279

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub = sub i64 %4, 1, !dbg !3280
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3280
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3280

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub4 = sub i64 %6, 1, !dbg !3280
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3280
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3280

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub6 = sub i64 %8, 1, !dbg !3280
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3280
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3280

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3280

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub9 = sub i64 %9, 1, !dbg !3280
  %and = and i64 %sub9, -9223372036854775808, !dbg !3280
  %tobool10 = icmp ne i64 %and, 0, !dbg !3280
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3280

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3280

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub13 = sub i64 %10, 1, !dbg !3280
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3280
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3280
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3280

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3280

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub18 = sub i64 %11, 1, !dbg !3280
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3280
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3280
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3280

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3280

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub23 = sub i64 %12, 1, !dbg !3280
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3280
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3280
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3280

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3280

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub28 = sub i64 %13, 1, !dbg !3280
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3280
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3280
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3280

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3280

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub33 = sub i64 %14, 1, !dbg !3280
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3280
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3280
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3280

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3280

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub38 = sub i64 %15, 1, !dbg !3280
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3280
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3280
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3280

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3280

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub43 = sub i64 %16, 1, !dbg !3280
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3280
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3280
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3280

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3280

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub48 = sub i64 %17, 1, !dbg !3280
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3280
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3280
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3280

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3280

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub53 = sub i64 %18, 1, !dbg !3280
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3280
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3280
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3280

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3280

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub58 = sub i64 %19, 1, !dbg !3280
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3280
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3280
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3280

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3280

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub63 = sub i64 %20, 1, !dbg !3280
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3280
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3280
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3280

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3280

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub68 = sub i64 %21, 1, !dbg !3280
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3280
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3280
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3280

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3280

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub73 = sub i64 %22, 1, !dbg !3280
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3280
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3280
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3280

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3280

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub78 = sub i64 %23, 1, !dbg !3280
  %and79 = and i64 %sub78, 562949953421312, !dbg !3280
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3280
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3280

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3280

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub83 = sub i64 %24, 1, !dbg !3280
  %and84 = and i64 %sub83, 281474976710656, !dbg !3280
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3280
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3280

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3280

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub88 = sub i64 %25, 1, !dbg !3280
  %and89 = and i64 %sub88, 140737488355328, !dbg !3280
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3280
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3280

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3280

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub93 = sub i64 %26, 1, !dbg !3280
  %and94 = and i64 %sub93, 70368744177664, !dbg !3280
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3280
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3280

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3280

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub98 = sub i64 %27, 1, !dbg !3280
  %and99 = and i64 %sub98, 35184372088832, !dbg !3280
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3280
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3280

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3280

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub103 = sub i64 %28, 1, !dbg !3280
  %and104 = and i64 %sub103, 17592186044416, !dbg !3280
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3280
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3280

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3280

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub108 = sub i64 %29, 1, !dbg !3280
  %and109 = and i64 %sub108, 8796093022208, !dbg !3280
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3280
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3280

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3280

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub113 = sub i64 %30, 1, !dbg !3280
  %and114 = and i64 %sub113, 4398046511104, !dbg !3280
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3280
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3280

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3280

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub118 = sub i64 %31, 1, !dbg !3280
  %and119 = and i64 %sub118, 2199023255552, !dbg !3280
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3280
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3280

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3280

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub123 = sub i64 %32, 1, !dbg !3280
  %and124 = and i64 %sub123, 1099511627776, !dbg !3280
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3280
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3280

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3280

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub128 = sub i64 %33, 1, !dbg !3280
  %and129 = and i64 %sub128, 549755813888, !dbg !3280
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3280
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3280

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3280

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub133 = sub i64 %34, 1, !dbg !3280
  %and134 = and i64 %sub133, 274877906944, !dbg !3280
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3280
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3280

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3280

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub138 = sub i64 %35, 1, !dbg !3280
  %and139 = and i64 %sub138, 137438953472, !dbg !3280
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3280
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3280

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3280

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub143 = sub i64 %36, 1, !dbg !3280
  %and144 = and i64 %sub143, 68719476736, !dbg !3280
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3280
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3280

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3280

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub148 = sub i64 %37, 1, !dbg !3280
  %and149 = and i64 %sub148, 34359738368, !dbg !3280
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3280
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3280

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3280

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub153 = sub i64 %38, 1, !dbg !3280
  %and154 = and i64 %sub153, 17179869184, !dbg !3280
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3280
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3280

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3280

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub158 = sub i64 %39, 1, !dbg !3280
  %and159 = and i64 %sub158, 8589934592, !dbg !3280
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3280
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3280

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3280

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub163 = sub i64 %40, 1, !dbg !3280
  %and164 = and i64 %sub163, 4294967296, !dbg !3280
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3280
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3280

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3280

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub168 = sub i64 %41, 1, !dbg !3280
  %and169 = and i64 %sub168, 2147483648, !dbg !3280
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3280
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3280

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3280

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub173 = sub i64 %42, 1, !dbg !3280
  %and174 = and i64 %sub173, 1073741824, !dbg !3280
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3280
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3280

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3280

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub178 = sub i64 %43, 1, !dbg !3280
  %and179 = and i64 %sub178, 536870912, !dbg !3280
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3280
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3280

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3280

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub183 = sub i64 %44, 1, !dbg !3280
  %and184 = and i64 %sub183, 268435456, !dbg !3280
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3280
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3280

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3280

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub188 = sub i64 %45, 1, !dbg !3280
  %and189 = and i64 %sub188, 134217728, !dbg !3280
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3280
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3280

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3280

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub193 = sub i64 %46, 1, !dbg !3280
  %and194 = and i64 %sub193, 67108864, !dbg !3280
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3280
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3280

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3280

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub198 = sub i64 %47, 1, !dbg !3280
  %and199 = and i64 %sub198, 33554432, !dbg !3280
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3280
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3280

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3280

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub203 = sub i64 %48, 1, !dbg !3280
  %and204 = and i64 %sub203, 16777216, !dbg !3280
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3280
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3280

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3280

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub208 = sub i64 %49, 1, !dbg !3280
  %and209 = and i64 %sub208, 8388608, !dbg !3280
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3280
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3280

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3280

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub213 = sub i64 %50, 1, !dbg !3280
  %and214 = and i64 %sub213, 4194304, !dbg !3280
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3280
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3280

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3280

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub218 = sub i64 %51, 1, !dbg !3280
  %and219 = and i64 %sub218, 2097152, !dbg !3280
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3280
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3280

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3280

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub223 = sub i64 %52, 1, !dbg !3280
  %and224 = and i64 %sub223, 1048576, !dbg !3280
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3280
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3280

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3280

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub228 = sub i64 %53, 1, !dbg !3280
  %and229 = and i64 %sub228, 524288, !dbg !3280
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3280
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3280

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3280

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub233 = sub i64 %54, 1, !dbg !3280
  %and234 = and i64 %sub233, 262144, !dbg !3280
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3280
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3280

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3280

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub238 = sub i64 %55, 1, !dbg !3280
  %and239 = and i64 %sub238, 131072, !dbg !3280
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3280
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3280

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3280

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub243 = sub i64 %56, 1, !dbg !3280
  %and244 = and i64 %sub243, 65536, !dbg !3280
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3280
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3280

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3280

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub248 = sub i64 %57, 1, !dbg !3280
  %and249 = and i64 %sub248, 32768, !dbg !3280
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3280
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3280

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3280

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub253 = sub i64 %58, 1, !dbg !3280
  %and254 = and i64 %sub253, 16384, !dbg !3280
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3280
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3280

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3280

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub258 = sub i64 %59, 1, !dbg !3280
  %and259 = and i64 %sub258, 8192, !dbg !3280
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3280
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3280

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3280

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub263 = sub i64 %60, 1, !dbg !3280
  %and264 = and i64 %sub263, 4096, !dbg !3280
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3280
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3280

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3280

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub268 = sub i64 %61, 1, !dbg !3280
  %and269 = and i64 %sub268, 2048, !dbg !3280
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3280
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3280

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3280

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub273 = sub i64 %62, 1, !dbg !3280
  %and274 = and i64 %sub273, 1024, !dbg !3280
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3280
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3280

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3280

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub278 = sub i64 %63, 1, !dbg !3280
  %and279 = and i64 %sub278, 512, !dbg !3280
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3280
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3280

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3280

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub283 = sub i64 %64, 1, !dbg !3280
  %and284 = and i64 %sub283, 256, !dbg !3280
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3280
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3280

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3280

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub288 = sub i64 %65, 1, !dbg !3280
  %and289 = and i64 %sub288, 128, !dbg !3280
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3280
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3280

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3280

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub293 = sub i64 %66, 1, !dbg !3280
  %and294 = and i64 %sub293, 64, !dbg !3280
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3280
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3280

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3280

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub298 = sub i64 %67, 1, !dbg !3280
  %and299 = and i64 %sub298, 32, !dbg !3280
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3280
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3280

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3280

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub303 = sub i64 %68, 1, !dbg !3280
  %and304 = and i64 %sub303, 16, !dbg !3280
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3280
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3280

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3280

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub308 = sub i64 %69, 1, !dbg !3280
  %and309 = and i64 %sub308, 8, !dbg !3280
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3280
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3280

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3280

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub313 = sub i64 %70, 1, !dbg !3280
  %and314 = and i64 %sub313, 4, !dbg !3280
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3280
  %71 = zext i1 %tobool315 to i64, !dbg !3280
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3280
  br label %cond.end, !dbg !3280

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3280
  br label %cond.end317, !dbg !3280

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3280
  br label %cond.end319, !dbg !3280

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3280
  br label %cond.end321, !dbg !3280

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3280
  br label %cond.end323, !dbg !3280

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3280
  br label %cond.end325, !dbg !3280

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3280
  br label %cond.end327, !dbg !3280

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3280
  br label %cond.end329, !dbg !3280

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3280
  br label %cond.end331, !dbg !3280

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3280
  br label %cond.end333, !dbg !3280

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3280
  br label %cond.end335, !dbg !3280

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3280
  br label %cond.end337, !dbg !3280

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3280
  br label %cond.end339, !dbg !3280

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3280
  br label %cond.end341, !dbg !3280

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3280
  br label %cond.end343, !dbg !3280

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3280
  br label %cond.end345, !dbg !3280

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3280
  br label %cond.end347, !dbg !3280

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3280
  br label %cond.end349, !dbg !3280

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3280
  br label %cond.end351, !dbg !3280

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3280
  br label %cond.end353, !dbg !3280

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3280
  br label %cond.end355, !dbg !3280

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3280
  br label %cond.end357, !dbg !3280

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3280
  br label %cond.end359, !dbg !3280

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3280
  br label %cond.end361, !dbg !3280

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3280
  br label %cond.end363, !dbg !3280

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3280
  br label %cond.end365, !dbg !3280

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3280
  br label %cond.end367, !dbg !3280

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3280
  br label %cond.end369, !dbg !3280

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3280
  br label %cond.end371, !dbg !3280

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3280
  br label %cond.end373, !dbg !3280

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3280
  br label %cond.end375, !dbg !3280

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3280
  br label %cond.end377, !dbg !3280

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3280
  br label %cond.end379, !dbg !3280

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3280
  br label %cond.end381, !dbg !3280

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3280
  br label %cond.end383, !dbg !3280

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3280
  br label %cond.end385, !dbg !3280

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3280
  br label %cond.end387, !dbg !3280

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3280
  br label %cond.end389, !dbg !3280

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3280
  br label %cond.end391, !dbg !3280

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3280
  br label %cond.end393, !dbg !3280

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3280
  br label %cond.end395, !dbg !3280

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3280
  br label %cond.end397, !dbg !3280

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3280
  br label %cond.end399, !dbg !3280

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3280
  br label %cond.end401, !dbg !3280

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3280
  br label %cond.end403, !dbg !3280

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3280
  br label %cond.end405, !dbg !3280

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3280
  br label %cond.end407, !dbg !3280

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3280
  br label %cond.end409, !dbg !3280

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3280
  br label %cond.end411, !dbg !3280

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3280
  br label %cond.end413, !dbg !3280

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3280
  br label %cond.end415, !dbg !3280

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3280
  br label %cond.end417, !dbg !3280

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3280
  br label %cond.end419, !dbg !3280

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3280
  br label %cond.end421, !dbg !3280

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3280
  br label %cond.end423, !dbg !3280

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3280
  br label %cond.end425, !dbg !3280

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3280
  br label %cond.end427, !dbg !3280

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3280
  br label %cond.end429, !dbg !3280

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3280
  br label %cond.end431, !dbg !3280

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3280
  br label %cond.end433, !dbg !3280

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3280
  br label %cond.end435, !dbg !3280

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3280
  br label %cond.end437, !dbg !3280

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3280
  br label %cond.end440, !dbg !3280

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3280

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3280
  br label %cond.end444, !dbg !3280

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3280
  %sub443 = sub i64 %72, 1, !dbg !3280
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3280
  br label %cond.end444, !dbg !3280

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3280
  %sub446 = sub i32 %cond445, 12, !dbg !3281
  %add = add i32 %sub446, 1, !dbg !3282
  store i32 %add, i32* %retval, align 4, !dbg !3283
  br label %return, !dbg !3283

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3284
  %dec = add i64 %73, -1, !dbg !3284
  store i64 %dec, i64* %size.addr, align 8, !dbg !3284
  %74 = load i64, i64* %size.addr, align 8, !dbg !3285
  %shr = lshr i64 %74, 12, !dbg !3285
  store i64 %shr, i64* %size.addr, align 8, !dbg !3285
  %75 = load i64, i64* %size.addr, align 8, !dbg !3286
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3263
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3287
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3288
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3287, !srcloc !3289
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3287
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3290
  %add.i = add i32 %79, 1, !dbg !3291
  store i32 %add.i, i32* %retval, align 4, !dbg !3292
  br label %return, !dbg !3292

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3293
  ret i32 %80, !dbg !3293
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3294 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3255, metadata !DIExpression()), !dbg !3298
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3262, metadata !DIExpression()), !dbg !3300
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3301, metadata !DIExpression()), !dbg !3302
  %0 = load i64, i64* %n.addr, align 8, !dbg !3303
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3300
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3304
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3305
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3304, !srcloc !3289
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3304
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3306
  %add.i = add i32 %4, 1, !dbg !3307
  %sub = sub i32 %add.i, 1, !dbg !3308
  ret i32 %sub, !dbg !3309
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3310 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3322
  ret i8* %0, !dbg !3323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psmouse_smbus_schedule_remove(%struct.i2c_client* %client) #0 !dbg !3324 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %rwork = alloca %struct.psmouse_smbus_removal_work*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_removal_work** %rwork, metadata !3329, metadata !DIExpression()), !dbg !3330
  %call = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !3331
  %0 = bitcast i8* %call to %struct.psmouse_smbus_removal_work*, !dbg !3331
  store %struct.psmouse_smbus_removal_work* %0, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3332
  %1 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3333
  %tobool = icmp ne %struct.psmouse_smbus_removal_work* %1, null, !dbg !3333
  br i1 %tobool, label %if.then, label %if.end, !dbg !3335

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3336

do.body:                                          ; preds = %if.then
  %2 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3338
  %work = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %2, i32 0, i32 0, !dbg !3338
  call void @__init_work(%struct.work_struct* %work, i32 0) #9, !dbg !3338
  %3 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3338
  %work1 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %3, i32 0, i32 0, !dbg !3338
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work1, i32 0, i32 0, !dbg !3338
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !3338
  store i64 68719476704, i64* %counter, align 8, !dbg !3338
  %4 = bitcast %struct.atomic64_t* %data to i8*, !dbg !3338
  %5 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !3338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false), !dbg !3338
  %6 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3338
  %work2 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %6, i32 0, i32 0, !dbg !3338
  %entry3 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work2, i32 0, i32 1, !dbg !3338
  call void @INIT_LIST_HEAD(%struct.list_head* %entry3) #9, !dbg !3338
  %7 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3338
  %work4 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %7, i32 0, i32 0, !dbg !3338
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work4, i32 0, i32 2, !dbg !3338
  store void (%struct.work_struct*)* @psmouse_smbus_remove_i2c_device, void (%struct.work_struct*)** %func, align 8, !dbg !3338
  br label %do.end, !dbg !3338

do.end:                                           ; preds = %do.body
  %8 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3340
  %9 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3341
  %client5 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %9, i32 0, i32 1, !dbg !3342
  store %struct.i2c_client* %8, %struct.i2c_client** %client5, align 8, !dbg !3343
  %10 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3344
  %work6 = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %10, i32 0, i32 0, !dbg !3345
  %call7 = call zeroext i1 @schedule_work(%struct.work_struct* %work6) #9, !dbg !3346
  br label %if.end, !dbg !3347

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !3348
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !3349 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3352, metadata !DIExpression()), !dbg !3353
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3357 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3358, metadata !DIExpression()), !dbg !3359
  br label %do.body, !dbg !3360

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3361

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3363

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3361

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3365
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3365
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3365
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3365
  br label %do.end3, !dbg !3365

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3361

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3367
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3368
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3369
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3370
  ret void, !dbg !3371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psmouse_smbus_remove_i2c_device(%struct.work_struct* %work) #0 !dbg !3372 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %rwork = alloca %struct.psmouse_smbus_removal_work*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.psmouse_smbus_removal_work*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_removal_work** %rwork, metadata !3375, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3377, metadata !DIExpression()), !dbg !3379
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3379
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !3379
  store i8* %1, i8** %__mptr, align 8, !dbg !3379
  br label %do.body, !dbg !3379

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3380

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3379
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3379
  %3 = bitcast i8* %add.ptr to %struct.psmouse_smbus_removal_work*, !dbg !3379
  store %struct.psmouse_smbus_removal_work* %3, %struct.psmouse_smbus_removal_work** %tmp, align 8, !dbg !3380
  %4 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %tmp, align 8, !dbg !3379
  store %struct.psmouse_smbus_removal_work* %4, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3376
  %5 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3382
  %client = getelementptr inbounds %struct.psmouse_smbus_removal_work, %struct.psmouse_smbus_removal_work* %5, i32 0, i32 1, !dbg !3383
  %6 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3383
  call void @i2c_unregister_device(%struct.i2c_client* %6) #9, !dbg !3384
  %7 = load %struct.psmouse_smbus_removal_work*, %struct.psmouse_smbus_removal_work** %rwork, align 8, !dbg !3385
  %8 = bitcast %struct.psmouse_smbus_removal_work* %7 to i8*, !dbg !3385
  call void @kfree(i8* %8) #9, !dbg !3386
  ret void, !dbg !3387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !3388 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3391, metadata !DIExpression()), !dbg !3392
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !3393
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3394
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !3395
  ret i1 %call, !dbg !3396
}

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !3397 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !3400, metadata !DIExpression()), !dbg !3401
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3402, metadata !DIExpression()), !dbg !3403
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !3404
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3405
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !3406
  ret i1 %call, !dbg !3407
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3408 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3411, metadata !DIExpression()), !dbg !3412
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3417
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3419
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3420
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !3421
  br i1 %call, label %if.end, label %if.then, !dbg !3422

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3423

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3424
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3425
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3426
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3427
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3428
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3429
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3430
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3431
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3432
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3433
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3434
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3435
  br label %do.body, !dbg !3436

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3437

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3439

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3437

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3441
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3441
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3441
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3441
  br label %do.end7, !dbg !3441

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3437

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3444 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3447, metadata !DIExpression()), !dbg !3448
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  ret i1 true, !dbg !3453
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_adapter* @i2c_verify_adapter(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_check_functionality(%struct.i2c_adapter* %adap, i32 %func) #0 !dbg !3454 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %func.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  %0 = load i32, i32* %func.addr, align 4, !dbg !3461
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3462
  %call = call i32 @i2c_get_functionality(%struct.i2c_adapter* %1) #9, !dbg !3463
  %and = and i32 %0, %call, !dbg !3464
  %2 = load i32, i32* %func.addr, align 4, !dbg !3465
  %cmp = icmp eq i32 %and, %2, !dbg !3466
  %conv = zext i1 %cmp to i32, !dbg !3466
  ret i32 %conv, !dbg !3467
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_scanned_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*, i32 (%struct.i2c_adapter*, i16)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3468 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3474
  %1 = ptrtoint i8* %0 to i64, !dbg !3474
  %2 = inttoptr i64 %1 to i8*, !dbg !3474
  %3 = ptrtoint i8* %2 to i64, !dbg !3474
  %cmp = icmp uge i64 %3, -4095, !dbg !3474
  %lnot = xor i1 %cmp, true, !dbg !3474
  %lnot1 = xor i1 %lnot, true, !dbg !3474
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3474
  %conv = sext i32 %lnot.ext to i64, !dbg !3474
  %tobool = icmp ne i64 %conv, 0, !dbg !3474
  ret i1 %tobool, !dbg !3475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_get_functionality(%struct.i2c_adapter* %adap) #0 !dbg !3476 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3477, metadata !DIExpression()), !dbg !3478
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3479
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 2, !dbg !3480
  %1 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !3480
  %functionality = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %1, i32 0, i32 4, !dbg !3481
  %2 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %functionality, align 8, !dbg !3481
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3482
  %call = call i32 %2(%struct.i2c_adapter* %3) #9, !dbg !3479
  ret i32 %call, !dbg !3483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @psmouse_smbus_notifier_call(%struct.notifier_block* %nb, i64 %action, i8* %data) #0 !dbg !3484 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.i2c_adapter*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp8 = alloca %struct.i2c_client*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3491, metadata !DIExpression()), !dbg !3492
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3493
  %1 = bitcast i8* %0 to %struct.device*, !dbg !3493
  store %struct.device* %1, %struct.device** %dev, align 8, !dbg !3492
  %2 = load i64, i64* %action.addr, align 8, !dbg !3494
  switch i64 %2, label %sw.epilog [
    i64 1, label %sw.bb
    i64 3, label %sw.bb1
  ], !dbg !3495

sw.bb:                                            ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3496
  %type = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 4, !dbg !3499
  %4 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !3499
  %cmp = icmp eq %struct.device_type* %4, @i2c_adapter_type, !dbg !3500
  br i1 %cmp, label %if.then, label %if.end, !dbg !3501

if.then:                                          ; preds = %sw.bb
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3502, metadata !DIExpression()), !dbg !3504
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3504
  %6 = bitcast %struct.device* %5 to i8*, !dbg !3504
  store i8* %6, i8** %__mptr, align 8, !dbg !3504
  br label %do.body, !dbg !3504

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !3505

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !3504
  %add.ptr = getelementptr i8, i8* %7, i64 -96, !dbg !3504
  %8 = bitcast i8* %add.ptr to %struct.i2c_adapter*, !dbg !3504
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %tmp, align 8, !dbg !3505
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %tmp, align 8, !dbg !3504
  call void @psmouse_smbus_check_adapter(%struct.i2c_adapter* %9) #9, !dbg !3507
  br label %if.end, !dbg !3507

if.end:                                           ; preds = %do.end, %sw.bb
  br label %sw.epilog, !dbg !3508

sw.bb1:                                           ; preds = %entry
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3509
  %type2 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 4, !dbg !3511
  %11 = load %struct.device_type*, %struct.device_type** %type2, align 8, !dbg !3511
  %cmp3 = icmp eq %struct.device_type* %11, @i2c_client_type, !dbg !3512
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !3513

if.then4:                                         ; preds = %sw.bb1
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !3514, metadata !DIExpression()), !dbg !3516
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3516
  %13 = bitcast %struct.device* %12 to i8*, !dbg !3516
  store i8* %13, i8** %__mptr5, align 8, !dbg !3516
  br label %do.body6, !dbg !3516

do.body6:                                         ; preds = %if.then4
  br label %do.end7, !dbg !3517

do.end7:                                          ; preds = %do.body6
  %14 = load i8*, i8** %__mptr5, align 8, !dbg !3516
  %add.ptr9 = getelementptr i8, i8* %14, i64 -32, !dbg !3516
  %15 = bitcast i8* %add.ptr9 to %struct.i2c_client*, !dbg !3516
  store %struct.i2c_client* %15, %struct.i2c_client** %tmp8, align 8, !dbg !3517
  %16 = load %struct.i2c_client*, %struct.i2c_client** %tmp8, align 8, !dbg !3516
  call void @psmouse_smbus_detach_i2c_client(%struct.i2c_client* %16) #9, !dbg !3519
  br label %if.end10, !dbg !3519

if.end10:                                         ; preds = %do.end7, %sw.bb1
  br label %sw.epilog, !dbg !3520

sw.epilog:                                        ; preds = %entry, %if.end10, %if.end
  ret i32 0, !dbg !3521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psmouse_smbus_check_adapter(%struct.i2c_adapter* %adapter) #0 !dbg !3522 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !3525, metadata !DIExpression()), !dbg !3526
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3527
  %call = call i32 @i2c_check_functionality(%struct.i2c_adapter* %0, i32 268435456) #9, !dbg !3529
  %tobool = icmp ne i32 %call, 0, !dbg !3529
  br i1 %tobool, label %if.end, label %if.then, !dbg !3530

if.then:                                          ; preds = %entry
  br label %return, !dbg !3531

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3532
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3533, metadata !DIExpression()), !dbg !3536
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @psmouse_smbus_list, i32 0, i32 0), align 8, !dbg !3536
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3536
  store i8* %2, i8** %__mptr, align 8, !dbg !3536
  br label %do.body, !dbg !3536

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3537

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3536
  %add.ptr = getelementptr i8, i8* %3, i64 -96, !dbg !3536
  %4 = bitcast i8* %add.ptr to %struct.psmouse_smbus_dev*, !dbg !3536
  store %struct.psmouse_smbus_dev* %4, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3537
  %5 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3536
  store %struct.psmouse_smbus_dev* %5, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3539
  br label %for.cond, !dbg !3539

for.cond:                                         ; preds = %do.end10, %do.end
  %6 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3540
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %6, i32 0, i32 3, !dbg !3540
  %cmp = icmp eq %struct.list_head* %node, @psmouse_smbus_list, !dbg !3540
  %lnot = xor i1 %cmp, true, !dbg !3540
  br i1 %lnot, label %for.body, label %for.end, !dbg !3539

for.body:                                         ; preds = %for.cond
  %7 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3542
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %7, i32 0, i32 4, !dbg !3545
  %8 = load i8, i8* %dead, align 8, !dbg !3545
  %tobool1 = trunc i8 %8 to i1, !dbg !3545
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3546

if.then2:                                         ; preds = %for.body
  br label %for.inc, !dbg !3547

if.end3:                                          ; preds = %for.body
  %9 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3548
  %client = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %9, i32 0, i32 2, !dbg !3550
  %10 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !3550
  %tobool4 = icmp ne %struct.i2c_client* %10, null, !dbg !3548
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3551

if.then5:                                         ; preds = %if.end3
  br label %for.inc, !dbg !3552

if.end6:                                          ; preds = %if.end3
  %11 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3553
  %psmouse = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %11, i32 0, i32 1, !dbg !3554
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !3554
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 2, !dbg !3555
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !3556
  %13 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3556
  call void @serio_rescan(%struct.serio* %13) #9, !dbg !3557
  br label %for.inc, !dbg !3558

for.inc:                                          ; preds = %if.end6, %if.then5, %if.then2
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !3559, metadata !DIExpression()), !dbg !3561
  %14 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3561
  %node8 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %14, i32 0, i32 3, !dbg !3561
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node8, i32 0, i32 0, !dbg !3561
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3561
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !3561
  store i8* %16, i8** %__mptr7, align 8, !dbg !3561
  br label %do.body9, !dbg !3561

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !3562

do.end10:                                         ; preds = %do.body9
  %17 = load i8*, i8** %__mptr7, align 8, !dbg !3561
  %add.ptr12 = getelementptr i8, i8* %17, i64 -96, !dbg !3561
  %18 = bitcast i8* %add.ptr12 to %struct.psmouse_smbus_dev*, !dbg !3561
  store %struct.psmouse_smbus_dev* %18, %struct.psmouse_smbus_dev** %tmp11, align 8, !dbg !3562
  %19 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp11, align 8, !dbg !3561
  store %struct.psmouse_smbus_dev* %19, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3540
  br label %for.cond, !dbg !3540, !llvm.loop !3564

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3566
  br label %return, !dbg !3567

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !3567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @psmouse_smbus_detach_i2c_client(%struct.i2c_client* %client) #0 !dbg !3568 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  %smbdev = alloca %struct.psmouse_smbus_dev*, align 8
  %tmp = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.psmouse_smbus_dev*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.psmouse_smbus_dev*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %smbdev, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.declare(metadata %struct.psmouse_smbus_dev** %tmp, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @mutex_lock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3575
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3576, metadata !DIExpression()), !dbg !3579
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @psmouse_smbus_list, i32 0, i32 0), align 8, !dbg !3579
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !3579
  store i8* %1, i8** %__mptr, align 8, !dbg !3579
  br label %do.body, !dbg !3579

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3580

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3579
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !3579
  %3 = bitcast i8* %add.ptr to %struct.psmouse_smbus_dev*, !dbg !3579
  store %struct.psmouse_smbus_dev* %3, %struct.psmouse_smbus_dev** %tmp1, align 8, !dbg !3580
  %4 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp1, align 8, !dbg !3579
  store %struct.psmouse_smbus_dev* %4, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3582
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3583, metadata !DIExpression()), !dbg !3585
  %5 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3585
  %node = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %5, i32 0, i32 3, !dbg !3585
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3585
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3585
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !3585
  store i8* %7, i8** %__mptr2, align 8, !dbg !3585
  br label %do.body3, !dbg !3585

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3586

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !3585
  %add.ptr6 = getelementptr i8, i8* %8, i64 -96, !dbg !3585
  %9 = bitcast i8* %add.ptr6 to %struct.psmouse_smbus_dev*, !dbg !3585
  store %struct.psmouse_smbus_dev* %9, %struct.psmouse_smbus_dev** %tmp5, align 8, !dbg !3586
  %10 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp5, align 8, !dbg !3585
  store %struct.psmouse_smbus_dev* %10, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3582
  br label %for.cond, !dbg !3582

for.cond:                                         ; preds = %do.end20, %do.end4
  %11 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3588
  %node7 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %11, i32 0, i32 3, !dbg !3588
  %cmp = icmp eq %struct.list_head* %node7, @psmouse_smbus_list, !dbg !3588
  %lnot = xor i1 %cmp, true, !dbg !3588
  br i1 %lnot, label %for.body, label %for.end, !dbg !3582

for.body:                                         ; preds = %for.cond
  %12 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3590
  %client8 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %12, i32 0, i32 2, !dbg !3593
  %13 = load %struct.i2c_client*, %struct.i2c_client** %client8, align 8, !dbg !3593
  %14 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3594
  %cmp9 = icmp ne %struct.i2c_client* %13, %14, !dbg !3595
  br i1 %cmp9, label %if.then, label %if.end, !dbg !3596

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3597

if.end:                                           ; preds = %for.body
  %15 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3598
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 4, !dbg !3599
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 7, !dbg !3600
  %16 = load i8*, i8** %platform_data, align 8, !dbg !3600
  call void @kfree(i8* %16) #9, !dbg !3601
  %17 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !3602
  %dev10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 4, !dbg !3603
  %platform_data11 = getelementptr inbounds %struct.device, %struct.device* %dev10, i32 0, i32 7, !dbg !3604
  store i8* null, i8** %platform_data11, align 8, !dbg !3605
  %18 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3606
  %dead = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %18, i32 0, i32 4, !dbg !3608
  %19 = load i8, i8* %dead, align 8, !dbg !3608
  %tobool = trunc i8 %19 to i1, !dbg !3608
  br i1 %tobool, label %if.else, label %if.then12, !dbg !3609

if.then12:                                        ; preds = %if.end
  %20 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3610
  %dead13 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %20, i32 0, i32 4, !dbg !3612
  store i8 1, i8* %dead13, align 8, !dbg !3613
  %21 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3614
  %psmouse = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %21, i32 0, i32 1, !dbg !3615
  %22 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !3615
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 2, !dbg !3616
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !3617
  %23 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3617
  call void @serio_rescan(%struct.serio* %23) #9, !dbg !3618
  br label %if.end15, !dbg !3619

if.else:                                          ; preds = %if.end
  %24 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3620
  %node14 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %24, i32 0, i32 3, !dbg !3622
  call void @list_del(%struct.list_head* %node14) #9, !dbg !3623
  %25 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3624
  %26 = bitcast %struct.psmouse_smbus_dev* %25 to i8*, !dbg !3624
  call void @kfree(i8* %26) #9, !dbg !3625
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  br label %for.inc, !dbg !3626

for.inc:                                          ; preds = %if.end15, %if.then
  %27 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3588
  store %struct.psmouse_smbus_dev* %27, %struct.psmouse_smbus_dev** %smbdev, align 8, !dbg !3588
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !3627, metadata !DIExpression()), !dbg !3629
  %28 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3629
  %node17 = getelementptr inbounds %struct.psmouse_smbus_dev, %struct.psmouse_smbus_dev* %28, i32 0, i32 3, !dbg !3629
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %node17, i32 0, i32 0, !dbg !3629
  %29 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !3629
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !3629
  store i8* %30, i8** %__mptr16, align 8, !dbg !3629
  br label %do.body19, !dbg !3629

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !3630

do.end20:                                         ; preds = %do.body19
  %31 = load i8*, i8** %__mptr16, align 8, !dbg !3629
  %add.ptr22 = getelementptr i8, i8* %31, i64 -96, !dbg !3629
  %32 = bitcast i8* %add.ptr22 to %struct.psmouse_smbus_dev*, !dbg !3629
  store %struct.psmouse_smbus_dev* %32, %struct.psmouse_smbus_dev** %tmp21, align 8, !dbg !3630
  %33 = load %struct.psmouse_smbus_dev*, %struct.psmouse_smbus_dev** %tmp21, align 8, !dbg !3629
  store %struct.psmouse_smbus_dev* %33, %struct.psmouse_smbus_dev** %tmp, align 8, !dbg !3588
  br label %for.cond, !dbg !3588, !llvm.loop !3632

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @psmouse_smbus_mutex) #9, !dbg !3634
  ret void, !dbg !3635
}

; Function Attrs: noredzone
declare dso_local void @serio_rescan(%struct.serio*) #2

; Function Attrs: noredzone
declare dso_local void @flush_workqueue(%struct.workqueue_struct*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2612, !2613, !2614, !2615}
!llvm.ident = !{!2616}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "psmouse_smbus_mutex", scope: !2, file: !3, line: 27, type: !514, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, globals: !2596, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/mouse/psmouse-smbus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17, !23, !29, !36, !44, !50, !64, !70, !97, !104, !109, !113, !122, !127, !134}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !24, line: 26, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !71, line: 48, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!73 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3, isUnsigned: true)
!77 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4, isUnsigned: true)
!78 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5, isUnsigned: true)
!79 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6, isUnsigned: true)
!80 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7, isUnsigned: true)
!81 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8, isUnsigned: true)
!82 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9, isUnsigned: true)
!83 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10, isUnsigned: true)
!84 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11, isUnsigned: true)
!85 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12, isUnsigned: true)
!86 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13, isUnsigned: true)
!87 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14, isUnsigned: true)
!88 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15, isUnsigned: true)
!89 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16, isUnsigned: true)
!90 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17, isUnsigned: true)
!91 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18, isUnsigned: true)
!92 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19, isUnsigned: true)
!93 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20, isUnsigned: true)
!94 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21, isUnsigned: true)
!95 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22, isUnsigned: true)
!96 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !71, line: 28, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0, isUnsigned: true)
!100 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3, isUnsigned: true)
!103 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 37, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2, isUnsigned: true)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !71, line: 43, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !114, line: 19, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!120 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!121 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !123, line: 10, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !128, line: 305, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 30, baseType: !136, size: 64, elements: !137)
!135 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!136 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!138 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!139 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!140 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!141 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!142 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!143 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!144 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!145 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!146 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!147 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!148 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!149 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!150 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!151 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!152 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!153 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!154 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!155 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!156 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!157 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!158 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!159 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!160 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!161 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!162 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!163 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!164 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!165 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!166 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!167 = !{!168, !169, !1604, !2589, !348, !2591, !2461, !2454}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_smbus_dev", file: !3, line: 17, size: 960, elements: !171)
!171 = !{!172, !2294, !2453, !2586, !2587, !2588}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "board", scope: !170, file: !3, line: 18, baseType: !173, size: 640)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !174, line: 410, size: 640, elements: !175)
!174 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !181, !183, !184, !187, !188, !2249, !2250, !2276, !2292, !2293}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !174, line: 411, baseType: !177, size: 160)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 160, elements: !179)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !{!180}
!180 = !DISubrange(count: 20)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !174, line: 412, baseType: !182, size: 16, offset: 160)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !173, file: !174, line: 413, baseType: !182, size: 16, offset: 176)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !173, file: !174, line: 414, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !173, file: !174, line: 415, baseType: !168, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !173, file: !174, line: 416, baseType: !189, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !191, line: 51, size: 1344, elements: !192)
!191 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !200, !201, !2233, !2242, !2243, !2244, !2245, !2246, !2247, !2248}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !191, line: 52, baseType: !185, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !190, file: !191, line: 53, baseType: !195, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !191, line: 28, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !197, line: 21, baseType: !198)
!197 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !199, line: 27, baseType: !7)
!199 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !190, file: !191, line: 54, baseType: !185, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !190, file: !191, line: 55, baseType: !202, size: 192, offset: 192)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !203, line: 17, size: 192, elements: !204)
!203 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !207, !2232}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !202, file: !203, line: 18, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !202, file: !203, line: 19, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !203, line: 110, size: 1152, elements: !211)
!211 = !{!212, !216, !220, !229, !2174, !2178, !2182, !2187, !2191, !2192, !2196, !2200, !2204, !2215, !2216, !2217, !2218, !2228}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !210, file: !203, line: 111, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!206, !206}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !210, file: !203, line: 112, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !206}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !210, file: !203, line: 113, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !227}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !225, line: 30, baseType: !226)
!225 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!226 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !210, file: !203, line: 114, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !227, !235}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !238)
!238 = !{!239, !1732, !1734, !1737, !1738, !1789, !1886, !1887, !1888, !1889, !1890, !1899, !2004, !2017, !2099, !2100, !2104, !2106, !2107, !2108, !2112, !2118, !2119, !2122, !2123, !2124, !2127, !2128, !2129, !2130, !2162, !2163, !2164, !2167, !2170, !2171, !2172, !2173}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !237, file: !30, line: 462, baseType: !240, size: 512)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !241, line: 64, size: 512, elements: !242)
!241 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !244, !250, !252, !313, !1568, !1722, !1727, !1728, !1729, !1730, !1731}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !241, line: 65, baseType: !185, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !240, file: !241, line: 66, baseType: !245, size: 128, offset: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !225, line: 178, size: 128, elements: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !225, line: 179, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !225, line: 179, baseType: !248, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !240, file: !241, line: 67, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !240, file: !241, line: 68, baseType: !253, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !241, line: 192, size: 704, elements: !255)
!255 = !{!256, !257, !273, !274}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !254, file: !241, line: 193, baseType: !245, size: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !254, file: !241, line: 194, baseType: !258, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !259, line: 83, baseType: !260)
!259 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !259, line: 71, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !259, line: 72, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !259, line: 72, elements: !264)
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !263, file: !259, line: 73, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !259, line: 20, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !266, file: !259, line: 21, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !270, line: 25, baseType: !271)
!270 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 25, elements: !272)
!272 = !{}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !254, file: !241, line: 195, baseType: !240, size: 512, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !254, file: !241, line: 196, baseType: !275, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !241, line: 156, size: 192, elements: !278)
!278 = !{!279, !285, !290}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !277, file: !241, line: 157, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !253, !251}
!284 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !241, line: 158, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!185, !253, !251}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !277, file: !241, line: 159, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!284, !253, !251, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !241, line: 148, size: 20736, elements: !297)
!297 = !{!298, !303, !307, !308, !312}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !296, file: !241, line: 149, baseType: !299, size: 192)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !301)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!301 = !{!302}
!302 = !DISubrange(count: 3)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !296, file: !241, line: 150, baseType: !304, size: 4096, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 4096, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !296, file: !241, line: 151, baseType: !284, size: 32, offset: 4288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !296, file: !241, line: 152, baseType: !309, size: 16384, offset: 4320)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 16384, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 2048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !296, file: !241, line: 153, baseType: !284, size: 32, offset: 20704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !240, file: !241, line: 69, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !241, line: 138, size: 448, elements: !316)
!316 = !{!317, !321, !349, !351, !1516, !1547, !1551}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !315, file: !241, line: 139, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !251}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !315, file: !241, line: 140, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !325, line: 230, size: 128, elements: !326)
!325 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !341}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !324, file: !325, line: 231, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !251, !335, !300}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !225, line: 60, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !333, line: 73, baseType: !334)
!333 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !333, line: 15, baseType: !136)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !325, line: 30, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !325, line: 31, baseType: !185, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !336, file: !325, line: 32, baseType: !340, size: 16, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !225, line: 19, baseType: !182)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !324, file: !325, line: 232, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!331, !251, !335, !185, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !225, line: 55, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !333, line: 72, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !333, line: 16, baseType: !348)
!348 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !315, file: !241, line: 141, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !315, file: !241, line: 142, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !325, line: 84, size: 320, elements: !356)
!356 = !{!357, !358, !362, !1513, !1514}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !325, line: 85, baseType: !185, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !355, file: !325, line: 86, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!340, !251, !335, !284}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !355, file: !325, line: 88, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!340, !251, !366, !284}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !325, line: 168, size: 448, elements: !368)
!368 = !{!369, !370, !371, !372, !382, !383}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !367, file: !325, line: 169, baseType: !336, size: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !367, file: !325, line: 170, baseType: !345, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !367, file: !325, line: 171, baseType: !168, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !367, file: !325, line: 172, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!331, !376, !251, !366, !300, !379, !345}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !378, line: 526, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !225, line: 46, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !333, line: 88, baseType: !381)
!381 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !367, file: !325, line: 174, baseType: !373, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !367, file: !325, line: 176, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!284, !376, !251, !366, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !389, line: 305, size: 1472, elements: !390)
!389 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !392, !393, !394, !395, !403, !404, !1487, !1493, !1494, !1499, !1500, !1503, !1507, !1508, !1509, !1510, !1511}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !388, file: !389, line: 308, baseType: !348, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !388, file: !389, line: 309, baseType: !348, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !388, file: !389, line: 313, baseType: !387, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !388, file: !389, line: 313, baseType: !387, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !388, file: !389, line: 315, baseType: !396, size: 192, align: 64, offset: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !397, line: 24, size: 192, align: 64, elements: !398)
!397 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !400, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !396, file: !397, line: 25, baseType: !348, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !396, file: !397, line: 26, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !396, file: !397, line: 27, baseType: !401, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !388, file: !389, line: 323, baseType: !348, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !388, file: !389, line: 327, baseType: !405, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !389, line: 388, size: 7296, elements: !407)
!407 = !{!408, !1483}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !389, line: 389, baseType: !409, size: 7296)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !389, line: 389, size: 7296, elements: !410)
!410 = !{!411, !412, !416, !420, !424, !425, !426, !427, !428, !436, !441, !442, !443, !444, !453, !454, !455, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !490, !498, !501, !549, !550, !1454, !1455, !1458, !1462, !1463, !1466, !1467, !1468, !1471, !1482}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !409, file: !389, line: 390, baseType: !387, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !409, file: !389, line: 391, baseType: !413, size: 64, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !397, line: 31, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !413, file: !397, line: 32, baseType: !401, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !409, file: !389, line: 392, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !197, line: 23, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !199, line: 31, baseType: !419)
!419 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !409, file: !389, line: 394, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!348, !376, !348, !348, !348, !348}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !409, file: !389, line: 398, baseType: !348, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !409, file: !389, line: 399, baseType: !348, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !409, file: !389, line: 405, baseType: !348, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !409, file: !389, line: 406, baseType: !348, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !409, file: !389, line: 407, baseType: !429, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !378, line: 286, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 286, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !431, file: !378, line: 286, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !435, line: 18, baseType: !348)
!435 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!436 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !409, file: !389, line: 416, baseType: !437, size: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !225, line: 168, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 166, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !438, file: !225, line: 167, baseType: !284, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !409, file: !389, line: 428, baseType: !437, size: 32, offset: 608)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !409, file: !389, line: 437, baseType: !437, size: 32, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !409, file: !389, line: 447, baseType: !437, size: 32, offset: 672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !409, file: !389, line: 450, baseType: !445, size: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !446, line: 13, baseType: !447)
!446 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !225, line: 175, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 173, size: 64, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !448, file: !225, line: 174, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !197, line: 22, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !199, line: 30, baseType: !381)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !409, file: !389, line: 452, baseType: !284, size: 32, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !409, file: !389, line: 454, baseType: !258, offset: 800)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !409, file: !389, line: 457, baseType: !456, size: 256, offset: 832)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !457, line: 35, size: 256, elements: !458)
!457 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !460, !461, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !456, file: !457, line: 36, baseType: !445, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !456, file: !457, line: 42, baseType: !445, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !456, file: !457, line: 46, baseType: !462, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !259, line: 29, baseType: !266)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !456, file: !457, line: 47, baseType: !245, size: 128, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !409, file: !389, line: 459, baseType: !245, size: 128, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !409, file: !389, line: 466, baseType: !348, size: 64, offset: 1216)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !409, file: !389, line: 467, baseType: !348, size: 64, offset: 1280)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !409, file: !389, line: 469, baseType: !348, size: 64, offset: 1344)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !409, file: !389, line: 470, baseType: !348, size: 64, offset: 1408)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !409, file: !389, line: 471, baseType: !447, size: 64, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !409, file: !389, line: 472, baseType: !348, size: 64, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !409, file: !389, line: 473, baseType: !348, size: 64, offset: 1600)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !409, file: !389, line: 474, baseType: !348, size: 64, offset: 1664)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !409, file: !389, line: 475, baseType: !348, size: 64, offset: 1728)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !409, file: !389, line: 477, baseType: !258, offset: 1792)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !409, file: !389, line: 478, baseType: !348, size: 64, offset: 1792)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !409, file: !389, line: 478, baseType: !348, size: 64, offset: 1856)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !409, file: !389, line: 478, baseType: !348, size: 64, offset: 1920)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !409, file: !389, line: 478, baseType: !348, size: 64, offset: 1984)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !409, file: !389, line: 479, baseType: !348, size: 64, offset: 2048)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !409, file: !389, line: 479, baseType: !348, size: 64, offset: 2112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !409, file: !389, line: 479, baseType: !348, size: 64, offset: 2176)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !409, file: !389, line: 480, baseType: !348, size: 64, offset: 2240)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !409, file: !389, line: 480, baseType: !348, size: 64, offset: 2304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !409, file: !389, line: 480, baseType: !348, size: 64, offset: 2368)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !409, file: !389, line: 480, baseType: !348, size: 64, offset: 2432)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !409, file: !389, line: 482, baseType: !487, size: 2816, offset: 2496)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 2816, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 44)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !409, file: !389, line: 488, baseType: !491, size: 256, offset: 5312)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !492, line: 60, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !491, file: !492, line: 61, baseType: !495, size: 256)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 4)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !409, file: !389, line: 490, baseType: !499, size: 64, offset: 5568)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !389, line: 490, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !409, file: !389, line: 493, baseType: !502, size: 896, offset: 5632)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !503, line: 53, baseType: !504)
!503 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 896, elements: !505)
!505 = !{!506, !507, !508, !509, !512, !513, !520, !521, !541, !542, !545}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !504, file: !503, line: 18, baseType: !417, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !504, file: !503, line: 28, baseType: !447, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !504, file: !503, line: 31, baseType: !456, size: 256, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !504, file: !503, line: 32, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !503, line: 32, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !504, file: !503, line: 37, baseType: !182, size: 16, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !504, file: !503, line: 40, baseType: !514, size: 192, offset: 512)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !515, line: 53, size: 192, elements: !516)
!515 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !515, line: 54, baseType: !445, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !514, file: !515, line: 55, baseType: !258, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !514, file: !515, line: 59, baseType: !245, size: 128, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !504, file: !503, line: 41, baseType: !168, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !504, file: !503, line: 42, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !525, line: 13, size: 896, elements: !526)
!525 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !524, file: !525, line: 14, baseType: !168, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !524, file: !525, line: 15, baseType: !348, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !524, file: !525, line: 17, baseType: !348, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !524, file: !525, line: 17, baseType: !348, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !524, file: !525, line: 19, baseType: !136, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !524, file: !525, line: 21, baseType: !136, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !524, file: !525, line: 22, baseType: !136, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !524, file: !525, line: 23, baseType: !136, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !524, file: !525, line: 24, baseType: !136, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !524, file: !525, line: 25, baseType: !136, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !524, file: !525, line: 26, baseType: !136, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !524, file: !525, line: 27, baseType: !136, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !524, file: !525, line: 28, baseType: !136, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !524, file: !525, line: 29, baseType: !136, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !504, file: !503, line: 44, baseType: !437, size: 32, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !504, file: !503, line: 50, baseType: !543, size: 16, offset: 864)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !197, line: 19, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !199, line: 24, baseType: !182)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !504, file: !503, line: 51, baseType: !546, size: 16, offset: 880)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !197, line: 18, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !199, line: 23, baseType: !548)
!548 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !389, line: 495, baseType: !348, size: 64, offset: 6528)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !409, file: !389, line: 497, baseType: !551, size: 64, offset: 6592)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !389, line: 381, size: 384, elements: !553)
!553 = !{!554, !555, !1453}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !552, file: !389, line: 382, baseType: !437, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !552, file: !389, line: 383, baseType: !556, size: 128, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !389, line: 376, size: 128, elements: !557)
!557 = !{!558, !1451}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !556, file: !389, line: 377, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !561, line: 640, size: 48640, elements: !562)
!561 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !569, !571, !572, !578, !579, !580, !581, !582, !583, !584, !585, !589, !607, !618, !713, !714, !715, !726, !727, !729, !730, !731, !732, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !811, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !867, !869, !870, !871, !883, !885, !886, !887, !888, !889, !895, !896, !897, !898, !899, !900, !901, !913, !918, !923, !924, !925, !928, !932, !935, !938, !941, !944, !948, !951, !954, !960, !961, !962, !968, !969, !970, !971, !972, !981, !982, !983, !984, !985, !990, !991, !992, !995, !996, !999, !1002, !1005, !1008, !1011, !1014, !1015, !1095, !1098, !1101, !1102, !1105, !1106, !1107, !1113, !1114, !1115, !1128, !1129, !1130, !1140, !1145, !1148, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !560, file: !561, line: 646, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !565, line: 56, size: 128, elements: !566)
!565 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !565, line: 57, baseType: !348, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !564, file: !565, line: 58, baseType: !196, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !560, file: !561, line: 649, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !136)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !560, file: !561, line: 657, baseType: !168, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !560, file: !561, line: 658, baseType: !573, size: 32, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !574, line: 113, baseType: !575)
!574 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !574, line: 111, size: 32, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !575, file: !574, line: 112, baseType: !437, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !561, line: 660, baseType: !7, size: 32, offset: 288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !560, file: !561, line: 661, baseType: !7, size: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !560, file: !561, line: 684, baseType: !284, size: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !560, file: !561, line: 686, baseType: !284, size: 32, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !560, file: !561, line: 687, baseType: !284, size: 32, offset: 416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !560, file: !561, line: 688, baseType: !284, size: 32, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !560, file: !561, line: 689, baseType: !7, size: 32, offset: 480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !560, file: !561, line: 691, baseType: !586, size: 64, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !561, line: 691, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !560, file: !561, line: 692, baseType: !590, size: 832, offset: 576)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !561, line: 451, size: 832, elements: !591)
!591 = !{!592, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !590, file: !561, line: 453, baseType: !593, size: 128)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !561, line: 325, size: 128, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !593, file: !561, line: 326, baseType: !348, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !593, file: !561, line: 327, baseType: !196, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !590, file: !561, line: 454, baseType: !396, size: 192, align: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !590, file: !561, line: 455, baseType: !245, size: 128, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !590, file: !561, line: 456, baseType: !7, size: 32, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !590, file: !561, line: 458, baseType: !417, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !590, file: !561, line: 459, baseType: !417, size: 64, offset: 576)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !590, file: !561, line: 460, baseType: !417, size: 64, offset: 640)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !590, file: !561, line: 461, baseType: !417, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !590, file: !561, line: 463, baseType: !417, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !590, file: !561, line: 465, baseType: !606, offset: 832)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !561, line: 415, elements: !272)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !560, file: !561, line: 693, baseType: !608, size: 384, offset: 1408)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !561, line: 489, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !608, file: !561, line: 490, baseType: !245, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !608, file: !561, line: 491, baseType: !348, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !608, file: !561, line: 492, baseType: !348, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !608, file: !561, line: 493, baseType: !7, size: 32, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !608, file: !561, line: 494, baseType: !182, size: 16, offset: 288)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !608, file: !561, line: 495, baseType: !182, size: 16, offset: 304)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !608, file: !561, line: 497, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !560, file: !561, line: 697, baseType: !619, size: 1792, offset: 1792)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !561, line: 507, size: 1792, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !710, !711}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !619, file: !561, line: 508, baseType: !396, size: 192, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !619, file: !561, line: 515, baseType: !417, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !619, file: !561, line: 516, baseType: !417, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !619, file: !561, line: 517, baseType: !417, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !619, file: !561, line: 518, baseType: !417, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !619, file: !561, line: 519, baseType: !417, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !619, file: !561, line: 526, baseType: !451, size: 64, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !619, file: !561, line: 527, baseType: !417, size: 64, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !561, line: 528, baseType: !7, size: 32, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !619, file: !561, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !619, file: !561, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !619, file: !561, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !619, file: !561, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !619, file: !561, line: 563, baseType: !635, size: 512, offset: 704)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !636)
!636 = !{!637, !645, !646, !651, !703, !707, !708, !709}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !13, line: 119, baseType: !638, size: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !639, line: 9, size: 256, elements: !640)
!639 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !639, line: 10, baseType: !396, size: 192, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !638, file: !639, line: 11, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !644, line: 29, baseType: !451)
!644 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !635, file: !13, line: 120, baseType: !643, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !635, file: !13, line: 121, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!12, !650}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !635, file: !13, line: 122, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !654)
!654 = !{!655, !675, !676, !679, !689, !690, !698, !702}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !653, file: !13, line: 160, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !657, file: !13, line: 215, baseType: !462)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !657, file: !13, line: 216, baseType: !7, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !657, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !657, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !657, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !657, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !657, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !657, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !657, file: !13, line: 233, baseType: !643, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !657, file: !13, line: 234, baseType: !650, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !657, file: !13, line: 235, baseType: !643, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !657, file: !13, line: 236, baseType: !650, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !657, file: !13, line: 237, baseType: !672, size: 4096, offset: 512)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 4096, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !653, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !653, file: !13, line: 162, baseType: !677, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !225, line: 27, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !333, line: 96, baseType: !284)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !653, file: !13, line: 163, baseType: !680, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !681, line: 276, baseType: !682)
!681 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !681, line: 276, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !682, file: !681, line: 276, baseType: !685, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !681, line: 70, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !681, line: 65, size: 32, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !686, file: !681, line: 66, baseType: !7, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !653, file: !13, line: 164, baseType: !650, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !653, file: !13, line: 165, baseType: !691, size: 128, offset: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !639, line: 14, size: 128, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !691, file: !639, line: 15, baseType: !694, size: 128)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !397, line: 125, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !694, file: !397, line: 126, baseType: !413, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !694, file: !397, line: 127, baseType: !401, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !653, file: !13, line: 166, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!643}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !653, file: !13, line: 167, baseType: !643, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !635, file: !13, line: 123, baseType: !704, size: 8, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !197, line: 17, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !199, line: 21, baseType: !706)
!706 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !635, file: !13, line: 124, baseType: !704, size: 8, offset: 456)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !635, file: !13, line: 125, baseType: !704, size: 8, offset: 464)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !635, file: !13, line: 126, baseType: !704, size: 8, offset: 472)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !619, file: !561, line: 572, baseType: !635, size: 512, offset: 1216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !619, file: !561, line: 580, baseType: !712, size: 64, offset: 1728)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !560, file: !561, line: 721, baseType: !7, size: 32, offset: 3584)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !560, file: !561, line: 722, baseType: !284, size: 32, offset: 3616)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !560, file: !561, line: 723, baseType: !716, size: 64, offset: 3648)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !719, line: 17, baseType: !720)
!719 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !719, line: 17, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !720, file: !719, line: 17, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 1)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !560, file: !561, line: 724, baseType: !718, size: 64, offset: 3712)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !560, file: !561, line: 749, baseType: !728, offset: 3776)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !561, line: 290, elements: !272)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !560, file: !561, line: 751, baseType: !245, size: 128, offset: 3776)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !560, file: !561, line: 757, baseType: !405, size: 64, offset: 3904)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !560, file: !561, line: 758, baseType: !405, size: 64, offset: 3968)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !560, file: !561, line: 761, baseType: !733, size: 320, offset: 4032)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !492, line: 34, size: 320, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !733, file: !492, line: 35, baseType: !417, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !733, file: !492, line: 36, baseType: !737, size: 256, offset: 64)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !496)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !560, file: !561, line: 766, baseType: !284, size: 32, offset: 4352)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !560, file: !561, line: 767, baseType: !284, size: 32, offset: 4384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !560, file: !561, line: 768, baseType: !284, size: 32, offset: 4416)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !560, file: !561, line: 770, baseType: !284, size: 32, offset: 4448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !560, file: !561, line: 772, baseType: !348, size: 64, offset: 4480)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !560, file: !561, line: 775, baseType: !7, size: 32, offset: 4544)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !560, file: !561, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !560, file: !561, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !560, file: !561, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !560, file: !561, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !560, file: !561, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !560, file: !561, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !560, file: !561, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !560, file: !561, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !560, file: !561, line: 831, baseType: !348, size: 64, offset: 4672)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !560, file: !561, line: 833, baseType: !754, size: 384, offset: 4736)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !755)
!755 = !{!756, !761}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !754, file: !18, line: 26, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!136, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !18, line: 27, baseType: !762, size: 320, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !18, line: 27, size: 320, elements: !763)
!763 = !{!764, !774, !801}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !762, file: !18, line: 36, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !18, line: 29, size: 320, elements: !766)
!766 = !{!767, !769, !770, !771, !772, !773}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !765, file: !18, line: 30, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !765, file: !18, line: 31, baseType: !196, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !18, line: 32, baseType: !196, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !765, file: !18, line: 33, baseType: !196, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !765, file: !18, line: 34, baseType: !417, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !765, file: !18, line: 35, baseType: !768, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !762, file: !18, line: 46, baseType: !775, size: 192)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !18, line: 38, size: 192, elements: !776)
!776 = !{!777, !778, !779, !800}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !775, file: !18, line: 39, baseType: !677, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !775, file: !18, line: 41, baseType: !780, size: 64, offset: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !18, line: 41, size: 64, elements: !781)
!781 = !{!782, !790}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !780, file: !18, line: 42, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !785, line: 7, size: 128, elements: !786)
!785 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!786 = !{!787, !789}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !784, file: !785, line: 8, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !333, line: 93, baseType: !381)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !784, file: !785, line: 9, baseType: !381, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !780, file: !18, line: 43, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !793, line: 7, size: 64, elements: !794)
!793 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !792, file: !793, line: 8, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !793, line: 5, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !197, line: 20, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !199, line: 26, baseType: !284)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !792, file: !793, line: 9, baseType: !797, size: 32, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !775, file: !18, line: 45, baseType: !417, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !762, file: !18, line: 54, baseType: !802, size: 256)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !18, line: 48, size: 256, elements: !803)
!803 = !{!804, !807, !808, !809, !810}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !802, file: !18, line: 49, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !802, file: !18, line: 50, baseType: !284, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !802, file: !18, line: 51, baseType: !284, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !802, file: !18, line: 52, baseType: !348, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !802, file: !18, line: 53, baseType: !348, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !560, file: !561, line: 835, baseType: !812, size: 32, offset: 5120)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !225, line: 22, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !333, line: 28, baseType: !284)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !560, file: !561, line: 836, baseType: !812, size: 32, offset: 5152)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !560, file: !561, line: 840, baseType: !348, size: 64, offset: 5184)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !560, file: !561, line: 849, baseType: !559, size: 64, offset: 5248)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !560, file: !561, line: 852, baseType: !559, size: 64, offset: 5312)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !560, file: !561, line: 857, baseType: !245, size: 128, offset: 5376)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !560, file: !561, line: 858, baseType: !245, size: 128, offset: 5504)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !560, file: !561, line: 859, baseType: !559, size: 64, offset: 5632)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !560, file: !561, line: 867, baseType: !245, size: 128, offset: 5696)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !560, file: !561, line: 868, baseType: !245, size: 128, offset: 5824)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !560, file: !561, line: 871, baseType: !824, size: 64, offset: 5952)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !826, line: 59, size: 768, elements: !827)
!826 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !829, !830, !831, !842, !843, !850, !859}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !825, file: !826, line: 61, baseType: !573, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !825, file: !826, line: 62, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !825, file: !826, line: 63, baseType: !258, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !825, file: !826, line: 65, baseType: !832, size: 256, offset: 64)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 256, elements: !496)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !225, line: 182, size: 64, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !833, file: !225, line: 183, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !225, line: 186, size: 128, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !225, line: 187, baseType: !836, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !837, file: !225, line: 187, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !825, file: !826, line: 66, baseType: !833, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !825, file: !826, line: 68, baseType: !844, size: 128, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !845, line: 40, baseType: !846)
!845 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !845, line: 36, size: 128, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !846, file: !845, line: 37, baseType: !258)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !846, file: !845, line: 38, baseType: !245, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !825, file: !826, line: 69, baseType: !851, size: 128, align: 64, offset: 512)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !225, line: 216, size: 128, align: 64, elements: !852)
!852 = !{!853, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !225, line: 217, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !851, file: !225, line: 218, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !854}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !825, file: !826, line: 70, baseType: !860, size: 128, offset: 640)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 128, elements: !724)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !826, line: 54, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !861, file: !826, line: 55, baseType: !284, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !861, file: !826, line: 56, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !826, line: 56, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !560, file: !561, line: 872, baseType: !868, size: 512, offset: 6016)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 512, elements: !496)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !560, file: !561, line: 873, baseType: !245, size: 128, offset: 6528)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !560, file: !561, line: 874, baseType: !245, size: 128, offset: 6656)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !560, file: !561, line: 876, baseType: !872, size: 64, offset: 6784)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !874, line: 26, size: 192, elements: !875)
!874 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !873, file: !874, line: 27, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !873, file: !874, line: 28, baseType: !878, size: 128, offset: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !879, line: 43, size: 128, elements: !880)
!879 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !878, file: !879, line: 44, baseType: !462)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !878, file: !879, line: 45, baseType: !245, size: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !560, file: !561, line: 879, baseType: !884, size: 64, offset: 6848)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !560, file: !561, line: 882, baseType: !884, size: 64, offset: 6912)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !560, file: !561, line: 884, baseType: !417, size: 64, offset: 6976)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !560, file: !561, line: 885, baseType: !417, size: 64, offset: 7040)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !560, file: !561, line: 890, baseType: !417, size: 64, offset: 7104)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !560, file: !561, line: 891, baseType: !890, size: 128, offset: 7168)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !561, line: 242, size: 128, elements: !891)
!891 = !{!892, !893, !894}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !890, file: !561, line: 244, baseType: !417, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !890, file: !561, line: 245, baseType: !417, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !561, line: 246, baseType: !462, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !560, file: !561, line: 900, baseType: !348, size: 64, offset: 7296)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !560, file: !561, line: 901, baseType: !348, size: 64, offset: 7360)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !560, file: !561, line: 904, baseType: !417, size: 64, offset: 7424)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !560, file: !561, line: 907, baseType: !417, size: 64, offset: 7488)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !560, file: !561, line: 910, baseType: !348, size: 64, offset: 7552)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !560, file: !561, line: 911, baseType: !348, size: 64, offset: 7616)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !560, file: !561, line: 914, baseType: !902, size: 640, offset: 7680)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !903, line: 123, size: 640, elements: !904)
!903 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !911, !912}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !902, file: !903, line: 124, baseType: !906, size: 576)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 576, elements: !301)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !903, line: 108, size: 192, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !907, file: !903, line: 109, baseType: !417, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !907, file: !903, line: 110, baseType: !691, size: 128, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !902, file: !903, line: 125, baseType: !7, size: 32, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !902, file: !903, line: 126, baseType: !7, size: 32, offset: 608)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !560, file: !561, line: 917, baseType: !914, size: 192, offset: 8320)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !903, line: 134, size: 192, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !914, file: !903, line: 135, baseType: !851, size: 128, align: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !914, file: !903, line: 136, baseType: !7, size: 32, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !560, file: !561, line: 923, baseType: !919, size: 64, offset: 8512)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !921)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !922, line: 11, flags: DIFlagFwdDecl)
!922 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!923 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !560, file: !561, line: 926, baseType: !919, size: 64, offset: 8576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !560, file: !561, line: 929, baseType: !919, size: 64, offset: 8640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !560, file: !561, line: 933, baseType: !926, size: 64, offset: 8704)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !561, line: 933, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !560, file: !561, line: 943, baseType: !929, size: 128, offset: 8768)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 16)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !560, file: !561, line: 945, baseType: !933, size: 64, offset: 8896)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !561, line: 49, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !560, file: !561, line: 956, baseType: !936, size: 64, offset: 8960)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !561, line: 45, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !560, file: !561, line: 959, baseType: !939, size: 64, offset: 9024)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !561, line: 959, flags: DIFlagFwdDecl)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !560, file: !561, line: 962, baseType: !942, size: 64, offset: 9088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !561, line: 66, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !560, file: !561, line: 966, baseType: !945, size: 64, offset: 9152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !947, line: 35, flags: DIFlagFwdDecl)
!947 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !560, file: !561, line: 969, baseType: !949, size: 64, offset: 9216)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !903, line: 223, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !560, file: !561, line: 970, baseType: !952, size: 64, offset: 9280)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !561, line: 62, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !560, file: !561, line: 971, baseType: !955, size: 64, offset: 9344)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !956, line: 25, baseType: !957)
!956 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 23, size: 64, elements: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !957, file: !956, line: 24, baseType: !723, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !560, file: !561, line: 972, baseType: !955, size: 64, offset: 9408)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !560, file: !561, line: 974, baseType: !955, size: 64, offset: 9472)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !560, file: !561, line: 975, baseType: !963, size: 192, offset: 9536)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !964, line: 30, size: 192, elements: !965)
!964 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !963, file: !964, line: 31, baseType: !245, size: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !963, file: !964, line: 32, baseType: !955, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !560, file: !561, line: 976, baseType: !348, size: 64, offset: 9728)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !560, file: !561, line: 977, baseType: !345, size: 64, offset: 9792)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !560, file: !561, line: 978, baseType: !7, size: 32, offset: 9856)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !560, file: !561, line: 980, baseType: !854, size: 64, offset: 9920)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !560, file: !561, line: 989, baseType: !973, size: 128, offset: 9984)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !974, line: 35, size: 128, elements: !975)
!974 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !973, file: !974, line: 36, baseType: !284, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !973, file: !974, line: 37, baseType: !437, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !973, file: !974, line: 38, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !974, line: 23, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !560, file: !561, line: 992, baseType: !417, size: 64, offset: 10112)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !560, file: !561, line: 993, baseType: !417, size: 64, offset: 10176)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !560, file: !561, line: 996, baseType: !258, offset: 10240)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !560, file: !561, line: 999, baseType: !462, offset: 10240)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !560, file: !561, line: 1001, baseType: !986, size: 64, offset: 10240)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !561, line: 636, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !561, line: 637, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !560, file: !561, line: 1005, baseType: !694, size: 128, offset: 10304)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !560, file: !561, line: 1007, baseType: !559, size: 64, offset: 10432)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !560, file: !561, line: 1009, baseType: !993, size: 64, offset: 10496)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !561, line: 1009, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !560, file: !561, line: 1043, baseType: !168, size: 64, offset: 10560)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !560, file: !561, line: 1046, baseType: !997, size: 64, offset: 10624)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !561, line: 41, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !560, file: !561, line: 1050, baseType: !1000, size: 64, offset: 10688)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !561, line: 42, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !560, file: !561, line: 1054, baseType: !1003, size: 64, offset: 10752)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !561, line: 55, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !560, file: !561, line: 1056, baseType: !1006, size: 64, offset: 10816)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !561, line: 40, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !560, file: !561, line: 1058, baseType: !1009, size: 64, offset: 10880)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !561, line: 47, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !560, file: !561, line: 1061, baseType: !1012, size: 64, offset: 10944)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !561, line: 43, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !560, file: !561, line: 1064, baseType: !348, size: 64, offset: 11008)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !560, file: !561, line: 1065, baseType: !1016, size: 64, offset: 11072)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !964, line: 14, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !964, line: 12, size: 384, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1018, file: !964, line: 13, baseType: !1021, size: 384)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !964, line: 13, size: 384, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1021, file: !964, line: 13, baseType: !284, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1021, file: !964, line: 13, baseType: !284, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1021, file: !964, line: 13, baseType: !284, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1021, file: !964, line: 13, baseType: !1027, size: 256, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1028, line: 32, size: 256, elements: !1029)
!1028 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030, !1036, !1049, !1055, !1064, !1084, !1089}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1027, file: !1028, line: 37, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 34, size: 64, elements: !1032)
!1032 = !{!1033, !1034}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1031, file: !1028, line: 35, baseType: !813, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1031, file: !1028, line: 36, baseType: !1035, size: 32, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !333, line: 49, baseType: !7)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1027, file: !1028, line: 45, baseType: !1037, size: 192)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 40, size: 192, elements: !1038)
!1038 = !{!1039, !1041, !1042, !1048}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1037, file: !1028, line: 41, baseType: !1040, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !333, line: 95, baseType: !284)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1037, file: !1028, line: 42, baseType: !284, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1037, file: !1028, line: 43, baseType: !1043, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1028, line: 11, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1028, line: 8, size: 64, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1044, file: !1028, line: 9, baseType: !284, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1044, file: !1028, line: 10, baseType: !168, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1037, file: !1028, line: 44, baseType: !284, size: 32, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1027, file: !1028, line: 52, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 48, size: 128, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1050, file: !1028, line: 49, baseType: !813, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1050, file: !1028, line: 50, baseType: !1035, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1050, file: !1028, line: 51, baseType: !1043, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1027, file: !1028, line: 61, baseType: !1056, size: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 55, size: 256, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1063}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1056, file: !1028, line: 56, baseType: !813, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1056, file: !1028, line: 57, baseType: !1035, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1056, file: !1028, line: 58, baseType: !284, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1056, file: !1028, line: 59, baseType: !1062, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !333, line: 94, baseType: !334)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1056, file: !1028, line: 60, baseType: !1062, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1027, file: !1028, line: 95, baseType: !1065, size: 256)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 64, size: 256, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1065, file: !1028, line: 65, baseType: !168, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !1028, line: 77, baseType: !1069, size: 192, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !1028, line: 77, size: 192, elements: !1070)
!1070 = !{!1071, !1072, !1079}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1069, file: !1028, line: 82, baseType: !548, size: 16)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1069, file: !1028, line: 88, baseType: !1073, size: 192)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1028, line: 84, size: 192, elements: !1074)
!1074 = !{!1075, !1077, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1073, file: !1028, line: 85, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !673)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1073, file: !1028, line: 86, baseType: !168, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1073, file: !1028, line: 87, baseType: !168, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1069, file: !1028, line: 93, baseType: !1080, size: 96)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !1028, line: 90, size: 96, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1080, file: !1028, line: 91, baseType: !1076, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1080, file: !1028, line: 92, baseType: !198, size: 32, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1027, file: !1028, line: 101, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 98, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1085, file: !1028, line: 99, baseType: !136, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1085, file: !1028, line: 100, baseType: !284, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1027, file: !1028, line: 108, baseType: !1090, size: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1028, line: 104, size: 128, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1090, file: !1028, line: 105, baseType: !168, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1090, file: !1028, line: 106, baseType: !284, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1090, file: !1028, line: 107, baseType: !7, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !560, file: !561, line: 1067, baseType: !1096, offset: 11136)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1097, line: 12, elements: !272)
!1097 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !560, file: !561, line: 1099, baseType: !1099, size: 64, offset: 11136)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !561, line: 56, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !560, file: !561, line: 1103, baseType: !245, size: 128, offset: 11200)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !560, file: !561, line: 1104, baseType: !1103, size: 64, offset: 11328)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !561, line: 46, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !560, file: !561, line: 1105, baseType: !514, size: 192, offset: 11392)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !560, file: !561, line: 1106, baseType: !7, size: 32, offset: 11584)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !560, file: !561, line: 1109, baseType: !1108, size: 128, offset: 11648)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 128, elements: !1111)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !561, line: 51, flags: DIFlagFwdDecl)
!1111 = !{!1112}
!1112 = !DISubrange(count: 2)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !560, file: !561, line: 1110, baseType: !514, size: 192, offset: 11776)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !560, file: !561, line: 1111, baseType: !245, size: 128, offset: 11968)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !560, file: !561, line: 1173, baseType: !1116, size: 64, offset: 12096)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1118, line: 62, size: 256, align: 256, elements: !1119)
!1118 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1121, !1122, !1127}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1117, file: !1118, line: 75, baseType: !198, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1117, file: !1118, line: 90, baseType: !198, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1117, file: !1118, line: 124, baseType: !1123, size: 64, offset: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !1118, line: 109, size: 64, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1123, file: !1118, line: 110, baseType: !418, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1123, file: !1118, line: 112, baseType: !418, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !1118, line: 144, baseType: !198, size: 32, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !560, file: !561, line: 1174, baseType: !196, size: 32, offset: 12160)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !560, file: !561, line: 1179, baseType: !348, size: 64, offset: 12224)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !560, file: !561, line: 1182, baseType: !1131, size: 128, offset: 12288)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !492, line: 76, size: 128, elements: !1132)
!1132 = !{!1133, !1138, !1139}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1131, file: !492, line: 85, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1135, line: 7, size: 64, elements: !1136)
!1135 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !{!1137}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1134, file: !1135, line: 12, baseType: !720, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1131, file: !492, line: 88, baseType: !224, size: 8, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1131, file: !492, line: 95, baseType: !224, size: 8, offset: 72)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !561, line: 1184, baseType: !1141, size: 128, offset: 12416)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !561, line: 1184, size: 128, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1141, file: !561, line: 1185, baseType: !573, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1141, file: !561, line: 1186, baseType: !851, size: 128, align: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !560, file: !561, line: 1190, baseType: !1146, size: 64, offset: 12544)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !561, line: 53, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !560, file: !561, line: 1192, baseType: !1149, size: 128, offset: 12608)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !492, line: 64, size: 128, elements: !1150)
!1150 = !{!1151, !1244, !1245}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1149, file: !492, line: 65, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !389, line: 68, size: 512, align: 128, elements: !1154)
!1154 = !{!1155, !1156, !1236, !1243}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !389, line: 69, baseType: !348, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !389, line: 77, baseType: !1157, size: 320, offset: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !389, line: 77, size: 320, elements: !1158)
!1158 = !{!1159, !1168, !1173, !1201, !1209, !1215, !1228, !1235}
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 78, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 78, size: 320, elements: !1161)
!1161 = !{!1162, !1163, !1166, !1167}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1160, file: !389, line: 84, baseType: !245, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1160, file: !389, line: 86, baseType: !1164, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !389, line: 26, flags: DIFlagFwdDecl)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1160, file: !389, line: 87, baseType: !348, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1160, file: !389, line: 94, baseType: !348, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 96, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 96, size: 64, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1169, file: !389, line: 101, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !225, line: 143, baseType: !417)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 103, baseType: !1174, size: 320)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 103, size: 320, elements: !1175)
!1175 = !{!1176, !1186, !1189, !1190}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !389, line: 104, baseType: !1177, size: 128)
!1177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !389, line: 104, size: 128, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1177, file: !389, line: 105, baseType: !245, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !389, line: 106, baseType: !1181, size: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !389, line: 106, size: 128, elements: !1182)
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1181, file: !389, line: 107, baseType: !1152, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1181, file: !389, line: 109, baseType: !284, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1181, file: !389, line: 110, baseType: !284, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1174, file: !389, line: 117, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !389, line: 117, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1174, file: !389, line: 119, baseType: !168, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !389, line: 120, baseType: !1191, size: 64, offset: 256)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !389, line: 120, size: 64, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1191, file: !389, line: 121, baseType: !168, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1191, file: !389, line: 122, baseType: !348, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !389, line: 123, baseType: !1196, size: 32)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !389, line: 123, size: 32, elements: !1197)
!1197 = !{!1198, !1199, !1200}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1196, file: !389, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1196, file: !389, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1196, file: !389, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 130, baseType: !1202, size: 192)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 130, size: 192, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1202, file: !389, line: 131, baseType: !348, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1202, file: !389, line: 134, baseType: !706, size: 8, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1202, file: !389, line: 135, baseType: !706, size: 8, offset: 72)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1202, file: !389, line: 136, baseType: !437, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1202, file: !389, line: 137, baseType: !7, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 139, baseType: !1210, size: 256)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 139, size: 256, elements: !1211)
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1210, file: !389, line: 140, baseType: !348, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1210, file: !389, line: 141, baseType: !437, size: 32, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1210, file: !389, line: 143, baseType: !245, size: 128, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 145, baseType: !1216, size: 256)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 145, size: 256, elements: !1217)
!1217 = !{!1218, !1219, !1221, !1222, !1227}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1216, file: !389, line: 146, baseType: !348, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1216, file: !389, line: 147, baseType: !1220, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !378, line: 509, baseType: !1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1216, file: !389, line: 148, baseType: !348, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !389, line: 149, baseType: !1223, size: 64, offset: 192)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !389, line: 149, size: 64, elements: !1224)
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1223, file: !389, line: 150, baseType: !405, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1223, file: !389, line: 151, baseType: !437, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1216, file: !389, line: 156, baseType: !258, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !389, line: 159, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !389, line: 159, size: 128, elements: !1230)
!1230 = !{!1231, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1229, file: !389, line: 161, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !389, line: 161, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1229, file: !389, line: 162, baseType: !168, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1157, file: !389, line: 176, baseType: !851, size: 128, align: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !389, line: 179, baseType: !1237, size: 32, offset: 384)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !389, line: 179, size: 32, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1237, file: !389, line: 184, baseType: !437, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1237, file: !389, line: 192, baseType: !7, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1237, file: !389, line: 194, baseType: !7, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1237, file: !389, line: 195, baseType: !284, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1153, file: !389, line: 199, baseType: !437, size: 32, offset: 416)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1149, file: !492, line: 67, baseType: !198, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1149, file: !492, line: 68, baseType: !198, size: 32, offset: 96)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !560, file: !561, line: 1206, baseType: !284, size: 32, offset: 12736)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !560, file: !561, line: 1207, baseType: !284, size: 32, offset: 12768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !560, file: !561, line: 1209, baseType: !348, size: 64, offset: 12800)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !560, file: !561, line: 1219, baseType: !417, size: 64, offset: 12864)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !560, file: !561, line: 1220, baseType: !417, size: 64, offset: 12928)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !560, file: !561, line: 1317, baseType: !284, size: 32, offset: 12992)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !560, file: !561, line: 1319, baseType: !559, size: 64, offset: 13056)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !560, file: !561, line: 1322, baseType: !1254, size: 64, offset: 13120)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1256, line: 56, size: 512, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1264, !1265, !1267}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1255, file: !1256, line: 57, baseType: !1254, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1255, file: !1256, line: 58, baseType: !168, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1255, file: !1256, line: 59, baseType: !348, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 60, baseType: !348, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1255, file: !1256, line: 61, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1255, file: !1256, line: 62, baseType: !7, size: 32, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1255, file: !1256, line: 63, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !225, line: 153, baseType: !417)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1255, file: !1256, line: 64, baseType: !233, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !560, file: !561, line: 1326, baseType: !573, size: 32, offset: 13184)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !560, file: !561, line: 1342, baseType: !168, size: 64, offset: 13248)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !560, file: !561, line: 1343, baseType: !418, size: 64, offset: 13312)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !560, file: !561, line: 1344, baseType: !417, size: 64, offset: 13376)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !560, file: !561, line: 1345, baseType: !418, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !560, file: !561, line: 1346, baseType: !418, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !560, file: !561, line: 1347, baseType: !418, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !560, file: !561, line: 1348, baseType: !851, size: 128, align: 64, offset: 13504)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !560, file: !561, line: 1358, baseType: !1277, size: 34816, offset: 13824)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1278, line: 485, size: 34816, elements: !1279)
!1278 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1309, !1310, !1311, !1312, !1313, !1314, !1317, !1318, !1319}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1277, file: !1278, line: 487, baseType: !1281, size: 192)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 192, elements: !301)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1283, line: 16, size: 64, elements: !1284)
!1283 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1282, file: !1283, line: 17, baseType: !543, size: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1282, file: !1283, line: 18, baseType: !543, size: 16, offset: 16)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1282, file: !1283, line: 19, baseType: !543, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1282, file: !1283, line: 19, baseType: !543, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1282, file: !1283, line: 19, baseType: !543, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1282, file: !1283, line: 19, baseType: !543, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1282, file: !1283, line: 19, baseType: !543, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1282, file: !1283, line: 20, baseType: !543, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1282, file: !1283, line: 20, baseType: !543, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1282, file: !1283, line: 20, baseType: !543, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1282, file: !1283, line: 20, baseType: !543, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1282, file: !1283, line: 20, baseType: !543, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1282, file: !1283, line: 20, baseType: !543, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1277, file: !1278, line: 491, baseType: !348, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1277, file: !1278, line: 495, baseType: !182, size: 16, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1277, file: !1278, line: 496, baseType: !182, size: 16, offset: 272)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1277, file: !1278, line: 497, baseType: !182, size: 16, offset: 288)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1277, file: !1278, line: 498, baseType: !182, size: 16, offset: 304)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1277, file: !1278, line: 502, baseType: !348, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1277, file: !1278, line: 503, baseType: !348, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1277, file: !1278, line: 514, baseType: !1306, size: 256, offset: 448)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 256, elements: !496)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1278, line: 483, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1277, file: !1278, line: 516, baseType: !348, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1277, file: !1278, line: 518, baseType: !348, size: 64, offset: 768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1277, file: !1278, line: 520, baseType: !348, size: 64, offset: 832)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1277, file: !1278, line: 521, baseType: !348, size: 64, offset: 896)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1277, file: !1278, line: 522, baseType: !348, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1277, file: !1278, line: 528, baseType: !1315, size: 64, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1278, line: 10, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1277, file: !1278, line: 535, baseType: !348, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1277, file: !1278, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1277, file: !1278, line: 540, baseType: !1320, size: 33280, offset: 1536)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1321, line: 317, size: 33280, elements: !1322)
!1321 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1320, file: !1321, line: 330, baseType: !7, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1320, file: !1321, line: 337, baseType: !348, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1320, file: !1321, line: 348, baseType: !1326, size: 32768, offset: 512)
!1326 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1321, line: 304, size: 32768, elements: !1327)
!1327 = !{!1328, !1341, !1380, !1430, !1447}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1326, file: !1321, line: 305, baseType: !1329, size: 896)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1321, line: 12, size: 896, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1340}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1329, file: !1321, line: 13, baseType: !196, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1329, file: !1321, line: 14, baseType: !196, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1329, file: !1321, line: 15, baseType: !196, size: 32, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1329, file: !1321, line: 16, baseType: !196, size: 32, offset: 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1329, file: !1321, line: 17, baseType: !196, size: 32, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1329, file: !1321, line: 18, baseType: !196, size: 32, offset: 160)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1329, file: !1321, line: 19, baseType: !196, size: 32, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1329, file: !1321, line: 22, baseType: !1339, size: 640, offset: 224)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 640, elements: !179)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1329, file: !1321, line: 25, baseType: !196, size: 32, offset: 864)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1326, file: !1321, line: 306, baseType: !1342, size: 4096, align: 128)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1321, line: 34, size: 4096, align: 128, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1363, !1364, !1365, !1369, !1371, !1375}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1342, file: !1321, line: 35, baseType: !543, size: 16)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1342, file: !1321, line: 36, baseType: !543, size: 16, offset: 16)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1342, file: !1321, line: 37, baseType: !543, size: 16, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1342, file: !1321, line: 38, baseType: !543, size: 16, offset: 48)
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1321, line: 39, baseType: !1349, size: 128, offset: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1321, line: 39, size: 128, elements: !1350)
!1350 = !{!1351, !1356}
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !1321, line: 40, baseType: !1352, size: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1349, file: !1321, line: 40, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1352, file: !1321, line: 41, baseType: !417, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1352, file: !1321, line: 42, baseType: !417, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, scope: !1349, file: !1321, line: 44, baseType: !1357, size: 128)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1349, file: !1321, line: 44, size: 128, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1357, file: !1321, line: 45, baseType: !196, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1357, file: !1321, line: 46, baseType: !196, size: 32, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1357, file: !1321, line: 47, baseType: !196, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1357, file: !1321, line: 48, baseType: !196, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1342, file: !1321, line: 51, baseType: !196, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1342, file: !1321, line: 52, baseType: !196, size: 32, offset: 224)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1342, file: !1321, line: 55, baseType: !1366, size: 1024, offset: 256)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1342, file: !1321, line: 58, baseType: !1370, size: 2048, offset: 1280)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 2048, elements: !305)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1342, file: !1321, line: 60, baseType: !1372, size: 384, offset: 3328)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 384, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 12)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !1321, line: 62, baseType: !1376, size: 384, offset: 3712)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !1321, line: 62, size: 384, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1376, file: !1321, line: 63, baseType: !1372, size: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1376, file: !1321, line: 64, baseType: !1372, size: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1326, file: !1321, line: 307, baseType: !1381, size: 1088)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1321, line: 79, size: 1088, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1429}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1381, file: !1321, line: 80, baseType: !196, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1381, file: !1321, line: 81, baseType: !196, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1381, file: !1321, line: 82, baseType: !196, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1381, file: !1321, line: 83, baseType: !196, size: 32, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1381, file: !1321, line: 84, baseType: !196, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1381, file: !1321, line: 85, baseType: !196, size: 32, offset: 160)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1381, file: !1321, line: 86, baseType: !196, size: 32, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1381, file: !1321, line: 88, baseType: !1339, size: 640, offset: 224)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1381, file: !1321, line: 89, baseType: !704, size: 8, offset: 864)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1381, file: !1321, line: 90, baseType: !704, size: 8, offset: 872)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1381, file: !1321, line: 91, baseType: !704, size: 8, offset: 880)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1381, file: !1321, line: 92, baseType: !704, size: 8, offset: 888)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1381, file: !1321, line: 93, baseType: !704, size: 8, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1381, file: !1321, line: 94, baseType: !704, size: 8, offset: 904)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1381, file: !1321, line: 95, baseType: !1398, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1400, line: 11, size: 128, elements: !1401)
!1400 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1399, file: !1400, line: 12, baseType: !136, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1399, file: !1400, line: 13, baseType: !1404, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1406, line: 56, size: 1344, elements: !1407)
!1406 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1405, file: !1406, line: 61, baseType: !348, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1405, file: !1406, line: 62, baseType: !348, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1405, file: !1406, line: 63, baseType: !348, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1405, file: !1406, line: 64, baseType: !348, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1405, file: !1406, line: 65, baseType: !348, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1405, file: !1406, line: 66, baseType: !348, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1405, file: !1406, line: 68, baseType: !348, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1405, file: !1406, line: 69, baseType: !348, size: 64, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1405, file: !1406, line: 70, baseType: !348, size: 64, offset: 512)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1405, file: !1406, line: 71, baseType: !348, size: 64, offset: 576)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1405, file: !1406, line: 72, baseType: !348, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1405, file: !1406, line: 73, baseType: !348, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1405, file: !1406, line: 74, baseType: !348, size: 64, offset: 768)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1405, file: !1406, line: 75, baseType: !348, size: 64, offset: 832)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1405, file: !1406, line: 76, baseType: !348, size: 64, offset: 896)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1405, file: !1406, line: 81, baseType: !348, size: 64, offset: 960)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1405, file: !1406, line: 83, baseType: !348, size: 64, offset: 1024)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1405, file: !1406, line: 84, baseType: !348, size: 64, offset: 1088)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 85, baseType: !348, size: 64, offset: 1152)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1405, file: !1406, line: 86, baseType: !348, size: 64, offset: 1216)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1405, file: !1406, line: 87, baseType: !348, size: 64, offset: 1280)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1381, file: !1321, line: 96, baseType: !196, size: 32, offset: 1024)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1326, file: !1321, line: 308, baseType: !1431, size: 4608, align: 512)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1321, line: 289, size: 4608, align: 512, elements: !1432)
!1432 = !{!1433, !1434, !1443}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1431, file: !1321, line: 290, baseType: !1342, size: 4096, align: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1431, file: !1321, line: 291, baseType: !1435, size: 512, offset: 4096)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1321, line: 268, size: 512, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1435, file: !1321, line: 269, baseType: !417, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1435, file: !1321, line: 270, baseType: !417, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1435, file: !1321, line: 271, baseType: !1440, size: 384, offset: 128)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 384, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 6)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1431, file: !1321, line: 292, baseType: !1444, offset: 4608)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 0)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1326, file: !1321, line: 309, baseType: !1448, size: 32768)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 32768, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 4096)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !389, line: 378, baseType: !1452, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !552, file: !389, line: 384, baseType: !873, size: 192, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !409, file: !389, line: 500, baseType: !258, offset: 6656)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !409, file: !389, line: 501, baseType: !1456, size: 64, offset: 6656)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !389, line: 387, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !409, file: !389, line: 516, baseType: !1459, size: 64, offset: 6720)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1461, line: 18, flags: DIFlagFwdDecl)
!1461 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !409, file: !389, line: 519, baseType: !376, size: 64, offset: 6784)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !409, file: !389, line: 521, baseType: !1464, size: 64, offset: 6848)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !389, line: 521, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !409, file: !389, line: 545, baseType: !437, size: 32, offset: 6912)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !409, file: !389, line: 548, baseType: !224, size: 8, offset: 6944)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !409, file: !389, line: 550, baseType: !1469, offset: 6952)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1470, line: 142, elements: !272)
!1470 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !409, file: !389, line: 554, baseType: !1472, size: 256, offset: 6976)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !135, line: 102, size: 256, elements: !1473)
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1472, file: !135, line: 103, baseType: !445, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1472, file: !135, line: 104, baseType: !245, size: 128, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1472, file: !135, line: 105, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !135, line: 21, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !409, file: !389, line: 557, baseType: !196, size: 32, offset: 7232)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !406, file: !389, line: 565, baseType: !1484, offset: 7296)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: -1)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !388, file: !389, line: 333, baseType: !1488, size: 64, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !378, line: 284, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !378, line: 284, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1489, file: !378, line: 284, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !435, line: 19, baseType: !348)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !388, file: !389, line: 334, baseType: !348, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !388, file: !389, line: 343, baseType: !1495, size: 256, offset: 704)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !389, line: 340, size: 256, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1495, file: !389, line: 341, baseType: !396, size: 192, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1495, file: !389, line: 342, baseType: !348, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !388, file: !389, line: 351, baseType: !245, size: 128, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !388, file: !389, line: 353, baseType: !1501, size: 64, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !389, line: 353, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !388, file: !389, line: 356, baseType: !1504, size: 64, offset: 1152)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !389, line: 356, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !388, file: !389, line: 359, baseType: !348, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !388, file: !389, line: 361, baseType: !376, size: 64, offset: 1280)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !388, file: !389, line: 362, baseType: !168, size: 64, offset: 1344)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !388, file: !389, line: 365, baseType: !445, size: 64, offset: 1408)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !388, file: !389, line: 373, baseType: !1512, offset: 1472)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !389, line: 296, elements: !272)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !355, file: !325, line: 90, baseType: !350, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !355, file: !325, line: 91, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !315, file: !241, line: 143, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520, !251}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !24, line: 39, size: 384, elements: !1523)
!1523 = !{!1524, !1525, !1529, !1533, !1539, !1543}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !24, line: 40, baseType: !23, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1522, file: !24, line: 41, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!224}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1522, file: !24, line: 42, baseType: !1530, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!168}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1522, file: !24, line: 43, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!233, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !24, line: 19, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1522, file: !24, line: 44, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!233}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1522, file: !24, line: 45, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !168}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !315, file: !241, line: 144, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!233, !251}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !315, file: !241, line: 145, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !251, !1555, !1561}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1461, line: 23, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1461, line: 21, size: 32, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1557, file: !1461, line: 22, baseType: !1560, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !225, line: 32, baseType: !1035)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1461, line: 28, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1461, line: 26, size: 32, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1563, file: !1461, line: 27, baseType: !1566, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !225, line: 33, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !333, line: 50, baseType: !7)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !240, file: !241, line: 70, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1571, line: 123, size: 1024, elements: !1572)
!1571 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1715, !1716, !1717, !1718, !1719}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1570, file: !1571, line: 124, baseType: !437, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1570, file: !1571, line: 125, baseType: !437, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1570, file: !1571, line: 135, baseType: !1569, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1570, file: !1571, line: 136, baseType: !185, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1570, file: !1571, line: 138, baseType: !396, size: 192, align: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1570, file: !1571, line: 140, baseType: !233, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1570, file: !1571, line: 141, baseType: !7, size: 32, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !1571, line: 142, baseType: !1581, size: 256, offset: 512)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !1571, line: 142, size: 256, elements: !1582)
!1582 = !{!1583, !1638, !1642}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1581, file: !1571, line: 143, baseType: !1584, size: 192)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1571, line: 91, size: 192, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1584, file: !1571, line: 92, baseType: !348, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1584, file: !1571, line: 94, baseType: !413, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1584, file: !1571, line: 100, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1571, line: 180, size: 704, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1608, !1609, !1610, !1636, !1637}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1590, file: !1571, line: 182, baseType: !1569, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1590, file: !1571, line: 183, baseType: !7, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1590, file: !1571, line: 186, baseType: !1595, size: 192, offset: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1596, line: 19, size: 192, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1606, !1607}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1595, file: !1596, line: 20, baseType: !1599, size: 128)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1600, line: 292, size: 128, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1605}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1599, file: !1600, line: 293, baseType: !258)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1599, file: !1600, line: 295, baseType: !1604, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !225, line: 148, baseType: !7)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1599, file: !1600, line: 296, baseType: !168, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1595, file: !1596, line: 21, baseType: !7, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1595, file: !1596, line: 22, baseType: !7, size: 32, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1590, file: !1571, line: 187, baseType: !196, size: 32, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1590, file: !1571, line: 188, baseType: !196, size: 32, offset: 352)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1590, file: !1571, line: 189, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1571, line: 168, size: 320, elements: !1613)
!1613 = !{!1614, !1620, !1624, !1628, !1632}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1612, file: !1571, line: 169, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!284, !1618, !1589}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !378, line: 539, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1612, file: !1571, line: 171, baseType: !1621, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!284, !1569, !185, !340}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1612, file: !1571, line: 173, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!284, !1569}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1612, file: !1571, line: 174, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!284, !1569, !1569, !185}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1612, file: !1571, line: 176, baseType: !1633, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!284, !1618, !1569, !1589}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1590, file: !1571, line: 192, baseType: !245, size: 128, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1590, file: !1571, line: 194, baseType: !844, size: 128, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1581, file: !1571, line: 144, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1571, line: 103, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1639, file: !1571, line: 104, baseType: !1569, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1581, file: !1571, line: 145, baseType: !1643, size: 256)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1571, line: 107, size: 256, elements: !1644)
!1644 = !{!1645, !1710, !1713, !1714}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1643, file: !1571, line: 108, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1648)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1571, line: 217, size: 768, elements: !1649)
!1649 = !{!1650, !1670, !1674, !1678, !1683, !1687, !1691, !1695, !1696, !1697, !1698, !1706}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1648, file: !1571, line: 222, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!284, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1571, line: 197, size: 1088, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1655, file: !1571, line: 199, baseType: !1569, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1655, file: !1571, line: 200, baseType: !376, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1655, file: !1571, line: 201, baseType: !1618, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1655, file: !1571, line: 202, baseType: !168, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1655, file: !1571, line: 205, baseType: !514, size: 192, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1655, file: !1571, line: 206, baseType: !514, size: 192, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1655, file: !1571, line: 207, baseType: !284, size: 32, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1655, file: !1571, line: 208, baseType: !245, size: 128, offset: 704)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1655, file: !1571, line: 209, baseType: !300, size: 64, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1655, file: !1571, line: 211, baseType: !345, size: 64, offset: 896)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1655, file: !1571, line: 212, baseType: !224, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1655, file: !1571, line: 213, baseType: !224, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1655, file: !1571, line: 214, baseType: !1504, size: 64, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1648, file: !1571, line: 223, baseType: !1671, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1654}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1648, file: !1571, line: 236, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!284, !1618, !168}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1648, file: !1571, line: 238, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!168, !1618, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1648, file: !1571, line: 239, baseType: !1684, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!168, !1618, !168, !1682}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1648, file: !1571, line: 240, baseType: !1688, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1618, !168}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1648, file: !1571, line: 242, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!331, !1654, !300, !345, !379}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1648, file: !1571, line: 252, baseType: !345, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1648, file: !1571, line: 259, baseType: !224, size: 8, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1648, file: !1571, line: 260, baseType: !1692, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1648, file: !1571, line: 263, baseType: !1699, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!1702, !1654, !1704}
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1703, line: 52, baseType: !7)
!1703 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1571, line: 27, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1648, file: !1571, line: 266, baseType: !1707, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!284, !1654, !387}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1643, file: !1571, line: 109, baseType: !1711, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1571, line: 31, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1643, file: !1571, line: 110, baseType: !379, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1643, file: !1571, line: 111, baseType: !1569, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1570, file: !1571, line: 148, baseType: !168, size: 64, offset: 768)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1570, file: !1571, line: 154, baseType: !417, size: 64, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !1571, line: 156, baseType: !182, size: 16, offset: 896)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1570, file: !1571, line: 157, baseType: !340, size: 16, offset: 912)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1570, file: !1571, line: 158, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1571, line: 32, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !240, file: !241, line: 71, baseType: !1723, size: 32, offset: 448)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1724, line: 19, size: 32, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1723, file: !1724, line: 20, baseType: !573, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !240, file: !241, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !240, file: !241, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !240, file: !241, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !240, file: !241, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !240, file: !241, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !30, line: 463, baseType: !1733, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !237, file: !30, line: 465, baseType: !1735, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !237, file: !30, line: 467, baseType: !185, size: 64, offset: 640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !237, file: !30, line: 468, baseType: !1739, size: 64, offset: 704)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1749, !1754, !1758}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !30, line: 88, baseType: !185, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1741, file: !30, line: 89, baseType: !352, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1741, file: !30, line: 90, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!284, !1733, !295}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1741, file: !30, line: 91, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!300, !1733, !1753, !1555, !1561}
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1741, file: !30, line: 93, baseType: !1755, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1733}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1741, file: !30, line: 95, baseType: !1759, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1762)
!1762 = !{!1763, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1761, file: !37, line: 279, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!284, !1733}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1761, file: !37, line: 280, baseType: !1755, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1761, file: !37, line: 281, baseType: !1764, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1761, file: !37, line: 282, baseType: !1764, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1761, file: !37, line: 283, baseType: !1764, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1761, file: !37, line: 284, baseType: !1764, size: 64, offset: 320)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1761, file: !37, line: 285, baseType: !1764, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1761, file: !37, line: 286, baseType: !1764, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1761, file: !37, line: 287, baseType: !1764, size: 64, offset: 512)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1761, file: !37, line: 288, baseType: !1764, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1761, file: !37, line: 289, baseType: !1764, size: 64, offset: 640)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1761, file: !37, line: 290, baseType: !1764, size: 64, offset: 704)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1761, file: !37, line: 291, baseType: !1764, size: 64, offset: 768)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1761, file: !37, line: 292, baseType: !1764, size: 64, offset: 832)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1761, file: !37, line: 293, baseType: !1764, size: 64, offset: 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1761, file: !37, line: 294, baseType: !1764, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1761, file: !37, line: 295, baseType: !1764, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1761, file: !37, line: 296, baseType: !1764, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1761, file: !37, line: 297, baseType: !1764, size: 64, offset: 1152)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1761, file: !37, line: 298, baseType: !1764, size: 64, offset: 1216)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1761, file: !37, line: 299, baseType: !1764, size: 64, offset: 1280)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1761, file: !37, line: 300, baseType: !1764, size: 64, offset: 1344)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1761, file: !37, line: 301, baseType: !1764, size: 64, offset: 1408)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !237, file: !30, line: 470, baseType: !1790, size: 64, offset: 768)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1792, line: 82, size: 1408, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1879, !1882, !1885}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1791, file: !1792, line: 83, baseType: !185, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1791, file: !1792, line: 84, baseType: !185, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1791, file: !1792, line: 85, baseType: !1733, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1791, file: !1792, line: 86, baseType: !352, size: 64, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1791, file: !1792, line: 87, baseType: !352, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1791, file: !1792, line: 88, baseType: !352, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1791, file: !1792, line: 90, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!284, !1733, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1813, !1814, !1815, !1816, !1830, !1843, !1844, !1845, !1846, !1847, !1855, !1856, !1857, !1858, !1859, !1860}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !65, line: 96, baseType: !185, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1805, file: !65, line: 97, baseType: !1790, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1805, file: !65, line: 99, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1812, line: 76, flags: DIFlagFwdDecl)
!1812 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1805, file: !65, line: 100, baseType: !185, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1805, file: !65, line: 102, baseType: !224, size: 8, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1805, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1805, file: !65, line: 105, baseType: !1817, size: 64, offset: 320)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1820, line: 262, size: 1600, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1824, !1825, !1829}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1819, file: !1820, line: 263, baseType: !1823, size: 256)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !1367)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !1820, line: 264, baseType: !1823, size: 256, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1819, file: !1820, line: 265, baseType: !1826, size: 1024, offset: 512)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 1024, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1819, file: !1820, line: 266, baseType: !233, size: 64, offset: 1536)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1805, file: !65, line: 106, baseType: !1831, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1820, line: 210, size: 256, elements: !1834)
!1834 = !{!1835, !1839, !1841, !1842}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1833, file: !1820, line: 211, baseType: !1836, size: 72)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 72, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 9)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1833, file: !1820, line: 212, baseType: !1840, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1820, line: 14, baseType: !348)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1833, file: !1820, line: 213, baseType: !198, size: 32, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1833, file: !1820, line: 214, baseType: !198, size: 32, offset: 224)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1805, file: !65, line: 108, baseType: !1764, size: 64, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1805, file: !65, line: 109, baseType: !1755, size: 64, offset: 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1805, file: !65, line: 110, baseType: !1764, size: 64, offset: 576)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1805, file: !65, line: 111, baseType: !1755, size: 64, offset: 640)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1805, file: !65, line: 112, baseType: !1848, size: 64, offset: 704)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!284, !1733, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1853)
!1853 = !{!1854}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1852, file: !37, line: 51, baseType: !284, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1805, file: !65, line: 113, baseType: !1764, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1805, file: !65, line: 114, baseType: !352, size: 64, offset: 832)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1805, file: !65, line: 115, baseType: !352, size: 64, offset: 896)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1805, file: !65, line: 117, baseType: !1759, size: 64, offset: 960)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1805, file: !65, line: 118, baseType: !1755, size: 64, offset: 1024)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1805, file: !65, line: 120, baseType: !1861, size: 64, offset: 1088)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1791, file: !1792, line: 91, baseType: !1746, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1791, file: !1792, line: 92, baseType: !1764, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1791, file: !1792, line: 93, baseType: !1755, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1791, file: !1792, line: 94, baseType: !1764, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1791, file: !1792, line: 95, baseType: !1755, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1791, file: !1792, line: 97, baseType: !1764, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1791, file: !1792, line: 98, baseType: !1764, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1791, file: !1792, line: 100, baseType: !1848, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1791, file: !1792, line: 101, baseType: !1764, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1791, file: !1792, line: 103, baseType: !1764, size: 64, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1791, file: !1792, line: 105, baseType: !1764, size: 64, offset: 1088)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1791, file: !1792, line: 107, baseType: !1759, size: 64, offset: 1152)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1791, file: !1792, line: 109, baseType: !1876, size: 64, offset: 1216)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1792, line: 109, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1791, file: !1792, line: 111, baseType: !1880, size: 64, offset: 1280)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1792, line: 111, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1791, file: !1792, line: 112, baseType: !1883, offset: 1344)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1884, line: 187, elements: !272)
!1884 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1791, file: !1792, line: 114, baseType: !224, size: 8, offset: 1344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !237, file: !30, line: 471, baseType: !1804, size: 64, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !237, file: !30, line: 473, baseType: !168, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !237, file: !30, line: 475, baseType: !168, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !237, file: !30, line: 480, baseType: !514, size: 192, offset: 1024)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !237, file: !30, line: 484, baseType: !1891, size: 576, offset: 1216)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1891, file: !30, line: 362, baseType: !245, size: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1891, file: !30, line: 363, baseType: !245, size: 128, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1891, file: !30, line: 364, baseType: !245, size: 128, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1891, file: !30, line: 365, baseType: !245, size: 128, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1891, file: !30, line: 366, baseType: !224, size: 8, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1891, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !237, file: !30, line: 485, baseType: !1900, size: 2304, offset: 1792)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1997, !2001}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1900, file: !37, line: 566, baseType: !1851, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1900, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1900, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1900, file: !37, line: 569, baseType: !224, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1900, file: !37, line: 570, baseType: !224, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1900, file: !37, line: 571, baseType: !224, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1900, file: !37, line: 572, baseType: !224, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1900, file: !37, line: 573, baseType: !224, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1900, file: !37, line: 574, baseType: !224, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1900, file: !37, line: 575, baseType: !224, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1900, file: !37, line: 576, baseType: !224, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1900, file: !37, line: 577, baseType: !196, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1900, file: !37, line: 578, baseType: !258, offset: 96)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1900, file: !37, line: 580, baseType: !245, size: 128, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1900, file: !37, line: 581, baseType: !873, size: 192, offset: 256)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1900, file: !37, line: 582, baseType: !1918, size: 64, offset: 448)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1920, line: 43, size: 1472, elements: !1921)
!1920 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1929, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1919, file: !1920, line: 44, baseType: !185, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1919, file: !1920, line: 45, baseType: !284, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1919, file: !1920, line: 46, baseType: !245, size: 128, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1919, file: !1920, line: 47, baseType: !258, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1919, file: !1920, line: 48, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1919, file: !1920, line: 49, baseType: !1930, size: 320, offset: 320)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1931, line: 11, size: 320, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1935, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1930, file: !1931, line: 16, baseType: !837, size: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1930, file: !1931, line: 17, baseType: !348, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1930, file: !1931, line: 18, baseType: !1936, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1930, file: !1931, line: 19, baseType: !196, size: 32, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1919, file: !1920, line: 50, baseType: !348, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1919, file: !1920, line: 51, baseType: !643, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1919, file: !1920, line: 52, baseType: !643, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1919, file: !1920, line: 53, baseType: !643, size: 64, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1919, file: !1920, line: 54, baseType: !643, size: 64, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1919, file: !1920, line: 55, baseType: !643, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1919, file: !1920, line: 56, baseType: !348, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1919, file: !1920, line: 57, baseType: !348, size: 64, offset: 1088)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1919, file: !1920, line: 58, baseType: !348, size: 64, offset: 1152)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1919, file: !1920, line: 59, baseType: !348, size: 64, offset: 1216)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1919, file: !1920, line: 60, baseType: !348, size: 64, offset: 1280)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1919, file: !1920, line: 61, baseType: !1733, size: 64, offset: 1344)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1919, file: !1920, line: 62, baseType: !224, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1919, file: !1920, line: 63, baseType: !224, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1900, file: !37, line: 583, baseType: !224, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1900, file: !37, line: 584, baseType: !224, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1900, file: !37, line: 585, baseType: !224, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1900, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1900, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1900, file: !37, line: 592, baseType: !635, size: 512, offset: 576)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1900, file: !37, line: 593, baseType: !417, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1900, file: !37, line: 594, baseType: !1472, size: 256, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1900, file: !37, line: 595, baseType: !844, size: 128, offset: 1408)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1900, file: !37, line: 596, baseType: !1927, size: 64, offset: 1536)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1900, file: !37, line: 597, baseType: !437, size: 32, offset: 1600)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1900, file: !37, line: 598, baseType: !437, size: 32, offset: 1632)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1900, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1900, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1900, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1900, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1900, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1900, file: !37, line: 604, baseType: !224, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1900, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1900, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1900, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1900, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1900, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1900, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1900, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1900, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1900, file: !37, line: 613, baseType: !284, size: 32, offset: 1792)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1900, file: !37, line: 614, baseType: !284, size: 32, offset: 1824)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1900, file: !37, line: 615, baseType: !417, size: 64, offset: 1856)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1900, file: !37, line: 616, baseType: !417, size: 64, offset: 1920)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1900, file: !37, line: 617, baseType: !417, size: 64, offset: 1984)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1900, file: !37, line: 618, baseType: !417, size: 64, offset: 2048)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1900, file: !37, line: 620, baseType: !1988, size: 64, offset: 2112)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1989, file: !37, line: 537, baseType: !258)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1989, file: !37, line: 538, baseType: !7, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1989, file: !37, line: 540, baseType: !245, size: 128, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1989, file: !37, line: 543, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1900, file: !37, line: 621, baseType: !1998, size: 64, offset: 2176)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1733, !797}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1900, file: !37, line: 622, baseType: !2002, size: 64, offset: 2240)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !237, file: !30, line: 486, baseType: !2005, size: 64, offset: 4096)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2014, !2015, !2016}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2006, file: !37, line: 643, baseType: !1761, size: 1472)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2006, file: !37, line: 644, baseType: !1764, size: 64, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2006, file: !37, line: 645, baseType: !2011, size: 64, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !1733, !224}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2006, file: !37, line: 646, baseType: !1764, size: 64, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2006, file: !37, line: 647, baseType: !1755, size: 64, offset: 1664)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2006, file: !37, line: 648, baseType: !1755, size: 64, offset: 1728)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !237, file: !30, line: 493, baseType: !2018, size: 64, offset: 4160)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2083, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2019, file: !51, line: 163, baseType: !245, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2019, file: !51, line: 164, baseType: !185, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2019, file: !51, line: 165, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2027)
!2027 = !{!2028, !2032, !2043, !2048, !2052, !2060, !2064, !2068, !2075, !2079}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2026, file: !51, line: 106, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!284, !2018, !189, !50}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2026, file: !51, line: 108, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!284, !2018, !2036, !50}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2037, file: !51, line: 64, baseType: !206, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2037, file: !51, line: 65, baseType: !284, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2037, file: !51, line: 66, baseType: !2042, size: 512, offset: 96)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 512, elements: !930)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2026, file: !51, line: 110, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!284, !2018, !7, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !225, line: 164, baseType: !348)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2026, file: !51, line: 111, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !2018, !7}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2026, file: !51, line: 112, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!284, !2018, !189, !2056, !7, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2026, file: !51, line: 117, baseType: !2061, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!284, !2018, !7, !7, !168}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2026, file: !51, line: 119, baseType: !2065, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !2018, !7, !7}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2026, file: !51, line: 121, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!284, !2018, !2072, !224}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2074, line: 11, flags: DIFlagFwdDecl)
!2074 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2026, file: !51, line: 122, baseType: !2076, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !2018, !2072}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2026, file: !51, line: 123, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!284, !2018, !2036, !2058, !2059}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2019, file: !51, line: 166, baseType: !168, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2019, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2019, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2019, file: !51, line: 171, baseType: !206, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2019, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2019, file: !51, line: 173, baseType: !2089, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2019, file: !51, line: 175, baseType: !2018, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2019, file: !51, line: 182, baseType: !2047, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2019, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2019, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2019, file: !51, line: 185, baseType: !1599, size: 128, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2019, file: !51, line: 186, baseType: !514, size: 192, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2019, file: !51, line: 187, baseType: !2098, offset: 1088)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1485)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !237, file: !30, line: 499, baseType: !245, size: 128, offset: 4224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !237, file: !30, line: 502, baseType: !2101, size: 64, offset: 4352)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !237, file: !30, line: 504, baseType: !2105, size: 64, offset: 4416)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !237, file: !30, line: 505, baseType: !417, size: 64, offset: 4480)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !237, file: !30, line: 510, baseType: !417, size: 64, offset: 4544)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !237, file: !30, line: 511, baseType: !2109, size: 64, offset: 4608)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !237, file: !30, line: 513, baseType: !2113, size: 64, offset: 4672)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2114, file: !30, line: 293, baseType: !7, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2114, file: !30, line: 294, baseType: !348, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !237, file: !30, line: 515, baseType: !245, size: 128, offset: 4736)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !237, file: !30, line: 526, baseType: !2120, offset: 4864)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2121, line: 5, elements: !272)
!2121 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !237, file: !30, line: 528, baseType: !189, size: 64, offset: 4864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !237, file: !30, line: 529, baseType: !206, size: 64, offset: 4928)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !237, file: !30, line: 534, baseType: !2125, size: 32, offset: 4992)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !225, line: 16, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !225, line: 13, baseType: !196)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !237, file: !30, line: 535, baseType: !196, size: 32, offset: 5024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !237, file: !30, line: 537, baseType: !258, offset: 5056)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !237, file: !30, line: 538, baseType: !245, size: 128, offset: 5056)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !237, file: !30, line: 540, baseType: !2131, size: 64, offset: 5184)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2133, line: 54, size: 960, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145, !2149, !2150, !2151, !2152, !2156, !2160, !2161}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2132, file: !2133, line: 55, baseType: !185, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2132, file: !2133, line: 56, baseType: !1810, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2132, file: !2133, line: 58, baseType: !352, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2132, file: !2133, line: 59, baseType: !352, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2132, file: !2133, line: 60, baseType: !251, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2132, file: !2133, line: 62, baseType: !1746, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2132, file: !2133, line: 63, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!300, !1733, !1753}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2132, file: !2133, line: 65, baseType: !2146, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2131}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2132, file: !2133, line: 66, baseType: !1755, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2132, file: !2133, line: 68, baseType: !1764, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2132, file: !2133, line: 70, baseType: !1520, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2132, file: !2133, line: 71, baseType: !2153, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!233, !1733}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2132, file: !2133, line: 73, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !1733, !1555, !1561}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2132, file: !2133, line: 75, baseType: !1759, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2132, file: !2133, line: 77, baseType: !1880, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !237, file: !30, line: 541, baseType: !352, size: 64, offset: 5248)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !237, file: !30, line: 543, baseType: !1755, size: 64, offset: 5312)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !237, file: !30, line: 544, baseType: !2165, size: 64, offset: 5376)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !237, file: !30, line: 545, baseType: !2168, size: 64, offset: 5440)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !237, file: !30, line: 547, baseType: !224, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !237, file: !30, line: 548, baseType: !224, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !237, file: !30, line: 549, baseType: !224, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !237, file: !30, line: 550, baseType: !224, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !210, file: !203, line: 116, baseType: !2175, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!224, !227, !185}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !210, file: !203, line: 118, baseType: !2179, size: 64, offset: 320)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!284, !227, !185, !7, !168, !345}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !210, file: !203, line: 123, baseType: !2183, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!284, !227, !185, !2186, !345}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !210, file: !203, line: 126, baseType: !2188, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!185, !227}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !210, file: !203, line: 127, baseType: !2188, size: 64, offset: 512)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !210, file: !203, line: 128, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!206, !227}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !210, file: !203, line: 130, baseType: !2197, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!206, !227, !206}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !210, file: !203, line: 133, baseType: !2201, size: 64, offset: 704)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!206, !227, !185}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !210, file: !203, line: 135, baseType: !2205, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!284, !227, !185, !185, !7, !7, !2208}
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !203, line: 43, size: 640, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2209, file: !203, line: 44, baseType: !206, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2209, file: !203, line: 45, baseType: !7, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2209, file: !203, line: 46, baseType: !2214, size: 512, offset: 128)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !673)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !210, file: !203, line: 140, baseType: !2197, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !210, file: !203, line: 143, baseType: !2193, size: 64, offset: 896)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !210, file: !203, line: 145, baseType: !213, size: 64, offset: 960)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !210, file: !203, line: 146, baseType: !2219, size: 64, offset: 1024)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!284, !227, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !203, line: 29, size: 128, elements: !2224)
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2223, file: !203, line: 30, baseType: !7, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2223, file: !203, line: 31, baseType: !7, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2223, file: !203, line: 32, baseType: !227, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !210, file: !203, line: 148, baseType: !2229, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!284, !227, !1733}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !202, file: !203, line: 20, baseType: !1733, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !190, file: !191, line: 57, baseType: !2234, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !191, line: 31, size: 704, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2235, file: !191, line: 32, baseType: !300, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2235, file: !191, line: 33, baseType: !284, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2235, file: !191, line: 34, baseType: !168, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2235, file: !191, line: 35, baseType: !2234, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2235, file: !191, line: 43, baseType: !367, size: 448, offset: 256)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !190, file: !191, line: 58, baseType: !2234, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !191, line: 59, baseType: !189, size: 64, offset: 512)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !190, file: !191, line: 60, baseType: !189, size: 64, offset: 576)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !190, file: !191, line: 61, baseType: !189, size: 64, offset: 640)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !191, line: 63, baseType: !240, size: 512, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !190, file: !191, line: 65, baseType: !348, size: 64, offset: 1216)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !190, file: !191, line: 66, baseType: !168, size: 64, offset: 1280)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !173, file: !174, line: 417, baseType: !206, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !173, file: !174, line: 418, baseType: !2251, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2253)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !114, line: 263, size: 256, elements: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2253, file: !114, line: 264, baseType: !185, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2253, file: !114, line: 265, baseType: !345, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2253, file: !114, line: 266, baseType: !224, size: 8, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2253, file: !114, line: 267, baseType: !113, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !114, line: 268, baseType: !2260, size: 64, offset: 192)
!2260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !114, line: 268, size: 64, elements: !2261)
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2260, file: !114, line: 269, baseType: !233, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2260, file: !114, line: 276, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2260, file: !114, line: 270, size: 64, elements: !2265)
!2265 = !{!2266, !2268, !2270, !2272, !2274}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2264, file: !114, line: 271, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 64, elements: !673)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2264, file: !114, line: 272, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 64, elements: !496)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2264, file: !114, line: 273, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !1111)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2264, file: !114, line: 274, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 64, elements: !724)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2264, file: !114, line: 275, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !724)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !173, file: !174, line: 419, baseType: !2277, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2280, line: 20, size: 512, elements: !2281)
!2280 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !{!2282, !2284, !2285, !2286, !2287, !2288, !2290, !2291}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2279, file: !2280, line: 21, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !225, line: 158, baseType: !1266)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2279, file: !2280, line: 22, baseType: !2283, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2279, file: !2280, line: 23, baseType: !185, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2280, line: 24, baseType: !348, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2279, file: !2280, line: 25, baseType: !348, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2279, file: !2280, line: 26, baseType: !2289, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2279, file: !2280, line: 26, baseType: !2289, size: 64, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2279, file: !2280, line: 26, baseType: !2289, size: 64, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !173, file: !174, line: 420, baseType: !7, size: 32, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !173, file: !174, line: 421, baseType: !284, size: 32, offset: 608)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "psmouse", scope: !170, file: !3, line: 19, baseType: !2295, size: 64, offset: 640)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !71, line: 89, size: 3648, elements: !2297)
!2297 = !{!2298, !2299, !2302, !2377, !2386, !2387, !2388, !2408, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2434, !2438, !2439, !2443, !2444, !2445, !2449, !2450, !2451, !2452}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2296, file: !71, line: 90, baseType: !168, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2296, file: !71, line: 91, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !71, line: 91, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !2296, file: !71, line: 92, baseType: !2303, size: 576, offset: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !2304, line: 33, size: 576, elements: !2305)
!2304 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!2305 = !{!2306, !2371, !2372, !2373, !2374, !2375, !2376}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !2303, file: !2304, line: 34, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !2309, line: 20, size: 8384, elements: !2310)
!2309 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2323, !2324, !2328, !2332, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2366, !2367, !2368, !2369}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !2308, file: !2309, line: 21, baseType: !168, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2308, file: !2309, line: 23, baseType: !1823, size: 256, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !2308, file: !2309, line: 24, baseType: !1823, size: 256, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !2308, file: !2309, line: 25, baseType: !1826, size: 1024, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !2308, file: !2309, line: 27, baseType: !224, size: 8, offset: 1600)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2308, file: !2309, line: 29, baseType: !2317, size: 32, offset: 1608)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !1820, line: 236, size: 32, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2317, file: !1820, line: 237, baseType: !705, size: 8)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2317, file: !1820, line: 238, baseType: !705, size: 8, offset: 8)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2317, file: !1820, line: 239, baseType: !705, size: 8, offset: 16)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2317, file: !1820, line: 240, baseType: !705, size: 8, offset: 24)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2308, file: !2309, line: 32, baseType: !258, offset: 1640)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2308, file: !2309, line: 34, baseType: !2325, size: 64, offset: 1664)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!284, !2307, !706}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2308, file: !2309, line: 35, baseType: !2329, size: 64, offset: 1728)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!284, !2307}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2308, file: !2309, line: 36, baseType: !2333, size: 64, offset: 1792)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2307}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2308, file: !2309, line: 37, baseType: !2329, size: 64, offset: 1856)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2308, file: !2309, line: 38, baseType: !2333, size: 64, offset: 1920)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2308, file: !2309, line: 40, baseType: !2307, size: 64, offset: 1984)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !2308, file: !2309, line: 42, baseType: !245, size: 128, offset: 2048)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2308, file: !2309, line: 43, baseType: !245, size: 128, offset: 2176)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2308, file: !2309, line: 45, baseType: !7, size: 32, offset: 2304)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2308, file: !2309, line: 51, baseType: !2343, size: 64, offset: 2368)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !2309, line: 67, size: 1792, elements: !2345)
!2345 = !{!2346, !2347, !2350, !2351, !2352, !2357, !2361, !2362, !2363, !2364, !2365}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2344, file: !2309, line: 68, baseType: !185, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2344, file: !2309, line: 70, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !2344, file: !2309, line: 71, baseType: !224, size: 8, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2344, file: !2309, line: 73, baseType: !2333, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !2344, file: !2309, line: 74, baseType: !2353, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!2356, !2307, !706, !7}
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !2344, file: !2309, line: 75, baseType: !2358, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!284, !2307, !2343}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !2344, file: !2309, line: 76, baseType: !2329, size: 64, offset: 384)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !2344, file: !2309, line: 77, baseType: !2329, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !2344, file: !2309, line: 78, baseType: !2333, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2344, file: !2309, line: 79, baseType: !2333, size: 64, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2344, file: !2309, line: 81, baseType: !1805, size: 1152, offset: 640)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !2308, file: !2309, line: 53, baseType: !514, size: 192, offset: 2432)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2308, file: !2309, line: 55, baseType: !237, size: 5568, offset: 2624)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2308, file: !2309, line: 57, baseType: !245, size: 128, offset: 8192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !2308, file: !2309, line: 63, baseType: !2370, size: 64, offset: 8320)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !2303, file: !2304, line: 37, baseType: !514, size: 192, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2303, file: !2304, line: 40, baseType: !844, size: 128, offset: 256)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !2304, line: 42, baseType: !348, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !2303, file: !2304, line: 43, baseType: !2267, size: 64, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !2303, file: !2304, line: 44, baseType: !704, size: 8, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !2303, file: !2304, line: 45, baseType: !704, size: 8, offset: 520)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !2296, file: !71, line: 93, baseType: !2378, size: 704, offset: 704)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !135, line: 115, size: 704, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2385}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2378, file: !135, line: 116, baseType: !1472, size: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2378, file: !135, line: 117, baseType: !1930, size: 320, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2378, file: !135, line: 120, baseType: !2383, size: 64, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !135, line: 18, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2378, file: !135, line: 121, baseType: !284, size: 32, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2296, file: !71, line: 94, baseType: !185, size: 64, offset: 1408)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2296, file: !71, line: 95, baseType: !185, size: 64, offset: 1472)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2296, file: !71, line: 96, baseType: !2389, size: 64, offset: 1536)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2391)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !71, line: 77, size: 320, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2404}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2391, file: !71, line: 78, baseType: !70, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !2391, file: !71, line: 79, baseType: !224, size: 8, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !2391, file: !71, line: 80, baseType: !224, size: 8, offset: 40)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !2391, file: !71, line: 81, baseType: !224, size: 8, offset: 48)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !2391, file: !71, line: 82, baseType: !224, size: 8, offset: 56)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2391, file: !71, line: 83, baseType: !185, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !2391, file: !71, line: 84, baseType: !185, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2391, file: !71, line: 85, baseType: !2401, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!284, !2295, !224}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2391, file: !71, line: 86, baseType: !2405, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!284, !2295}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2296, file: !71, line: 97, baseType: !2409, size: 64, offset: 1600)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 64, elements: !673)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !2296, file: !71, line: 98, baseType: !706, size: 8, offset: 1664)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !2296, file: !71, line: 99, baseType: !706, size: 8, offset: 1672)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !2296, file: !71, line: 100, baseType: !706, size: 8, offset: 1680)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !2296, file: !71, line: 101, baseType: !706, size: 8, offset: 1688)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !2296, file: !71, line: 102, baseType: !706, size: 8, offset: 1696)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !2296, file: !71, line: 103, baseType: !224, size: 8, offset: 1704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2296, file: !71, line: 104, baseType: !7, size: 32, offset: 1728)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2296, file: !71, line: 105, baseType: !348, size: 64, offset: 1792)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !2296, file: !71, line: 106, baseType: !348, size: 64, offset: 1856)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !2296, file: !71, line: 107, baseType: !348, size: 64, offset: 1920)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2296, file: !71, line: 108, baseType: !97, size: 32, offset: 1984)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !2296, file: !71, line: 109, baseType: !2422, size: 512, offset: 2016)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 512, elements: !305)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !2296, file: !71, line: 110, baseType: !1823, size: 256, offset: 2528)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !2296, file: !71, line: 112, baseType: !7, size: 32, offset: 2784)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2296, file: !71, line: 113, baseType: !7, size: 32, offset: 2816)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !2296, file: !71, line: 114, baseType: !7, size: 32, offset: 2848)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !2296, file: !71, line: 115, baseType: !7, size: 32, offset: 2880)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !2296, file: !71, line: 116, baseType: !224, size: 8, offset: 2912)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !2296, file: !71, line: 118, baseType: !2430, size: 64, offset: 2944)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!2433, !2295}
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !71, line: 41, baseType: !104)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !2296, file: !71, line: 119, baseType: !2435, size: 64, offset: 3008)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !2295, !7}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !2296, file: !71, line: 120, baseType: !2435, size: 64, offset: 3072)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !2296, file: !71, line: 121, baseType: !2440, size: 64, offset: 3136)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !2295, !109}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !2296, file: !71, line: 123, baseType: !2405, size: 64, offset: 3200)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !2296, file: !71, line: 124, baseType: !2405, size: 64, offset: 3264)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !2296, file: !71, line: 125, baseType: !2446, size: 64, offset: 3328)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2295}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2296, file: !71, line: 126, baseType: !2446, size: 64, offset: 3392)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2296, file: !71, line: 127, baseType: !2405, size: 64, offset: 3456)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !2296, file: !71, line: 129, baseType: !2446, size: 64, offset: 3520)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !2296, file: !71, line: 130, baseType: !2446, size: 64, offset: 3584)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !170, file: !3, line: 20, baseType: !2454, size: 64, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !174, line: 314, size: 6016, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2582, !2583, !2584, !2585}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2455, file: !174, line: 315, baseType: !182, size: 16)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2455, file: !174, line: 325, baseType: !182, size: 16, offset: 16)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2455, file: !174, line: 328, baseType: !177, size: 160, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !2455, file: !174, line: 329, baseType: !2461, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !174, line: 695, size: 7552, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2503, !2504, !2518, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2535, !2536, !2537, !2538, !2570, !2581}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2462, file: !174, line: 696, baseType: !1810, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2462, file: !174, line: 697, baseType: !7, size: 32, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2462, file: !174, line: 698, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !174, line: 519, size: 320, elements: !2470)
!2470 = !{!2471, !2484, !2485, !2498, !2499}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !2469, file: !174, line: 529, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!284, !2461, !2475, !284}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2477, line: 69, size: 128, elements: !2478)
!2477 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2476, file: !2477, line: 70, baseType: !544, size: 16)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2476, file: !2477, line: 71, baseType: !544, size: 16, offset: 16)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2476, file: !2477, line: 84, baseType: !544, size: 16, offset: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2476, file: !2477, line: 85, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !2469, file: !174, line: 531, baseType: !2472, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !2469, file: !174, line: 533, baseType: !2486, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!284, !2461, !543, !182, !178, !704, !284, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2477, line: 135, size: 272, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2490, file: !2477, line: 136, baseType: !705, size: 8)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2490, file: !2477, line: 137, baseType: !544, size: 16)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2490, file: !2477, line: 138, baseType: !2495, size: 272)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 272, elements: !2496)
!2496 = !{!2497}
!2497 = !DISubrange(count: 34)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !2469, file: !174, line: 536, baseType: !2486, size: 64, offset: 192)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !2469, file: !174, line: 541, baseType: !2500, size: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!196, !2461}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !2462, file: !174, line: 699, baseType: !168, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !2462, file: !174, line: 702, baseType: !2505, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !174, line: 557, size: 192, elements: !2508)
!2508 = !{!2509, !2513, !2517}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !2507, file: !174, line: 558, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2461, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !2507, file: !174, line: 559, baseType: !2514, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!284, !2461, !7}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !2507, file: !174, line: 560, baseType: !2510, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !2462, file: !174, line: 703, baseType: !2519, size: 192, offset: 320)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !2520, line: 30, size: 192, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!2521 = !{!2522, !2523, !2524}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2519, file: !2520, line: 31, baseType: !462)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2519, file: !2520, line: 32, baseType: !694, size: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2519, file: !2520, line: 33, baseType: !559, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !2462, file: !174, line: 704, baseType: !2519, size: 192, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2462, file: !174, line: 706, baseType: !284, size: 32, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2462, file: !174, line: 707, baseType: !284, size: 32, offset: 736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2462, file: !174, line: 708, baseType: !237, size: 5568, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !2462, file: !174, line: 709, baseType: !348, size: 64, offset: 6336)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2462, file: !174, line: 713, baseType: !284, size: 32, offset: 6400)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2462, file: !174, line: 714, baseType: !2532, size: 384, offset: 6432)
!2532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 384, elements: !2533)
!2533 = !{!2534}
!2534 = !DISubrange(count: 48)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !2462, file: !174, line: 715, baseType: !873, size: 192, offset: 6848)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !2462, file: !174, line: 717, baseType: !514, size: 192, offset: 7040)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !2462, file: !174, line: 718, baseType: !245, size: 128, offset: 7232)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !2462, file: !174, line: 720, baseType: !2539, size: 64, offset: 7360)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !174, line: 618, size: 832, elements: !2541)
!2541 = !{!2542, !2546, !2547, !2551, !2552, !2553, !2554, !2558, !2559, !2562, !2563, !2566, !2569}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2540, file: !174, line: 619, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!284, !2461}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2540, file: !174, line: 621, baseType: !2543, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2540, file: !174, line: 622, baseType: !2548, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !2461, !284}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2540, file: !174, line: 623, baseType: !2543, size: 64, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2540, file: !174, line: 624, baseType: !2548, size: 64, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2540, file: !174, line: 625, baseType: !2543, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2540, file: !174, line: 627, baseType: !2555, size: 64, offset: 384)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2461}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2540, file: !174, line: 628, baseType: !2555, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2540, file: !174, line: 631, baseType: !2560, size: 64, offset: 512)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !174, line: 631, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2540, file: !174, line: 632, baseType: !2560, size: 64, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2540, file: !174, line: 633, baseType: !2564, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !174, line: 633, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2540, file: !174, line: 634, baseType: !2567, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !174, line: 634, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2540, file: !174, line: 635, baseType: !2567, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2462, file: !174, line: 721, baseType: !2571, size: 64, offset: 7424)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2573)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !174, line: 664, size: 192, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2573, file: !174, line: 665, baseType: !417, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2573, file: !174, line: 666, baseType: !284, size: 32, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2573, file: !174, line: 667, baseType: !543, size: 16, offset: 96)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2573, file: !174, line: 668, baseType: !543, size: 16, offset: 112)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2573, file: !174, line: 669, baseType: !543, size: 16, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2573, file: !174, line: 670, baseType: !543, size: 16, offset: 144)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !2462, file: !174, line: 723, baseType: !2018, size: 64, offset: 7488)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2455, file: !174, line: 330, baseType: !237, size: 5568, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !2455, file: !174, line: 331, baseType: !284, size: 32, offset: 5824)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2455, file: !174, line: 332, baseType: !284, size: 32, offset: 5856)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !2455, file: !174, line: 333, baseType: !245, size: 128, offset: 5888)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !3, line: 21, baseType: !245, size: 128, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !170, file: !3, line: 22, baseType: !224, size: 8, offset: 896)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "need_deactivate", scope: !170, file: !3, line: 23, baseType: !224, size: 8, offset: 904)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !248)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_smbus_removal_work", file: !3, line: 127, size: 320, elements: !2593)
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2592, file: !3, line: 128, baseType: !1472, size: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !2592, file: !3, line: 129, baseType: !2454, size: 64, offset: 256)
!2596 = !{!0, !2597, !2599}
!2597 = !DIGlobalVariableExpression(var: !2598, expr: !DIExpression())
!2598 = distinct !DIGlobalVariable(name: "psmouse_smbus_list", scope: !2, file: !3, line: 26, type: !245, isLocal: true, isDefinition: true)
!2599 = !DIGlobalVariableExpression(var: !2600, expr: !DIExpression())
!2600 = distinct !DIGlobalVariable(name: "psmouse_smbus_notifier", scope: !2, file: !3, line: 108, type: !2601, isLocal: true, isDefinition: true)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2602, line: 54, size: 192, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2603 = !{!2604, !2610, !2611}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2601, file: !2602, line: 55, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2602, line: 51, baseType: !2606)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!284, !2609, !348, !168}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2601, file: !2602, line: 56, baseType: !2609, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2601, file: !2602, line: 57, baseType: !284, size: 32, offset: 128)
!2612 = !{i32 7, !"Dwarf Version", i32 4}
!2613 = !{i32 2, !"Debug Info Version", i32 3}
!2614 = !{i32 1, !"wchar_size", i32 2}
!2615 = !{i32 1, !"Code Model", i32 2}
!2616 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2617 = distinct !DISubprogram(name: "psmouse_smbus_cleanup", scope: !3, file: !3, line: 212, type: !2447, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2618 = !DILocalVariable(name: "psmouse", arg: 1, scope: !2617, file: !3, line: 212, type: !2295)
!2619 = !DILocation(line: 212, column: 44, scope: !2617)
!2620 = !DILocalVariable(name: "smbdev", scope: !2617, file: !3, line: 214, type: !169)
!2621 = !DILocation(line: 214, column: 28, scope: !2617)
!2622 = !DILocalVariable(name: "tmp", scope: !2617, file: !3, line: 214, type: !169)
!2623 = !DILocation(line: 214, column: 37, scope: !2617)
!2624 = !DILocation(line: 216, column: 2, scope: !2617)
!2625 = !DILocalVariable(name: "__mptr", scope: !2626, file: !3, line: 218, type: !168)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 218, column: 2)
!2627 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 218, column: 2)
!2628 = !DILocation(line: 218, column: 2, scope: !2626)
!2629 = !DILocation(line: 218, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 218, column: 2)
!2631 = !DILocation(line: 218, column: 2, scope: !2627)
!2632 = !DILocalVariable(name: "__mptr", scope: !2633, file: !3, line: 218, type: !168)
!2633 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 218, column: 2)
!2634 = !DILocation(line: 218, column: 2, scope: !2633)
!2635 = !DILocation(line: 218, column: 2, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 218, column: 2)
!2637 = !DILocation(line: 218, column: 2, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 218, column: 2)
!2639 = !DILocation(line: 219, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 219, column: 7)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 218, column: 67)
!2642 = !DILocation(line: 219, column: 18, scope: !2640)
!2643 = !DILocation(line: 219, column: 26, scope: !2640)
!2644 = !DILocation(line: 219, column: 15, scope: !2640)
!2645 = !DILocation(line: 219, column: 7, scope: !2641)
!2646 = !DILocation(line: 220, column: 14, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 219, column: 35)
!2648 = !DILocation(line: 220, column: 22, scope: !2647)
!2649 = !DILocation(line: 220, column: 4, scope: !2647)
!2650 = !DILocation(line: 221, column: 10, scope: !2647)
!2651 = !DILocation(line: 221, column: 4, scope: !2647)
!2652 = !DILocation(line: 222, column: 3, scope: !2647)
!2653 = !DILocation(line: 223, column: 2, scope: !2641)
!2654 = !DILocalVariable(name: "__mptr", scope: !2655, file: !3, line: 218, type: !168)
!2655 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 218, column: 2)
!2656 = !DILocation(line: 218, column: 2, scope: !2655)
!2657 = !DILocation(line: 218, column: 2, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 218, column: 2)
!2659 = distinct !{!2659, !2631, !2660}
!2660 = !DILocation(line: 223, column: 2, scope: !2627)
!2661 = !DILocation(line: 225, column: 2, scope: !2617)
!2662 = !DILocation(line: 226, column: 1, scope: !2617)
!2663 = distinct !DISubprogram(name: "list_del", scope: !2664, file: !2664, line: 144, type: !2665, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2664 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !248}
!2667 = !DILocalVariable(name: "entry", arg: 1, scope: !2663, file: !2664, line: 144, type: !248)
!2668 = !DILocation(line: 144, column: 47, scope: !2663)
!2669 = !DILocation(line: 146, column: 19, scope: !2663)
!2670 = !DILocation(line: 146, column: 2, scope: !2663)
!2671 = !DILocation(line: 147, column: 2, scope: !2663)
!2672 = !DILocation(line: 147, column: 9, scope: !2663)
!2673 = !DILocation(line: 147, column: 14, scope: !2663)
!2674 = !DILocation(line: 148, column: 2, scope: !2663)
!2675 = !DILocation(line: 148, column: 9, scope: !2663)
!2676 = !DILocation(line: 148, column: 14, scope: !2663)
!2677 = !DILocation(line: 149, column: 1, scope: !2663)
!2678 = distinct !DISubprogram(name: "psmouse_smbus_init", scope: !3, file: !3, line: 228, type: !2679, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!284, !2295, !2681, !233, !345, !224, !224}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!2683 = !DILocalVariable(name: "psmouse", arg: 1, scope: !2678, file: !3, line: 228, type: !2295)
!2684 = !DILocation(line: 228, column: 40, scope: !2678)
!2685 = !DILocalVariable(name: "board", arg: 2, scope: !2678, file: !3, line: 229, type: !2681)
!2686 = !DILocation(line: 229, column: 39, scope: !2678)
!2687 = !DILocalVariable(name: "pdata", arg: 3, scope: !2678, file: !3, line: 230, type: !233)
!2688 = !DILocation(line: 230, column: 22, scope: !2678)
!2689 = !DILocalVariable(name: "pdata_size", arg: 4, scope: !2678, file: !3, line: 230, type: !345)
!2690 = !DILocation(line: 230, column: 36, scope: !2678)
!2691 = !DILocalVariable(name: "need_deactivate", arg: 5, scope: !2678, file: !3, line: 231, type: !224)
!2692 = !DILocation(line: 231, column: 15, scope: !2678)
!2693 = !DILocalVariable(name: "leave_breadcrumbs", arg: 6, scope: !2678, file: !3, line: 232, type: !224)
!2694 = !DILocation(line: 232, column: 15, scope: !2678)
!2695 = !DILocalVariable(name: "smbdev", scope: !2678, file: !3, line: 234, type: !169)
!2696 = !DILocation(line: 234, column: 28, scope: !2678)
!2697 = !DILocalVariable(name: "error", scope: !2678, file: !3, line: 235, type: !284)
!2698 = !DILocation(line: 235, column: 6, scope: !2678)
!2699 = !DILocation(line: 237, column: 11, scope: !2678)
!2700 = !DILocation(line: 237, column: 9, scope: !2678)
!2701 = !DILocation(line: 238, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 238, column: 6)
!2703 = !DILocation(line: 238, column: 6, scope: !2678)
!2704 = !DILocation(line: 239, column: 3, scope: !2702)
!2705 = !DILocation(line: 241, column: 20, scope: !2678)
!2706 = !DILocation(line: 241, column: 2, scope: !2678)
!2707 = !DILocation(line: 241, column: 10, scope: !2678)
!2708 = !DILocation(line: 241, column: 18, scope: !2678)
!2709 = !DILocation(line: 242, column: 2, scope: !2678)
!2710 = !DILocation(line: 242, column: 10, scope: !2678)
!2711 = !DILocation(line: 242, column: 19, scope: !2678)
!2712 = !DILocation(line: 242, column: 18, scope: !2678)
!2713 = !DILocation(line: 243, column: 28, scope: !2678)
!2714 = !DILocation(line: 243, column: 2, scope: !2678)
!2715 = !DILocation(line: 243, column: 10, scope: !2678)
!2716 = !DILocation(line: 243, column: 26, scope: !2678)
!2717 = !DILocation(line: 245, column: 6, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 245, column: 6)
!2719 = !DILocation(line: 245, column: 6, scope: !2678)
!2720 = !DILocation(line: 246, column: 41, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 245, column: 13)
!2722 = !DILocation(line: 246, column: 48, scope: !2721)
!2723 = !DILocation(line: 246, column: 33, scope: !2721)
!2724 = !DILocation(line: 246, column: 3, scope: !2721)
!2725 = !DILocation(line: 246, column: 11, scope: !2721)
!2726 = !DILocation(line: 246, column: 17, scope: !2721)
!2727 = !DILocation(line: 246, column: 31, scope: !2721)
!2728 = !DILocation(line: 248, column: 8, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 248, column: 7)
!2730 = !DILocation(line: 248, column: 16, scope: !2729)
!2731 = !DILocation(line: 248, column: 22, scope: !2729)
!2732 = !DILocation(line: 248, column: 7, scope: !2721)
!2733 = !DILocation(line: 249, column: 10, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 248, column: 37)
!2735 = !DILocation(line: 249, column: 4, scope: !2734)
!2736 = !DILocation(line: 250, column: 4, scope: !2734)
!2737 = !DILocation(line: 252, column: 2, scope: !2721)
!2738 = !DILocation(line: 254, column: 6, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 254, column: 6)
!2740 = !DILocation(line: 254, column: 6, scope: !2678)
!2741 = !DILocation(line: 255, column: 22, scope: !2739)
!2742 = !DILocation(line: 255, column: 3, scope: !2739)
!2743 = !DILocation(line: 257, column: 21, scope: !2678)
!2744 = !DILocation(line: 257, column: 2, scope: !2678)
!2745 = !DILocation(line: 257, column: 11, scope: !2678)
!2746 = !DILocation(line: 257, column: 19, scope: !2678)
!2747 = !DILocation(line: 258, column: 2, scope: !2678)
!2748 = !DILocation(line: 258, column: 11, scope: !2678)
!2749 = !DILocation(line: 258, column: 28, scope: !2678)
!2750 = !DILocation(line: 259, column: 2, scope: !2678)
!2751 = !DILocation(line: 259, column: 11, scope: !2678)
!2752 = !DILocation(line: 259, column: 21, scope: !2678)
!2753 = !DILocation(line: 260, column: 2, scope: !2678)
!2754 = !DILocation(line: 260, column: 11, scope: !2678)
!2755 = !DILocation(line: 260, column: 26, scope: !2678)
!2756 = !DILocation(line: 261, column: 2, scope: !2678)
!2757 = !DILocation(line: 261, column: 11, scope: !2678)
!2758 = !DILocation(line: 261, column: 22, scope: !2678)
!2759 = !DILocation(line: 262, column: 2, scope: !2678)
!2760 = !DILocation(line: 262, column: 11, scope: !2678)
!2761 = !DILocation(line: 262, column: 23, scope: !2678)
!2762 = !DILocation(line: 264, column: 2, scope: !2678)
!2763 = !DILocation(line: 265, column: 17, scope: !2678)
!2764 = !DILocation(line: 265, column: 25, scope: !2678)
!2765 = !DILocation(line: 265, column: 2, scope: !2678)
!2766 = !DILocation(line: 266, column: 2, scope: !2678)
!2767 = !DILocation(line: 269, column: 27, scope: !2678)
!2768 = !DILocation(line: 269, column: 10, scope: !2678)
!2769 = !DILocation(line: 269, column: 8, scope: !2678)
!2770 = !DILocation(line: 271, column: 6, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 271, column: 6)
!2772 = !DILocation(line: 271, column: 14, scope: !2771)
!2773 = !DILocation(line: 271, column: 6, scope: !2678)
!2774 = !DILocation(line: 273, column: 3, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 271, column: 22)
!2776 = !DILocation(line: 280, column: 8, scope: !2678)
!2777 = !DILocation(line: 280, column: 16, scope: !2678)
!2778 = !DILocation(line: 280, column: 22, scope: !2678)
!2779 = !DILocation(line: 280, column: 2, scope: !2678)
!2780 = !DILocation(line: 281, column: 2, scope: !2678)
!2781 = !DILocation(line: 281, column: 10, scope: !2678)
!2782 = !DILocation(line: 281, column: 16, scope: !2678)
!2783 = !DILocation(line: 281, column: 30, scope: !2678)
!2784 = !DILocation(line: 283, column: 6, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 283, column: 6)
!2786 = !DILocation(line: 283, column: 12, scope: !2785)
!2787 = !DILocation(line: 283, column: 16, scope: !2785)
!2788 = !DILocation(line: 283, column: 20, scope: !2785)
!2789 = !DILocation(line: 283, column: 6, scope: !2678)
!2790 = !DILocation(line: 284, column: 3, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 283, column: 39)
!2792 = !DILocation(line: 285, column: 13, scope: !2791)
!2793 = !DILocation(line: 285, column: 21, scope: !2791)
!2794 = !DILocation(line: 285, column: 3, scope: !2791)
!2795 = !DILocation(line: 286, column: 3, scope: !2791)
!2796 = !DILocation(line: 288, column: 9, scope: !2791)
!2797 = !DILocation(line: 288, column: 3, scope: !2791)
!2798 = !DILocation(line: 289, column: 2, scope: !2791)
!2799 = !DILocation(line: 291, column: 9, scope: !2678)
!2800 = !DILocation(line: 291, column: 15, scope: !2678)
!2801 = !DILocation(line: 291, column: 21, scope: !2678)
!2802 = !DILocation(line: 291, column: 2, scope: !2678)
!2803 = !DILocation(line: 292, column: 1, scope: !2678)
!2804 = distinct !DISubprogram(name: "kzalloc", scope: !128, file: !128, line: 662, type: !2805, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!168, !345, !1604}
!2807 = !DILocalVariable(name: "s", arg: 1, scope: !2808, file: !128, line: 445, type: !1187)
!2808 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !128, file: !128, line: 445, type: !2809, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!168, !1187, !1604, !345}
!2811 = !DILocation(line: 445, column: 72, scope: !2808, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 552, column: 10, scope: !2813, inlinedAt: !2816)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !128, line: 540, column: 34)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !128, line: 540, column: 6)
!2815 = distinct !DISubprogram(name: "kmalloc", scope: !128, file: !128, line: 538, type: !2805, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2816 = distinct !DILocation(line: 664, column: 9, scope: !2804)
!2817 = !DILocalVariable(name: "flags", arg: 2, scope: !2808, file: !128, line: 446, type: !1604)
!2818 = !DILocation(line: 446, column: 9, scope: !2808, inlinedAt: !2812)
!2819 = !DILocalVariable(name: "size", arg: 3, scope: !2808, file: !128, line: 446, type: !345)
!2820 = !DILocation(line: 446, column: 23, scope: !2808, inlinedAt: !2812)
!2821 = !DILocalVariable(name: "ret", scope: !2808, file: !128, line: 448, type: !168)
!2822 = !DILocation(line: 448, column: 8, scope: !2808, inlinedAt: !2812)
!2823 = !DILocalVariable(name: "flags", arg: 1, scope: !2824, file: !128, line: 318, type: !1604)
!2824 = distinct !DISubprogram(name: "kmalloc_type", scope: !128, file: !128, line: 318, type: !2825, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!127, !1604}
!2827 = !DILocation(line: 318, column: 67, scope: !2824, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 553, column: 20, scope: !2813, inlinedAt: !2816)
!2829 = !DILocalVariable(name: "size", arg: 1, scope: !2830, file: !128, line: 346, type: !345)
!2830 = distinct !DISubprogram(name: "kmalloc_index", scope: !128, file: !128, line: 346, type: !2831, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!7, !345}
!2833 = !DILocation(line: 346, column: 58, scope: !2830, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 547, column: 11, scope: !2813, inlinedAt: !2816)
!2835 = !DILocalVariable(name: "size", arg: 1, scope: !2836, file: !128, line: 472, type: !345)
!2836 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !128, file: !128, line: 472, type: !2837, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!168, !345, !1604, !7}
!2839 = !DILocation(line: 472, column: 28, scope: !2836, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 481, column: 9, scope: !2841, inlinedAt: !2842)
!2841 = distinct !DISubprogram(name: "kmalloc_large", scope: !128, file: !128, line: 478, type: !2805, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!2842 = distinct !DILocation(line: 545, column: 11, scope: !2843, inlinedAt: !2816)
!2843 = distinct !DILexicalBlock(scope: !2813, file: !128, line: 544, column: 7)
!2844 = !DILocalVariable(name: "flags", arg: 2, scope: !2836, file: !128, line: 472, type: !1604)
!2845 = !DILocation(line: 472, column: 40, scope: !2836, inlinedAt: !2840)
!2846 = !DILocalVariable(name: "order", arg: 3, scope: !2836, file: !128, line: 472, type: !7)
!2847 = !DILocation(line: 472, column: 60, scope: !2836, inlinedAt: !2840)
!2848 = !DILocalVariable(name: "size", arg: 1, scope: !2841, file: !128, line: 478, type: !345)
!2849 = !DILocation(line: 478, column: 51, scope: !2841, inlinedAt: !2842)
!2850 = !DILocalVariable(name: "flags", arg: 2, scope: !2841, file: !128, line: 478, type: !1604)
!2851 = !DILocation(line: 478, column: 63, scope: !2841, inlinedAt: !2842)
!2852 = !DILocalVariable(name: "order", scope: !2841, file: !128, line: 480, type: !7)
!2853 = !DILocation(line: 480, column: 15, scope: !2841, inlinedAt: !2842)
!2854 = !DILocalVariable(name: "size", arg: 1, scope: !2815, file: !128, line: 538, type: !345)
!2855 = !DILocation(line: 538, column: 45, scope: !2815, inlinedAt: !2816)
!2856 = !DILocalVariable(name: "flags", arg: 2, scope: !2815, file: !128, line: 538, type: !1604)
!2857 = !DILocation(line: 538, column: 57, scope: !2815, inlinedAt: !2816)
!2858 = !DILocalVariable(name: "index", scope: !2813, file: !128, line: 542, type: !7)
!2859 = !DILocation(line: 542, column: 16, scope: !2813, inlinedAt: !2816)
!2860 = !DILocalVariable(name: "size", arg: 1, scope: !2804, file: !128, line: 662, type: !345)
!2861 = !DILocation(line: 662, column: 36, scope: !2804)
!2862 = !DILocalVariable(name: "flags", arg: 2, scope: !2804, file: !128, line: 662, type: !1604)
!2863 = !DILocation(line: 662, column: 48, scope: !2804)
!2864 = !DILocation(line: 664, column: 17, scope: !2804)
!2865 = !DILocation(line: 664, column: 23, scope: !2804)
!2866 = !DILocation(line: 664, column: 29, scope: !2804)
!2867 = !DILocation(line: 540, column: 27, scope: !2814, inlinedAt: !2816)
!2868 = !DILocation(line: 540, column: 6, scope: !2814, inlinedAt: !2816)
!2869 = !DILocation(line: 540, column: 6, scope: !2815, inlinedAt: !2816)
!2870 = !DILocation(line: 544, column: 7, scope: !2843, inlinedAt: !2816)
!2871 = !DILocation(line: 544, column: 12, scope: !2843, inlinedAt: !2816)
!2872 = !DILocation(line: 544, column: 7, scope: !2813, inlinedAt: !2816)
!2873 = !DILocation(line: 545, column: 25, scope: !2843, inlinedAt: !2816)
!2874 = !DILocation(line: 545, column: 31, scope: !2843, inlinedAt: !2816)
!2875 = !DILocation(line: 480, column: 33, scope: !2841, inlinedAt: !2842)
!2876 = !DILocation(line: 480, column: 23, scope: !2841, inlinedAt: !2842)
!2877 = !DILocation(line: 481, column: 29, scope: !2841, inlinedAt: !2842)
!2878 = !DILocation(line: 481, column: 35, scope: !2841, inlinedAt: !2842)
!2879 = !DILocation(line: 481, column: 42, scope: !2841, inlinedAt: !2842)
!2880 = !DILocation(line: 474, column: 23, scope: !2836, inlinedAt: !2840)
!2881 = !DILocation(line: 474, column: 29, scope: !2836, inlinedAt: !2840)
!2882 = !DILocation(line: 474, column: 36, scope: !2836, inlinedAt: !2840)
!2883 = !DILocation(line: 474, column: 9, scope: !2836, inlinedAt: !2840)
!2884 = !DILocation(line: 545, column: 4, scope: !2843, inlinedAt: !2816)
!2885 = !DILocation(line: 547, column: 25, scope: !2813, inlinedAt: !2816)
!2886 = !DILocation(line: 348, column: 7, scope: !2887, inlinedAt: !2834)
!2887 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 348, column: 6)
!2888 = !DILocation(line: 348, column: 6, scope: !2830, inlinedAt: !2834)
!2889 = !DILocation(line: 349, column: 3, scope: !2887, inlinedAt: !2834)
!2890 = !DILocation(line: 351, column: 6, scope: !2891, inlinedAt: !2834)
!2891 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 351, column: 6)
!2892 = !DILocation(line: 351, column: 11, scope: !2891, inlinedAt: !2834)
!2893 = !DILocation(line: 351, column: 6, scope: !2830, inlinedAt: !2834)
!2894 = !DILocation(line: 352, column: 3, scope: !2891, inlinedAt: !2834)
!2895 = !DILocation(line: 354, column: 32, scope: !2896, inlinedAt: !2834)
!2896 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 354, column: 6)
!2897 = !DILocation(line: 354, column: 37, scope: !2896, inlinedAt: !2834)
!2898 = !DILocation(line: 354, column: 42, scope: !2896, inlinedAt: !2834)
!2899 = !DILocation(line: 354, column: 45, scope: !2896, inlinedAt: !2834)
!2900 = !DILocation(line: 354, column: 50, scope: !2896, inlinedAt: !2834)
!2901 = !DILocation(line: 354, column: 6, scope: !2830, inlinedAt: !2834)
!2902 = !DILocation(line: 355, column: 3, scope: !2896, inlinedAt: !2834)
!2903 = !DILocation(line: 356, column: 32, scope: !2904, inlinedAt: !2834)
!2904 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 356, column: 6)
!2905 = !DILocation(line: 356, column: 37, scope: !2904, inlinedAt: !2834)
!2906 = !DILocation(line: 356, column: 43, scope: !2904, inlinedAt: !2834)
!2907 = !DILocation(line: 356, column: 46, scope: !2904, inlinedAt: !2834)
!2908 = !DILocation(line: 356, column: 51, scope: !2904, inlinedAt: !2834)
!2909 = !DILocation(line: 356, column: 6, scope: !2830, inlinedAt: !2834)
!2910 = !DILocation(line: 357, column: 3, scope: !2904, inlinedAt: !2834)
!2911 = !DILocation(line: 358, column: 6, scope: !2912, inlinedAt: !2834)
!2912 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 358, column: 6)
!2913 = !DILocation(line: 358, column: 11, scope: !2912, inlinedAt: !2834)
!2914 = !DILocation(line: 358, column: 6, scope: !2830, inlinedAt: !2834)
!2915 = !DILocation(line: 358, column: 26, scope: !2912, inlinedAt: !2834)
!2916 = !DILocation(line: 359, column: 6, scope: !2917, inlinedAt: !2834)
!2917 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 359, column: 6)
!2918 = !DILocation(line: 359, column: 11, scope: !2917, inlinedAt: !2834)
!2919 = !DILocation(line: 359, column: 6, scope: !2830, inlinedAt: !2834)
!2920 = !DILocation(line: 359, column: 26, scope: !2917, inlinedAt: !2834)
!2921 = !DILocation(line: 360, column: 6, scope: !2922, inlinedAt: !2834)
!2922 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 360, column: 6)
!2923 = !DILocation(line: 360, column: 11, scope: !2922, inlinedAt: !2834)
!2924 = !DILocation(line: 360, column: 6, scope: !2830, inlinedAt: !2834)
!2925 = !DILocation(line: 360, column: 26, scope: !2922, inlinedAt: !2834)
!2926 = !DILocation(line: 361, column: 6, scope: !2927, inlinedAt: !2834)
!2927 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 361, column: 6)
!2928 = !DILocation(line: 361, column: 11, scope: !2927, inlinedAt: !2834)
!2929 = !DILocation(line: 361, column: 6, scope: !2830, inlinedAt: !2834)
!2930 = !DILocation(line: 361, column: 26, scope: !2927, inlinedAt: !2834)
!2931 = !DILocation(line: 362, column: 6, scope: !2932, inlinedAt: !2834)
!2932 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 362, column: 6)
!2933 = !DILocation(line: 362, column: 11, scope: !2932, inlinedAt: !2834)
!2934 = !DILocation(line: 362, column: 6, scope: !2830, inlinedAt: !2834)
!2935 = !DILocation(line: 362, column: 26, scope: !2932, inlinedAt: !2834)
!2936 = !DILocation(line: 363, column: 6, scope: !2937, inlinedAt: !2834)
!2937 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 363, column: 6)
!2938 = !DILocation(line: 363, column: 11, scope: !2937, inlinedAt: !2834)
!2939 = !DILocation(line: 363, column: 6, scope: !2830, inlinedAt: !2834)
!2940 = !DILocation(line: 363, column: 26, scope: !2937, inlinedAt: !2834)
!2941 = !DILocation(line: 364, column: 6, scope: !2942, inlinedAt: !2834)
!2942 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 364, column: 6)
!2943 = !DILocation(line: 364, column: 11, scope: !2942, inlinedAt: !2834)
!2944 = !DILocation(line: 364, column: 6, scope: !2830, inlinedAt: !2834)
!2945 = !DILocation(line: 364, column: 26, scope: !2942, inlinedAt: !2834)
!2946 = !DILocation(line: 365, column: 6, scope: !2947, inlinedAt: !2834)
!2947 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 365, column: 6)
!2948 = !DILocation(line: 365, column: 11, scope: !2947, inlinedAt: !2834)
!2949 = !DILocation(line: 365, column: 6, scope: !2830, inlinedAt: !2834)
!2950 = !DILocation(line: 365, column: 26, scope: !2947, inlinedAt: !2834)
!2951 = !DILocation(line: 366, column: 6, scope: !2952, inlinedAt: !2834)
!2952 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 366, column: 6)
!2953 = !DILocation(line: 366, column: 11, scope: !2952, inlinedAt: !2834)
!2954 = !DILocation(line: 366, column: 6, scope: !2830, inlinedAt: !2834)
!2955 = !DILocation(line: 366, column: 26, scope: !2952, inlinedAt: !2834)
!2956 = !DILocation(line: 367, column: 6, scope: !2957, inlinedAt: !2834)
!2957 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 367, column: 6)
!2958 = !DILocation(line: 367, column: 11, scope: !2957, inlinedAt: !2834)
!2959 = !DILocation(line: 367, column: 6, scope: !2830, inlinedAt: !2834)
!2960 = !DILocation(line: 367, column: 26, scope: !2957, inlinedAt: !2834)
!2961 = !DILocation(line: 368, column: 6, scope: !2962, inlinedAt: !2834)
!2962 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 368, column: 6)
!2963 = !DILocation(line: 368, column: 11, scope: !2962, inlinedAt: !2834)
!2964 = !DILocation(line: 368, column: 6, scope: !2830, inlinedAt: !2834)
!2965 = !DILocation(line: 368, column: 26, scope: !2962, inlinedAt: !2834)
!2966 = !DILocation(line: 369, column: 6, scope: !2967, inlinedAt: !2834)
!2967 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 369, column: 6)
!2968 = !DILocation(line: 369, column: 11, scope: !2967, inlinedAt: !2834)
!2969 = !DILocation(line: 369, column: 6, scope: !2830, inlinedAt: !2834)
!2970 = !DILocation(line: 369, column: 26, scope: !2967, inlinedAt: !2834)
!2971 = !DILocation(line: 370, column: 6, scope: !2972, inlinedAt: !2834)
!2972 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 370, column: 6)
!2973 = !DILocation(line: 370, column: 11, scope: !2972, inlinedAt: !2834)
!2974 = !DILocation(line: 370, column: 6, scope: !2830, inlinedAt: !2834)
!2975 = !DILocation(line: 370, column: 26, scope: !2972, inlinedAt: !2834)
!2976 = !DILocation(line: 371, column: 6, scope: !2977, inlinedAt: !2834)
!2977 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 371, column: 6)
!2978 = !DILocation(line: 371, column: 11, scope: !2977, inlinedAt: !2834)
!2979 = !DILocation(line: 371, column: 6, scope: !2830, inlinedAt: !2834)
!2980 = !DILocation(line: 371, column: 26, scope: !2977, inlinedAt: !2834)
!2981 = !DILocation(line: 372, column: 6, scope: !2982, inlinedAt: !2834)
!2982 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 372, column: 6)
!2983 = !DILocation(line: 372, column: 11, scope: !2982, inlinedAt: !2834)
!2984 = !DILocation(line: 372, column: 6, scope: !2830, inlinedAt: !2834)
!2985 = !DILocation(line: 372, column: 26, scope: !2982, inlinedAt: !2834)
!2986 = !DILocation(line: 373, column: 6, scope: !2987, inlinedAt: !2834)
!2987 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 373, column: 6)
!2988 = !DILocation(line: 373, column: 11, scope: !2987, inlinedAt: !2834)
!2989 = !DILocation(line: 373, column: 6, scope: !2830, inlinedAt: !2834)
!2990 = !DILocation(line: 373, column: 26, scope: !2987, inlinedAt: !2834)
!2991 = !DILocation(line: 374, column: 6, scope: !2992, inlinedAt: !2834)
!2992 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 374, column: 6)
!2993 = !DILocation(line: 374, column: 11, scope: !2992, inlinedAt: !2834)
!2994 = !DILocation(line: 374, column: 6, scope: !2830, inlinedAt: !2834)
!2995 = !DILocation(line: 374, column: 26, scope: !2992, inlinedAt: !2834)
!2996 = !DILocation(line: 375, column: 6, scope: !2997, inlinedAt: !2834)
!2997 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 375, column: 6)
!2998 = !DILocation(line: 375, column: 11, scope: !2997, inlinedAt: !2834)
!2999 = !DILocation(line: 375, column: 6, scope: !2830, inlinedAt: !2834)
!3000 = !DILocation(line: 375, column: 27, scope: !2997, inlinedAt: !2834)
!3001 = !DILocation(line: 376, column: 6, scope: !3002, inlinedAt: !2834)
!3002 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 376, column: 6)
!3003 = !DILocation(line: 376, column: 11, scope: !3002, inlinedAt: !2834)
!3004 = !DILocation(line: 376, column: 6, scope: !2830, inlinedAt: !2834)
!3005 = !DILocation(line: 376, column: 32, scope: !3002, inlinedAt: !2834)
!3006 = !DILocation(line: 377, column: 6, scope: !3007, inlinedAt: !2834)
!3007 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 377, column: 6)
!3008 = !DILocation(line: 377, column: 11, scope: !3007, inlinedAt: !2834)
!3009 = !DILocation(line: 377, column: 6, scope: !2830, inlinedAt: !2834)
!3010 = !DILocation(line: 377, column: 32, scope: !3007, inlinedAt: !2834)
!3011 = !DILocation(line: 378, column: 6, scope: !3012, inlinedAt: !2834)
!3012 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 378, column: 6)
!3013 = !DILocation(line: 378, column: 11, scope: !3012, inlinedAt: !2834)
!3014 = !DILocation(line: 378, column: 6, scope: !2830, inlinedAt: !2834)
!3015 = !DILocation(line: 378, column: 32, scope: !3012, inlinedAt: !2834)
!3016 = !DILocation(line: 379, column: 6, scope: !3017, inlinedAt: !2834)
!3017 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 379, column: 6)
!3018 = !DILocation(line: 379, column: 11, scope: !3017, inlinedAt: !2834)
!3019 = !DILocation(line: 379, column: 6, scope: !2830, inlinedAt: !2834)
!3020 = !DILocation(line: 379, column: 33, scope: !3017, inlinedAt: !2834)
!3021 = !DILocation(line: 380, column: 6, scope: !3022, inlinedAt: !2834)
!3022 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 380, column: 6)
!3023 = !DILocation(line: 380, column: 11, scope: !3022, inlinedAt: !2834)
!3024 = !DILocation(line: 380, column: 6, scope: !2830, inlinedAt: !2834)
!3025 = !DILocation(line: 380, column: 33, scope: !3022, inlinedAt: !2834)
!3026 = !DILocation(line: 381, column: 6, scope: !3027, inlinedAt: !2834)
!3027 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 381, column: 6)
!3028 = !DILocation(line: 381, column: 11, scope: !3027, inlinedAt: !2834)
!3029 = !DILocation(line: 381, column: 6, scope: !2830, inlinedAt: !2834)
!3030 = !DILocation(line: 381, column: 33, scope: !3027, inlinedAt: !2834)
!3031 = !DILocation(line: 382, column: 2, scope: !3032, inlinedAt: !2834)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !128, line: 382, column: 2)
!3033 = distinct !DILexicalBlock(scope: !2830, file: !128, line: 382, column: 2)
!3034 = !{i32 -2144009928, i32 -2144009899, i32 -2144009853, i32 -2144009795, i32 -2144009741, i32 -2144009687, i32 -2144009632, i32 -2144009601}
!3035 = !DILocation(line: 382, column: 2, scope: !3036, inlinedAt: !2834)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !128, line: 382, column: 2)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !128, line: 382, column: 2)
!3038 = !{i32 -2144009158, i32 -2144009151, i32 -2144009097, i32 -2144009066, i32 -2144009036}
!3039 = !DILocation(line: 382, column: 2, scope: !3037, inlinedAt: !2834)
!3040 = !DILocation(line: 386, column: 1, scope: !2830, inlinedAt: !2834)
!3041 = !DILocation(line: 547, column: 9, scope: !2813, inlinedAt: !2816)
!3042 = !DILocation(line: 549, column: 8, scope: !3043, inlinedAt: !2816)
!3043 = distinct !DILexicalBlock(scope: !2813, file: !128, line: 549, column: 7)
!3044 = !DILocation(line: 549, column: 7, scope: !2813, inlinedAt: !2816)
!3045 = !DILocation(line: 550, column: 4, scope: !3043, inlinedAt: !2816)
!3046 = !DILocation(line: 553, column: 33, scope: !2813, inlinedAt: !2816)
!3047 = !DILocation(line: 325, column: 6, scope: !3048, inlinedAt: !2828)
!3048 = distinct !DILexicalBlock(scope: !2824, file: !128, line: 325, column: 6)
!3049 = !DILocation(line: 325, column: 6, scope: !2824, inlinedAt: !2828)
!3050 = !DILocation(line: 326, column: 3, scope: !3048, inlinedAt: !2828)
!3051 = !DILocation(line: 332, column: 9, scope: !2824, inlinedAt: !2828)
!3052 = !DILocation(line: 332, column: 15, scope: !2824, inlinedAt: !2828)
!3053 = !DILocation(line: 332, column: 2, scope: !2824, inlinedAt: !2828)
!3054 = !DILocation(line: 336, column: 1, scope: !2824, inlinedAt: !2828)
!3055 = !DILocation(line: 553, column: 5, scope: !2813, inlinedAt: !2816)
!3056 = !DILocation(line: 553, column: 41, scope: !2813, inlinedAt: !2816)
!3057 = !DILocation(line: 554, column: 5, scope: !2813, inlinedAt: !2816)
!3058 = !DILocation(line: 554, column: 12, scope: !2813, inlinedAt: !2816)
!3059 = !DILocation(line: 448, column: 31, scope: !2808, inlinedAt: !2812)
!3060 = !DILocation(line: 448, column: 34, scope: !2808, inlinedAt: !2812)
!3061 = !DILocation(line: 448, column: 14, scope: !2808, inlinedAt: !2812)
!3062 = !DILocation(line: 450, column: 22, scope: !2808, inlinedAt: !2812)
!3063 = !DILocation(line: 450, column: 25, scope: !2808, inlinedAt: !2812)
!3064 = !DILocation(line: 450, column: 30, scope: !2808, inlinedAt: !2812)
!3065 = !DILocation(line: 450, column: 36, scope: !2808, inlinedAt: !2812)
!3066 = !DILocation(line: 450, column: 8, scope: !2808, inlinedAt: !2812)
!3067 = !DILocation(line: 450, column: 6, scope: !2808, inlinedAt: !2812)
!3068 = !DILocation(line: 451, column: 9, scope: !2808, inlinedAt: !2812)
!3069 = !DILocation(line: 552, column: 3, scope: !2813, inlinedAt: !2816)
!3070 = !DILocation(line: 557, column: 19, scope: !2815, inlinedAt: !2816)
!3071 = !DILocation(line: 557, column: 25, scope: !2815, inlinedAt: !2816)
!3072 = !DILocation(line: 557, column: 9, scope: !2815, inlinedAt: !2816)
!3073 = !DILocation(line: 557, column: 2, scope: !2815, inlinedAt: !2816)
!3074 = !DILocation(line: 558, column: 1, scope: !2815, inlinedAt: !2816)
!3075 = !DILocation(line: 664, column: 2, scope: !2804)
!3076 = distinct !DISubprogram(name: "psmouse_smbus_process_byte", scope: !3, file: !3, line: 112, type: !2431, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3077 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3076, file: !3, line: 112, type: !2295)
!3078 = !DILocation(line: 112, column: 65, scope: !3076)
!3079 = !DILocation(line: 114, column: 2, scope: !3076)
!3080 = distinct !DISubprogram(name: "psmouse_smbus_reconnect", scope: !3, file: !3, line: 117, type: !2406, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3081 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3080, file: !3, line: 117, type: !2295)
!3082 = !DILocation(line: 117, column: 52, scope: !3080)
!3083 = !DILocalVariable(name: "smbdev", scope: !3080, file: !3, line: 119, type: !169)
!3084 = !DILocation(line: 119, column: 28, scope: !3080)
!3085 = !DILocation(line: 119, column: 37, scope: !3080)
!3086 = !DILocation(line: 119, column: 46, scope: !3080)
!3087 = !DILocation(line: 121, column: 6, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 121, column: 6)
!3089 = !DILocation(line: 121, column: 14, scope: !3088)
!3090 = !DILocation(line: 121, column: 6, scope: !3080)
!3091 = !DILocation(line: 122, column: 22, scope: !3088)
!3092 = !DILocation(line: 122, column: 3, scope: !3088)
!3093 = !DILocation(line: 124, column: 2, scope: !3080)
!3094 = distinct !DISubprogram(name: "psmouse_smbus_disconnect", scope: !3, file: !3, line: 166, type: !2447, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3095 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3094, file: !3, line: 166, type: !2295)
!3096 = !DILocation(line: 166, column: 54, scope: !3094)
!3097 = !DILocalVariable(name: "smbdev", scope: !3094, file: !3, line: 168, type: !169)
!3098 = !DILocation(line: 168, column: 28, scope: !3094)
!3099 = !DILocation(line: 168, column: 37, scope: !3094)
!3100 = !DILocation(line: 168, column: 46, scope: !3094)
!3101 = !DILocation(line: 170, column: 2, scope: !3094)
!3102 = !DILocation(line: 172, column: 6, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 172, column: 6)
!3104 = !DILocation(line: 172, column: 14, scope: !3103)
!3105 = !DILocation(line: 172, column: 6, scope: !3094)
!3106 = !DILocation(line: 173, column: 13, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 172, column: 20)
!3108 = !DILocation(line: 173, column: 21, scope: !3107)
!3109 = !DILocation(line: 173, column: 3, scope: !3107)
!3110 = !DILocation(line: 174, column: 9, scope: !3107)
!3111 = !DILocation(line: 174, column: 3, scope: !3107)
!3112 = !DILocation(line: 175, column: 2, scope: !3107)
!3113 = !DILocation(line: 176, column: 3, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 175, column: 9)
!3115 = !DILocation(line: 176, column: 11, scope: !3114)
!3116 = !DILocation(line: 176, column: 16, scope: !3114)
!3117 = !DILocation(line: 180, column: 33, scope: !3114)
!3118 = !DILocation(line: 180, column: 41, scope: !3114)
!3119 = !DILocation(line: 180, column: 3, scope: !3114)
!3120 = !DILocation(line: 183, column: 2, scope: !3094)
!3121 = !DILocation(line: 185, column: 2, scope: !3094)
!3122 = !DILocation(line: 185, column: 11, scope: !3094)
!3123 = !DILocation(line: 185, column: 19, scope: !3094)
!3124 = !DILocation(line: 186, column: 1, scope: !3094)
!3125 = distinct !DISubprogram(name: "list_add_tail", scope: !2664, file: !2664, line: 98, type: !3126, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !248, !248}
!3128 = !DILocalVariable(name: "new", arg: 1, scope: !3125, file: !2664, line: 98, type: !248)
!3129 = !DILocation(line: 98, column: 52, scope: !3125)
!3130 = !DILocalVariable(name: "head", arg: 2, scope: !3125, file: !2664, line: 98, type: !248)
!3131 = !DILocation(line: 98, column: 75, scope: !3125)
!3132 = !DILocation(line: 100, column: 13, scope: !3125)
!3133 = !DILocation(line: 100, column: 18, scope: !3125)
!3134 = !DILocation(line: 100, column: 24, scope: !3125)
!3135 = !DILocation(line: 100, column: 30, scope: !3125)
!3136 = !DILocation(line: 100, column: 2, scope: !3125)
!3137 = !DILocation(line: 101, column: 1, scope: !3125)
!3138 = distinct !DISubprogram(name: "psmouse_smbus_create_companion", scope: !3, file: !3, line: 188, type: !3139, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!284, !1733, !168}
!3141 = !DILocalVariable(name: "dev", arg: 1, scope: !3138, file: !3, line: 188, type: !1733)
!3142 = !DILocation(line: 188, column: 58, scope: !3138)
!3143 = !DILocalVariable(name: "data", arg: 2, scope: !3138, file: !3, line: 188, type: !168)
!3144 = !DILocation(line: 188, column: 69, scope: !3138)
!3145 = !DILocalVariable(name: "smbdev", scope: !3138, file: !3, line: 190, type: !169)
!3146 = !DILocation(line: 190, column: 28, scope: !3138)
!3147 = !DILocation(line: 190, column: 37, scope: !3138)
!3148 = !DILocalVariable(name: "addr_list", scope: !3138, file: !3, line: 191, type: !3149)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 32, elements: !1111)
!3150 = !DILocation(line: 191, column: 17, scope: !3138)
!3151 = !DILocation(line: 191, column: 31, scope: !3138)
!3152 = !DILocation(line: 191, column: 33, scope: !3138)
!3153 = !DILocation(line: 191, column: 41, scope: !3138)
!3154 = !DILocation(line: 191, column: 47, scope: !3138)
!3155 = !DILocalVariable(name: "adapter", scope: !3138, file: !3, line: 192, type: !2461)
!3156 = !DILocation(line: 192, column: 22, scope: !3138)
!3157 = !DILocalVariable(name: "client", scope: !3138, file: !3, line: 193, type: !2454)
!3158 = !DILocation(line: 193, column: 21, scope: !3138)
!3159 = !DILocation(line: 195, column: 31, scope: !3138)
!3160 = !DILocation(line: 195, column: 12, scope: !3138)
!3161 = !DILocation(line: 195, column: 10, scope: !3138)
!3162 = !DILocation(line: 196, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 196, column: 6)
!3164 = !DILocation(line: 196, column: 6, scope: !3138)
!3165 = !DILocation(line: 197, column: 3, scope: !3163)
!3166 = !DILocation(line: 199, column: 31, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 199, column: 6)
!3168 = !DILocation(line: 199, column: 7, scope: !3167)
!3169 = !DILocation(line: 199, column: 6, scope: !3138)
!3170 = !DILocation(line: 200, column: 3, scope: !3167)
!3171 = !DILocation(line: 202, column: 34, scope: !3138)
!3172 = !DILocation(line: 202, column: 44, scope: !3138)
!3173 = !DILocation(line: 202, column: 52, scope: !3138)
!3174 = !DILocation(line: 203, column: 6, scope: !3138)
!3175 = !DILocation(line: 202, column: 11, scope: !3138)
!3176 = !DILocation(line: 202, column: 9, scope: !3138)
!3177 = !DILocation(line: 204, column: 13, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 204, column: 6)
!3179 = !DILocation(line: 204, column: 6, scope: !3178)
!3180 = !DILocation(line: 204, column: 6, scope: !3138)
!3181 = !DILocation(line: 205, column: 3, scope: !3178)
!3182 = !DILocation(line: 208, column: 19, scope: !3138)
!3183 = !DILocation(line: 208, column: 2, scope: !3138)
!3184 = !DILocation(line: 208, column: 10, scope: !3138)
!3185 = !DILocation(line: 208, column: 17, scope: !3138)
!3186 = !DILocation(line: 209, column: 2, scope: !3138)
!3187 = !DILocation(line: 210, column: 1, scope: !3138)
!3188 = distinct !DISubprogram(name: "psmouse_smbus_module_init", scope: !3, file: !3, line: 294, type: !3189, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!284}
!3191 = !DILocalVariable(name: "error", scope: !3188, file: !3, line: 296, type: !284)
!3192 = !DILocation(line: 296, column: 6, scope: !3188)
!3193 = !DILocation(line: 298, column: 10, scope: !3188)
!3194 = !DILocation(line: 298, column: 8, scope: !3188)
!3195 = !DILocation(line: 299, column: 6, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 299, column: 6)
!3197 = !DILocation(line: 299, column: 6, scope: !3188)
!3198 = !DILocation(line: 300, column: 3, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 299, column: 13)
!3200 = !DILocation(line: 301, column: 10, scope: !3199)
!3201 = !DILocation(line: 301, column: 3, scope: !3199)
!3202 = !DILocation(line: 304, column: 2, scope: !3188)
!3203 = !DILocation(line: 305, column: 1, scope: !3188)
!3204 = distinct !DISubprogram(name: "psmouse_smbus_module_exit", scope: !3, file: !3, line: 307, type: !3205, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{null}
!3207 = !DILocation(line: 309, column: 2, scope: !3204)
!3208 = !DILocation(line: 310, column: 2, scope: !3204)
!3209 = !DILocation(line: 311, column: 1, scope: !3204)
!3210 = distinct !DISubprogram(name: "flush_scheduled_work", scope: !135, file: !135, line: 595, type: !3205, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3211 = !DILocation(line: 597, column: 18, scope: !3210)
!3212 = !DILocation(line: 597, column: 2, scope: !3210)
!3213 = !DILocation(line: 598, column: 1, scope: !3210)
!3214 = distinct !DISubprogram(name: "__list_del_entry", scope: !2664, file: !2664, line: 130, type: !2665, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3215 = !DILocalVariable(name: "entry", arg: 1, scope: !3214, file: !2664, line: 130, type: !248)
!3216 = !DILocation(line: 130, column: 55, scope: !3214)
!3217 = !DILocation(line: 132, column: 30, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3214, file: !2664, line: 132, column: 6)
!3219 = !DILocation(line: 132, column: 7, scope: !3218)
!3220 = !DILocation(line: 132, column: 6, scope: !3214)
!3221 = !DILocation(line: 133, column: 3, scope: !3218)
!3222 = !DILocation(line: 135, column: 13, scope: !3214)
!3223 = !DILocation(line: 135, column: 20, scope: !3214)
!3224 = !DILocation(line: 135, column: 26, scope: !3214)
!3225 = !DILocation(line: 135, column: 33, scope: !3214)
!3226 = !DILocation(line: 135, column: 2, scope: !3214)
!3227 = !DILocation(line: 136, column: 1, scope: !3214)
!3228 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2664, file: !2664, line: 51, type: !3229, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!224, !248}
!3231 = !DILocalVariable(name: "entry", arg: 1, scope: !3228, file: !2664, line: 51, type: !248)
!3232 = !DILocation(line: 51, column: 61, scope: !3228)
!3233 = !DILocation(line: 53, column: 2, scope: !3228)
!3234 = distinct !DISubprogram(name: "__list_del", scope: !2664, file: !2664, line: 110, type: !3126, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3235 = !DILocalVariable(name: "prev", arg: 1, scope: !3234, file: !2664, line: 110, type: !248)
!3236 = !DILocation(line: 110, column: 50, scope: !3234)
!3237 = !DILocalVariable(name: "next", arg: 2, scope: !3234, file: !2664, line: 110, type: !248)
!3238 = !DILocation(line: 110, column: 75, scope: !3234)
!3239 = !DILocation(line: 112, column: 15, scope: !3234)
!3240 = !DILocation(line: 112, column: 2, scope: !3234)
!3241 = !DILocation(line: 112, column: 8, scope: !3234)
!3242 = !DILocation(line: 112, column: 13, scope: !3234)
!3243 = !DILocation(line: 113, column: 2, scope: !3234)
!3244 = !DILocation(line: 113, column: 2, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3234, file: !2664, line: 113, column: 2)
!3246 = !DILocation(line: 113, column: 2, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3245, file: !2664, line: 113, column: 2)
!3248 = !DILocation(line: 113, column: 2, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !2664, line: 113, column: 2)
!3250 = !DILocation(line: 114, column: 1, scope: !3234)
!3251 = distinct !DISubprogram(name: "get_order", scope: !3252, file: !3252, line: 29, type: !3253, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3252 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!284, !348}
!3255 = !DILocalVariable(name: "x", arg: 1, scope: !3256, file: !3257, line: 366, type: !418)
!3256 = distinct !DISubprogram(name: "fls64", scope: !3257, file: !3257, line: 366, type: !3258, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3257 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!284, !418}
!3260 = !DILocation(line: 366, column: 40, scope: !3256, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 46, column: 9, scope: !3251)
!3262 = !DILocalVariable(name: "bitpos", scope: !3256, file: !3257, line: 368, type: !284)
!3263 = !DILocation(line: 368, column: 6, scope: !3256, inlinedAt: !3261)
!3264 = !DILocalVariable(name: "size", arg: 1, scope: !3251, file: !3252, line: 29, type: !348)
!3265 = !DILocation(line: 29, column: 63, scope: !3251)
!3266 = !DILocation(line: 31, column: 27, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3251, file: !3252, line: 31, column: 6)
!3268 = !DILocation(line: 31, column: 6, scope: !3267)
!3269 = !DILocation(line: 31, column: 6, scope: !3251)
!3270 = !DILocation(line: 32, column: 8, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !3252, line: 32, column: 7)
!3272 = distinct !DILexicalBlock(scope: !3267, file: !3252, line: 31, column: 34)
!3273 = !DILocation(line: 32, column: 7, scope: !3272)
!3274 = !DILocation(line: 33, column: 4, scope: !3271)
!3275 = !DILocation(line: 35, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3272, file: !3252, line: 35, column: 7)
!3277 = !DILocation(line: 35, column: 12, scope: !3276)
!3278 = !DILocation(line: 35, column: 7, scope: !3272)
!3279 = !DILocation(line: 36, column: 4, scope: !3276)
!3280 = !DILocation(line: 38, column: 10, scope: !3272)
!3281 = !DILocation(line: 38, column: 28, scope: !3272)
!3282 = !DILocation(line: 38, column: 41, scope: !3272)
!3283 = !DILocation(line: 38, column: 3, scope: !3272)
!3284 = !DILocation(line: 41, column: 6, scope: !3251)
!3285 = !DILocation(line: 42, column: 7, scope: !3251)
!3286 = !DILocation(line: 46, column: 15, scope: !3251)
!3287 = !DILocation(line: 374, column: 2, scope: !3256, inlinedAt: !3261)
!3288 = !DILocation(line: 376, column: 14, scope: !3256, inlinedAt: !3261)
!3289 = !{i32 246531}
!3290 = !DILocation(line: 377, column: 9, scope: !3256, inlinedAt: !3261)
!3291 = !DILocation(line: 377, column: 16, scope: !3256, inlinedAt: !3261)
!3292 = !DILocation(line: 46, column: 2, scope: !3251)
!3293 = !DILocation(line: 48, column: 1, scope: !3251)
!3294 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3295, file: !3295, line: 30, type: !3296, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3295 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!284, !417}
!3298 = !DILocation(line: 366, column: 40, scope: !3256, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 32, column: 9, scope: !3294)
!3300 = !DILocation(line: 368, column: 6, scope: !3256, inlinedAt: !3299)
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !3295, line: 30, type: !417)
!3302 = !DILocation(line: 30, column: 21, scope: !3294)
!3303 = !DILocation(line: 32, column: 15, scope: !3294)
!3304 = !DILocation(line: 374, column: 2, scope: !3256, inlinedAt: !3299)
!3305 = !DILocation(line: 376, column: 14, scope: !3256, inlinedAt: !3299)
!3306 = !DILocation(line: 377, column: 9, scope: !3256, inlinedAt: !3299)
!3307 = !DILocation(line: 377, column: 16, scope: !3256, inlinedAt: !3299)
!3308 = !DILocation(line: 32, column: 18, scope: !3294)
!3309 = !DILocation(line: 32, column: 2, scope: !3294)
!3310 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3311, file: !3311, line: 137, type: !3312, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3311 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!168, !1187, !233, !345, !1604}
!3314 = !DILocalVariable(name: "s", arg: 1, scope: !3310, file: !3311, line: 137, type: !1187)
!3315 = !DILocation(line: 137, column: 54, scope: !3310)
!3316 = !DILocalVariable(name: "object", arg: 2, scope: !3310, file: !3311, line: 137, type: !233)
!3317 = !DILocation(line: 137, column: 69, scope: !3310)
!3318 = !DILocalVariable(name: "size", arg: 3, scope: !3310, file: !3311, line: 138, type: !345)
!3319 = !DILocation(line: 138, column: 12, scope: !3310)
!3320 = !DILocalVariable(name: "flags", arg: 4, scope: !3310, file: !3311, line: 138, type: !1604)
!3321 = !DILocation(line: 138, column: 24, scope: !3310)
!3322 = !DILocation(line: 140, column: 17, scope: !3310)
!3323 = !DILocation(line: 140, column: 2, scope: !3310)
!3324 = distinct !DISubprogram(name: "psmouse_smbus_schedule_remove", scope: !3, file: !3, line: 153, type: !3325, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !2454}
!3327 = !DILocalVariable(name: "client", arg: 1, scope: !3324, file: !3, line: 153, type: !2454)
!3328 = !DILocation(line: 153, column: 62, scope: !3324)
!3329 = !DILocalVariable(name: "rwork", scope: !3324, file: !3, line: 155, type: !2591)
!3330 = !DILocation(line: 155, column: 37, scope: !3324)
!3331 = !DILocation(line: 157, column: 10, scope: !3324)
!3332 = !DILocation(line: 157, column: 8, scope: !3324)
!3333 = !DILocation(line: 158, column: 6, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 158, column: 6)
!3335 = !DILocation(line: 158, column: 6, scope: !3324)
!3336 = !DILocation(line: 159, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 158, column: 13)
!3338 = !DILocation(line: 159, column: 3, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 159, column: 3)
!3340 = !DILocation(line: 160, column: 19, scope: !3337)
!3341 = !DILocation(line: 160, column: 3, scope: !3337)
!3342 = !DILocation(line: 160, column: 10, scope: !3337)
!3343 = !DILocation(line: 160, column: 17, scope: !3337)
!3344 = !DILocation(line: 162, column: 18, scope: !3337)
!3345 = !DILocation(line: 162, column: 25, scope: !3337)
!3346 = !DILocation(line: 162, column: 3, scope: !3337)
!3347 = !DILocation(line: 163, column: 2, scope: !3337)
!3348 = !DILocation(line: 164, column: 1, scope: !3324)
!3349 = distinct !DISubprogram(name: "__init_work", scope: !135, file: !135, line: 215, type: !3350, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{null, !1481, !284}
!3352 = !DILocalVariable(name: "work", arg: 1, scope: !3349, file: !135, line: 215, type: !1481)
!3353 = !DILocation(line: 215, column: 52, scope: !3349)
!3354 = !DILocalVariable(name: "onstack", arg: 2, scope: !3349, file: !135, line: 215, type: !284)
!3355 = !DILocation(line: 215, column: 62, scope: !3349)
!3356 = !DILocation(line: 215, column: 73, scope: !3349)
!3357 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2664, file: !2664, line: 33, type: !2665, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3358 = !DILocalVariable(name: "list", arg: 1, scope: !3357, file: !2664, line: 33, type: !248)
!3359 = !DILocation(line: 33, column: 53, scope: !3357)
!3360 = !DILocation(line: 35, column: 2, scope: !3357)
!3361 = !DILocation(line: 35, column: 2, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3357, file: !2664, line: 35, column: 2)
!3363 = !DILocation(line: 35, column: 2, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3362, file: !2664, line: 35, column: 2)
!3365 = !DILocation(line: 35, column: 2, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !2664, line: 35, column: 2)
!3367 = !DILocation(line: 36, column: 15, scope: !3357)
!3368 = !DILocation(line: 36, column: 2, scope: !3357)
!3369 = !DILocation(line: 36, column: 8, scope: !3357)
!3370 = !DILocation(line: 36, column: 13, scope: !3357)
!3371 = !DILocation(line: 37, column: 1, scope: !3357)
!3372 = distinct !DISubprogram(name: "psmouse_smbus_remove_i2c_device", scope: !3, file: !3, line: 132, type: !1479, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3373 = !DILocalVariable(name: "work", arg: 1, scope: !3372, file: !3, line: 132, type: !1481)
!3374 = !DILocation(line: 132, column: 65, scope: !3372)
!3375 = !DILocalVariable(name: "rwork", scope: !3372, file: !3, line: 134, type: !2591)
!3376 = !DILocation(line: 134, column: 37, scope: !3372)
!3377 = !DILocalVariable(name: "__mptr", scope: !3378, file: !3, line: 135, type: !168)
!3378 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 135, column: 3)
!3379 = !DILocation(line: 135, column: 3, scope: !3378)
!3380 = !DILocation(line: 135, column: 3, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 135, column: 3)
!3382 = !DILocation(line: 138, column: 24, scope: !3372)
!3383 = !DILocation(line: 138, column: 31, scope: !3372)
!3384 = !DILocation(line: 138, column: 2, scope: !3372)
!3385 = !DILocation(line: 140, column: 8, scope: !3372)
!3386 = !DILocation(line: 140, column: 2, scope: !3372)
!3387 = !DILocation(line: 141, column: 1, scope: !3372)
!3388 = distinct !DISubprogram(name: "schedule_work", scope: !135, file: !135, line: 566, type: !3389, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!224, !1481}
!3391 = !DILocalVariable(name: "work", arg: 1, scope: !3388, file: !135, line: 566, type: !1481)
!3392 = !DILocation(line: 566, column: 54, scope: !3388)
!3393 = !DILocation(line: 568, column: 20, scope: !3388)
!3394 = !DILocation(line: 568, column: 31, scope: !3388)
!3395 = !DILocation(line: 568, column: 9, scope: !3388)
!3396 = !DILocation(line: 568, column: 2, scope: !3388)
!3397 = distinct !DISubprogram(name: "queue_work", scope: !135, file: !135, line: 504, type: !3398, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!224, !2383, !1481}
!3400 = !DILocalVariable(name: "wq", arg: 1, scope: !3397, file: !135, line: 504, type: !2383)
!3401 = !DILocation(line: 504, column: 56, scope: !3397)
!3402 = !DILocalVariable(name: "work", arg: 2, scope: !3397, file: !135, line: 505, type: !1481)
!3403 = !DILocation(line: 505, column: 30, scope: !3397)
!3404 = !DILocation(line: 507, column: 41, scope: !3397)
!3405 = !DILocation(line: 507, column: 45, scope: !3397)
!3406 = !DILocation(line: 507, column: 9, scope: !3397)
!3407 = !DILocation(line: 507, column: 2, scope: !3397)
!3408 = distinct !DISubprogram(name: "__list_add", scope: !2664, file: !2664, line: 63, type: !3409, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !248, !248, !248}
!3411 = !DILocalVariable(name: "new", arg: 1, scope: !3408, file: !2664, line: 63, type: !248)
!3412 = !DILocation(line: 63, column: 49, scope: !3408)
!3413 = !DILocalVariable(name: "prev", arg: 2, scope: !3408, file: !2664, line: 64, type: !248)
!3414 = !DILocation(line: 64, column: 28, scope: !3408)
!3415 = !DILocalVariable(name: "next", arg: 3, scope: !3408, file: !2664, line: 65, type: !248)
!3416 = !DILocation(line: 65, column: 28, scope: !3408)
!3417 = !DILocation(line: 67, column: 24, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3408, file: !2664, line: 67, column: 6)
!3419 = !DILocation(line: 67, column: 29, scope: !3418)
!3420 = !DILocation(line: 67, column: 35, scope: !3418)
!3421 = !DILocation(line: 67, column: 7, scope: !3418)
!3422 = !DILocation(line: 67, column: 6, scope: !3408)
!3423 = !DILocation(line: 68, column: 3, scope: !3418)
!3424 = !DILocation(line: 70, column: 15, scope: !3408)
!3425 = !DILocation(line: 70, column: 2, scope: !3408)
!3426 = !DILocation(line: 70, column: 8, scope: !3408)
!3427 = !DILocation(line: 70, column: 13, scope: !3408)
!3428 = !DILocation(line: 71, column: 14, scope: !3408)
!3429 = !DILocation(line: 71, column: 2, scope: !3408)
!3430 = !DILocation(line: 71, column: 7, scope: !3408)
!3431 = !DILocation(line: 71, column: 12, scope: !3408)
!3432 = !DILocation(line: 72, column: 14, scope: !3408)
!3433 = !DILocation(line: 72, column: 2, scope: !3408)
!3434 = !DILocation(line: 72, column: 7, scope: !3408)
!3435 = !DILocation(line: 72, column: 12, scope: !3408)
!3436 = !DILocation(line: 73, column: 2, scope: !3408)
!3437 = !DILocation(line: 73, column: 2, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3408, file: !2664, line: 73, column: 2)
!3439 = !DILocation(line: 73, column: 2, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3438, file: !2664, line: 73, column: 2)
!3441 = !DILocation(line: 73, column: 2, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3438, file: !2664, line: 73, column: 2)
!3443 = !DILocation(line: 74, column: 1, scope: !3408)
!3444 = distinct !DISubprogram(name: "__list_add_valid", scope: !2664, file: !2664, line: 45, type: !3445, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!224, !248, !248, !248}
!3447 = !DILocalVariable(name: "new", arg: 1, scope: !3444, file: !2664, line: 45, type: !248)
!3448 = !DILocation(line: 45, column: 55, scope: !3444)
!3449 = !DILocalVariable(name: "prev", arg: 2, scope: !3444, file: !2664, line: 46, type: !248)
!3450 = !DILocation(line: 46, column: 23, scope: !3444)
!3451 = !DILocalVariable(name: "next", arg: 3, scope: !3444, file: !2664, line: 47, type: !248)
!3452 = !DILocation(line: 47, column: 23, scope: !3444)
!3453 = !DILocation(line: 49, column: 2, scope: !3444)
!3454 = distinct !DISubprogram(name: "i2c_check_functionality", scope: !174, file: !174, line: 880, type: !3455, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!284, !2461, !196}
!3457 = !DILocalVariable(name: "adap", arg: 1, scope: !3454, file: !174, line: 880, type: !2461)
!3458 = !DILocation(line: 880, column: 63, scope: !3454)
!3459 = !DILocalVariable(name: "func", arg: 2, scope: !3454, file: !174, line: 880, type: !196)
!3460 = !DILocation(line: 880, column: 73, scope: !3454)
!3461 = !DILocation(line: 882, column: 10, scope: !3454)
!3462 = !DILocation(line: 882, column: 39, scope: !3454)
!3463 = !DILocation(line: 882, column: 17, scope: !3454)
!3464 = !DILocation(line: 882, column: 15, scope: !3454)
!3465 = !DILocation(line: 882, column: 49, scope: !3454)
!3466 = !DILocation(line: 882, column: 46, scope: !3454)
!3467 = !DILocation(line: 882, column: 2, scope: !3454)
!3468 = distinct !DISubprogram(name: "IS_ERR", scope: !3469, file: !3469, line: 34, type: !3470, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3469 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!224, !233}
!3472 = !DILocalVariable(name: "ptr", arg: 1, scope: !3468, file: !3469, line: 34, type: !233)
!3473 = !DILocation(line: 34, column: 60, scope: !3468)
!3474 = !DILocation(line: 36, column: 9, scope: !3468)
!3475 = !DILocation(line: 36, column: 2, scope: !3468)
!3476 = distinct !DISubprogram(name: "i2c_get_functionality", scope: !174, file: !174, line: 874, type: !2501, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3477 = !DILocalVariable(name: "adap", arg: 1, scope: !3476, file: !174, line: 874, type: !2461)
!3478 = !DILocation(line: 874, column: 61, scope: !3476)
!3479 = !DILocation(line: 876, column: 9, scope: !3476)
!3480 = !DILocation(line: 876, column: 15, scope: !3476)
!3481 = !DILocation(line: 876, column: 21, scope: !3476)
!3482 = !DILocation(line: 876, column: 35, scope: !3476)
!3483 = !DILocation(line: 876, column: 2, scope: !3476)
!3484 = distinct !DISubprogram(name: "psmouse_smbus_notifier_call", scope: !3, file: !3, line: 88, type: !2607, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3485 = !DILocalVariable(name: "nb", arg: 1, scope: !3484, file: !3, line: 88, type: !2609)
!3486 = !DILocation(line: 88, column: 63, scope: !3484)
!3487 = !DILocalVariable(name: "action", arg: 2, scope: !3484, file: !3, line: 89, type: !348)
!3488 = !DILocation(line: 89, column: 26, scope: !3484)
!3489 = !DILocalVariable(name: "data", arg: 3, scope: !3484, file: !3, line: 89, type: !168)
!3490 = !DILocation(line: 89, column: 40, scope: !3484)
!3491 = !DILocalVariable(name: "dev", scope: !3484, file: !3, line: 91, type: !1733)
!3492 = !DILocation(line: 91, column: 17, scope: !3484)
!3493 = !DILocation(line: 91, column: 23, scope: !3484)
!3494 = !DILocation(line: 93, column: 10, scope: !3484)
!3495 = !DILocation(line: 93, column: 2, scope: !3484)
!3496 = !DILocation(line: 95, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 95, column: 7)
!3498 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 93, column: 18)
!3499 = !DILocation(line: 95, column: 12, scope: !3497)
!3500 = !DILocation(line: 95, column: 17, scope: !3497)
!3501 = !DILocation(line: 95, column: 7, scope: !3498)
!3502 = !DILocalVariable(name: "__mptr", scope: !3503, file: !3, line: 96, type: !168)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 96, column: 32)
!3504 = !DILocation(line: 96, column: 32, scope: !3503)
!3505 = !DILocation(line: 96, column: 32, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 96, column: 32)
!3507 = !DILocation(line: 96, column: 4, scope: !3497)
!3508 = !DILocation(line: 97, column: 3, scope: !3498)
!3509 = !DILocation(line: 100, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 100, column: 7)
!3511 = !DILocation(line: 100, column: 12, scope: !3510)
!3512 = !DILocation(line: 100, column: 17, scope: !3510)
!3513 = !DILocation(line: 100, column: 7, scope: !3498)
!3514 = !DILocalVariable(name: "__mptr", scope: !3515, file: !3, line: 101, type: !168)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 101, column: 36)
!3516 = !DILocation(line: 101, column: 36, scope: !3515)
!3517 = !DILocation(line: 101, column: 36, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 101, column: 36)
!3519 = !DILocation(line: 101, column: 4, scope: !3510)
!3520 = !DILocation(line: 102, column: 3, scope: !3498)
!3521 = !DILocation(line: 105, column: 2, scope: !3484)
!3522 = distinct !DISubprogram(name: "psmouse_smbus_check_adapter", scope: !3, file: !3, line: 29, type: !2556, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3523 = !DILocalVariable(name: "adapter", arg: 1, scope: !3522, file: !3, line: 29, type: !2461)
!3524 = !DILocation(line: 29, column: 61, scope: !3522)
!3525 = !DILocalVariable(name: "smbdev", scope: !3522, file: !3, line: 31, type: !169)
!3526 = !DILocation(line: 31, column: 28, scope: !3522)
!3527 = !DILocation(line: 33, column: 31, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 33, column: 6)
!3529 = !DILocation(line: 33, column: 7, scope: !3528)
!3530 = !DILocation(line: 33, column: 6, scope: !3522)
!3531 = !DILocation(line: 34, column: 3, scope: !3528)
!3532 = !DILocation(line: 36, column: 2, scope: !3522)
!3533 = !DILocalVariable(name: "__mptr", scope: !3534, file: !3, line: 38, type: !168)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 38, column: 2)
!3535 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 38, column: 2)
!3536 = !DILocation(line: 38, column: 2, scope: !3534)
!3537 = !DILocation(line: 38, column: 2, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 38, column: 2)
!3539 = !DILocation(line: 38, column: 2, scope: !3535)
!3540 = !DILocation(line: 38, column: 2, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 38, column: 2)
!3542 = !DILocation(line: 39, column: 7, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 39, column: 7)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 38, column: 57)
!3545 = !DILocation(line: 39, column: 15, scope: !3543)
!3546 = !DILocation(line: 39, column: 7, scope: !3544)
!3547 = !DILocation(line: 40, column: 4, scope: !3543)
!3548 = !DILocation(line: 42, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 42, column: 7)
!3550 = !DILocation(line: 42, column: 15, scope: !3549)
!3551 = !DILocation(line: 42, column: 7, scope: !3544)
!3552 = !DILocation(line: 43, column: 4, scope: !3549)
!3553 = !DILocation(line: 54, column: 16, scope: !3544)
!3554 = !DILocation(line: 54, column: 24, scope: !3544)
!3555 = !DILocation(line: 54, column: 33, scope: !3544)
!3556 = !DILocation(line: 54, column: 40, scope: !3544)
!3557 = !DILocation(line: 54, column: 3, scope: !3544)
!3558 = !DILocation(line: 55, column: 2, scope: !3544)
!3559 = !DILocalVariable(name: "__mptr", scope: !3560, file: !3, line: 38, type: !168)
!3560 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 38, column: 2)
!3561 = !DILocation(line: 38, column: 2, scope: !3560)
!3562 = !DILocation(line: 38, column: 2, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 38, column: 2)
!3564 = distinct !{!3564, !3539, !3565}
!3565 = !DILocation(line: 55, column: 2, scope: !3535)
!3566 = !DILocation(line: 57, column: 2, scope: !3522)
!3567 = !DILocation(line: 58, column: 1, scope: !3522)
!3568 = distinct !DISubprogram(name: "psmouse_smbus_detach_i2c_client", scope: !3, file: !3, line: 60, type: !3325, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !272)
!3569 = !DILocalVariable(name: "client", arg: 1, scope: !3568, file: !3, line: 60, type: !2454)
!3570 = !DILocation(line: 60, column: 64, scope: !3568)
!3571 = !DILocalVariable(name: "smbdev", scope: !3568, file: !3, line: 62, type: !169)
!3572 = !DILocation(line: 62, column: 28, scope: !3568)
!3573 = !DILocalVariable(name: "tmp", scope: !3568, file: !3, line: 62, type: !169)
!3574 = !DILocation(line: 62, column: 37, scope: !3568)
!3575 = !DILocation(line: 64, column: 2, scope: !3568)
!3576 = !DILocalVariable(name: "__mptr", scope: !3577, file: !3, line: 66, type: !168)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 66, column: 2)
!3578 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 66, column: 2)
!3579 = !DILocation(line: 66, column: 2, scope: !3577)
!3580 = !DILocation(line: 66, column: 2, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 66, column: 2)
!3582 = !DILocation(line: 66, column: 2, scope: !3578)
!3583 = !DILocalVariable(name: "__mptr", scope: !3584, file: !3, line: 66, type: !168)
!3584 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 66, column: 2)
!3585 = !DILocation(line: 66, column: 2, scope: !3584)
!3586 = !DILocation(line: 66, column: 2, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 66, column: 2)
!3588 = !DILocation(line: 66, column: 2, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 66, column: 2)
!3590 = !DILocation(line: 67, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 67, column: 7)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 66, column: 67)
!3593 = !DILocation(line: 67, column: 15, scope: !3591)
!3594 = !DILocation(line: 67, column: 25, scope: !3591)
!3595 = !DILocation(line: 67, column: 22, scope: !3591)
!3596 = !DILocation(line: 67, column: 7, scope: !3592)
!3597 = !DILocation(line: 68, column: 4, scope: !3591)
!3598 = !DILocation(line: 70, column: 9, scope: !3592)
!3599 = !DILocation(line: 70, column: 17, scope: !3592)
!3600 = !DILocation(line: 70, column: 21, scope: !3592)
!3601 = !DILocation(line: 70, column: 3, scope: !3592)
!3602 = !DILocation(line: 71, column: 3, scope: !3592)
!3603 = !DILocation(line: 71, column: 11, scope: !3592)
!3604 = !DILocation(line: 71, column: 15, scope: !3592)
!3605 = !DILocation(line: 71, column: 29, scope: !3592)
!3606 = !DILocation(line: 73, column: 8, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 73, column: 7)
!3608 = !DILocation(line: 73, column: 16, scope: !3607)
!3609 = !DILocation(line: 73, column: 7, scope: !3592)
!3610 = !DILocation(line: 77, column: 4, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 73, column: 22)
!3612 = !DILocation(line: 77, column: 12, scope: !3611)
!3613 = !DILocation(line: 77, column: 17, scope: !3611)
!3614 = !DILocation(line: 78, column: 17, scope: !3611)
!3615 = !DILocation(line: 78, column: 25, scope: !3611)
!3616 = !DILocation(line: 78, column: 34, scope: !3611)
!3617 = !DILocation(line: 78, column: 41, scope: !3611)
!3618 = !DILocation(line: 78, column: 4, scope: !3611)
!3619 = !DILocation(line: 79, column: 3, scope: !3611)
!3620 = !DILocation(line: 80, column: 14, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 79, column: 10)
!3622 = !DILocation(line: 80, column: 22, scope: !3621)
!3623 = !DILocation(line: 80, column: 4, scope: !3621)
!3624 = !DILocation(line: 81, column: 10, scope: !3621)
!3625 = !DILocation(line: 81, column: 4, scope: !3621)
!3626 = !DILocation(line: 83, column: 2, scope: !3592)
!3627 = !DILocalVariable(name: "__mptr", scope: !3628, file: !3, line: 66, type: !168)
!3628 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 66, column: 2)
!3629 = !DILocation(line: 66, column: 2, scope: !3628)
!3630 = !DILocation(line: 66, column: 2, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 66, column: 2)
!3632 = distinct !{!3632, !3582, !3633}
!3633 = !DILocation(line: 83, column: 2, scope: !3578)
!3634 = !DILocation(line: 85, column: 2, scope: !3568)
!3635 = !DILocation(line: 86, column: 1, scope: !3568)
