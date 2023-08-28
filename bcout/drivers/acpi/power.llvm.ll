; ModuleID = '../bcout/drivers/acpi/power.llvm.bc'
source_filename = "drivers/acpi/power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.acpi_power_resource_entry = type { %struct.list_head, %struct.acpi_power_resource* }
%struct.acpi_power_resource = type { %struct.acpi_device, %struct.list_head, i8*, i32, i32, i32, i8, %struct.mutex, %struct.list_head }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
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
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.anon.41 = type { i32, i32, %union.acpi_object* }
%struct.anon.42 = type { i32, i32, i8* }
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.44 = type { i32, i32, i32 }
%struct.acpi_power_dependent_device = type { %struct.device*, %struct.list_head }
%struct.anon.38 = type { i32, i64 }

@wakeup_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !0
@attr_groups = internal constant [4 x %struct.attribute_group] [%struct.attribute_group { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @attrs, i32 0, i32 0), %struct.bin_attribute** null }, %struct.attribute_group { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @attrs, i32 0, i32 0), %struct.bin_attribute** null }, %struct.attribute_group { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @attrs, i32 0, i32 0), %struct.bin_attribute** null }, %struct.attribute_group { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @attrs, i32 0, i32 0), %struct.bin_attribute** null }], align 16, !dbg !2474
@.str = private unnamed_addr constant [5 x i8] c"_DSW\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\013ACPI: _DSW execution failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PSW\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\013ACPI: _PSW execution failed\0A\00", align 1
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot turn wakeup power resources on\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Cannot turn wakeup power resources off\0A\00", align 1
@acpi_add_power_resource.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2466
@.str.6 = private unnamed_addr constant [25 x i8] c"&resource->resource_lock\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Power Resource\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"power_resource\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\016ACPI: %s [%s] (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@dev_attr_resource_in_use = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @acpi_power_in_use_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2477
@power_resource_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @power_resource_list_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @power_resource_list_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2491
@acpi_power_resource_list = internal global %struct.list_head { %struct.list_head* @acpi_power_resource_list, %struct.list_head* @acpi_power_resource_list }, align 8, !dbg !2493
@.str.12 = private unnamed_addr constant [12 x i8] c"Turning ON\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Turning OFF\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"power_resources_wakeup\00", align 1
@attrs = internal global [1 x %struct.attribute*] zeroinitializer, align 8, !dbg !2471
@.str.15 = private unnamed_addr constant [19 x i8] c"power_resources_D0\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"power_resources_D1\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"power_resources_D2\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"power_resources_D3hot\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.20 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"resource_in_use\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"_ON\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"_OFF\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_power_resources_list_free(%struct.list_head* %list) #0 !dbg !2500 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %e = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr10 = alloca i8*, align 8
  %tmp15 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %e, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2509, metadata !DIExpression()), !dbg !2512
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2512
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !2512
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2512
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !2512
  store i8* %2, i8** %__mptr, align 8, !dbg !2512
  br label %do.body, !dbg !2512

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2513

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2512
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2512
  %4 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !2512
  store %struct.acpi_power_resource_entry* %4, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2513
  %5 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2512
  store %struct.acpi_power_resource_entry* %5, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2515
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !2516, metadata !DIExpression()), !dbg !2518
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2518
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %6, i32 0, i32 0, !dbg !2518
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !2518
  %7 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !2518
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !2518
  store i8* %8, i8** %__mptr2, align 8, !dbg !2518
  br label %do.body4, !dbg !2518

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2519

do.end5:                                          ; preds = %do.body4
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !2518
  %add.ptr7 = getelementptr i8, i8* %9, i64 0, !dbg !2518
  %10 = bitcast i8* %add.ptr7 to %struct.acpi_power_resource_entry*, !dbg !2518
  store %struct.acpi_power_resource_entry* %10, %struct.acpi_power_resource_entry** %tmp6, align 8, !dbg !2519
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp6, align 8, !dbg !2518
  store %struct.acpi_power_resource_entry* %11, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2515
  br label %for.cond, !dbg !2515

for.cond:                                         ; preds = %do.end14, %do.end5
  %12 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2521
  %node8 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %12, i32 0, i32 0, !dbg !2521
  %13 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2521
  %cmp = icmp eq %struct.list_head* %node8, %13, !dbg !2521
  %lnot = xor i1 %cmp, true, !dbg !2521
  br i1 %lnot, label %for.body, label %for.end, !dbg !2515

for.body:                                         ; preds = %for.cond
  %14 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2523
  %node9 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %14, i32 0, i32 0, !dbg !2525
  call void @list_del(%struct.list_head* %node9) #7, !dbg !2526
  %15 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2527
  %16 = bitcast %struct.acpi_power_resource_entry* %15 to i8*, !dbg !2527
  call void @kfree(i8* %16) #7, !dbg !2528
  br label %for.inc, !dbg !2529

for.inc:                                          ; preds = %for.body
  %17 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2521
  store %struct.acpi_power_resource_entry* %17, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2521
  call void @llvm.dbg.declare(metadata i8** %__mptr10, metadata !2530, metadata !DIExpression()), !dbg !2532
  %18 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2532
  %node11 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %18, i32 0, i32 0, !dbg !2532
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %node11, i32 0, i32 0, !dbg !2532
  %19 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !2532
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !2532
  store i8* %20, i8** %__mptr10, align 8, !dbg !2532
  br label %do.body13, !dbg !2532

do.body13:                                        ; preds = %for.inc
  br label %do.end14, !dbg !2533

do.end14:                                         ; preds = %do.body13
  %21 = load i8*, i8** %__mptr10, align 8, !dbg !2532
  %add.ptr16 = getelementptr i8, i8* %21, i64 0, !dbg !2532
  %22 = bitcast i8* %add.ptr16 to %struct.acpi_power_resource_entry*, !dbg !2532
  store %struct.acpi_power_resource_entry* %22, %struct.acpi_power_resource_entry** %tmp15, align 8, !dbg !2533
  %23 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp15, align 8, !dbg !2532
  store %struct.acpi_power_resource_entry* %23, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2521
  br label %for.cond, !dbg !2521, !llvm.loop !2535

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2537
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2538 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2542
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !2543
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2544
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2545
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2546
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2547
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2548
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2549
  ret void, !dbg !2550
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_extract_power_resources(%union.acpi_object* %package, i32 %start, %struct.list_head* %list) #0 !dbg !2551 {
entry:
  %package.addr = alloca %union.acpi_object*, align 8
  %start.addr = alloca i32, align 4
  %list.addr = alloca %struct.list_head*, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %element = alloca %union.acpi_object*, align 8
  %rhandle = alloca i8*, align 8
  store %union.acpi_object* %package, %union.acpi_object** %package.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %package.addr, metadata !2554, metadata !DIExpression()), !dbg !2555
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 0, i32* %err, align 4, !dbg !2563
  %0 = load i32, i32* %start.addr, align 4, !dbg !2564
  store i32 %0, i32* %i, align 4, !dbg !2566
  br label %for.cond, !dbg !2567

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !2568
  %2 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2570
  %package1 = bitcast %union.acpi_object* %2 to %struct.anon.41*, !dbg !2571
  %count = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package1, i32 0, i32 1, !dbg !2572
  %3 = load i32, i32* %count, align 4, !dbg !2572
  %cmp = icmp ult i32 %1, %3, !dbg !2573
  br i1 %cmp, label %for.body, label %for.end, !dbg !2574

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %union.acpi_object** %element, metadata !2575, metadata !DIExpression()), !dbg !2577
  %4 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2578
  %package2 = bitcast %union.acpi_object* %4 to %struct.anon.41*, !dbg !2579
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package2, i32 0, i32 2, !dbg !2580
  %5 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2580
  %6 = load i32, i32* %i, align 4, !dbg !2581
  %idxprom = zext i32 %6 to i64, !dbg !2578
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %5, i64 %idxprom, !dbg !2578
  store %union.acpi_object* %arrayidx, %union.acpi_object** %element, align 8, !dbg !2577
  call void @llvm.dbg.declare(metadata i8** %rhandle, metadata !2582, metadata !DIExpression()), !dbg !2583
  %7 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !2584
  %type = bitcast %union.acpi_object* %7 to i32*, !dbg !2586
  %8 = load i32, i32* %type, align 8, !dbg !2586
  %cmp3 = icmp ne i32 %8, 20, !dbg !2587
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2588

if.then:                                          ; preds = %for.body
  store i32 -61, i32* %err, align 4, !dbg !2589
  br label %for.end, !dbg !2591

if.end:                                           ; preds = %for.body
  %9 = load %union.acpi_object*, %union.acpi_object** %element, align 8, !dbg !2592
  %reference = bitcast %union.acpi_object* %9 to %struct.anon.42*, !dbg !2593
  %handle = getelementptr inbounds %struct.anon.42, %struct.anon.42* %reference, i32 0, i32 2, !dbg !2594
  %10 = load i8*, i8** %handle, align 8, !dbg !2594
  store i8* %10, i8** %rhandle, align 8, !dbg !2595
  %11 = load i8*, i8** %rhandle, align 8, !dbg !2596
  %tobool = icmp ne i8* %11, null, !dbg !2596
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !2598

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %err, align 4, !dbg !2599
  br label %for.end, !dbg !2601

if.end5:                                          ; preds = %if.end
  %12 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2602
  %13 = load i32, i32* %start.addr, align 4, !dbg !2604
  %14 = load i32, i32* %i, align 4, !dbg !2605
  %call = call zeroext i1 @acpi_power_resource_is_dup(%union.acpi_object* %12, i32 %13, i32 %14) #7, !dbg !2606
  br i1 %call, label %if.then6, label %if.end7, !dbg !2607

if.then6:                                         ; preds = %if.end5
  br label %for.inc, !dbg !2608

if.end7:                                          ; preds = %if.end5
  %15 = load i8*, i8** %rhandle, align 8, !dbg !2609
  %call8 = call i32 @acpi_add_power_resource(i8* %15) #7, !dbg !2610
  store i32 %call8, i32* %err, align 4, !dbg !2611
  %16 = load i32, i32* %err, align 4, !dbg !2612
  %tobool9 = icmp ne i32 %16, 0, !dbg !2612
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2614

if.then10:                                        ; preds = %if.end7
  br label %for.end, !dbg !2615

if.end11:                                         ; preds = %if.end7
  %17 = load i8*, i8** %rhandle, align 8, !dbg !2616
  %18 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2617
  %call12 = call i32 @acpi_power_resources_list_add(i8* %17, %struct.list_head* %18) #7, !dbg !2618
  store i32 %call12, i32* %err, align 4, !dbg !2619
  %19 = load i32, i32* %err, align 4, !dbg !2620
  %tobool13 = icmp ne i32 %19, 0, !dbg !2620
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2622

if.then14:                                        ; preds = %if.end11
  br label %for.end, !dbg !2623

if.end15:                                         ; preds = %if.end11
  br label %for.inc, !dbg !2624

for.inc:                                          ; preds = %if.end15, %if.then6
  %20 = load i32, i32* %i, align 4, !dbg !2625
  %inc = add i32 %20, 1, !dbg !2625
  store i32 %inc, i32* %i, align 4, !dbg !2625
  br label %for.cond, !dbg !2626, !llvm.loop !2627

for.end:                                          ; preds = %if.then14, %if.then10, %if.then4, %if.then, %for.cond
  %21 = load i32, i32* %err, align 4, !dbg !2629
  %tobool16 = icmp ne i32 %21, 0, !dbg !2629
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2631

if.then17:                                        ; preds = %for.end
  %22 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2632
  call void @acpi_power_resources_list_free(%struct.list_head* %22) #7, !dbg !2633
  br label %if.end18, !dbg !2633

if.end18:                                         ; preds = %if.then17, %for.end
  %23 = load i32, i32* %err, align 4, !dbg !2634
  ret i32 %23, !dbg !2635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_power_resource_is_dup(%union.acpi_object* %package, i32 %start, i32 %i) #0 !dbg !2636 {
entry:
  %retval = alloca i1, align 1
  %package.addr = alloca %union.acpi_object*, align 8
  %start.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %rhandle = alloca i8*, align 8
  %dup = alloca i8*, align 8
  %j = alloca i32, align 4
  store %union.acpi_object* %package, %union.acpi_object** %package.addr, align 8
  call void @llvm.dbg.declare(metadata %union.acpi_object** %package.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !2643, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.declare(metadata i8** %rhandle, metadata !2645, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.declare(metadata i8** %dup, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2649, metadata !DIExpression()), !dbg !2650
  %0 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2651
  %package1 = bitcast %union.acpi_object* %0 to %struct.anon.41*, !dbg !2652
  %elements = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package1, i32 0, i32 2, !dbg !2653
  %1 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !2653
  %2 = load i32, i32* %i.addr, align 4, !dbg !2654
  %idxprom = zext i32 %2 to i64, !dbg !2651
  %arrayidx = getelementptr %union.acpi_object, %union.acpi_object* %1, i64 %idxprom, !dbg !2651
  %reference = bitcast %union.acpi_object* %arrayidx to %struct.anon.42*, !dbg !2655
  %handle = getelementptr inbounds %struct.anon.42, %struct.anon.42* %reference, i32 0, i32 2, !dbg !2656
  %3 = load i8*, i8** %handle, align 8, !dbg !2656
  store i8* %3, i8** %rhandle, align 8, !dbg !2657
  %4 = load i32, i32* %start.addr, align 4, !dbg !2658
  store i32 %4, i32* %j, align 4, !dbg !2660
  br label %for.cond, !dbg !2661

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !dbg !2662
  %6 = load i32, i32* %i.addr, align 4, !dbg !2664
  %cmp = icmp ult i32 %5, %6, !dbg !2665
  br i1 %cmp, label %for.body, label %for.end, !dbg !2666

for.body:                                         ; preds = %for.cond
  %7 = load %union.acpi_object*, %union.acpi_object** %package.addr, align 8, !dbg !2667
  %package2 = bitcast %union.acpi_object* %7 to %struct.anon.41*, !dbg !2669
  %elements3 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %package2, i32 0, i32 2, !dbg !2670
  %8 = load %union.acpi_object*, %union.acpi_object** %elements3, align 8, !dbg !2670
  %9 = load i32, i32* %j, align 4, !dbg !2671
  %idxprom4 = zext i32 %9 to i64, !dbg !2667
  %arrayidx5 = getelementptr %union.acpi_object, %union.acpi_object* %8, i64 %idxprom4, !dbg !2667
  %reference6 = bitcast %union.acpi_object* %arrayidx5 to %struct.anon.42*, !dbg !2672
  %handle7 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %reference6, i32 0, i32 2, !dbg !2673
  %10 = load i8*, i8** %handle7, align 8, !dbg !2673
  store i8* %10, i8** %dup, align 8, !dbg !2674
  %11 = load i8*, i8** %dup, align 8, !dbg !2675
  %12 = load i8*, i8** %rhandle, align 8, !dbg !2677
  %cmp8 = icmp eq i8* %11, %12, !dbg !2678
  br i1 %cmp8, label %if.then, label %if.end, !dbg !2679

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !2680
  br label %return, !dbg !2680

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2681

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4, !dbg !2682
  %inc = add i32 %13, 1, !dbg !2682
  store i32 %inc, i32* %j, align 4, !dbg !2682
  br label %for.cond, !dbg !2683, !llvm.loop !2684

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !2686
  br label %return, !dbg !2686

return:                                           ; preds = %for.end, %if.then
  %14 = load i1, i1* %retval, align 1, !dbg !2687
  ret i1 %14, !dbg !2687
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_add_power_resource(i8* %handle) #0 !dbg !2468 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %acpi_object = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %state = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !2692, metadata !DIExpression()), !dbg !2693
  store %struct.acpi_device* null, %struct.acpi_device** %device, align 8, !dbg !2693
  call void @llvm.dbg.declare(metadata %union.acpi_object* %acpi_object, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2696, metadata !DIExpression()), !dbg !2702
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !2703
  store i64 24, i64* %length, align 8, !dbg !2703
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2703
  %0 = bitcast %union.acpi_object* %acpi_object to i8*, !dbg !2704
  store i8* %0, i8** %pointer, align 8, !dbg !2703
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2705, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.declare(metadata i32* %state, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2709, metadata !DIExpression()), !dbg !2710
  store i32 -19, i32* %result, align 4, !dbg !2710
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !2711
  %call = call i32 @acpi_bus_get_device(i8* %1, %struct.acpi_device** %device) #7, !dbg !2712
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2713
  %tobool = icmp ne %struct.acpi_device* %2, null, !dbg !2713
  br i1 %tobool, label %if.then, label %if.end, !dbg !2715

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2716
  br label %return, !dbg !2716

if.end:                                           ; preds = %entry
  %call1 = call i8* @kzalloc(i64 1440, i32 3264) #7, !dbg !2717
  %3 = bitcast i8* %call1 to %struct.acpi_power_resource*, !dbg !2717
  store %struct.acpi_power_resource* %3, %struct.acpi_power_resource** %resource, align 8, !dbg !2718
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2719
  %tobool2 = icmp ne %struct.acpi_power_resource* %4, null, !dbg !2719
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2721

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2722
  br label %return, !dbg !2722

if.end4:                                          ; preds = %if.end
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2723
  %device5 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 0, !dbg !2724
  store %struct.acpi_device* %device5, %struct.acpi_device** %device, align 8, !dbg !2725
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2726
  %7 = load i8*, i8** %handle.addr, align 8, !dbg !2727
  call void @acpi_init_device_object(%struct.acpi_device* %6, i8* %7, i32 1, i64 15) #7, !dbg !2728
  br label %do.body, !dbg !2729

do.body:                                          ; preds = %if.end4
  %8 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2730
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %8, i32 0, i32 7, !dbg !2730
  call void @__mutex_init(%struct.mutex* %resource_lock, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @acpi_add_power_resource.__key) #7, !dbg !2730
  br label %do.end, !dbg !2730

do.end:                                           ; preds = %do.body
  %9 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2732
  %list_node = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %9, i32 0, i32 1, !dbg !2733
  call void @INIT_LIST_HEAD(%struct.list_head* %list_node) #7, !dbg !2734
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2735
  %dependents = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 8, !dbg !2736
  call void @INIT_LIST_HEAD(%struct.list_head* %dependents) #7, !dbg !2737
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2738
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !2739
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 0, !dbg !2740
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !2738
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2741
  %name = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 2, !dbg !2742
  store i8* %arraydecay, i8** %name, align 8, !dbg !2743
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2744
  %pnp6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 10, !dbg !2744
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp6, i32 0, i32 5, !dbg !2744
  %arraydecay7 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !2744
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !2745
  %14 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2746
  %pnp9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 10, !dbg !2746
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp9, i32 0, i32 6, !dbg !2746
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !2746
  %call11 = call i8* @strcpy(i8* %arraydecay10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !2747
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2748
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 11, !dbg !2749
  %state12 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !2750
  store i32 255, i32* %state12, align 8, !dbg !2751
  %16 = load i8*, i8** %handle.addr, align 8, !dbg !2752
  %call13 = call i32 @acpi_evaluate_object(i8* %16, i8* null, %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #7, !dbg !2753
  store i32 %call13, i32* %status, align 4, !dbg !2754
  %17 = load i32, i32* %status, align 4, !dbg !2755
  %tobool14 = icmp ne i32 %17, 0, !dbg !2755
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2757

if.then15:                                        ; preds = %do.end
  br label %err, !dbg !2758

if.end16:                                         ; preds = %do.end
  %power_resource = bitcast %union.acpi_object* %acpi_object to %struct.anon.44*, !dbg !2759
  %system_level = getelementptr inbounds %struct.anon.44, %struct.anon.44* %power_resource, i32 0, i32 1, !dbg !2760
  %18 = load i32, i32* %system_level, align 4, !dbg !2760
  %19 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2761
  %system_level17 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %19, i32 0, i32 3, !dbg !2762
  store i32 %18, i32* %system_level17, align 8, !dbg !2763
  %power_resource18 = bitcast %union.acpi_object* %acpi_object to %struct.anon.44*, !dbg !2764
  %resource_order = getelementptr inbounds %struct.anon.44, %struct.anon.44* %power_resource18, i32 0, i32 2, !dbg !2765
  %20 = load i32, i32* %resource_order, align 8, !dbg !2765
  %21 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2766
  %order = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %21, i32 0, i32 4, !dbg !2767
  store i32 %20, i32* %order, align 4, !dbg !2768
  %22 = load i8*, i8** %handle.addr, align 8, !dbg !2769
  %call19 = call i32 @acpi_power_get_state(i8* %22, i32* %state) #7, !dbg !2770
  store i32 %call19, i32* %result, align 4, !dbg !2771
  %23 = load i32, i32* %result, align 4, !dbg !2772
  %tobool20 = icmp ne i32 %23, 0, !dbg !2772
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !2774

if.then21:                                        ; preds = %if.end16
  br label %err, !dbg !2775

if.end22:                                         ; preds = %if.end16
  %24 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2776
  %pnp23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 10, !dbg !2776
  %device_name24 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp23, i32 0, i32 5, !dbg !2776
  %arraydecay25 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name24, i64 0, i64 0, !dbg !2776
  %25 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2777
  %pnp26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 10, !dbg !2777
  %bus_id27 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp26, i32 0, i32 0, !dbg !2777
  %arraydecay28 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id27, i64 0, i64 0, !dbg !2777
  %26 = load i32, i32* %state, align 4, !dbg !2778
  %tobool29 = icmp ne i32 %26, 0, !dbg !2778
  %27 = zext i1 %tobool29 to i64, !dbg !2778
  %cond = select i1 %tobool29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), !dbg !2778
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay25, i8* %arraydecay28, i8* %cond) #8, !dbg !2779
  %28 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2780
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 9, !dbg !2781
  %29 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !2782
  %bf.load = load i32, i32* %29, align 4, !dbg !2783
  %bf.clear = and i32 %bf.load, -17, !dbg !2783
  %bf.set = or i32 %bf.clear, 16, !dbg !2783
  store i32 %bf.set, i32* %29, align 4, !dbg !2783
  %30 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2784
  %call31 = call i32 @acpi_device_add(%struct.acpi_device* %30, void (%struct.device*)* @acpi_release_power_resource) #7, !dbg !2785
  store i32 %call31, i32* %result, align 4, !dbg !2786
  %31 = load i32, i32* %result, align 4, !dbg !2787
  %tobool32 = icmp ne i32 %31, 0, !dbg !2787
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2789

if.then33:                                        ; preds = %if.end22
  br label %err, !dbg !2790

if.end34:                                         ; preds = %if.end22
  %32 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2791
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 21, !dbg !2793
  %call35 = call i32 @device_create_file(%struct.device* %dev, %struct.device_attribute* @dev_attr_resource_in_use) #7, !dbg !2794
  %tobool36 = icmp ne i32 %call35, 0, !dbg !2794
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2795

if.then37:                                        ; preds = %if.end34
  %33 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2796
  %remove = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 26, !dbg !2797
  store void (%struct.acpi_device*)* @acpi_power_sysfs_remove, void (%struct.acpi_device*)** %remove, align 8, !dbg !2798
  br label %if.end38, !dbg !2796

if.end38:                                         ; preds = %if.then37, %if.end34
  %34 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2799
  call void @acpi_power_add_resource_to_list(%struct.acpi_power_resource* %34) #7, !dbg !2800
  %35 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2801
  call void @acpi_device_add_finalize(%struct.acpi_device* %35) #7, !dbg !2802
  store i32 0, i32* %retval, align 4, !dbg !2803
  br label %return, !dbg !2803

err:                                              ; preds = %if.then33, %if.then21, %if.then15
  call void @llvm.dbg.label(metadata !2804), !dbg !2805
  %36 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2806
  %dev39 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 21, !dbg !2807
  call void @acpi_release_power_resource(%struct.device* %dev39) #7, !dbg !2808
  %37 = load i32, i32* %result, align 4, !dbg !2809
  store i32 %37, i32* %retval, align 4, !dbg !2810
  br label %return, !dbg !2810

return:                                           ; preds = %err, %if.end38, %if.then3, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !2811
  ret i32 %38, !dbg !2811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_resources_list_add(i8* %handle, %struct.list_head* %list) #0 !dbg !2812 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %e = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr18 = alloca i8*, align 8
  %tmp23 = alloca %struct.acpi_power_resource_entry*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2817, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !2819, metadata !DIExpression()), !dbg !2820
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !2821
  %call = call %struct.acpi_power_resource* @acpi_power_get_context(i8* %0) #7, !dbg !2822
  store %struct.acpi_power_resource* %call, %struct.acpi_power_resource** %resource, align 8, !dbg !2820
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !2823, metadata !DIExpression()), !dbg !2824
  %1 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2825
  %tobool = icmp ne %struct.acpi_power_resource* %1, null, !dbg !2825
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2827

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2828
  %tobool2 = icmp ne %struct.list_head* %2, null, !dbg !2828
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2829

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2830
  br label %return, !dbg !2830

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i8* @kzalloc(i64 24, i32 3264) #7, !dbg !2831
  %3 = bitcast i8* %call3 to %struct.acpi_power_resource_entry*, !dbg !2831
  store %struct.acpi_power_resource_entry* %3, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2832
  %4 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2833
  %tobool4 = icmp ne %struct.acpi_power_resource_entry* %4, null, !dbg !2833
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2835

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2836
  br label %return, !dbg !2836

if.end6:                                          ; preds = %if.end
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2837
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2838
  %resource7 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %6, i32 0, i32 1, !dbg !2839
  store %struct.acpi_power_resource* %5, %struct.acpi_power_resource** %resource7, align 8, !dbg !2840
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2841
  %call8 = call i32 @list_empty(%struct.list_head* %7) #7, !dbg !2843
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2843
  br i1 %tobool9, label %if.end25, label %if.then10, !dbg !2844

if.then10:                                        ; preds = %if.end6
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %e, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2848, metadata !DIExpression()), !dbg !2851
  %8 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2851
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 0, !dbg !2851
  %9 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2851
  %10 = bitcast %struct.list_head* %9 to i8*, !dbg !2851
  store i8* %10, i8** %__mptr, align 8, !dbg !2851
  br label %do.body, !dbg !2851

do.body:                                          ; preds = %if.then10
  br label %do.end, !dbg !2852

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !2851
  %add.ptr = getelementptr i8, i8* %11, i64 0, !dbg !2851
  %12 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !2851
  store %struct.acpi_power_resource_entry* %12, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2852
  %13 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2851
  store %struct.acpi_power_resource_entry* %13, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2854
  br label %for.cond, !dbg !2854

for.cond:                                         ; preds = %do.end22, %do.end
  %14 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2855
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %14, i32 0, i32 0, !dbg !2855
  %15 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2855
  %cmp = icmp eq %struct.list_head* %node, %15, !dbg !2855
  %lnot = xor i1 %cmp, true, !dbg !2855
  br i1 %lnot, label %for.body, label %for.end, !dbg !2854

for.body:                                         ; preds = %for.cond
  %16 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2857
  %resource11 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %16, i32 0, i32 1, !dbg !2859
  %17 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource11, align 8, !dbg !2859
  %order = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %17, i32 0, i32 4, !dbg !2860
  %18 = load i32, i32* %order, align 4, !dbg !2860
  %19 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2861
  %order12 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %19, i32 0, i32 4, !dbg !2862
  %20 = load i32, i32* %order12, align 4, !dbg !2862
  %cmp13 = icmp ugt i32 %18, %20, !dbg !2863
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !2864

if.then14:                                        ; preds = %for.body
  %21 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2865
  %node15 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %21, i32 0, i32 0, !dbg !2867
  %22 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2868
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %22, i32 0, i32 0, !dbg !2869
  call void @list_add_tail(%struct.list_head* %node15, %struct.list_head* %node16) #7, !dbg !2870
  store i32 0, i32* %retval, align 4, !dbg !2871
  br label %return, !dbg !2871

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !2862

for.inc:                                          ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr18, metadata !2872, metadata !DIExpression()), !dbg !2874
  %23 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2874
  %node19 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %23, i32 0, i32 0, !dbg !2874
  %next20 = getelementptr inbounds %struct.list_head, %struct.list_head* %node19, i32 0, i32 0, !dbg !2874
  %24 = load %struct.list_head*, %struct.list_head** %next20, align 8, !dbg !2874
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !2874
  store i8* %25, i8** %__mptr18, align 8, !dbg !2874
  br label %do.body21, !dbg !2874

do.body21:                                        ; preds = %for.inc
  br label %do.end22, !dbg !2875

do.end22:                                         ; preds = %do.body21
  %26 = load i8*, i8** %__mptr18, align 8, !dbg !2874
  %add.ptr24 = getelementptr i8, i8* %26, i64 0, !dbg !2874
  %27 = bitcast i8* %add.ptr24 to %struct.acpi_power_resource_entry*, !dbg !2874
  store %struct.acpi_power_resource_entry* %27, %struct.acpi_power_resource_entry** %tmp23, align 8, !dbg !2875
  %28 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp23, align 8, !dbg !2874
  store %struct.acpi_power_resource_entry* %28, %struct.acpi_power_resource_entry** %e, align 8, !dbg !2855
  br label %for.cond, !dbg !2855, !llvm.loop !2877

for.end:                                          ; preds = %for.cond
  br label %if.end25, !dbg !2879

if.end25:                                         ; preds = %for.end, %if.end6
  %29 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2880
  %node26 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %29, i32 0, i32 0, !dbg !2881
  %30 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2882
  call void @list_add_tail(%struct.list_head* %node26, %struct.list_head* %30) #7, !dbg !2883
  store i32 0, i32* %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

return:                                           ; preds = %if.end25, %if.then14, %if.then5, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !2885
  ret i32 %31, !dbg !2885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_power_add_dependent(%struct.acpi_device* %adev, %struct.device* %dev) #0 !dbg !2886 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %resources = alloca %struct.list_head*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp11 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp17 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr26 = alloca i8*, align 8
  %tmp31 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !2893, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources, metadata !2895, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2897, metadata !DIExpression()), !dbg !2898
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2899
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 9, !dbg !2901
  %1 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !2902
  %bf.load = load i32, i32* %1, align 4, !dbg !2902
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2902
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2902
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2899
  br i1 %tobool, label %if.end, label %if.then, !dbg !2903

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2905
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 11, !dbg !2906
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !2907
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 0, !dbg !2905
  %resources2 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !2908
  store %struct.list_head* %resources2, %struct.list_head** %resources, align 8, !dbg !2909
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2910, metadata !DIExpression()), !dbg !2913
  %3 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !2913
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !2913
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2913
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2913
  store i8* %5, i8** %__mptr, align 8, !dbg !2913
  br label %do.body, !dbg !2913

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2914

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2913
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !2913
  %7 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !2913
  store %struct.acpi_power_resource_entry* %7, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2914
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !2913
  store %struct.acpi_power_resource_entry* %8, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2916
  br label %for.cond, !dbg !2916

for.cond:                                         ; preds = %do.end10, %do.end
  %9 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2917
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %9, i32 0, i32 0, !dbg !2917
  %10 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !2917
  %cmp = icmp eq %struct.list_head* %node, %10, !dbg !2917
  %lnot = xor i1 %cmp, true, !dbg !2917
  br i1 %lnot, label %for.body, label %for.end, !dbg !2916

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2919
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %11, i32 0, i32 1, !dbg !2921
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !2921
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2922
  %call = call i32 @acpi_power_resource_add_dependent(%struct.acpi_power_resource* %12, %struct.device* %13) #7, !dbg !2923
  store i32 %call, i32* %ret, align 4, !dbg !2924
  %14 = load i32, i32* %ret, align 4, !dbg !2925
  %tobool3 = icmp ne i32 %14, 0, !dbg !2925
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2927

if.then4:                                         ; preds = %for.body
  br label %err, !dbg !2928

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !2929

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !2930, metadata !DIExpression()), !dbg !2932
  %15 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2932
  %node7 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %15, i32 0, i32 0, !dbg !2932
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %node7, i32 0, i32 0, !dbg !2932
  %16 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !2932
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !2932
  store i8* %17, i8** %__mptr6, align 8, !dbg !2932
  br label %do.body9, !dbg !2932

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !2933

do.end10:                                         ; preds = %do.body9
  %18 = load i8*, i8** %__mptr6, align 8, !dbg !2932
  %add.ptr12 = getelementptr i8, i8* %18, i64 0, !dbg !2932
  %19 = bitcast i8* %add.ptr12 to %struct.acpi_power_resource_entry*, !dbg !2932
  store %struct.acpi_power_resource_entry* %19, %struct.acpi_power_resource_entry** %tmp11, align 8, !dbg !2933
  %20 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp11, align 8, !dbg !2932
  store %struct.acpi_power_resource_entry* %20, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2917
  br label %for.cond, !dbg !2917, !llvm.loop !2935

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2937
  br label %return, !dbg !2937

err:                                              ; preds = %if.then4
  call void @llvm.dbg.label(metadata !2938), !dbg !2939
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !2940, metadata !DIExpression()), !dbg !2943
  %21 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !2943
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0, !dbg !2943
  %22 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !2943
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !2943
  store i8* %23, i8** %__mptr13, align 8, !dbg !2943
  br label %do.body15, !dbg !2943

do.body15:                                        ; preds = %err
  br label %do.end16, !dbg !2944

do.end16:                                         ; preds = %do.body15
  %24 = load i8*, i8** %__mptr13, align 8, !dbg !2943
  %add.ptr18 = getelementptr i8, i8* %24, i64 0, !dbg !2943
  %25 = bitcast i8* %add.ptr18 to %struct.acpi_power_resource_entry*, !dbg !2943
  store %struct.acpi_power_resource_entry* %25, %struct.acpi_power_resource_entry** %tmp17, align 8, !dbg !2944
  %26 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp17, align 8, !dbg !2943
  store %struct.acpi_power_resource_entry* %26, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2946
  br label %for.cond19, !dbg !2946

for.cond19:                                       ; preds = %do.end30, %do.end16
  %27 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2947
  %node20 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %27, i32 0, i32 0, !dbg !2947
  %28 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !2947
  %cmp21 = icmp eq %struct.list_head* %node20, %28, !dbg !2947
  %lnot22 = xor i1 %cmp21, true, !dbg !2947
  br i1 %lnot22, label %for.body23, label %for.end33, !dbg !2946

for.body23:                                       ; preds = %for.cond19
  %29 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2949
  %resource24 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %29, i32 0, i32 1, !dbg !2950
  %30 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource24, align 8, !dbg !2950
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2951
  call void @acpi_power_resource_remove_dependent(%struct.acpi_power_resource* %30, %struct.device* %31) #7, !dbg !2952
  br label %for.inc25, !dbg !2952

for.inc25:                                        ; preds = %for.body23
  call void @llvm.dbg.declare(metadata i8** %__mptr26, metadata !2953, metadata !DIExpression()), !dbg !2955
  %32 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2955
  %node27 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %32, i32 0, i32 0, !dbg !2955
  %next28 = getelementptr inbounds %struct.list_head, %struct.list_head* %node27, i32 0, i32 0, !dbg !2955
  %33 = load %struct.list_head*, %struct.list_head** %next28, align 8, !dbg !2955
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !2955
  store i8* %34, i8** %__mptr26, align 8, !dbg !2955
  br label %do.body29, !dbg !2955

do.body29:                                        ; preds = %for.inc25
  br label %do.end30, !dbg !2956

do.end30:                                         ; preds = %do.body29
  %35 = load i8*, i8** %__mptr26, align 8, !dbg !2955
  %add.ptr32 = getelementptr i8, i8* %35, i64 0, !dbg !2955
  %36 = bitcast i8* %add.ptr32 to %struct.acpi_power_resource_entry*, !dbg !2955
  store %struct.acpi_power_resource_entry* %36, %struct.acpi_power_resource_entry** %tmp31, align 8, !dbg !2956
  %37 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp31, align 8, !dbg !2955
  store %struct.acpi_power_resource_entry* %37, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !2947
  br label %for.cond19, !dbg !2947, !llvm.loop !2958

for.end33:                                        ; preds = %for.cond19
  %38 = load i32, i32* %ret, align 4, !dbg !2960
  store i32 %38, i32* %retval, align 4, !dbg !2961
  br label %return, !dbg !2961

return:                                           ; preds = %for.end33, %for.end, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !2962
  ret i32 %39, !dbg !2962
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_resource_add_dependent(%struct.acpi_power_resource* %resource, %struct.device* %dev) #0 !dbg !2963 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dep = alloca %struct.acpi_power_dependent_device*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_dependent_device*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.acpi_power_dependent_device*, align 8
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !2966, metadata !DIExpression()), !dbg !2967
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata %struct.acpi_power_dependent_device** %dep, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i32 0, i32* %ret, align 4, !dbg !2973
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !2974
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 7, !dbg !2975
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !2976
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2977, metadata !DIExpression()), !dbg !2980
  %1 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !2980
  %dependents = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %1, i32 0, i32 8, !dbg !2980
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dependents, i32 0, i32 0, !dbg !2980
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2980
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !2980
  store i8* %3, i8** %__mptr, align 8, !dbg !2980
  br label %do.body, !dbg !2980

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2981

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2980
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !2980
  %5 = bitcast i8* %add.ptr to %struct.acpi_power_dependent_device*, !dbg !2980
  store %struct.acpi_power_dependent_device* %5, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !2981
  %6 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !2980
  store %struct.acpi_power_dependent_device* %6, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !2983
  br label %for.cond, !dbg !2983

for.cond:                                         ; preds = %do.end8, %do.end
  %7 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !2984
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %7, i32 0, i32 1, !dbg !2984
  %8 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !2984
  %dependents1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %8, i32 0, i32 8, !dbg !2984
  %cmp = icmp eq %struct.list_head* %node, %dependents1, !dbg !2984
  %lnot = xor i1 %cmp, true, !dbg !2984
  br i1 %lnot, label %for.body, label %for.end, !dbg !2983

for.body:                                         ; preds = %for.cond
  %9 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !2986
  %dev2 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %9, i32 0, i32 0, !dbg !2989
  %10 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !2989
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2990
  %cmp3 = icmp eq %struct.device* %10, %11, !dbg !2991
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2992

if.then:                                          ; preds = %for.body
  br label %unlock, !dbg !2993

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2994

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !2995, metadata !DIExpression()), !dbg !2997
  %12 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !2997
  %node5 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %12, i32 0, i32 1, !dbg !2997
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %node5, i32 0, i32 0, !dbg !2997
  %13 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !2997
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !2997
  store i8* %14, i8** %__mptr4, align 8, !dbg !2997
  br label %do.body7, !dbg !2997

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !2998

do.end8:                                          ; preds = %do.body7
  %15 = load i8*, i8** %__mptr4, align 8, !dbg !2997
  %add.ptr10 = getelementptr i8, i8* %15, i64 -8, !dbg !2997
  %16 = bitcast i8* %add.ptr10 to %struct.acpi_power_dependent_device*, !dbg !2997
  store %struct.acpi_power_dependent_device* %16, %struct.acpi_power_dependent_device** %tmp9, align 8, !dbg !2998
  %17 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp9, align 8, !dbg !2997
  store %struct.acpi_power_dependent_device* %17, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !2984
  br label %for.cond, !dbg !2984, !llvm.loop !3000

for.end:                                          ; preds = %for.cond
  %call = call i8* @kzalloc(i64 24, i32 3264) #7, !dbg !3002
  %18 = bitcast i8* %call to %struct.acpi_power_dependent_device*, !dbg !3002
  store %struct.acpi_power_dependent_device* %18, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3003
  %19 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3004
  %tobool = icmp ne %struct.acpi_power_dependent_device* %19, null, !dbg !3004
  br i1 %tobool, label %if.end12, label %if.then11, !dbg !3006

if.then11:                                        ; preds = %for.end
  store i32 -12, i32* %ret, align 4, !dbg !3007
  br label %unlock, !dbg !3009

if.end12:                                         ; preds = %for.end
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3010
  %21 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3011
  %dev13 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %21, i32 0, i32 0, !dbg !3012
  store %struct.device* %20, %struct.device** %dev13, align 8, !dbg !3013
  %22 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3014
  %node14 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %22, i32 0, i32 1, !dbg !3015
  %23 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3016
  %dependents15 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %23, i32 0, i32 8, !dbg !3017
  call void @list_add_tail(%struct.list_head* %node14, %struct.list_head* %dependents15) #7, !dbg !3018
  br label %unlock, !dbg !3019

unlock:                                           ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !3020), !dbg !3021
  %24 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3022
  %resource_lock16 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %24, i32 0, i32 7, !dbg !3023
  call void @mutex_unlock(%struct.mutex* %resource_lock16) #7, !dbg !3024
  %25 = load i32, i32* %ret, align 4, !dbg !3025
  ret i32 %25, !dbg !3026
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_resource_remove_dependent(%struct.acpi_power_resource* %resource, %struct.device* %dev) #0 !dbg !3027 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dep = alloca %struct.acpi_power_dependent_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_dependent_device*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.acpi_power_dependent_device*, align 8
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !3030, metadata !DIExpression()), !dbg !3031
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.declare(metadata %struct.acpi_power_dependent_device** %dep, metadata !3034, metadata !DIExpression()), !dbg !3035
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3036
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 7, !dbg !3037
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !3038
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3039, metadata !DIExpression()), !dbg !3042
  %1 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3042
  %dependents = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %1, i32 0, i32 8, !dbg !3042
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dependents, i32 0, i32 0, !dbg !3042
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3042
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !3042
  store i8* %3, i8** %__mptr, align 8, !dbg !3042
  br label %do.body, !dbg !3042

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3043

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3042
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !3042
  %5 = bitcast i8* %add.ptr to %struct.acpi_power_dependent_device*, !dbg !3042
  store %struct.acpi_power_dependent_device* %5, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !3043
  %6 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !3042
  store %struct.acpi_power_dependent_device* %6, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3045
  br label %for.cond, !dbg !3045

for.cond:                                         ; preds = %do.end9, %do.end
  %7 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3046
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %7, i32 0, i32 1, !dbg !3046
  %8 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3046
  %dependents1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %8, i32 0, i32 8, !dbg !3046
  %cmp = icmp eq %struct.list_head* %node, %dependents1, !dbg !3046
  %lnot = xor i1 %cmp, true, !dbg !3046
  br i1 %lnot, label %for.body, label %for.end, !dbg !3045

for.body:                                         ; preds = %for.cond
  %9 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3048
  %dev2 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %9, i32 0, i32 0, !dbg !3051
  %10 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !3051
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3052
  %cmp3 = icmp eq %struct.device* %10, %11, !dbg !3053
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3054

if.then:                                          ; preds = %for.body
  %12 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3055
  %node4 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %12, i32 0, i32 1, !dbg !3057
  call void @list_del(%struct.list_head* %node4) #7, !dbg !3058
  %13 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3059
  %14 = bitcast %struct.acpi_power_dependent_device* %13 to i8*, !dbg !3059
  call void @kfree(i8* %14) #7, !dbg !3060
  br label %for.end, !dbg !3061

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3062

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !3063, metadata !DIExpression()), !dbg !3065
  %15 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3065
  %node6 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %15, i32 0, i32 1, !dbg !3065
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %node6, i32 0, i32 0, !dbg !3065
  %16 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !3065
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !3065
  store i8* %17, i8** %__mptr5, align 8, !dbg !3065
  br label %do.body8, !dbg !3065

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !3066

do.end9:                                          ; preds = %do.body8
  %18 = load i8*, i8** %__mptr5, align 8, !dbg !3065
  %add.ptr11 = getelementptr i8, i8* %18, i64 -8, !dbg !3065
  %19 = bitcast i8* %add.ptr11 to %struct.acpi_power_dependent_device*, !dbg !3065
  store %struct.acpi_power_dependent_device* %19, %struct.acpi_power_dependent_device** %tmp10, align 8, !dbg !3066
  %20 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp10, align 8, !dbg !3065
  store %struct.acpi_power_dependent_device* %20, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !3046
  br label %for.cond, !dbg !3046, !llvm.loop !3068

for.end:                                          ; preds = %if.then, %for.cond
  %21 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3070
  %resource_lock12 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %21, i32 0, i32 7, !dbg !3071
  call void @mutex_unlock(%struct.mutex* %resource_lock12) #7, !dbg !3072
  ret void, !dbg !3073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_device_power_remove_dependent(%struct.acpi_device* %adev, %struct.device* %dev) #0 !dbg !3074 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %resources = alloca %struct.list_head*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3085
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 9, !dbg !3087
  %1 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3088
  %bf.load = load i32, i32* %1, align 4, !dbg !3088
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3088
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3088
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3085
  br i1 %tobool, label %if.end, label %if.then, !dbg !3089

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !3090

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3091
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 11, !dbg !3092
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !3093
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 0, !dbg !3091
  %resources2 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !3094
  store %struct.list_head* %resources2, %struct.list_head** %resources, align 8, !dbg !3095
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3096, metadata !DIExpression()), !dbg !3099
  %3 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !3099
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3099
  %4 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3099
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3099
  store i8* %5, i8** %__mptr, align 8, !dbg !3099
  br label %do.body, !dbg !3099

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3100

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3099
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !3099
  %7 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3099
  store %struct.acpi_power_resource_entry* %7, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3100
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3099
  store %struct.acpi_power_resource_entry* %8, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3102
  br label %for.cond, !dbg !3102

for.cond:                                         ; preds = %do.end7, %do.end
  %9 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3103
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %9, i32 0, i32 0, !dbg !3103
  %10 = load %struct.list_head*, %struct.list_head** %resources, align 8, !dbg !3103
  %cmp = icmp eq %struct.list_head* %node, %10, !dbg !3103
  %lnot = xor i1 %cmp, true, !dbg !3103
  br i1 %lnot, label %for.body, label %for.end, !dbg !3102

for.body:                                         ; preds = %for.cond
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3105
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %11, i32 0, i32 1, !dbg !3106
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3106
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3107
  call void @acpi_power_resource_remove_dependent(%struct.acpi_power_resource* %12, %struct.device* %13) #7, !dbg !3108
  br label %for.inc, !dbg !3108

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !3109, metadata !DIExpression()), !dbg !3111
  %14 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3111
  %node4 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %14, i32 0, i32 0, !dbg !3111
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %node4, i32 0, i32 1, !dbg !3111
  %15 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !3111
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !3111
  store i8* %16, i8** %__mptr3, align 8, !dbg !3111
  br label %do.body6, !dbg !3111

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !3112

do.end7:                                          ; preds = %do.body6
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !3111
  %add.ptr9 = getelementptr i8, i8* %17, i64 0, !dbg !3111
  %18 = bitcast i8* %add.ptr9 to %struct.acpi_power_resource_entry*, !dbg !3111
  store %struct.acpi_power_resource_entry* %18, %struct.acpi_power_resource_entry** %tmp8, align 8, !dbg !3112
  %19 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp8, align 8, !dbg !3111
  store %struct.acpi_power_resource_entry* %19, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3103
  br label %for.cond, !dbg !3103, !llvm.loop !3114

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_power_add_remove_device(%struct.acpi_device* %adev, i1 zeroext %add) #0 !dbg !3117 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %add.addr = alloca i8, align 1
  %state = alloca i32, align 4
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  %frombool = zext i1 %add to i8
  store i8 %frombool, i8* %add.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %add.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3124, metadata !DIExpression()), !dbg !3125
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3126
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 12, !dbg !3128
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !3129
  %1 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !3130
  %bf.load = load i8, i8* %1, align 8, !dbg !3130
  %bf.clear = and i8 %bf.load, 1, !dbg !3130
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !3126
  br i1 %tobool, label %if.then, label %if.end, !dbg !3131

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3132
  %3 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3133
  %wakeup1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 12, !dbg !3134
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup1, i32 0, i32 3, !dbg !3135
  %4 = load i8, i8* %add.addr, align 1, !dbg !3136
  %tobool2 = trunc i8 %4 to i1, !dbg !3136
  call void @acpi_power_expose_hide(%struct.acpi_device* %2, %struct.list_head* %resources, %struct.attribute_group* @wakeup_attr_group, i1 zeroext %tobool2) #7, !dbg !3137
  br label %if.end, !dbg !3137

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3138
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 11, !dbg !3140
  %flags3 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 1, !dbg !3141
  %6 = bitcast %struct.acpi_device_power_flags* %flags3 to i32*, !dbg !3142
  %bf.load4 = load i32, i32* %6, align 4, !dbg !3142
  %bf.lshr = lshr i32 %bf.load4, 1, !dbg !3142
  %bf.clear5 = and i32 %bf.lshr, 1, !dbg !3142
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !3138
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3143

if.then7:                                         ; preds = %if.end
  br label %for.end, !dbg !3144

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %state, align 4, !dbg !3145
  br label %for.cond, !dbg !3147

for.cond:                                         ; preds = %for.inc, %if.end8
  %7 = load i32, i32* %state, align 4, !dbg !3148
  %cmp = icmp sle i32 %7, 3, !dbg !3150
  br i1 %cmp, label %for.body, label %for.end, !dbg !3151

for.body:                                         ; preds = %for.cond
  %8 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3152
  %9 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3153
  %power9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 11, !dbg !3154
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power9, i32 0, i32 2, !dbg !3155
  %10 = load i32, i32* %state, align 4, !dbg !3156
  %idxprom = sext i32 %10 to i64, !dbg !3153
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !3153
  %resources10 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !3157
  %11 = load i32, i32* %state, align 4, !dbg !3158
  %idxprom11 = sext i32 %11 to i64, !dbg !3159
  %arrayidx12 = getelementptr [4 x %struct.attribute_group], [4 x %struct.attribute_group]* @attr_groups, i64 0, i64 %idxprom11, !dbg !3159
  %12 = load i8, i8* %add.addr, align 1, !dbg !3160
  %tobool13 = trunc i8 %12 to i1, !dbg !3160
  call void @acpi_power_expose_hide(%struct.acpi_device* %8, %struct.list_head* %resources10, %struct.attribute_group* %arrayidx12, i1 zeroext %tobool13) #7, !dbg !3161
  br label %for.inc, !dbg !3161

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %state, align 4, !dbg !3162
  %inc = add i32 %13, 1, !dbg !3162
  store i32 %inc, i32* %state, align 4, !dbg !3162
  br label %for.cond, !dbg !3163, !llvm.loop !3164

for.end:                                          ; preds = %if.then7, %for.cond
  ret void, !dbg !3166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_expose_hide(%struct.acpi_device* %adev, %struct.list_head* %resources, %struct.attribute_group* %attr_group, i1 zeroext %expose) #0 !dbg !3167 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %resources.addr = alloca %struct.list_head*, align 8
  %attr_group.addr = alloca %struct.attribute_group*, align 8
  %expose.addr = alloca i8, align 1
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3170, metadata !DIExpression()), !dbg !3171
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !3172, metadata !DIExpression()), !dbg !3173
  store %struct.attribute_group* %attr_group, %struct.attribute_group** %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %attr_group.addr, metadata !3174, metadata !DIExpression()), !dbg !3175
  %frombool = zext i1 %expose to i8
  store i8 %frombool, i8* %expose.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %expose.addr, metadata !3176, metadata !DIExpression()), !dbg !3177
  %0 = load i8, i8* %expose.addr, align 1, !dbg !3178
  %tobool = trunc i8 %0 to i1, !dbg !3178
  br i1 %tobool, label %if.then, label %if.else, !dbg !3180

if.then:                                          ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3181
  %2 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !3182
  %3 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !3183
  call void @acpi_power_expose_list(%struct.acpi_device* %1, %struct.list_head* %2, %struct.attribute_group* %3) #7, !dbg !3184
  br label %if.end, !dbg !3184

if.else:                                          ; preds = %entry
  %4 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3185
  %5 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !3186
  %6 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !3187
  call void @acpi_power_hide_list(%struct.acpi_device* %4, %struct.list_head* %5, %struct.attribute_group* %6) #7, !dbg !3188
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_power_wakeup_list_init(%struct.list_head* %list, i32* %system_level_p) #0 !dbg !3190 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.list_head*, align 8
  %system_level_p.addr = alloca i32*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %system_level = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %handle = alloca i8*, align 8
  %result = alloca i32, align 4
  %state = alloca i32, align 4
  %__mptr14 = alloca i8*, align 8
  %tmp19 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3193, metadata !DIExpression()), !dbg !3194
  store i32* %system_level_p, i32** %system_level_p.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %system_level_p.addr, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata i32* %system_level, metadata !3199, metadata !DIExpression()), !dbg !3200
  store i32 5, i32* %system_level, align 4, !dbg !3200
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3201, metadata !DIExpression()), !dbg !3204
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3204
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3204
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3204
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3204
  store i8* %2, i8** %__mptr, align 8, !dbg !3204
  br label %do.body, !dbg !3204

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3205

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3204
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3204
  %4 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3204
  store %struct.acpi_power_resource_entry* %4, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3205
  %5 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3204
  store %struct.acpi_power_resource_entry* %5, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3207
  br label %for.cond, !dbg !3207

for.cond:                                         ; preds = %do.end18, %do.end
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3208
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %6, i32 0, i32 0, !dbg !3208
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3208
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !3208
  %lnot = xor i1 %cmp, true, !dbg !3208
  br i1 %lnot, label %for.body, label %for.end, !dbg !3207

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !3210, metadata !DIExpression()), !dbg !3212
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3213
  %resource2 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %8, i32 0, i32 1, !dbg !3214
  %9 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource2, align 8, !dbg !3214
  store %struct.acpi_power_resource* %9, %struct.acpi_power_resource** %resource, align 8, !dbg !3212
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3215, metadata !DIExpression()), !dbg !3216
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3217
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 0, !dbg !3218
  %handle3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !3219
  %11 = load i8*, i8** %handle3, align 8, !dbg !3219
  store i8* %11, i8** %handle, align 8, !dbg !3216
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.declare(metadata i32* %state, metadata !3222, metadata !DIExpression()), !dbg !3223
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3224
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 7, !dbg !3225
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !3226
  %13 = load i8*, i8** %handle, align 8, !dbg !3227
  %call = call i32 @acpi_power_get_state(i8* %13, i32* %state) #7, !dbg !3228
  store i32 %call, i32* %result, align 4, !dbg !3229
  %14 = load i32, i32* %result, align 4, !dbg !3230
  %tobool = icmp ne i32 %14, 0, !dbg !3230
  br i1 %tobool, label %if.then, label %if.end, !dbg !3232

if.then:                                          ; preds = %for.body
  %15 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3233
  %resource_lock4 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %15, i32 0, i32 7, !dbg !3235
  call void @mutex_unlock(%struct.mutex* %resource_lock4) #7, !dbg !3236
  %16 = load i32, i32* %result, align 4, !dbg !3237
  store i32 %16, i32* %retval, align 4, !dbg !3238
  br label %return, !dbg !3238

if.end:                                           ; preds = %for.body
  %17 = load i32, i32* %state, align 4, !dbg !3239
  %cmp5 = icmp eq i32 %17, 1, !dbg !3241
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3242

if.then6:                                         ; preds = %if.end
  %18 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3243
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %18, i32 0, i32 5, !dbg !3245
  %19 = load i32, i32* %ref_count, align 8, !dbg !3246
  %inc = add i32 %19, 1, !dbg !3246
  store i32 %inc, i32* %ref_count, align 8, !dbg !3246
  %20 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3247
  %wakeup_enabled = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %20, i32 0, i32 6, !dbg !3248
  store i8 1, i8* %wakeup_enabled, align 4, !dbg !3249
  br label %if.end7, !dbg !3250

if.end7:                                          ; preds = %if.then6, %if.end
  %21 = load i32, i32* %system_level, align 4, !dbg !3251
  %22 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3253
  %system_level8 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %22, i32 0, i32 3, !dbg !3254
  %23 = load i32, i32* %system_level8, align 8, !dbg !3254
  %cmp9 = icmp ugt i32 %21, %23, !dbg !3255
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !3256

if.then10:                                        ; preds = %if.end7
  %24 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3257
  %system_level11 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %24, i32 0, i32 3, !dbg !3258
  %25 = load i32, i32* %system_level11, align 8, !dbg !3258
  store i32 %25, i32* %system_level, align 4, !dbg !3259
  br label %if.end12, !dbg !3260

if.end12:                                         ; preds = %if.then10, %if.end7
  %26 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3261
  %resource_lock13 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %26, i32 0, i32 7, !dbg !3262
  call void @mutex_unlock(%struct.mutex* %resource_lock13) #7, !dbg !3263
  br label %for.inc, !dbg !3264

for.inc:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !3265, metadata !DIExpression()), !dbg !3267
  %27 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3267
  %node15 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %27, i32 0, i32 0, !dbg !3267
  %next16 = getelementptr inbounds %struct.list_head, %struct.list_head* %node15, i32 0, i32 0, !dbg !3267
  %28 = load %struct.list_head*, %struct.list_head** %next16, align 8, !dbg !3267
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !3267
  store i8* %29, i8** %__mptr14, align 8, !dbg !3267
  br label %do.body17, !dbg !3267

do.body17:                                        ; preds = %for.inc
  br label %do.end18, !dbg !3268

do.end18:                                         ; preds = %do.body17
  %30 = load i8*, i8** %__mptr14, align 8, !dbg !3267
  %add.ptr20 = getelementptr i8, i8* %30, i64 0, !dbg !3267
  %31 = bitcast i8* %add.ptr20 to %struct.acpi_power_resource_entry*, !dbg !3267
  store %struct.acpi_power_resource_entry* %31, %struct.acpi_power_resource_entry** %tmp19, align 8, !dbg !3268
  %32 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp19, align 8, !dbg !3267
  store %struct.acpi_power_resource_entry* %32, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3208
  br label %for.cond, !dbg !3208, !llvm.loop !3270

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %system_level, align 4, !dbg !3272
  %34 = load i32*, i32** %system_level_p.addr, align 8, !dbg !3273
  store i32 %33, i32* %34, align 4, !dbg !3274
  store i32 0, i32* %retval, align 4, !dbg !3275
  br label %return, !dbg !3275

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !3276
  ret i32 %35, !dbg !3276
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_get_state(i8* %handle, i32* %state) #0 !dbg !3277 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %state.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %sta = alloca i64, align 8
  %node_name = alloca [5 x i8], align 1
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3280, metadata !DIExpression()), !dbg !3281
  store i32* %state, i32** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state.addr, metadata !3282, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i32 0, i32* %status, align 4, !dbg !3285
  call void @llvm.dbg.declare(metadata i64* %sta, metadata !3286, metadata !DIExpression()), !dbg !3287
  store i64 0, i64* %sta, align 8, !dbg !3287
  call void @llvm.dbg.declare(metadata [5 x i8]* %node_name, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !3291, metadata !DIExpression()), !dbg !3292
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 0, !dbg !3293
  store i64 5, i64* %length, align 8, !dbg !3293
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !3293
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %node_name, i64 0, i64 0, !dbg !3294
  store i8* %arraydecay, i8** %pointer, align 8, !dbg !3293
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !3295
  %tobool = icmp ne i8* %0, null, !dbg !3295
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3297

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %state.addr, align 8, !dbg !3298
  %tobool1 = icmp ne i32* %1, null, !dbg !3298
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3299

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3300
  br label %return, !dbg !3300

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %handle.addr, align 8, !dbg !3301
  %call = call i32 @acpi_evaluate_integer(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %struct.acpi_object_list* null, i64* %sta) #7, !dbg !3302
  store i32 %call, i32* %status, align 4, !dbg !3303
  %3 = load i32, i32* %status, align 4, !dbg !3304
  %tobool2 = icmp ne i32 %3, 0, !dbg !3304
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3306

if.then3:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3307
  br label %return, !dbg !3307

if.end4:                                          ; preds = %if.end
  %4 = load i64, i64* %sta, align 8, !dbg !3308
  %and = and i64 %4, 1, !dbg !3309
  %tobool5 = icmp ne i64 %and, 0, !dbg !3310
  %5 = zext i1 %tobool5 to i64, !dbg !3310
  %cond = select i1 %tobool5, i32 1, i32 0, !dbg !3310
  %6 = load i32*, i32** %state.addr, align 8, !dbg !3311
  store i32 %cond, i32* %6, align 4, !dbg !3312
  %7 = load i8*, i8** %handle.addr, align 8, !dbg !3313
  %call6 = call i32 @acpi_get_name(i8* %7, i32 1, %struct.acpi_buffer* %buffer) #7, !dbg !3314
  store i32 0, i32* %retval, align 4, !dbg !3315
  br label %return, !dbg !3315

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3316
  ret i32 %8, !dbg !3316
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_device_sleep_wake(%struct.acpi_device* %dev, i32 %enable, i32 %sleep_state, i32 %dev_state) #0 !dbg !3317 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.acpi_device*, align 8
  %enable.addr = alloca i32, align 4
  %sleep_state.addr = alloca i32, align 4
  %dev_state.addr = alloca i32, align 4
  %in_arg = alloca [3 x %union.acpi_object], align 16
  %arg_list = alloca %struct.acpi_object_list, align 8
  %status = alloca i32, align 4
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !3322, metadata !DIExpression()), !dbg !3323
  store i32 %sleep_state, i32* %sleep_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sleep_state.addr, metadata !3324, metadata !DIExpression()), !dbg !3325
  store i32 %dev_state, i32* %dev_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dev_state.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.declare(metadata [3 x %union.acpi_object]* %in_arg, metadata !3328, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.declare(metadata %struct.acpi_object_list* %arg_list, metadata !3331, metadata !DIExpression()), !dbg !3336
  %count = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 0, !dbg !3337
  store i32 3, i32* %count, align 8, !dbg !3337
  %pointer = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %arg_list, i32 0, i32 1, !dbg !3337
  %arraydecay = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 0, !dbg !3338
  store %union.acpi_object* %arraydecay, %union.acpi_object** %pointer, align 8, !dbg !3337
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3339, metadata !DIExpression()), !dbg !3340
  store i32 0, i32* %status, align 4, !dbg !3340
  %arrayidx = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 0, !dbg !3341
  %type = bitcast %union.acpi_object* %arrayidx to i32*, !dbg !3342
  store i32 1, i32* %type, align 16, !dbg !3343
  %0 = load i32, i32* %enable.addr, align 4, !dbg !3344
  %conv = sext i32 %0 to i64, !dbg !3344
  %arrayidx1 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 0, !dbg !3345
  %integer = bitcast %union.acpi_object* %arrayidx1 to %struct.anon.38*, !dbg !3346
  %value = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer, i32 0, i32 1, !dbg !3347
  store i64 %conv, i64* %value, align 8, !dbg !3348
  %arrayidx2 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 1, !dbg !3349
  %type3 = bitcast %union.acpi_object* %arrayidx2 to i32*, !dbg !3350
  store i32 1, i32* %type3, align 8, !dbg !3351
  %1 = load i32, i32* %sleep_state.addr, align 4, !dbg !3352
  %conv4 = sext i32 %1 to i64, !dbg !3352
  %arrayidx5 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 1, !dbg !3353
  %integer6 = bitcast %union.acpi_object* %arrayidx5 to %struct.anon.38*, !dbg !3354
  %value7 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer6, i32 0, i32 1, !dbg !3355
  store i64 %conv4, i64* %value7, align 8, !dbg !3356
  %arrayidx8 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 2, !dbg !3357
  %type9 = bitcast %union.acpi_object* %arrayidx8 to i32*, !dbg !3358
  store i32 1, i32* %type9, align 16, !dbg !3359
  %2 = load i32, i32* %dev_state.addr, align 4, !dbg !3360
  %conv10 = sext i32 %2 to i64, !dbg !3360
  %arrayidx11 = getelementptr [3 x %union.acpi_object], [3 x %union.acpi_object]* %in_arg, i64 0, i64 2, !dbg !3361
  %integer12 = bitcast %union.acpi_object* %arrayidx11 to %struct.anon.38*, !dbg !3362
  %value13 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %integer12, i32 0, i32 1, !dbg !3363
  store i64 %conv10, i64* %value13, align 8, !dbg !3364
  %3 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3365
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 1, !dbg !3366
  %4 = load i8*, i8** %handle, align 8, !dbg !3366
  %call = call i32 @acpi_evaluate_object(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %arg_list, %struct.acpi_buffer* null) #7, !dbg !3367
  store i32 %call, i32* %status, align 4, !dbg !3368
  %5 = load i32, i32* %status, align 4, !dbg !3369
  %tobool = icmp ne i32 %5, 0, !dbg !3369
  br i1 %tobool, label %if.else, label %if.then, !dbg !3371

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3372
  br label %return, !dbg !3372

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !3374
  %cmp = icmp ne i32 %6, 5, !dbg !3376
  br i1 %cmp, label %if.then15, label %if.end, !dbg !3377

if.then15:                                        ; preds = %if.else
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !3378
  %7 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3380
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 12, !dbg !3381
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !3382
  %8 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !3383
  %bf.load = load i8, i8* %8, align 8, !dbg !3384
  %bf.clear = and i8 %bf.load, -2, !dbg !3384
  store i8 %bf.clear, i8* %8, align 8, !dbg !3384
  store i32 -19, i32* %retval, align 4, !dbg !3385
  br label %return, !dbg !3385

if.end:                                           ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end
  %9 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3386
  %handle18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %9, i32 0, i32 1, !dbg !3387
  %10 = load i8*, i8** %handle18, align 8, !dbg !3387
  %11 = load i32, i32* %enable.addr, align 4, !dbg !3388
  %conv19 = sext i32 %11 to i64, !dbg !3388
  %call20 = call i32 @acpi_execute_simple_method(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %conv19) #7, !dbg !3389
  store i32 %call20, i32* %status, align 4, !dbg !3390
  %12 = load i32, i32* %status, align 4, !dbg !3391
  %tobool21 = icmp ne i32 %12, 0, !dbg !3391
  br i1 %tobool21, label %land.lhs.true, label %if.end30, !dbg !3393

land.lhs.true:                                    ; preds = %if.end17
  %13 = load i32, i32* %status, align 4, !dbg !3394
  %cmp22 = icmp ne i32 %13, 5, !dbg !3395
  br i1 %cmp22, label %if.then24, label %if.end30, !dbg !3396

if.then24:                                        ; preds = %land.lhs.true
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3397
  %14 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3399
  %wakeup26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 12, !dbg !3400
  %flags27 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup26, i32 0, i32 4, !dbg !3401
  %15 = bitcast %struct.acpi_device_wakeup_flags* %flags27 to i8*, !dbg !3402
  %bf.load28 = load i8, i8* %15, align 8, !dbg !3403
  %bf.clear29 = and i8 %bf.load28, -2, !dbg !3403
  store i8 %bf.clear29, i8* %15, align 8, !dbg !3403
  store i32 -19, i32* %retval, align 4, !dbg !3404
  br label %return, !dbg !3404

if.end30:                                         ; preds = %land.lhs.true, %if.end17
  store i32 0, i32* %retval, align 4, !dbg !3405
  br label %return, !dbg !3405

return:                                           ; preds = %if.end30, %if.then24, %if.then15, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3406
  ret i32 %16, !dbg !3406
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_execute_simple_method(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_enable_wakeup_device_power(%struct.acpi_device* %dev, i32 %sleep_state) #0 !dbg !3407 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.acpi_device*, align 8
  %sleep_state.addr = alloca i32, align 4
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp32 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  store i32 %sleep_state, i32* %sleep_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sleep_state.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3416, metadata !DIExpression()), !dbg !3417
  store i32 0, i32* %err, align 4, !dbg !3417
  %0 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3418
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3418
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3420

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3421
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 12, !dbg !3422
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !3423
  %2 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !3424
  %bf.load = load i8, i8* %2, align 8, !dbg !3424
  %bf.clear = and i8 %bf.load, 1, !dbg !3424
  %tobool2 = icmp ne i8 %bf.clear, 0, !dbg !3421
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3425

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3426
  br label %return, !dbg !3426

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @acpi_device_lock) #7, !dbg !3427
  %3 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3428
  %wakeup3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 12, !dbg !3430
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup3, i32 0, i32 7, !dbg !3431
  %4 = load i32, i32* %prepare_count, align 8, !dbg !3432
  %inc = add i32 %4, 1, !dbg !3432
  store i32 %inc, i32* %prepare_count, align 8, !dbg !3432
  %tobool4 = icmp ne i32 %4, 0, !dbg !3432
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3433

if.then5:                                         ; preds = %if.end
  br label %out, !dbg !3434

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3435, metadata !DIExpression()), !dbg !3438
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3438
  %wakeup7 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 12, !dbg !3438
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup7, i32 0, i32 3, !dbg !3438
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !3438
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3438
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !3438
  store i8* %7, i8** %__mptr, align 8, !dbg !3438
  br label %do.body, !dbg !3438

do.body:                                          ; preds = %if.end6
  br label %do.end, !dbg !3439

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !3438
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !3438
  %9 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3438
  store %struct.acpi_power_resource_entry* %9, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3439
  %10 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3438
  store %struct.acpi_power_resource_entry* %10, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3441
  br label %for.cond, !dbg !3441

for.cond:                                         ; preds = %do.end31, %do.end
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3442
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %11, i32 0, i32 0, !dbg !3442
  %12 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3442
  %wakeup8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 12, !dbg !3442
  %resources9 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup8, i32 0, i32 3, !dbg !3442
  %cmp = icmp eq %struct.list_head* %node, %resources9, !dbg !3442
  %lnot = xor i1 %cmp, true, !dbg !3442
  br i1 %lnot, label %for.body, label %for.end, !dbg !3441

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !3444, metadata !DIExpression()), !dbg !3446
  %13 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3447
  %resource10 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %13, i32 0, i32 1, !dbg !3448
  %14 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource10, align 8, !dbg !3448
  store %struct.acpi_power_resource* %14, %struct.acpi_power_resource** %resource, align 8, !dbg !3446
  %15 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3449
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %15, i32 0, i32 7, !dbg !3450
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !3451
  %16 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3452
  %wakeup_enabled = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %16, i32 0, i32 6, !dbg !3454
  %17 = load i8, i8* %wakeup_enabled, align 4, !dbg !3454
  %tobool11 = trunc i8 %17 to i1, !dbg !3454
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !3455

if.then12:                                        ; preds = %for.body
  %18 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3456
  %call = call i32 @acpi_power_on_unlocked(%struct.acpi_power_resource* %18) #7, !dbg !3458
  store i32 %call, i32* %err, align 4, !dbg !3459
  %19 = load i32, i32* %err, align 4, !dbg !3460
  %tobool13 = icmp ne i32 %19, 0, !dbg !3460
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !3462

if.then14:                                        ; preds = %if.then12
  %20 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3463
  %wakeup_enabled15 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %20, i32 0, i32 6, !dbg !3464
  store i8 1, i8* %wakeup_enabled15, align 4, !dbg !3465
  br label %if.end16, !dbg !3463

if.end16:                                         ; preds = %if.then14, %if.then12
  br label %if.end17, !dbg !3466

if.end17:                                         ; preds = %if.end16, %for.body
  %21 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3467
  %resource_lock18 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %21, i32 0, i32 7, !dbg !3468
  call void @mutex_unlock(%struct.mutex* %resource_lock18) #7, !dbg !3469
  %22 = load i32, i32* %err, align 4, !dbg !3470
  %tobool19 = icmp ne i32 %22, 0, !dbg !3470
  br i1 %tobool19, label %if.then20, label %if.end26, !dbg !3472

if.then20:                                        ; preds = %if.end17
  %23 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3473
  %dev21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 21, !dbg !3473
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !3473
  %24 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3475
  %wakeup22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 12, !dbg !3476
  %flags23 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup22, i32 0, i32 4, !dbg !3477
  %25 = bitcast %struct.acpi_device_wakeup_flags* %flags23 to i8*, !dbg !3478
  %bf.load24 = load i8, i8* %25, align 8, !dbg !3479
  %bf.clear25 = and i8 %bf.load24, -2, !dbg !3479
  store i8 %bf.clear25, i8* %25, align 8, !dbg !3479
  br label %out, !dbg !3480

if.end26:                                         ; preds = %if.end17
  br label %for.inc, !dbg !3481

for.inc:                                          ; preds = %if.end26
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !3482, metadata !DIExpression()), !dbg !3484
  %26 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3484
  %node28 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %26, i32 0, i32 0, !dbg !3484
  %next29 = getelementptr inbounds %struct.list_head, %struct.list_head* %node28, i32 0, i32 0, !dbg !3484
  %27 = load %struct.list_head*, %struct.list_head** %next29, align 8, !dbg !3484
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !3484
  store i8* %28, i8** %__mptr27, align 8, !dbg !3484
  br label %do.body30, !dbg !3484

do.body30:                                        ; preds = %for.inc
  br label %do.end31, !dbg !3485

do.end31:                                         ; preds = %do.body30
  %29 = load i8*, i8** %__mptr27, align 8, !dbg !3484
  %add.ptr33 = getelementptr i8, i8* %29, i64 0, !dbg !3484
  %30 = bitcast i8* %add.ptr33 to %struct.acpi_power_resource_entry*, !dbg !3484
  store %struct.acpi_power_resource_entry* %30, %struct.acpi_power_resource_entry** %tmp32, align 8, !dbg !3485
  %31 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp32, align 8, !dbg !3484
  store %struct.acpi_power_resource_entry* %31, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3442
  br label %for.cond, !dbg !3442, !llvm.loop !3487

for.end:                                          ; preds = %for.cond
  %32 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3489
  %33 = load i32, i32* %sleep_state.addr, align 4, !dbg !3490
  %call34 = call i32 @acpi_device_sleep_wake(%struct.acpi_device* %32, i32 1, i32 %33, i32 3) #7, !dbg !3491
  store i32 %call34, i32* %err, align 4, !dbg !3492
  %34 = load i32, i32* %err, align 4, !dbg !3493
  %tobool35 = icmp ne i32 %34, 0, !dbg !3493
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !3495

if.then36:                                        ; preds = %for.end
  %35 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3496
  %wakeup37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 12, !dbg !3497
  %prepare_count38 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup37, i32 0, i32 7, !dbg !3498
  store i32 0, i32* %prepare_count38, align 8, !dbg !3499
  br label %if.end39, !dbg !3496

if.end39:                                         ; preds = %if.then36, %for.end
  br label %out, !dbg !3493

out:                                              ; preds = %if.end39, %if.then20, %if.then5
  call void @llvm.dbg.label(metadata !3500), !dbg !3501
  call void @mutex_unlock(%struct.mutex* @acpi_device_lock) #7, !dbg !3502
  %36 = load i32, i32* %err, align 4, !dbg !3503
  store i32 %36, i32* %retval, align 4, !dbg !3504
  br label %return, !dbg !3504

return:                                           ; preds = %out, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !3505
  ret i32 %37, !dbg !3505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_on_unlocked(%struct.acpi_power_resource* %resource) #0 !dbg !3506 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !3509, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3511, metadata !DIExpression()), !dbg !3512
  store i32 0, i32* %result, align 4, !dbg !3512
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3513
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 5, !dbg !3515
  %1 = load i32, i32* %ref_count, align 8, !dbg !3516
  %inc = add i32 %1, 1, !dbg !3516
  store i32 %inc, i32* %ref_count, align 8, !dbg !3516
  %tobool = icmp ne i32 %1, 0, !dbg !3516
  br i1 %tobool, label %if.then, label %if.else, !dbg !3517

if.then:                                          ; preds = %entry
  br label %if.end4, !dbg !3518

if.else:                                          ; preds = %entry
  %2 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3520
  %call = call i32 @__acpi_power_on(%struct.acpi_power_resource* %2) #7, !dbg !3522
  store i32 %call, i32* %result, align 4, !dbg !3523
  %3 = load i32, i32* %result, align 4, !dbg !3524
  %tobool1 = icmp ne i32 %3, 0, !dbg !3524
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !3526

if.then2:                                         ; preds = %if.else
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3527
  %ref_count3 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %4, i32 0, i32 5, !dbg !3528
  %5 = load i32, i32* %ref_count3, align 8, !dbg !3529
  %dec = add i32 %5, -1, !dbg !3529
  store i32 %dec, i32* %ref_count3, align 8, !dbg !3529
  br label %if.end, !dbg !3527

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %6 = load i32, i32* %result, align 4, !dbg !3530
  ret i32 %6, !dbg !3531
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_disable_wakeup_device_power(%struct.acpi_device* %dev) #0 !dbg !3532 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.acpi_device*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr38 = alloca i8*, align 8
  %tmp43 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %dev, %struct.acpi_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %dev.addr, metadata !3533, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3535, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3537, metadata !DIExpression()), !dbg !3538
  store i32 0, i32* %err, align 4, !dbg !3538
  %0 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3539
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3539
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3541

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3542
  %wakeup = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 12, !dbg !3543
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup, i32 0, i32 4, !dbg !3544
  %2 = bitcast %struct.acpi_device_wakeup_flags* %flags to i8*, !dbg !3545
  %bf.load = load i8, i8* %2, align 8, !dbg !3545
  %bf.clear = and i8 %bf.load, 1, !dbg !3545
  %tobool2 = icmp ne i8 %bf.clear, 0, !dbg !3542
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3546

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3547
  br label %return, !dbg !3547

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @acpi_device_lock) #7, !dbg !3548
  %3 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3549
  %wakeup3 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 12, !dbg !3551
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup3, i32 0, i32 7, !dbg !3552
  %4 = load i32, i32* %prepare_count, align 8, !dbg !3553
  %dec = add i32 %4, -1, !dbg !3553
  store i32 %dec, i32* %prepare_count, align 8, !dbg !3553
  %cmp = icmp sgt i32 %dec, 0, !dbg !3554
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3555

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !3556

if.end5:                                          ; preds = %if.end
  %5 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3557
  %wakeup6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %5, i32 0, i32 12, !dbg !3559
  %prepare_count7 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup6, i32 0, i32 7, !dbg !3560
  %6 = load i32, i32* %prepare_count7, align 8, !dbg !3560
  %cmp8 = icmp slt i32 %6, 0, !dbg !3561
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !3562

if.then9:                                         ; preds = %if.end5
  %7 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3563
  %wakeup10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 12, !dbg !3564
  %prepare_count11 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup10, i32 0, i32 7, !dbg !3565
  store i32 0, i32* %prepare_count11, align 8, !dbg !3566
  br label %if.end12, !dbg !3563

if.end12:                                         ; preds = %if.then9, %if.end5
  %8 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3567
  %call = call i32 @acpi_device_sleep_wake(%struct.acpi_device* %8, i32 0, i32 0, i32 0) #7, !dbg !3568
  store i32 %call, i32* %err, align 4, !dbg !3569
  %9 = load i32, i32* %err, align 4, !dbg !3570
  %tobool13 = icmp ne i32 %9, 0, !dbg !3570
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3572

if.then14:                                        ; preds = %if.end12
  br label %out, !dbg !3573

if.end15:                                         ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3574, metadata !DIExpression()), !dbg !3577
  %10 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3577
  %wakeup16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 12, !dbg !3577
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup16, i32 0, i32 3, !dbg !3577
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !3577
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3577
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !3577
  store i8* %12, i8** %__mptr, align 8, !dbg !3577
  br label %do.body, !dbg !3577

do.body:                                          ; preds = %if.end15
  br label %do.end, !dbg !3578

do.end:                                           ; preds = %do.body
  %13 = load i8*, i8** %__mptr, align 8, !dbg !3577
  %add.ptr = getelementptr i8, i8* %13, i64 0, !dbg !3577
  %14 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3577
  store %struct.acpi_power_resource_entry* %14, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3578
  %15 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3577
  store %struct.acpi_power_resource_entry* %15, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3580
  br label %for.cond, !dbg !3580

for.cond:                                         ; preds = %do.end42, %do.end
  %16 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3581
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %16, i32 0, i32 0, !dbg !3581
  %17 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3581
  %wakeup17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 12, !dbg !3581
  %resources18 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup17, i32 0, i32 3, !dbg !3581
  %cmp19 = icmp eq %struct.list_head* %node, %resources18, !dbg !3581
  %lnot = xor i1 %cmp19, true, !dbg !3581
  br i1 %lnot, label %for.body, label %for.end, !dbg !3580

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !3583, metadata !DIExpression()), !dbg !3585
  %18 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3586
  %resource20 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %18, i32 0, i32 1, !dbg !3587
  %19 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource20, align 8, !dbg !3587
  store %struct.acpi_power_resource* %19, %struct.acpi_power_resource** %resource, align 8, !dbg !3585
  %20 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3588
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %20, i32 0, i32 7, !dbg !3589
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !3590
  %21 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3591
  %wakeup_enabled = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %21, i32 0, i32 6, !dbg !3593
  %22 = load i8, i8* %wakeup_enabled, align 4, !dbg !3593
  %tobool21 = trunc i8 %22 to i1, !dbg !3593
  br i1 %tobool21, label %if.then22, label %if.end28, !dbg !3594

if.then22:                                        ; preds = %for.body
  %23 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3595
  %call23 = call i32 @acpi_power_off_unlocked(%struct.acpi_power_resource* %23) #7, !dbg !3597
  store i32 %call23, i32* %err, align 4, !dbg !3598
  %24 = load i32, i32* %err, align 4, !dbg !3599
  %tobool24 = icmp ne i32 %24, 0, !dbg !3599
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !3601

if.then25:                                        ; preds = %if.then22
  %25 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3602
  %wakeup_enabled26 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %25, i32 0, i32 6, !dbg !3603
  store i8 0, i8* %wakeup_enabled26, align 4, !dbg !3604
  br label %if.end27, !dbg !3602

if.end27:                                         ; preds = %if.then25, %if.then22
  br label %if.end28, !dbg !3605

if.end28:                                         ; preds = %if.end27, %for.body
  %26 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3606
  %resource_lock29 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %26, i32 0, i32 7, !dbg !3607
  call void @mutex_unlock(%struct.mutex* %resource_lock29) #7, !dbg !3608
  %27 = load i32, i32* %err, align 4, !dbg !3609
  %tobool30 = icmp ne i32 %27, 0, !dbg !3609
  br i1 %tobool30, label %if.then31, label %if.end37, !dbg !3611

if.then31:                                        ; preds = %if.end28
  %28 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3612
  %dev32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 21, !dbg !3612
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !3612
  %29 = load %struct.acpi_device*, %struct.acpi_device** %dev.addr, align 8, !dbg !3614
  %wakeup33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %29, i32 0, i32 12, !dbg !3615
  %flags34 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %wakeup33, i32 0, i32 4, !dbg !3616
  %30 = bitcast %struct.acpi_device_wakeup_flags* %flags34 to i8*, !dbg !3617
  %bf.load35 = load i8, i8* %30, align 8, !dbg !3618
  %bf.clear36 = and i8 %bf.load35, -2, !dbg !3618
  store i8 %bf.clear36, i8* %30, align 8, !dbg !3618
  br label %for.end, !dbg !3619

if.end37:                                         ; preds = %if.end28
  br label %for.inc, !dbg !3620

for.inc:                                          ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i8** %__mptr38, metadata !3621, metadata !DIExpression()), !dbg !3623
  %31 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3623
  %node39 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %31, i32 0, i32 0, !dbg !3623
  %next40 = getelementptr inbounds %struct.list_head, %struct.list_head* %node39, i32 0, i32 0, !dbg !3623
  %32 = load %struct.list_head*, %struct.list_head** %next40, align 8, !dbg !3623
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !3623
  store i8* %33, i8** %__mptr38, align 8, !dbg !3623
  br label %do.body41, !dbg !3623

do.body41:                                        ; preds = %for.inc
  br label %do.end42, !dbg !3624

do.end42:                                         ; preds = %do.body41
  %34 = load i8*, i8** %__mptr38, align 8, !dbg !3623
  %add.ptr44 = getelementptr i8, i8* %34, i64 0, !dbg !3623
  %35 = bitcast i8* %add.ptr44 to %struct.acpi_power_resource_entry*, !dbg !3623
  store %struct.acpi_power_resource_entry* %35, %struct.acpi_power_resource_entry** %tmp43, align 8, !dbg !3624
  %36 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp43, align 8, !dbg !3623
  store %struct.acpi_power_resource_entry* %36, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3581
  br label %for.cond, !dbg !3581, !llvm.loop !3626

for.end:                                          ; preds = %if.then31, %for.cond
  br label %out, !dbg !3627

out:                                              ; preds = %for.end, %if.then14, %if.then4
  call void @llvm.dbg.label(metadata !3628), !dbg !3629
  call void @mutex_unlock(%struct.mutex* @acpi_device_lock) #7, !dbg !3630
  %37 = load i32, i32* %err, align 4, !dbg !3631
  store i32 %37, i32* %retval, align 4, !dbg !3632
  br label %return, !dbg !3632

return:                                           ; preds = %out, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !3633
  ret i32 %38, !dbg !3633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_off_unlocked(%struct.acpi_power_resource* %resource) #0 !dbg !3634 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3637, metadata !DIExpression()), !dbg !3638
  store i32 0, i32* %result, align 4, !dbg !3638
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3639
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 5, !dbg !3641
  %1 = load i32, i32* %ref_count, align 8, !dbg !3641
  %tobool = icmp ne i32 %1, 0, !dbg !3639
  br i1 %tobool, label %if.end, label %if.then, !dbg !3642

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3643
  br label %return, !dbg !3643

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3645
  %ref_count1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %2, i32 0, i32 5, !dbg !3647
  %3 = load i32, i32* %ref_count1, align 8, !dbg !3648
  %dec = add i32 %3, -1, !dbg !3648
  store i32 %dec, i32* %ref_count1, align 8, !dbg !3648
  %tobool2 = icmp ne i32 %dec, 0, !dbg !3648
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3649

if.then3:                                         ; preds = %if.end
  br label %if.end8, !dbg !3650

if.else:                                          ; preds = %if.end
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3652
  %call = call i32 @__acpi_power_off(%struct.acpi_power_resource* %4) #7, !dbg !3654
  store i32 %call, i32* %result, align 4, !dbg !3655
  %5 = load i32, i32* %result, align 4, !dbg !3656
  %tobool4 = icmp ne i32 %5, 0, !dbg !3656
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !3658

if.then5:                                         ; preds = %if.else
  %6 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !3659
  %ref_count6 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %6, i32 0, i32 5, !dbg !3660
  %7 = load i32, i32* %ref_count6, align 8, !dbg !3661
  %inc = add i32 %7, 1, !dbg !3661
  store i32 %inc, i32* %ref_count6, align 8, !dbg !3661
  br label %if.end7, !dbg !3659

if.end7:                                          ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %8 = load i32, i32* %result, align 4, !dbg !3662
  store i32 %8, i32* %retval, align 4, !dbg !3663
  br label %return, !dbg !3663

return:                                           ; preds = %if.end8, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3664
  ret i32 %9, !dbg !3664
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device* %device, i32* %state) #0 !dbg !3665 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  %list_state = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca %struct.list_head*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3668, metadata !DIExpression()), !dbg !3669
  store i32* %state, i32** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state.addr, metadata !3670, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3672, metadata !DIExpression()), !dbg !3673
  store i32 0, i32* %result, align 4, !dbg !3673
  call void @llvm.dbg.declare(metadata i32* %list_state, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i32 0, i32* %list_state, align 4, !dbg !3675
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i32 0, i32* %i, align 4, !dbg !3677
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3678
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3678
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3680

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %state.addr, align 8, !dbg !3681
  %tobool1 = icmp ne i32* %1, null, !dbg !3681
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3682

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3683
  br label %return, !dbg !3683

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !3684
  br label %for.cond, !dbg !3686

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !3687
  %cmp = icmp sle i32 %2, 3, !dbg !3689
  br i1 %cmp, label %for.body, label %for.end, !dbg !3690

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.list_head** %list, metadata !3691, metadata !DIExpression()), !dbg !3693
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3694
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 11, !dbg !3695
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !3696
  %4 = load i32, i32* %i, align 4, !dbg !3697
  %idxprom = sext i32 %4 to i64, !dbg !3694
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !3694
  %resources = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !3698
  store %struct.list_head* %resources, %struct.list_head** %list, align 8, !dbg !3693
  %5 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3699
  %call = call i32 @list_empty(%struct.list_head* %5) #7, !dbg !3701
  %tobool2 = icmp ne i32 %call, 0, !dbg !3701
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3702

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !3703

if.end4:                                          ; preds = %for.body
  %6 = load %struct.list_head*, %struct.list_head** %list, align 8, !dbg !3704
  %call5 = call i32 @acpi_power_get_list_state(%struct.list_head* %6, i32* %list_state) #7, !dbg !3705
  store i32 %call5, i32* %result, align 4, !dbg !3706
  %7 = load i32, i32* %result, align 4, !dbg !3707
  %tobool6 = icmp ne i32 %7, 0, !dbg !3707
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3709

if.then7:                                         ; preds = %if.end4
  %8 = load i32, i32* %result, align 4, !dbg !3710
  store i32 %8, i32* %retval, align 4, !dbg !3711
  br label %return, !dbg !3711

if.end8:                                          ; preds = %if.end4
  %9 = load i32, i32* %list_state, align 4, !dbg !3712
  %cmp9 = icmp eq i32 %9, 1, !dbg !3714
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3715

if.then10:                                        ; preds = %if.end8
  %10 = load i32, i32* %i, align 4, !dbg !3716
  %11 = load i32*, i32** %state.addr, align 8, !dbg !3718
  store i32 %10, i32* %11, align 4, !dbg !3719
  store i32 0, i32* %retval, align 4, !dbg !3720
  br label %return, !dbg !3720

if.end11:                                         ; preds = %if.end8
  br label %for.inc, !dbg !3721

for.inc:                                          ; preds = %if.end11, %if.then3
  %12 = load i32, i32* %i, align 4, !dbg !3722
  %inc = add i32 %12, 1, !dbg !3722
  store i32 %inc, i32* %i, align 4, !dbg !3722
  br label %for.cond, !dbg !3723, !llvm.loop !3724

for.end:                                          ; preds = %for.cond
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3726
  %power12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 11, !dbg !3727
  %states13 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power12, i32 0, i32 2, !dbg !3728
  %arrayidx14 = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states13, i64 0, i64 4, !dbg !3726
  %flags = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx14, i32 0, i32 0, !dbg !3729
  %14 = bitcast %struct.anon.45* %flags to i8*, !dbg !3730
  %bf.load = load i8, i8* %14, align 8, !dbg !3730
  %bf.clear = and i8 %bf.load, 1, !dbg !3730
  %conv = zext i8 %bf.clear to i32, !dbg !3726
  %tobool15 = icmp ne i32 %conv, 0, !dbg !3726
  %15 = zext i1 %tobool15 to i64, !dbg !3726
  %cond = select i1 %tobool15, i32 4, i32 3, !dbg !3726
  %16 = load i32*, i32** %state.addr, align 8, !dbg !3731
  store i32 %cond, i32* %16, align 4, !dbg !3732
  store i32 0, i32* %retval, align 4, !dbg !3733
  br label %return, !dbg !3733

return:                                           ; preds = %for.end, %if.then10, %if.then7, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3734
  ret i32 %17, !dbg !3734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3735 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3740, metadata !DIExpression()), !dbg !3741
  br label %do.body, !dbg !3742

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3744

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3742
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3742
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3742
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3744
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3742
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3746
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3747
  %conv = zext i1 %cmp to i32, !dbg !3747
  ret i32 %conv, !dbg !3748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_get_list_state(%struct.list_head* %list, i32* %state) #0 !dbg !3749 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.list_head*, align 8
  %state.addr = alloca i32*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %cur_state = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %handle = alloca i8*, align 8
  %result = alloca i32, align 4
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i32* %state, i32** %state.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %state.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.declare(metadata i32* %cur_state, metadata !3756, metadata !DIExpression()), !dbg !3757
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3758
  %tobool = icmp ne %struct.list_head* %0, null, !dbg !3758
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3760

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %state.addr, align 8, !dbg !3761
  %tobool2 = icmp ne i32* %1, null, !dbg !3761
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3762

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3763
  br label %return, !dbg !3763

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %cur_state, align 4, !dbg !3764
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3765, metadata !DIExpression()), !dbg !3768
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3768
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !3768
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3768
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !3768
  store i8* %4, i8** %__mptr, align 8, !dbg !3768
  br label %do.body, !dbg !3768

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3769

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3768
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !3768
  %6 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3768
  store %struct.acpi_power_resource_entry* %6, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3769
  %7 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3768
  store %struct.acpi_power_resource_entry* %7, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3771
  br label %for.cond, !dbg !3771

for.cond:                                         ; preds = %do.end16, %do.end
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3772
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %8, i32 0, i32 0, !dbg !3772
  %9 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3772
  %cmp = icmp eq %struct.list_head* %node, %9, !dbg !3772
  %lnot = xor i1 %cmp, true, !dbg !3772
  br i1 %lnot, label %for.body, label %for.end, !dbg !3771

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !3774, metadata !DIExpression()), !dbg !3776
  %10 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3777
  %resource3 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %10, i32 0, i32 1, !dbg !3778
  %11 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource3, align 8, !dbg !3778
  store %struct.acpi_power_resource* %11, %struct.acpi_power_resource** %resource, align 8, !dbg !3776
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !3779, metadata !DIExpression()), !dbg !3780
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3781
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 0, !dbg !3782
  %handle4 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !3783
  %13 = load i8*, i8** %handle4, align 8, !dbg !3783
  store i8* %13, i8** %handle, align 8, !dbg !3780
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3784, metadata !DIExpression()), !dbg !3785
  %14 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3786
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %14, i32 0, i32 7, !dbg !3787
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !3788
  %15 = load i8*, i8** %handle, align 8, !dbg !3789
  %call = call i32 @acpi_power_get_state(i8* %15, i32* %cur_state) #7, !dbg !3790
  store i32 %call, i32* %result, align 4, !dbg !3791
  %16 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3792
  %resource_lock5 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %16, i32 0, i32 7, !dbg !3793
  call void @mutex_unlock(%struct.mutex* %resource_lock5) #7, !dbg !3794
  %17 = load i32, i32* %result, align 4, !dbg !3795
  %tobool6 = icmp ne i32 %17, 0, !dbg !3795
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3797

if.then7:                                         ; preds = %for.body
  %18 = load i32, i32* %result, align 4, !dbg !3798
  store i32 %18, i32* %retval, align 4, !dbg !3799
  br label %return, !dbg !3799

if.end8:                                          ; preds = %for.body
  %19 = load i32, i32* %cur_state, align 4, !dbg !3800
  %cmp9 = icmp ne i32 %19, 1, !dbg !3802
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3803

if.then10:                                        ; preds = %if.end8
  br label %for.end, !dbg !3804

if.end11:                                         ; preds = %if.end8
  br label %for.inc, !dbg !3805

for.inc:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !3806, metadata !DIExpression()), !dbg !3808
  %20 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3808
  %node13 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %20, i32 0, i32 0, !dbg !3808
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %node13, i32 0, i32 0, !dbg !3808
  %21 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !3808
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !3808
  store i8* %22, i8** %__mptr12, align 8, !dbg !3808
  br label %do.body15, !dbg !3808

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !3809

do.end16:                                         ; preds = %do.body15
  %23 = load i8*, i8** %__mptr12, align 8, !dbg !3808
  %add.ptr18 = getelementptr i8, i8* %23, i64 0, !dbg !3808
  %24 = bitcast i8* %add.ptr18 to %struct.acpi_power_resource_entry*, !dbg !3808
  store %struct.acpi_power_resource_entry* %24, %struct.acpi_power_resource_entry** %tmp17, align 8, !dbg !3809
  %25 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp17, align 8, !dbg !3808
  store %struct.acpi_power_resource_entry* %25, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3772
  br label %for.cond, !dbg !3772, !llvm.loop !3811

for.end:                                          ; preds = %if.then10, %for.cond
  %26 = load i32, i32* %cur_state, align 4, !dbg !3813
  %27 = load i32*, i32** %state.addr, align 8, !dbg !3814
  store i32 %26, i32* %27, align 4, !dbg !3815
  store i32 0, i32* %retval, align 4, !dbg !3816
  br label %return, !dbg !3816

return:                                           ; preds = %for.end, %if.then7, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !3817
  ret i32 %28, !dbg !3817
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_power_on_resources(%struct.acpi_device* %device, i32 %state) #0 !dbg !3818 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3819, metadata !DIExpression()), !dbg !3820
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3821, metadata !DIExpression()), !dbg !3822
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3823
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3823
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3825

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !3826
  %cmp = icmp slt i32 %1, 0, !dbg !3827
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !3828

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %state.addr, align 4, !dbg !3829
  %cmp2 = icmp sgt i32 %2, 3, !dbg !3830
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3831

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3832
  br label %return, !dbg !3832

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3833
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 11, !dbg !3834
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 2, !dbg !3835
  %4 = load i32, i32* %state.addr, align 4, !dbg !3836
  %idxprom = sext i32 %4 to i64, !dbg !3833
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !3833
  %resources = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !3837
  %call = call i32 @acpi_power_on_list(%struct.list_head* %resources) #7, !dbg !3838
  store i32 %call, i32* %retval, align 4, !dbg !3839
  br label %return, !dbg !3839

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3840
  ret i32 %5, !dbg !3840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_on_list(%struct.list_head* %list) #0 !dbg !3841 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.list_head*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %result = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3844, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3846, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3848, metadata !DIExpression()), !dbg !3849
  store i32 0, i32* %result, align 4, !dbg !3849
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3850, metadata !DIExpression()), !dbg !3853
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3853
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3853
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3853
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3853
  store i8* %2, i8** %__mptr, align 8, !dbg !3853
  br label %do.body, !dbg !3853

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3854

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3853
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3853
  %4 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3853
  store %struct.acpi_power_resource_entry* %4, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3854
  %5 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3853
  store %struct.acpi_power_resource_entry* %5, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3856
  br label %for.cond, !dbg !3856

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3857
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %6, i32 0, i32 0, !dbg !3857
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3857
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !3857
  %lnot = xor i1 %cmp, true, !dbg !3857
  br i1 %lnot, label %for.body, label %for.end, !dbg !3856

for.body:                                         ; preds = %for.cond
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3859
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %8, i32 0, i32 1, !dbg !3861
  %9 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3861
  %call = call i32 @acpi_power_on(%struct.acpi_power_resource* %9) #7, !dbg !3862
  store i32 %call, i32* %result, align 4, !dbg !3863
  %10 = load i32, i32* %result, align 4, !dbg !3864
  %tobool = icmp ne i32 %10, 0, !dbg !3864
  br i1 %tobool, label %if.then, label %if.end, !dbg !3866

if.then:                                          ; preds = %for.body
  br label %err, !dbg !3867

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3868

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3869, metadata !DIExpression()), !dbg !3871
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3871
  %node3 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %11, i32 0, i32 0, !dbg !3871
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %node3, i32 0, i32 0, !dbg !3871
  %12 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !3871
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !3871
  store i8* %13, i8** %__mptr2, align 8, !dbg !3871
  br label %do.body5, !dbg !3871

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !3872

do.end6:                                          ; preds = %do.body5
  %14 = load i8*, i8** %__mptr2, align 8, !dbg !3871
  %add.ptr8 = getelementptr i8, i8* %14, i64 0, !dbg !3871
  %15 = bitcast i8* %add.ptr8 to %struct.acpi_power_resource_entry*, !dbg !3871
  store %struct.acpi_power_resource_entry* %15, %struct.acpi_power_resource_entry** %tmp7, align 8, !dbg !3872
  %16 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp7, align 8, !dbg !3871
  store %struct.acpi_power_resource_entry* %16, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3857
  br label %for.cond, !dbg !3857, !llvm.loop !3874

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3876
  br label %return, !dbg !3876

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !3877), !dbg !3878
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !3879, metadata !DIExpression()), !dbg !3882
  %17 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3882
  %node10 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %17, i32 0, i32 0, !dbg !3882
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node10, i32 0, i32 1, !dbg !3882
  %18 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3882
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !3882
  store i8* %19, i8** %__mptr9, align 8, !dbg !3882
  br label %do.body11, !dbg !3882

do.body11:                                        ; preds = %err
  br label %do.end12, !dbg !3883

do.end12:                                         ; preds = %do.body11
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !3882
  %add.ptr14 = getelementptr i8, i8* %20, i64 0, !dbg !3882
  %21 = bitcast i8* %add.ptr14 to %struct.acpi_power_resource_entry*, !dbg !3882
  store %struct.acpi_power_resource_entry* %21, %struct.acpi_power_resource_entry** %tmp13, align 8, !dbg !3883
  %22 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp13, align 8, !dbg !3882
  store %struct.acpi_power_resource_entry* %22, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3885
  br label %for.cond15, !dbg !3885

for.cond15:                                       ; preds = %do.end27, %do.end12
  %23 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3886
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %23, i32 0, i32 0, !dbg !3886
  %24 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3886
  %cmp17 = icmp eq %struct.list_head* %node16, %24, !dbg !3886
  %lnot18 = xor i1 %cmp17, true, !dbg !3886
  br i1 %lnot18, label %for.body19, label %for.end30, !dbg !3885

for.body19:                                       ; preds = %for.cond15
  %25 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3888
  %resource20 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %25, i32 0, i32 1, !dbg !3889
  %26 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource20, align 8, !dbg !3889
  %call21 = call i32 @acpi_power_off(%struct.acpi_power_resource* %26) #7, !dbg !3890
  br label %for.inc22, !dbg !3890

for.inc22:                                        ; preds = %for.body19
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !3891, metadata !DIExpression()), !dbg !3893
  %27 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3893
  %node24 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %27, i32 0, i32 0, !dbg !3893
  %prev25 = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 1, !dbg !3893
  %28 = load %struct.list_head*, %struct.list_head** %prev25, align 8, !dbg !3893
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !3893
  store i8* %29, i8** %__mptr23, align 8, !dbg !3893
  br label %do.body26, !dbg !3893

do.body26:                                        ; preds = %for.inc22
  br label %do.end27, !dbg !3894

do.end27:                                         ; preds = %do.body26
  %30 = load i8*, i8** %__mptr23, align 8, !dbg !3893
  %add.ptr29 = getelementptr i8, i8* %30, i64 0, !dbg !3893
  %31 = bitcast i8* %add.ptr29 to %struct.acpi_power_resource_entry*, !dbg !3893
  store %struct.acpi_power_resource_entry* %31, %struct.acpi_power_resource_entry** %tmp28, align 8, !dbg !3894
  %32 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp28, align 8, !dbg !3893
  store %struct.acpi_power_resource_entry* %32, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3886
  br label %for.cond15, !dbg !3886, !llvm.loop !3896

for.end30:                                        ; preds = %for.cond15
  %33 = load i32, i32* %result, align 4, !dbg !3898
  store i32 %33, i32* %retval, align 4, !dbg !3899
  br label %return, !dbg !3899

return:                                           ; preds = %for.end30, %for.end
  %34 = load i32, i32* %retval, align 4, !dbg !3900
  ret i32 %34, !dbg !3900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_power_transition(%struct.acpi_device* %device, i32 %state) #0 !dbg !3901 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %state.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3902, metadata !DIExpression()), !dbg !3903
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3906, metadata !DIExpression()), !dbg !3907
  store i32 0, i32* %result, align 4, !dbg !3907
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3908
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !3908
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3910

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %state.addr, align 4, !dbg !3911
  %cmp = icmp slt i32 %1, 0, !dbg !3912
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !3913

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %state.addr, align 4, !dbg !3914
  %cmp2 = icmp sgt i32 %2, 4, !dbg !3915
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3916

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !3917
  br label %return, !dbg !3917

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3918
  %power = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %3, i32 0, i32 11, !dbg !3920
  %state3 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power, i32 0, i32 0, !dbg !3921
  %4 = load i32, i32* %state3, align 8, !dbg !3921
  %5 = load i32, i32* %state.addr, align 4, !dbg !3922
  %cmp4 = icmp eq i32 %4, %5, !dbg !3923
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !3924

lor.lhs.false5:                                   ; preds = %if.end
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3925
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 9, !dbg !3926
  %7 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3927
  %bf.load = load i32, i32* %7, align 4, !dbg !3927
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3927
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3927
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !3925
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3928

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 0, i32* %retval, align 4, !dbg !3929
  br label %return, !dbg !3929

if.end8:                                          ; preds = %lor.lhs.false5
  %8 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3930
  %power9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 11, !dbg !3932
  %state10 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power9, i32 0, i32 0, !dbg !3933
  %9 = load i32, i32* %state10, align 8, !dbg !3933
  %cmp11 = icmp slt i32 %9, 0, !dbg !3934
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12, !dbg !3935

lor.lhs.false12:                                  ; preds = %if.end8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3936
  %power13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 11, !dbg !3937
  %state14 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power13, i32 0, i32 0, !dbg !3938
  %11 = load i32, i32* %state14, align 8, !dbg !3938
  %cmp15 = icmp sgt i32 %11, 4, !dbg !3939
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3940

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  store i32 -19, i32* %retval, align 4, !dbg !3941
  br label %return, !dbg !3941

if.end17:                                         ; preds = %lor.lhs.false12
  %12 = load i32, i32* %state.addr, align 4, !dbg !3942
  %cmp18 = icmp slt i32 %12, 4, !dbg !3944
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !3945

if.then19:                                        ; preds = %if.end17
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3946
  %power20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 11, !dbg !3947
  %states = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power20, i32 0, i32 2, !dbg !3948
  %14 = load i32, i32* %state.addr, align 4, !dbg !3949
  %idxprom = sext i32 %14 to i64, !dbg !3946
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states, i64 0, i64 %idxprom, !dbg !3946
  %resources = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx, i32 0, i32 3, !dbg !3950
  %call = call i32 @acpi_power_on_list(%struct.list_head* %resources) #7, !dbg !3951
  store i32 %call, i32* %result, align 4, !dbg !3952
  br label %if.end21, !dbg !3953

if.end21:                                         ; preds = %if.then19, %if.end17
  %15 = load i32, i32* %result, align 4, !dbg !3954
  %tobool22 = icmp ne i32 %15, 0, !dbg !3954
  br i1 %tobool22, label %if.end35, label %land.lhs.true, !dbg !3956

land.lhs.true:                                    ; preds = %if.end21
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3957
  %power23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 11, !dbg !3958
  %state24 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power23, i32 0, i32 0, !dbg !3959
  %17 = load i32, i32* %state24, align 8, !dbg !3959
  %cmp25 = icmp slt i32 %17, 4, !dbg !3960
  br i1 %cmp25, label %if.then26, label %if.end35, !dbg !3961

if.then26:                                        ; preds = %land.lhs.true
  %18 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3962
  %power27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 11, !dbg !3963
  %states28 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power27, i32 0, i32 2, !dbg !3964
  %19 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3965
  %power29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 11, !dbg !3966
  %state30 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power29, i32 0, i32 0, !dbg !3967
  %20 = load i32, i32* %state30, align 8, !dbg !3967
  %idxprom31 = sext i32 %20 to i64, !dbg !3962
  %arrayidx32 = getelementptr [5 x %struct.acpi_device_power_state], [5 x %struct.acpi_device_power_state]* %states28, i64 0, i64 %idxprom31, !dbg !3962
  %resources33 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %arrayidx32, i32 0, i32 3, !dbg !3968
  %call34 = call i32 @acpi_power_off_list(%struct.list_head* %resources33) #7, !dbg !3969
  br label %if.end35, !dbg !3969

if.end35:                                         ; preds = %if.then26, %land.lhs.true, %if.end21
  %21 = load i32, i32* %result, align 4, !dbg !3970
  %tobool36 = icmp ne i32 %21, 0, !dbg !3970
  br i1 %tobool36, label %cond.true, label %cond.false, !dbg !3970

cond.true:                                        ; preds = %if.end35
  br label %cond.end, !dbg !3970

cond.false:                                       ; preds = %if.end35
  %22 = load i32, i32* %state.addr, align 4, !dbg !3971
  br label %cond.end, !dbg !3970

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %22, %cond.false ], !dbg !3970
  %23 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3972
  %power37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 11, !dbg !3973
  %state38 = getelementptr inbounds %struct.acpi_device_power, %struct.acpi_device_power* %power37, i32 0, i32 0, !dbg !3974
  store i32 %cond, i32* %state38, align 8, !dbg !3975
  %24 = load i32, i32* %result, align 4, !dbg !3976
  store i32 %24, i32* %retval, align 4, !dbg !3977
  br label %return, !dbg !3977

return:                                           ; preds = %cond.end, %if.then16, %if.then7, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3978
  ret i32 %25, !dbg !3978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_off_list(%struct.list_head* %list) #0 !dbg !3979 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca %struct.list_head*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %result = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp28 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i32 0, i32* %result, align 4, !dbg !3985
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3986, metadata !DIExpression()), !dbg !3989
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3989
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 1, !dbg !3989
  %1 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3989
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3989
  store i8* %2, i8** %__mptr, align 8, !dbg !3989
  br label %do.body, !dbg !3989

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3990

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3989
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3989
  %4 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !3989
  store %struct.acpi_power_resource_entry* %4, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3990
  %5 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !3989
  store %struct.acpi_power_resource_entry* %5, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3992
  br label %for.cond, !dbg !3992

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3993
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %6, i32 0, i32 0, !dbg !3993
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3993
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !3993
  %lnot = xor i1 %cmp, true, !dbg !3993
  br i1 %lnot, label %for.body, label %for.end, !dbg !3992

for.body:                                         ; preds = %for.cond
  %8 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3995
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %8, i32 0, i32 1, !dbg !3997
  %9 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !3997
  %call = call i32 @acpi_power_off(%struct.acpi_power_resource* %9) #7, !dbg !3998
  store i32 %call, i32* %result, align 4, !dbg !3999
  %10 = load i32, i32* %result, align 4, !dbg !4000
  %tobool = icmp ne i32 %10, 0, !dbg !4000
  br i1 %tobool, label %if.then, label %if.end, !dbg !4002

if.then:                                          ; preds = %for.body
  br label %err, !dbg !4003

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4004

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4005, metadata !DIExpression()), !dbg !4007
  %11 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4007
  %node3 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %11, i32 0, i32 0, !dbg !4007
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %node3, i32 0, i32 1, !dbg !4007
  %12 = load %struct.list_head*, %struct.list_head** %prev4, align 8, !dbg !4007
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4007
  store i8* %13, i8** %__mptr2, align 8, !dbg !4007
  br label %do.body5, !dbg !4007

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4008

do.end6:                                          ; preds = %do.body5
  %14 = load i8*, i8** %__mptr2, align 8, !dbg !4007
  %add.ptr8 = getelementptr i8, i8* %14, i64 0, !dbg !4007
  %15 = bitcast i8* %add.ptr8 to %struct.acpi_power_resource_entry*, !dbg !4007
  store %struct.acpi_power_resource_entry* %15, %struct.acpi_power_resource_entry** %tmp7, align 8, !dbg !4008
  %16 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp7, align 8, !dbg !4007
  store %struct.acpi_power_resource_entry* %16, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !3993
  br label %for.cond, !dbg !3993, !llvm.loop !4010

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !4013), !dbg !4014
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4015, metadata !DIExpression()), !dbg !4018
  %17 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4018
  %node10 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %17, i32 0, i32 0, !dbg !4018
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node10, i32 0, i32 0, !dbg !4018
  %18 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4018
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4018
  store i8* %19, i8** %__mptr9, align 8, !dbg !4018
  br label %do.body11, !dbg !4018

do.body11:                                        ; preds = %err
  br label %do.end12, !dbg !4019

do.end12:                                         ; preds = %do.body11
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !4018
  %add.ptr14 = getelementptr i8, i8* %20, i64 0, !dbg !4018
  %21 = bitcast i8* %add.ptr14 to %struct.acpi_power_resource_entry*, !dbg !4018
  store %struct.acpi_power_resource_entry* %21, %struct.acpi_power_resource_entry** %tmp13, align 8, !dbg !4019
  %22 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp13, align 8, !dbg !4018
  store %struct.acpi_power_resource_entry* %22, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4021
  br label %for.cond15, !dbg !4021

for.cond15:                                       ; preds = %do.end27, %do.end12
  %23 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4022
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %23, i32 0, i32 0, !dbg !4022
  %24 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4022
  %cmp17 = icmp eq %struct.list_head* %node16, %24, !dbg !4022
  %lnot18 = xor i1 %cmp17, true, !dbg !4022
  br i1 %lnot18, label %for.body19, label %for.end30, !dbg !4021

for.body19:                                       ; preds = %for.cond15
  %25 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4024
  %resource20 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %25, i32 0, i32 1, !dbg !4025
  %26 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource20, align 8, !dbg !4025
  %call21 = call i32 @acpi_power_on(%struct.acpi_power_resource* %26) #7, !dbg !4026
  br label %for.inc22, !dbg !4026

for.inc22:                                        ; preds = %for.body19
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !4027, metadata !DIExpression()), !dbg !4029
  %27 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4029
  %node24 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %27, i32 0, i32 0, !dbg !4029
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 0, !dbg !4029
  %28 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !4029
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !4029
  store i8* %29, i8** %__mptr23, align 8, !dbg !4029
  br label %do.body26, !dbg !4029

do.body26:                                        ; preds = %for.inc22
  br label %do.end27, !dbg !4030

do.end27:                                         ; preds = %do.body26
  %30 = load i8*, i8** %__mptr23, align 8, !dbg !4029
  %add.ptr29 = getelementptr i8, i8* %30, i64 0, !dbg !4029
  %31 = bitcast i8* %add.ptr29 to %struct.acpi_power_resource_entry*, !dbg !4029
  store %struct.acpi_power_resource_entry* %31, %struct.acpi_power_resource_entry** %tmp28, align 8, !dbg !4030
  %32 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp28, align 8, !dbg !4029
  store %struct.acpi_power_resource_entry* %32, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4022
  br label %for.cond15, !dbg !4022, !llvm.loop !4032

for.end30:                                        ; preds = %for.cond15
  %33 = load i32, i32* %result, align 4, !dbg !4034
  store i32 %33, i32* %retval, align 4, !dbg !4035
  br label %return, !dbg !4035

return:                                           ; preds = %for.end30, %for.end
  %34 = load i32, i32* %retval, align 4, !dbg !4036
  ret i32 %34, !dbg !4036
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4037 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4040, metadata !DIExpression()), !dbg !4044
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4050, metadata !DIExpression()), !dbg !4051
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4052, metadata !DIExpression()), !dbg !4053
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4054, metadata !DIExpression()), !dbg !4055
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4056, metadata !DIExpression()), !dbg !4060
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4062, metadata !DIExpression()), !dbg !4066
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !4072
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4077, metadata !DIExpression()), !dbg !4078
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4079, metadata !DIExpression()), !dbg !4080
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4081, metadata !DIExpression()), !dbg !4082
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4083, metadata !DIExpression()), !dbg !4084
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4085, metadata !DIExpression()), !dbg !4086
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4087, metadata !DIExpression()), !dbg !4088
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4089, metadata !DIExpression()), !dbg !4090
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4091, metadata !DIExpression()), !dbg !4092
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4095, metadata !DIExpression()), !dbg !4096
  %0 = load i64, i64* %size.addr, align 8, !dbg !4097
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4098
  %or = or i32 %1, 256, !dbg !4099
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4100
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4101
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4102

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4103
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4104
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4105

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4106
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4107
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4108
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4109
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4086
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4110
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4111
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4112
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4113
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4114
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4115
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4116
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4116
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4116
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4116
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4116
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4117
  br label %kmalloc.exit, !dbg !4117

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4118
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4119
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4119
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4121

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4125
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4126

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4127
  br label %kmalloc_index.exit.i, !dbg !4127

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4128
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4130
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4131

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4132
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4133
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4134

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4135
  br label %kmalloc_index.exit.i, !dbg !4135

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4136
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4138
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4139

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4140
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4141
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4142

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4143
  br label %kmalloc_index.exit.i, !dbg !4143

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4144
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4146
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4147

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4148
  br label %kmalloc_index.exit.i, !dbg !4148

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4149
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4151
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4152

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4153
  br label %kmalloc_index.exit.i, !dbg !4153

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4154
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4156
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4157

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4158
  br label %kmalloc_index.exit.i, !dbg !4158

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4159
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4161
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4162

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4163
  br label %kmalloc_index.exit.i, !dbg !4163

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4164
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4166
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4167

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4168
  br label %kmalloc_index.exit.i, !dbg !4168

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4169
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4171
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4172

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4173
  br label %kmalloc_index.exit.i, !dbg !4173

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4174
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4176
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4177

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4178
  br label %kmalloc_index.exit.i, !dbg !4178

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4179
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4181
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4182

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4183
  br label %kmalloc_index.exit.i, !dbg !4183

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4184
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4186
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4187

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4188
  br label %kmalloc_index.exit.i, !dbg !4188

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4189
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4191
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4192

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4193
  br label %kmalloc_index.exit.i, !dbg !4193

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4194
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4196
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4197

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4198
  br label %kmalloc_index.exit.i, !dbg !4198

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4199
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4201
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4202

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4203
  br label %kmalloc_index.exit.i, !dbg !4203

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4204
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4206
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4207

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4208
  br label %kmalloc_index.exit.i, !dbg !4208

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4209
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4211
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4212

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4213
  br label %kmalloc_index.exit.i, !dbg !4213

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4214
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4216
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4217

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4218
  br label %kmalloc_index.exit.i, !dbg !4218

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4219
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4221
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4222

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4223
  br label %kmalloc_index.exit.i, !dbg !4223

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4224
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4226
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4227

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4228
  br label %kmalloc_index.exit.i, !dbg !4228

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4229
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4231
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4232

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4233
  br label %kmalloc_index.exit.i, !dbg !4233

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4234
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4236
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4237

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4238
  br label %kmalloc_index.exit.i, !dbg !4238

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4239
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4241
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4242

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4243
  br label %kmalloc_index.exit.i, !dbg !4243

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4244
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4246
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4247

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4248
  br label %kmalloc_index.exit.i, !dbg !4248

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4249
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4251
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4252

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4253
  br label %kmalloc_index.exit.i, !dbg !4253

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4254
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4256
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4257

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4258
  br label %kmalloc_index.exit.i, !dbg !4258

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4259
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4261
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4262

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4263
  br label %kmalloc_index.exit.i, !dbg !4263

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4264, !srcloc !4267
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4268, !srcloc !4271
  unreachable, !dbg !4272

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4273
  store i32 %45, i32* %index.i, align 4, !dbg !4274
  %46 = load i32, i32* %index.i, align 4, !dbg !4275
  %tobool.i = icmp ne i32 %46, 0, !dbg !4275
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4277

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4278
  br label %kmalloc.exit, !dbg !4278

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4279
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4280
  %and.i.i = and i32 %48, 17, !dbg !4280
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4280
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4280
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4280
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4280
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4282

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4283
  br label %kmalloc_type.exit.i, !dbg !4283

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4284
  %and2.i.i = and i32 %49, 1, !dbg !4285
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4284
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4284
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4284
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4286
  br label %kmalloc_type.exit.i, !dbg !4286

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4287
  %idxprom.i = zext i32 %51 to i64, !dbg !4288
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4288
  %52 = load i32, i32* %index.i, align 4, !dbg !4289
  %idxprom6.i = zext i32 %52 to i64, !dbg !4288
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4288
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4288
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4290
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4291
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4292
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4293
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4294
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4294
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4294
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4294
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4294
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4055
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4295
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4296
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4297
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4298
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4299
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4300
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4301
  store i8* %62, i8** %retval.i, align 8, !dbg !4302
  br label %kmalloc.exit, !dbg !4302

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4303
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4304
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4305
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4305
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4305
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4305
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4305
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4306
  br label %kmalloc.exit, !dbg !4306

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4307
  ret i8* %65, !dbg !4308
}

; Function Attrs: noredzone
declare dso_local void @acpi_init_device_object(%struct.acpi_device*, i8*, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4309 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  br label %do.body, !dbg !4312

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4313

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4315

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4313

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4317
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4317
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4317
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4317
  br label %do.end3, !dbg !4317

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4313

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4319
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4320
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4321
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4322
  ret void, !dbg !4323
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_device_add(%struct.acpi_device*, void (%struct.device*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_release_power_resource(%struct.device* %dev) #0 !dbg !4324 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_power_resource*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !4327, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4329, metadata !DIExpression()), !dbg !4331
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4331
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4331
  store i8* %1, i8** %__mptr, align 8, !dbg !4331
  br label %do.body, !dbg !4331

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4332

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4331
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !4331
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4331
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !4332
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4331
  store %struct.acpi_device* %4, %struct.acpi_device** %device, align 8, !dbg !4328
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !4334, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4336, metadata !DIExpression()), !dbg !4338
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4338
  %6 = bitcast %struct.acpi_device* %5 to i8*, !dbg !4338
  store i8* %6, i8** %__mptr1, align 8, !dbg !4338
  br label %do.body2, !dbg !4338

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4339

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !4338
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !4338
  %8 = bitcast i8* %add.ptr5 to %struct.acpi_power_resource*, !dbg !4338
  store %struct.acpi_power_resource* %8, %struct.acpi_power_resource** %tmp4, align 8, !dbg !4339
  %9 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp4, align 8, !dbg !4338
  store %struct.acpi_power_resource* %9, %struct.acpi_power_resource** %resource, align 8, !dbg !4341
  call void @mutex_lock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4342
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4343
  %list_node = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 1, !dbg !4344
  call void @list_del(%struct.list_head* %list_node) #7, !dbg !4345
  call void @mutex_unlock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4346
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4347
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 10, !dbg !4348
  call void @acpi_free_pnp_ids(%struct.acpi_device_pnp* %pnp) #7, !dbg !4349
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4350
  %13 = bitcast %struct.acpi_power_resource* %12 to i8*, !dbg !4350
  call void @kfree(i8* %13) #7, !dbg !4351
  ret void, !dbg !4352
}

; Function Attrs: noredzone
declare dso_local i32 @device_create_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_sysfs_remove(%struct.acpi_device* %device) #0 !dbg !4353 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4356
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 21, !dbg !4357
  call void @device_remove_file(%struct.device* %dev, %struct.device_attribute* @dev_attr_resource_in_use) #7, !dbg !4358
  ret void, !dbg !4359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_add_resource_to_list(%struct.acpi_power_resource* %resource) #0 !dbg !4360 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %r = alloca %struct.acpi_power_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.acpi_power_resource*, align 8
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  call void @mutex_lock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4365
  %call = call i32 @list_empty(%struct.list_head* @acpi_power_resource_list) #7, !dbg !4366
  %tobool = icmp ne i32 %call, 0, !dbg !4366
  br i1 %tobool, label %if.end12, label %if.then, !dbg !4368

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %r, metadata !4369, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4372, metadata !DIExpression()), !dbg !4375
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_power_resource_list, i32 0, i32 0), align 8, !dbg !4375
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4375
  store i8* %1, i8** %__mptr, align 8, !dbg !4375
  br label %do.body, !dbg !4375

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4376

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4375
  %add.ptr = getelementptr i8, i8* %2, i64 -1360, !dbg !4375
  %3 = bitcast i8* %add.ptr to %struct.acpi_power_resource*, !dbg !4375
  store %struct.acpi_power_resource* %3, %struct.acpi_power_resource** %tmp, align 8, !dbg !4376
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp, align 8, !dbg !4375
  store %struct.acpi_power_resource* %4, %struct.acpi_power_resource** %r, align 8, !dbg !4378
  br label %for.cond, !dbg !4378

for.cond:                                         ; preds = %do.end9, %do.end
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %r, align 8, !dbg !4379
  %list_node = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 1, !dbg !4379
  %cmp = icmp eq %struct.list_head* %list_node, @acpi_power_resource_list, !dbg !4379
  %lnot = xor i1 %cmp, true, !dbg !4379
  br i1 %lnot, label %for.body, label %for.end, !dbg !4378

for.body:                                         ; preds = %for.cond
  %6 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %r, align 8, !dbg !4381
  %order = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %6, i32 0, i32 4, !dbg !4383
  %7 = load i32, i32* %order, align 4, !dbg !4383
  %8 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4384
  %order1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %8, i32 0, i32 4, !dbg !4385
  %9 = load i32, i32* %order1, align 4, !dbg !4385
  %cmp2 = icmp ugt i32 %7, %9, !dbg !4386
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4387

if.then3:                                         ; preds = %for.body
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4388
  %list_node4 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 1, !dbg !4390
  %11 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %r, align 8, !dbg !4391
  %list_node5 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %11, i32 0, i32 1, !dbg !4392
  call void @list_add_tail(%struct.list_head* %list_node4, %struct.list_head* %list_node5) #7, !dbg !4393
  br label %out, !dbg !4394

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4385

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4395, metadata !DIExpression()), !dbg !4397
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %r, align 8, !dbg !4397
  %list_node7 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 1, !dbg !4397
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node7, i32 0, i32 0, !dbg !4397
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4397
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4397
  store i8* %14, i8** %__mptr6, align 8, !dbg !4397
  br label %do.body8, !dbg !4397

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4398

do.end9:                                          ; preds = %do.body8
  %15 = load i8*, i8** %__mptr6, align 8, !dbg !4397
  %add.ptr11 = getelementptr i8, i8* %15, i64 -1360, !dbg !4397
  %16 = bitcast i8* %add.ptr11 to %struct.acpi_power_resource*, !dbg !4397
  store %struct.acpi_power_resource* %16, %struct.acpi_power_resource** %tmp10, align 8, !dbg !4398
  %17 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp10, align 8, !dbg !4397
  store %struct.acpi_power_resource* %17, %struct.acpi_power_resource** %r, align 8, !dbg !4379
  br label %for.cond, !dbg !4379, !llvm.loop !4400

for.end:                                          ; preds = %for.cond
  br label %if.end12, !dbg !4402

if.end12:                                         ; preds = %for.end, %entry
  %18 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4403
  %list_node13 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %18, i32 0, i32 1, !dbg !4404
  call void @list_add_tail(%struct.list_head* %list_node13, %struct.list_head* @acpi_power_resource_list) #7, !dbg !4405
  br label %out, !dbg !4405

out:                                              ; preds = %if.end12, %if.then3
  call void @llvm.dbg.label(metadata !4406), !dbg !4407
  call void @mutex_unlock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4408
  ret void, !dbg !4409
}

; Function Attrs: noredzone
declare dso_local void @acpi_device_add_finalize(%struct.acpi_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_resume_power_resources() #0 !dbg !4410 {
entry:
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  %state = alloca i32, align 4
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.acpi_power_resource*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !4413, metadata !DIExpression()), !dbg !4414
  call void @mutex_lock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4415
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4416, metadata !DIExpression()), !dbg !4419
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_power_resource_list, i32 0, i32 0), align 8, !dbg !4419
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4419
  store i8* %1, i8** %__mptr, align 8, !dbg !4419
  br label %do.body, !dbg !4419

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4420

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4419
  %add.ptr = getelementptr i8, i8* %2, i64 -1360, !dbg !4419
  %3 = bitcast i8* %add.ptr to %struct.acpi_power_resource*, !dbg !4419
  store %struct.acpi_power_resource* %3, %struct.acpi_power_resource** %tmp, align 8, !dbg !4420
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp, align 8, !dbg !4419
  store %struct.acpi_power_resource* %4, %struct.acpi_power_resource** %resource, align 8, !dbg !4422
  br label %for.cond, !dbg !4422

for.cond:                                         ; preds = %do.end12, %do.end
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4423
  %list_node = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 1, !dbg !4423
  %cmp = icmp eq %struct.list_head* %list_node, @acpi_power_resource_list, !dbg !4423
  %lnot = xor i1 %cmp, true, !dbg !4423
  br i1 %lnot, label %for.body, label %for.end, !dbg !4422

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4425, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.declare(metadata i32* %state, metadata !4428, metadata !DIExpression()), !dbg !4429
  %6 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4430
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %6, i32 0, i32 7, !dbg !4431
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !4432
  %7 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4433
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %7, i32 0, i32 0, !dbg !4434
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !4435
  %8 = load i8*, i8** %handle, align 8, !dbg !4435
  %call = call i32 @acpi_power_get_state(i8* %8, i32* %state) #7, !dbg !4436
  store i32 %call, i32* %result, align 4, !dbg !4437
  %9 = load i32, i32* %result, align 4, !dbg !4438
  %tobool = icmp ne i32 %9, 0, !dbg !4438
  br i1 %tobool, label %if.then, label %if.end, !dbg !4440

if.then:                                          ; preds = %for.body
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4441
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 7, !dbg !4443
  call void @mutex_unlock(%struct.mutex* %resource_lock1) #7, !dbg !4444
  br label %for.inc, !dbg !4445

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %state, align 4, !dbg !4446
  %cmp2 = icmp eq i32 %11, 0, !dbg !4448
  br i1 %cmp2, label %land.lhs.true, label %if.end7, !dbg !4449

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4450
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 5, !dbg !4451
  %13 = load i32, i32* %ref_count, align 8, !dbg !4451
  %tobool3 = icmp ne i32 %13, 0, !dbg !4450
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4452

if.then4:                                         ; preds = %land.lhs.true
  %14 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4453
  %device5 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %14, i32 0, i32 0, !dbg !4453
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device5, i32 0, i32 21, !dbg !4453
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !4453
  %15 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4455
  %call6 = call i32 @__acpi_power_on(%struct.acpi_power_resource* %15) #7, !dbg !4456
  br label %if.end7, !dbg !4457

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %16 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4458
  %resource_lock8 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %16, i32 0, i32 7, !dbg !4459
  call void @mutex_unlock(%struct.mutex* %resource_lock8) #7, !dbg !4460
  br label %for.inc, !dbg !4461

for.inc:                                          ; preds = %if.end7, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4462, metadata !DIExpression()), !dbg !4464
  %17 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4464
  %list_node10 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %17, i32 0, i32 1, !dbg !4464
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node10, i32 0, i32 0, !dbg !4464
  %18 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4464
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4464
  store i8* %19, i8** %__mptr9, align 8, !dbg !4464
  br label %do.body11, !dbg !4464

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !4465

do.end12:                                         ; preds = %do.body11
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !4464
  %add.ptr14 = getelementptr i8, i8* %20, i64 -1360, !dbg !4464
  %21 = bitcast i8* %add.ptr14 to %struct.acpi_power_resource*, !dbg !4464
  store %struct.acpi_power_resource* %21, %struct.acpi_power_resource** %tmp13, align 8, !dbg !4465
  %22 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp13, align 8, !dbg !4464
  store %struct.acpi_power_resource* %22, %struct.acpi_power_resource** %resource, align 8, !dbg !4423
  br label %for.cond, !dbg !4423, !llvm.loop !4467

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4469
  ret void, !dbg !4470
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_power_on(%struct.acpi_power_resource* %resource) #0 !dbg !4471 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %dep = alloca %struct.acpi_power_dependent_device*, align 8
  %status = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_dependent_device*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.acpi_power_dependent_device*, align 8
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.declare(metadata %struct.acpi_power_dependent_device** %dep, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4476, metadata !DIExpression()), !dbg !4477
  store i32 0, i32* %status, align 4, !dbg !4477
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4478
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 0, !dbg !4479
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !4480
  %1 = load i8*, i8** %handle, align 8, !dbg !4480
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* null) #7, !dbg !4481
  store i32 %call, i32* %status, align 4, !dbg !4482
  %2 = load i32, i32* %status, align 4, !dbg !4483
  %tobool = icmp ne i32 %2, 0, !dbg !4483
  br i1 %tobool, label %if.then, label %if.end, !dbg !4485

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4486
  br label %return, !dbg !4486

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4487
  %dependents = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %3, i32 0, i32 8, !dbg !4489
  %call1 = call i32 @list_empty(%struct.list_head* %dependents) #7, !dbg !4490
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4490
  br i1 %tobool2, label %if.then6, label %lor.lhs.false, !dbg !4491

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4492
  %dependents3 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %4, i32 0, i32 8, !dbg !4493
  %call4 = call i32 @list_is_singular(%struct.list_head* %dependents3) #7, !dbg !4494
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4494
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4495

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4496
  br label %return, !dbg !4496

if.end7:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4497, metadata !DIExpression()), !dbg !4500
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4500
  %dependents8 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 8, !dbg !4500
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %dependents8, i32 0, i32 0, !dbg !4500
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4500
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4500
  store i8* %7, i8** %__mptr, align 8, !dbg !4500
  br label %do.body, !dbg !4500

do.body:                                          ; preds = %if.end7
  br label %do.end, !dbg !4501

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4500
  %add.ptr = getelementptr i8, i8* %8, i64 -8, !dbg !4500
  %9 = bitcast i8* %add.ptr to %struct.acpi_power_dependent_device*, !dbg !4500
  store %struct.acpi_power_dependent_device* %9, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !4501
  %10 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp, align 8, !dbg !4500
  store %struct.acpi_power_dependent_device* %10, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !4503
  br label %for.cond, !dbg !4503

for.cond:                                         ; preds = %do.end15, %do.end
  %11 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !4504
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %11, i32 0, i32 1, !dbg !4504
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4504
  %dependents9 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 8, !dbg !4504
  %cmp = icmp eq %struct.list_head* %node, %dependents9, !dbg !4504
  %lnot = xor i1 %cmp, true, !dbg !4504
  br i1 %lnot, label %for.body, label %for.end, !dbg !4503

for.body:                                         ; preds = %for.cond
  %13 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !4506
  %dev = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %13, i32 0, i32 0, !dbg !4508
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4508
  %call10 = call i32 @pm_request_resume(%struct.device* %14) #7, !dbg !4509
  br label %for.inc, !dbg !4510

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !4511, metadata !DIExpression()), !dbg !4513
  %15 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !4513
  %node12 = getelementptr inbounds %struct.acpi_power_dependent_device, %struct.acpi_power_dependent_device* %15, i32 0, i32 1, !dbg !4513
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %node12, i32 0, i32 0, !dbg !4513
  %16 = load %struct.list_head*, %struct.list_head** %next13, align 8, !dbg !4513
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !4513
  store i8* %17, i8** %__mptr11, align 8, !dbg !4513
  br label %do.body14, !dbg !4513

do.body14:                                        ; preds = %for.inc
  br label %do.end15, !dbg !4514

do.end15:                                         ; preds = %do.body14
  %18 = load i8*, i8** %__mptr11, align 8, !dbg !4513
  %add.ptr17 = getelementptr i8, i8* %18, i64 -8, !dbg !4513
  %19 = bitcast i8* %add.ptr17 to %struct.acpi_power_dependent_device*, !dbg !4513
  store %struct.acpi_power_dependent_device* %19, %struct.acpi_power_dependent_device** %tmp16, align 8, !dbg !4514
  %20 = load %struct.acpi_power_dependent_device*, %struct.acpi_power_dependent_device** %tmp16, align 8, !dbg !4513
  store %struct.acpi_power_dependent_device* %20, %struct.acpi_power_dependent_device** %dep, align 8, !dbg !4504
  br label %for.cond, !dbg !4504, !llvm.loop !4516

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

return:                                           ; preds = %for.end, %if.then6, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4519
  ret i32 %21, !dbg !4519
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_turn_off_unused_power_resources() #0 !dbg !4520 {
entry:
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  %state = alloca i32, align 4
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.acpi_power_resource*, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @mutex_lock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4523
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4524, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @acpi_power_resource_list, i32 0, i32 1), align 8, !dbg !4527
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4527
  store i8* %1, i8** %__mptr, align 8, !dbg !4527
  br label %do.body, !dbg !4527

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4528

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4527
  %add.ptr = getelementptr i8, i8* %2, i64 -1360, !dbg !4527
  %3 = bitcast i8* %add.ptr to %struct.acpi_power_resource*, !dbg !4527
  store %struct.acpi_power_resource* %3, %struct.acpi_power_resource** %tmp, align 8, !dbg !4528
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp, align 8, !dbg !4527
  store %struct.acpi_power_resource* %4, %struct.acpi_power_resource** %resource, align 8, !dbg !4530
  br label %for.cond, !dbg !4530

for.cond:                                         ; preds = %do.end12, %do.end
  %5 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4531
  %list_node = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %5, i32 0, i32 1, !dbg !4531
  %cmp = icmp eq %struct.list_head* %list_node, @acpi_power_resource_list, !dbg !4531
  %lnot = xor i1 %cmp, true, !dbg !4531
  br i1 %lnot, label %for.body, label %for.end, !dbg !4530

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4533, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i32* %state, metadata !4536, metadata !DIExpression()), !dbg !4537
  %6 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4538
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %6, i32 0, i32 7, !dbg !4539
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !4540
  %7 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4541
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %7, i32 0, i32 0, !dbg !4542
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !4543
  %8 = load i8*, i8** %handle, align 8, !dbg !4543
  %call = call i32 @acpi_power_get_state(i8* %8, i32* %state) #7, !dbg !4544
  store i32 %call, i32* %result, align 4, !dbg !4545
  %9 = load i32, i32* %result, align 4, !dbg !4546
  %tobool = icmp ne i32 %9, 0, !dbg !4546
  br i1 %tobool, label %if.then, label %if.end, !dbg !4548

if.then:                                          ; preds = %for.body
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4549
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 7, !dbg !4551
  call void @mutex_unlock(%struct.mutex* %resource_lock1) #7, !dbg !4552
  br label %for.inc, !dbg !4553

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %state, align 4, !dbg !4554
  %cmp2 = icmp eq i32 %11, 1, !dbg !4556
  br i1 %cmp2, label %land.lhs.true, label %if.end7, !dbg !4557

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4558
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %12, i32 0, i32 5, !dbg !4559
  %13 = load i32, i32* %ref_count, align 8, !dbg !4559
  %tobool3 = icmp ne i32 %13, 0, !dbg !4558
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !4560

if.then4:                                         ; preds = %land.lhs.true
  %14 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4561
  %device5 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %14, i32 0, i32 0, !dbg !4561
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device5, i32 0, i32 21, !dbg !4561
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !4561
  %15 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4563
  %call6 = call i32 @__acpi_power_off(%struct.acpi_power_resource* %15) #7, !dbg !4564
  br label %if.end7, !dbg !4565

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %16 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4566
  %resource_lock8 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %16, i32 0, i32 7, !dbg !4567
  call void @mutex_unlock(%struct.mutex* %resource_lock8) #7, !dbg !4568
  br label %for.inc, !dbg !4569

for.inc:                                          ; preds = %if.end7, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4570, metadata !DIExpression()), !dbg !4572
  %17 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4572
  %list_node10 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %17, i32 0, i32 1, !dbg !4572
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list_node10, i32 0, i32 1, !dbg !4572
  %18 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4572
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4572
  store i8* %19, i8** %__mptr9, align 8, !dbg !4572
  br label %do.body11, !dbg !4572

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !4573

do.end12:                                         ; preds = %do.body11
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !4572
  %add.ptr14 = getelementptr i8, i8* %20, i64 -1360, !dbg !4572
  %21 = bitcast i8* %add.ptr14 to %struct.acpi_power_resource*, !dbg !4572
  store %struct.acpi_power_resource* %21, %struct.acpi_power_resource** %tmp13, align 8, !dbg !4573
  %22 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp13, align 8, !dbg !4572
  store %struct.acpi_power_resource* %22, %struct.acpi_power_resource** %resource, align 8, !dbg !4531
  br label %for.cond, !dbg !4531, !llvm.loop !4575

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @power_resource_list_lock) #7, !dbg !4577
  ret void, !dbg !4578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_power_off(%struct.acpi_power_resource* %resource) #0 !dbg !4579 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %status = alloca i32, align 4
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4582, metadata !DIExpression()), !dbg !4583
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4584
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 0, !dbg !4585
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %device, i32 0, i32 1, !dbg !4586
  %1 = load i8*, i8** %handle, align 8, !dbg !4586
  %call = call i32 @acpi_evaluate_object(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* null) #7, !dbg !4587
  store i32 %call, i32* %status, align 4, !dbg !4588
  %2 = load i32, i32* %status, align 4, !dbg !4589
  %tobool = icmp ne i32 %2, 0, !dbg !4589
  br i1 %tobool, label %if.then, label %if.end, !dbg !4591

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4592
  br label %return, !dbg !4592

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4593
  br label %return, !dbg !4593

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4594
  ret i32 %3, !dbg !4594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4595 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4598
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !4600
  br i1 %call, label %if.end, label %if.then, !dbg !4601

if.then:                                          ; preds = %entry
  br label %return, !dbg !4602

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4603
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4604
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4604
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4605
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4606
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4606
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !4607
  br label %return, !dbg !4608

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4609 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  ret i1 true, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4615 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4622
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4623
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4624
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4625
  br label %do.body, !dbg !4626

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4627

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4629

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4627

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4631
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4631
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4631
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4631
  br label %do.end5, !dbg !4631

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4627

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_power_resource* @acpi_power_get_context(i8* %handle) #0 !dbg !4634 {
entry:
  %retval = alloca %struct.acpi_power_resource*, align 8
  %handle.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !4639, metadata !DIExpression()), !dbg !4640
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4641
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #7, !dbg !4643
  %tobool = icmp ne i32 %call, 0, !dbg !4643
  br i1 %tobool, label %if.then, label %if.end, !dbg !4644

if.then:                                          ; preds = %entry
  store %struct.acpi_power_resource* null, %struct.acpi_power_resource** %retval, align 8, !dbg !4645
  br label %return, !dbg !4645

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4646
  %call1 = call %struct.acpi_power_resource* @to_power_resource(%struct.acpi_device* %1) #7, !dbg !4647
  store %struct.acpi_power_resource* %call1, %struct.acpi_power_resource** %retval, align 8, !dbg !4648
  br label %return, !dbg !4648

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %retval, align 8, !dbg !4649
  ret %struct.acpi_power_resource* %2, !dbg !4649
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4650 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4653, metadata !DIExpression()), !dbg !4654
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4655
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4656
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4657
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4657
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4658
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !4659
  ret void, !dbg !4660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_power_resource* @to_power_resource(%struct.acpi_device* %device) #0 !dbg !4661 {
entry:
  %device.addr = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4666, metadata !DIExpression()), !dbg !4668
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !4668
  %1 = bitcast %struct.acpi_device* %0 to i8*, !dbg !4668
  store i8* %1, i8** %__mptr, align 8, !dbg !4668
  br label %do.body, !dbg !4668

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4669

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4668
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4668
  %3 = bitcast i8* %add.ptr to %struct.acpi_power_resource*, !dbg !4668
  store %struct.acpi_power_resource* %3, %struct.acpi_power_resource** %tmp, align 8, !dbg !4669
  %4 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %tmp, align 8, !dbg !4668
  ret %struct.acpi_power_resource* %4, !dbg !4671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4672 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4677, metadata !DIExpression()), !dbg !4678
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4681
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4683
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4684
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4685
  br i1 %call, label %if.end, label %if.then, !dbg !4686

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4687

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4688
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4689
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4690
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4691
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4692
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4693
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4694
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4695
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4696
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4697
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4698
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4699
  br label %do.body, !dbg !4700

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4701

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4703

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4701

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4705
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4705
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4705
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4705
  br label %do.end7, !dbg !4705

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4701

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4708 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  ret i1 true, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_expose_list(%struct.acpi_device* %adev, %struct.list_head* %resources, %struct.attribute_group* %attr_group) #0 !dbg !4718 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %resources.addr = alloca %struct.list_head*, align 8
  %attr_group.addr = alloca %struct.attribute_group*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %res_dev = alloca %struct.acpi_device*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  store %struct.attribute_group* %attr_group, %struct.attribute_group** %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %attr_group.addr, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !4727, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4731
  %call = call i32 @list_empty(%struct.list_head* %0) #7, !dbg !4733
  %tobool = icmp ne i32 %call, 0, !dbg !4733
  br i1 %tobool, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !4735

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4736
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 21, !dbg !4737
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4738
  %2 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !4739
  %call2 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* %2) #7, !dbg !4740
  store i32 %call2, i32* %ret, align 4, !dbg !4741
  %3 = load i32, i32* %ret, align 4, !dbg !4742
  %tobool3 = icmp ne i32 %3, 0, !dbg !4742
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4744

if.then4:                                         ; preds = %if.end
  br label %for.end, !dbg !4745

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4746, metadata !DIExpression()), !dbg !4749
  %4 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4749
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0, !dbg !4749
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4749
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !4749
  store i8* %6, i8** %__mptr, align 8, !dbg !4749
  br label %do.body, !dbg !4749

do.body:                                          ; preds = %if.end5
  br label %do.end, !dbg !4750

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4749
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !4749
  %8 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !4749
  store %struct.acpi_power_resource_entry* %8, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !4750
  %9 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !4749
  store %struct.acpi_power_resource_entry* %9, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4752
  br label %for.cond, !dbg !4752

for.cond:                                         ; preds = %do.end20, %do.end
  %10 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4753
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %10, i32 0, i32 0, !dbg !4753
  %11 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4753
  %cmp = icmp eq %struct.list_head* %node, %11, !dbg !4753
  %lnot = xor i1 %cmp, true, !dbg !4753
  br i1 %lnot, label %for.body, label %for.end, !dbg !4752

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %res_dev, metadata !4755, metadata !DIExpression()), !dbg !4757
  %12 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4758
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %12, i32 0, i32 1, !dbg !4759
  %13 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4759
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %13, i32 0, i32 0, !dbg !4760
  store %struct.acpi_device* %device, %struct.acpi_device** %res_dev, align 8, !dbg !4757
  %14 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4761
  %dev6 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 21, !dbg !4762
  %kobj7 = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 0, !dbg !4763
  %15 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !4764
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %15, i32 0, i32 0, !dbg !4765
  %16 = load i8*, i8** %name, align 8, !dbg !4765
  %17 = load %struct.acpi_device*, %struct.acpi_device** %res_dev, align 8, !dbg !4766
  %dev8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 21, !dbg !4767
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 0, !dbg !4768
  %18 = load %struct.acpi_device*, %struct.acpi_device** %res_dev, align 8, !dbg !4769
  %dev10 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 21, !dbg !4770
  %call11 = call i8* @dev_name(%struct.device* %dev10) #7, !dbg !4771
  %call12 = call i32 @sysfs_add_link_to_group(%struct.kobject* %kobj7, i8* %16, %struct.kobject* %kobj9, i8* %call11) #7, !dbg !4772
  store i32 %call12, i32* %ret, align 4, !dbg !4773
  %19 = load i32, i32* %ret, align 4, !dbg !4774
  %tobool13 = icmp ne i32 %19, 0, !dbg !4774
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4776

if.then14:                                        ; preds = %for.body
  %20 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4777
  %21 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4779
  %22 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !4780
  call void @acpi_power_hide_list(%struct.acpi_device* %20, %struct.list_head* %21, %struct.attribute_group* %22) #7, !dbg !4781
  br label %for.end, !dbg !4782

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !4783

for.inc:                                          ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !4784, metadata !DIExpression()), !dbg !4786
  %23 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4786
  %node17 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %23, i32 0, i32 0, !dbg !4786
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %node17, i32 0, i32 0, !dbg !4786
  %24 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !4786
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !4786
  store i8* %25, i8** %__mptr16, align 8, !dbg !4786
  br label %do.body19, !dbg !4786

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !4787

do.end20:                                         ; preds = %do.body19
  %26 = load i8*, i8** %__mptr16, align 8, !dbg !4786
  %add.ptr22 = getelementptr i8, i8* %26, i64 0, !dbg !4786
  %27 = bitcast i8* %add.ptr22 to %struct.acpi_power_resource_entry*, !dbg !4786
  store %struct.acpi_power_resource_entry* %27, %struct.acpi_power_resource_entry** %tmp21, align 8, !dbg !4787
  %28 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp21, align 8, !dbg !4786
  store %struct.acpi_power_resource_entry* %28, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4753
  br label %for.cond, !dbg !4753, !llvm.loop !4789

for.end:                                          ; preds = %if.then, %if.then4, %if.then14, %for.cond
  ret void, !dbg !4791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_power_hide_list(%struct.acpi_device* %adev, %struct.list_head* %resources, %struct.attribute_group* %attr_group) #0 !dbg !4792 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  %resources.addr = alloca %struct.list_head*, align 8
  %attr_group.addr = alloca %struct.attribute_group*, align 8
  %entry1 = alloca %struct.acpi_power_resource_entry*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_power_resource_entry*, align 8
  %res_dev = alloca %struct.acpi_device*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.acpi_power_resource_entry*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store %struct.attribute_group* %attr_group, %struct.attribute_group** %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %attr_group.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource_entry** %entry1, metadata !4799, metadata !DIExpression()), !dbg !4800
  %0 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4801
  %call = call i32 @list_empty(%struct.list_head* %0) #7, !dbg !4803
  %tobool = icmp ne i32 %call, 0, !dbg !4803
  br i1 %tobool, label %if.then, label %if.end, !dbg !4804

if.then:                                          ; preds = %entry
  br label %return, !dbg !4805

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4806, metadata !DIExpression()), !dbg !4809
  %1 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4809
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4809
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4809
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4809
  store i8* %3, i8** %__mptr, align 8, !dbg !4809
  br label %do.body, !dbg !4809

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4810

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4809
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4809
  %5 = bitcast i8* %add.ptr to %struct.acpi_power_resource_entry*, !dbg !4809
  store %struct.acpi_power_resource_entry* %5, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !4810
  %6 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp, align 8, !dbg !4809
  store %struct.acpi_power_resource_entry* %6, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4812
  br label %for.cond, !dbg !4812

for.cond:                                         ; preds = %do.end8, %do.end
  %7 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4813
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %7, i32 0, i32 0, !dbg !4813
  %8 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4813
  %cmp = icmp eq %struct.list_head* %node, %8, !dbg !4813
  %lnot = xor i1 %cmp, true, !dbg !4813
  br i1 %lnot, label %for.body, label %for.end, !dbg !4812

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %res_dev, metadata !4815, metadata !DIExpression()), !dbg !4817
  %9 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4818
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %9, i32 0, i32 1, !dbg !4819
  %10 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4819
  %device = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %10, i32 0, i32 0, !dbg !4820
  store %struct.acpi_device* %device, %struct.acpi_device** %res_dev, align 8, !dbg !4817
  %11 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4821
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 21, !dbg !4822
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4823
  %12 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !4824
  %name = getelementptr inbounds %struct.attribute_group, %struct.attribute_group* %12, i32 0, i32 0, !dbg !4825
  %13 = load i8*, i8** %name, align 8, !dbg !4825
  %14 = load %struct.acpi_device*, %struct.acpi_device** %res_dev, align 8, !dbg !4826
  %dev2 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 21, !dbg !4827
  %call3 = call i8* @dev_name(%struct.device* %dev2) #7, !dbg !4828
  call void @sysfs_remove_link_from_group(%struct.kobject* %kobj, i8* %13, i8* %call3) #7, !dbg !4829
  br label %for.inc, !dbg !4830

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4831, metadata !DIExpression()), !dbg !4833
  %15 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4833
  %node5 = getelementptr inbounds %struct.acpi_power_resource_entry, %struct.acpi_power_resource_entry* %15, i32 0, i32 0, !dbg !4833
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %node5, i32 0, i32 1, !dbg !4833
  %16 = load %struct.list_head*, %struct.list_head** %prev6, align 8, !dbg !4833
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !4833
  store i8* %17, i8** %__mptr4, align 8, !dbg !4833
  br label %do.body7, !dbg !4833

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !4834

do.end8:                                          ; preds = %do.body7
  %18 = load i8*, i8** %__mptr4, align 8, !dbg !4833
  %add.ptr10 = getelementptr i8, i8* %18, i64 0, !dbg !4833
  %19 = bitcast i8* %add.ptr10 to %struct.acpi_power_resource_entry*, !dbg !4833
  store %struct.acpi_power_resource_entry* %19, %struct.acpi_power_resource_entry** %tmp9, align 8, !dbg !4834
  %20 = load %struct.acpi_power_resource_entry*, %struct.acpi_power_resource_entry** %tmp9, align 8, !dbg !4833
  store %struct.acpi_power_resource_entry* %20, %struct.acpi_power_resource_entry** %entry1, align 8, !dbg !4813
  br label %for.cond, !dbg !4813, !llvm.loop !4836

for.end:                                          ; preds = %for.cond
  %21 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4838
  %dev11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 21, !dbg !4839
  %kobj12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 0, !dbg !4840
  %22 = load %struct.attribute_group*, %struct.attribute_group** %attr_group.addr, align 8, !dbg !4841
  call void @sysfs_remove_group(%struct.kobject* %kobj12, %struct.attribute_group* %22) #7, !dbg !4842
  br label %return, !dbg !4843

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !4843
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_add_link_to_group(%struct.kobject*, i8*, %struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4844 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4849
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4851
  %1 = load i8*, i8** %init_name, align 8, !dbg !4851
  %tobool = icmp ne i8* %1, null, !dbg !4849
  br i1 %tobool, label %if.then, label %if.end, !dbg !4852

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4853
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4854
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4854
  store i8* %3, i8** %retval, align 8, !dbg !4855
  br label %return, !dbg !4855

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4856
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4857
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !4858
  store i8* %call, i8** %retval, align 8, !dbg !4859
  br label %return, !dbg !4859

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4860
  ret i8* %5, !dbg !4860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4861 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4868
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4869
  %1 = load i8*, i8** %name, align 8, !dbg !4869
  ret i8* %1, !dbg !4870
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link_from_group(%struct.kobject*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_name(i8*, i32, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_on(%struct.acpi_power_resource* %resource) #0 !dbg !4871 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4876
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 7, !dbg !4877
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !4878
  %1 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4879
  %call = call i32 @acpi_power_on_unlocked(%struct.acpi_power_resource* %1) #7, !dbg !4880
  store i32 %call, i32* %result, align 4, !dbg !4881
  %2 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4882
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %2, i32 0, i32 7, !dbg !4883
  call void @mutex_unlock(%struct.mutex* %resource_lock1) #7, !dbg !4884
  %3 = load i32, i32* %result, align 4, !dbg !4885
  ret i32 %3, !dbg !4886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_power_off(%struct.acpi_power_resource* %resource) #0 !dbg !4887 {
entry:
  %resource.addr = alloca %struct.acpi_power_resource*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_power_resource* %resource, %struct.acpi_power_resource** %resource.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4890, metadata !DIExpression()), !dbg !4891
  %0 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4892
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %0, i32 0, i32 7, !dbg !4893
  call void @mutex_lock(%struct.mutex* %resource_lock) #7, !dbg !4894
  %1 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4895
  %call = call i32 @acpi_power_off_unlocked(%struct.acpi_power_resource* %1) #7, !dbg !4896
  store i32 %call, i32* %result, align 4, !dbg !4897
  %2 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource.addr, align 8, !dbg !4898
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %2, i32 0, i32 7, !dbg !4899
  call void @mutex_unlock(%struct.mutex* %resource_lock1) #7, !dbg !4900
  %3 = load i32, i32* %result, align 4, !dbg !4901
  ret i32 %3, !dbg !4902
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4903 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4912
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4914, metadata !DIExpression()), !dbg !4915
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load i64, i64* %size.addr, align 8, !dbg !4918
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4920
  br i1 %1, label %if.then, label %if.end447, !dbg !4921

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4922
  %tobool = icmp ne i64 %2, 0, !dbg !4922
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4925

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4927
  %cmp = icmp ult i64 %3, 4096, !dbg !4929
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4930

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4931
  br label %return, !dbg !4931

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub = sub i64 %4, 1, !dbg !4932
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4932
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4932

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub4 = sub i64 %6, 1, !dbg !4932
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4932
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4932

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub6 = sub i64 %8, 1, !dbg !4932
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4932
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4932

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4932

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub9 = sub i64 %9, 1, !dbg !4932
  %and = and i64 %sub9, -9223372036854775808, !dbg !4932
  %tobool10 = icmp ne i64 %and, 0, !dbg !4932
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4932

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4932

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub13 = sub i64 %10, 1, !dbg !4932
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4932
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4932
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4932

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4932

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub18 = sub i64 %11, 1, !dbg !4932
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4932
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4932
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4932

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4932

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub23 = sub i64 %12, 1, !dbg !4932
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4932
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4932
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4932

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4932

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub28 = sub i64 %13, 1, !dbg !4932
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4932
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4932
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4932

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4932

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub33 = sub i64 %14, 1, !dbg !4932
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4932
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4932
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4932

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4932

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub38 = sub i64 %15, 1, !dbg !4932
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4932
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4932
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4932

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4932

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub43 = sub i64 %16, 1, !dbg !4932
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4932
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4932
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4932

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4932

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub48 = sub i64 %17, 1, !dbg !4932
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4932
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4932
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4932

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4932

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub53 = sub i64 %18, 1, !dbg !4932
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4932
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4932
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4932

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4932

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub58 = sub i64 %19, 1, !dbg !4932
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4932
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4932
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4932

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4932

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub63 = sub i64 %20, 1, !dbg !4932
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4932
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4932
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4932

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4932

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub68 = sub i64 %21, 1, !dbg !4932
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4932
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4932
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4932

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4932

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub73 = sub i64 %22, 1, !dbg !4932
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4932
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4932
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4932

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4932

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub78 = sub i64 %23, 1, !dbg !4932
  %and79 = and i64 %sub78, 562949953421312, !dbg !4932
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4932
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4932

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4932

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub83 = sub i64 %24, 1, !dbg !4932
  %and84 = and i64 %sub83, 281474976710656, !dbg !4932
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4932
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4932

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4932

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub88 = sub i64 %25, 1, !dbg !4932
  %and89 = and i64 %sub88, 140737488355328, !dbg !4932
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4932
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4932

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4932

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub93 = sub i64 %26, 1, !dbg !4932
  %and94 = and i64 %sub93, 70368744177664, !dbg !4932
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4932
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4932

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4932

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub98 = sub i64 %27, 1, !dbg !4932
  %and99 = and i64 %sub98, 35184372088832, !dbg !4932
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4932
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4932

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4932

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub103 = sub i64 %28, 1, !dbg !4932
  %and104 = and i64 %sub103, 17592186044416, !dbg !4932
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4932
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4932

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4932

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub108 = sub i64 %29, 1, !dbg !4932
  %and109 = and i64 %sub108, 8796093022208, !dbg !4932
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4932
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4932

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4932

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub113 = sub i64 %30, 1, !dbg !4932
  %and114 = and i64 %sub113, 4398046511104, !dbg !4932
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4932
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4932

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4932

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub118 = sub i64 %31, 1, !dbg !4932
  %and119 = and i64 %sub118, 2199023255552, !dbg !4932
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4932
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4932

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4932

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub123 = sub i64 %32, 1, !dbg !4932
  %and124 = and i64 %sub123, 1099511627776, !dbg !4932
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4932
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4932

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4932

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub128 = sub i64 %33, 1, !dbg !4932
  %and129 = and i64 %sub128, 549755813888, !dbg !4932
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4932
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4932

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4932

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub133 = sub i64 %34, 1, !dbg !4932
  %and134 = and i64 %sub133, 274877906944, !dbg !4932
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4932
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4932

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4932

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub138 = sub i64 %35, 1, !dbg !4932
  %and139 = and i64 %sub138, 137438953472, !dbg !4932
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4932
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4932

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4932

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub143 = sub i64 %36, 1, !dbg !4932
  %and144 = and i64 %sub143, 68719476736, !dbg !4932
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4932
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4932

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4932

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub148 = sub i64 %37, 1, !dbg !4932
  %and149 = and i64 %sub148, 34359738368, !dbg !4932
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4932
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4932

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4932

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub153 = sub i64 %38, 1, !dbg !4932
  %and154 = and i64 %sub153, 17179869184, !dbg !4932
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4932
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4932

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4932

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub158 = sub i64 %39, 1, !dbg !4932
  %and159 = and i64 %sub158, 8589934592, !dbg !4932
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4932
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4932

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4932

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub163 = sub i64 %40, 1, !dbg !4932
  %and164 = and i64 %sub163, 4294967296, !dbg !4932
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4932
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4932

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4932

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub168 = sub i64 %41, 1, !dbg !4932
  %and169 = and i64 %sub168, 2147483648, !dbg !4932
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4932
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4932

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4932

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub173 = sub i64 %42, 1, !dbg !4932
  %and174 = and i64 %sub173, 1073741824, !dbg !4932
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4932
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4932

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4932

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub178 = sub i64 %43, 1, !dbg !4932
  %and179 = and i64 %sub178, 536870912, !dbg !4932
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4932
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4932

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4932

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub183 = sub i64 %44, 1, !dbg !4932
  %and184 = and i64 %sub183, 268435456, !dbg !4932
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4932
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4932

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4932

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub188 = sub i64 %45, 1, !dbg !4932
  %and189 = and i64 %sub188, 134217728, !dbg !4932
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4932
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4932

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4932

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub193 = sub i64 %46, 1, !dbg !4932
  %and194 = and i64 %sub193, 67108864, !dbg !4932
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4932
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4932

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4932

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub198 = sub i64 %47, 1, !dbg !4932
  %and199 = and i64 %sub198, 33554432, !dbg !4932
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4932
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4932

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4932

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub203 = sub i64 %48, 1, !dbg !4932
  %and204 = and i64 %sub203, 16777216, !dbg !4932
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4932
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4932

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4932

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub208 = sub i64 %49, 1, !dbg !4932
  %and209 = and i64 %sub208, 8388608, !dbg !4932
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4932
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4932

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4932

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub213 = sub i64 %50, 1, !dbg !4932
  %and214 = and i64 %sub213, 4194304, !dbg !4932
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4932
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4932

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4932

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub218 = sub i64 %51, 1, !dbg !4932
  %and219 = and i64 %sub218, 2097152, !dbg !4932
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4932
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4932

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4932

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub223 = sub i64 %52, 1, !dbg !4932
  %and224 = and i64 %sub223, 1048576, !dbg !4932
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4932
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4932

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4932

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub228 = sub i64 %53, 1, !dbg !4932
  %and229 = and i64 %sub228, 524288, !dbg !4932
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4932
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4932

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4932

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub233 = sub i64 %54, 1, !dbg !4932
  %and234 = and i64 %sub233, 262144, !dbg !4932
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4932
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4932

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4932

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub238 = sub i64 %55, 1, !dbg !4932
  %and239 = and i64 %sub238, 131072, !dbg !4932
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4932
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4932

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4932

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub243 = sub i64 %56, 1, !dbg !4932
  %and244 = and i64 %sub243, 65536, !dbg !4932
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4932
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4932

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4932

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub248 = sub i64 %57, 1, !dbg !4932
  %and249 = and i64 %sub248, 32768, !dbg !4932
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4932
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4932

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4932

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub253 = sub i64 %58, 1, !dbg !4932
  %and254 = and i64 %sub253, 16384, !dbg !4932
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4932
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4932

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4932

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub258 = sub i64 %59, 1, !dbg !4932
  %and259 = and i64 %sub258, 8192, !dbg !4932
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4932
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4932

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4932

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub263 = sub i64 %60, 1, !dbg !4932
  %and264 = and i64 %sub263, 4096, !dbg !4932
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4932
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4932

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4932

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub268 = sub i64 %61, 1, !dbg !4932
  %and269 = and i64 %sub268, 2048, !dbg !4932
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4932
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4932

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4932

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub273 = sub i64 %62, 1, !dbg !4932
  %and274 = and i64 %sub273, 1024, !dbg !4932
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4932
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4932

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4932

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub278 = sub i64 %63, 1, !dbg !4932
  %and279 = and i64 %sub278, 512, !dbg !4932
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4932
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4932

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4932

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub283 = sub i64 %64, 1, !dbg !4932
  %and284 = and i64 %sub283, 256, !dbg !4932
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4932
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4932

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4932

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub288 = sub i64 %65, 1, !dbg !4932
  %and289 = and i64 %sub288, 128, !dbg !4932
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4932
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4932

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4932

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub293 = sub i64 %66, 1, !dbg !4932
  %and294 = and i64 %sub293, 64, !dbg !4932
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4932
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4932

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4932

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub298 = sub i64 %67, 1, !dbg !4932
  %and299 = and i64 %sub298, 32, !dbg !4932
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4932
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4932

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4932

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub303 = sub i64 %68, 1, !dbg !4932
  %and304 = and i64 %sub303, 16, !dbg !4932
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4932
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4932

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4932

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub308 = sub i64 %69, 1, !dbg !4932
  %and309 = and i64 %sub308, 8, !dbg !4932
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4932
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4932

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4932

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub313 = sub i64 %70, 1, !dbg !4932
  %and314 = and i64 %sub313, 4, !dbg !4932
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4932
  %71 = zext i1 %tobool315 to i64, !dbg !4932
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4932
  br label %cond.end, !dbg !4932

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4932
  br label %cond.end317, !dbg !4932

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4932
  br label %cond.end319, !dbg !4932

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4932
  br label %cond.end321, !dbg !4932

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4932
  br label %cond.end323, !dbg !4932

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4932
  br label %cond.end325, !dbg !4932

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4932
  br label %cond.end327, !dbg !4932

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4932
  br label %cond.end329, !dbg !4932

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4932
  br label %cond.end331, !dbg !4932

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4932
  br label %cond.end333, !dbg !4932

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4932
  br label %cond.end335, !dbg !4932

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4932
  br label %cond.end337, !dbg !4932

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4932
  br label %cond.end339, !dbg !4932

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4932
  br label %cond.end341, !dbg !4932

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4932
  br label %cond.end343, !dbg !4932

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4932
  br label %cond.end345, !dbg !4932

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4932
  br label %cond.end347, !dbg !4932

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4932
  br label %cond.end349, !dbg !4932

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4932
  br label %cond.end351, !dbg !4932

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4932
  br label %cond.end353, !dbg !4932

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4932
  br label %cond.end355, !dbg !4932

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4932
  br label %cond.end357, !dbg !4932

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4932
  br label %cond.end359, !dbg !4932

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4932
  br label %cond.end361, !dbg !4932

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4932
  br label %cond.end363, !dbg !4932

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4932
  br label %cond.end365, !dbg !4932

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4932
  br label %cond.end367, !dbg !4932

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4932
  br label %cond.end369, !dbg !4932

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4932
  br label %cond.end371, !dbg !4932

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4932
  br label %cond.end373, !dbg !4932

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4932
  br label %cond.end375, !dbg !4932

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4932
  br label %cond.end377, !dbg !4932

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4932
  br label %cond.end379, !dbg !4932

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4932
  br label %cond.end381, !dbg !4932

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4932
  br label %cond.end383, !dbg !4932

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4932
  br label %cond.end385, !dbg !4932

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4932
  br label %cond.end387, !dbg !4932

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4932
  br label %cond.end389, !dbg !4932

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4932
  br label %cond.end391, !dbg !4932

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4932
  br label %cond.end393, !dbg !4932

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4932
  br label %cond.end395, !dbg !4932

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4932
  br label %cond.end397, !dbg !4932

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4932
  br label %cond.end399, !dbg !4932

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4932
  br label %cond.end401, !dbg !4932

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4932
  br label %cond.end403, !dbg !4932

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4932
  br label %cond.end405, !dbg !4932

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4932
  br label %cond.end407, !dbg !4932

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4932
  br label %cond.end409, !dbg !4932

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4932
  br label %cond.end411, !dbg !4932

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4932
  br label %cond.end413, !dbg !4932

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4932
  br label %cond.end415, !dbg !4932

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4932
  br label %cond.end417, !dbg !4932

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4932
  br label %cond.end419, !dbg !4932

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4932
  br label %cond.end421, !dbg !4932

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4932
  br label %cond.end423, !dbg !4932

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4932
  br label %cond.end425, !dbg !4932

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4932
  br label %cond.end427, !dbg !4932

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4932
  br label %cond.end429, !dbg !4932

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4932
  br label %cond.end431, !dbg !4932

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4932
  br label %cond.end433, !dbg !4932

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4932
  br label %cond.end435, !dbg !4932

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4932
  br label %cond.end437, !dbg !4932

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4932
  br label %cond.end440, !dbg !4932

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4932

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4932
  br label %cond.end444, !dbg !4932

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4932
  %sub443 = sub i64 %72, 1, !dbg !4932
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4932
  br label %cond.end444, !dbg !4932

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4932
  %sub446 = sub i32 %cond445, 12, !dbg !4933
  %add = add i32 %sub446, 1, !dbg !4934
  store i32 %add, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4936
  %dec = add i64 %73, -1, !dbg !4936
  store i64 %dec, i64* %size.addr, align 8, !dbg !4936
  %74 = load i64, i64* %size.addr, align 8, !dbg !4937
  %shr = lshr i64 %74, 12, !dbg !4937
  store i64 %shr, i64* %size.addr, align 8, !dbg !4937
  %75 = load i64, i64* %size.addr, align 8, !dbg !4938
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4915
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4939
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4940
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4939, !srcloc !4941
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4939
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4942
  %add.i = add i32 %79, 1, !dbg !4943
  store i32 %add.i, i32* %retval, align 4, !dbg !4944
  br label %return, !dbg !4944

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4945
  ret i32 %80, !dbg !4945
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4946 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4907, metadata !DIExpression()), !dbg !4950
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4914, metadata !DIExpression()), !dbg !4952
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  %0 = load i64, i64* %n.addr, align 8, !dbg !4955
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4952
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4956
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4957
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4956, !srcloc !4941
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4956
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4958
  %add.i = add i32 %4, 1, !dbg !4959
  %sub = sub i32 %add.i, 1, !dbg !4960
  ret i32 %sub, !dbg !4961
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4962 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4974
  ret i8* %0, !dbg !4975
}

; Function Attrs: noredzone
declare dso_local void @acpi_free_pnp_ids(%struct.acpi_device_pnp*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_power_in_use_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4976 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %resource = alloca %struct.acpi_power_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4979, metadata !DIExpression()), !dbg !4980
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata %struct.acpi_power_resource** %resource, metadata !4983, metadata !DIExpression()), !dbg !4984
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4985, metadata !DIExpression()), !dbg !4987
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4987
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4987
  store i8* %1, i8** %__mptr, align 8, !dbg !4987
  br label %do.body, !dbg !4987

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4988

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4987
  %add.ptr = getelementptr i8, i8* %2, i64 -608, !dbg !4987
  %3 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4987
  store %struct.acpi_device* %3, %struct.acpi_device** %tmp, align 8, !dbg !4988
  %4 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4987
  %call = call %struct.acpi_power_resource* @to_power_resource(%struct.acpi_device* %4) #7, !dbg !4990
  store %struct.acpi_power_resource* %call, %struct.acpi_power_resource** %resource, align 8, !dbg !4991
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4992
  %6 = load %struct.acpi_power_resource*, %struct.acpi_power_resource** %resource, align 8, !dbg !4993
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, %struct.acpi_power_resource* %6, i32 0, i32 5, !dbg !4994
  %7 = load i32, i32* %ref_count, align 8, !dbg !4994
  %tobool = icmp ne i32 %7, 0, !dbg !4995
  %lnot = xor i1 %tobool, true, !dbg !4995
  %lnot1 = xor i1 %lnot, true, !dbg !4996
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4996
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %lnot.ext) #7, !dbg !4997
  %conv = sext i32 %call2 to i64, !dbg !4997
  ret i64 %conv, !dbg !4998
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @device_remove_file(%struct.device*, %struct.device_attribute*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_is_singular(%struct.list_head* %head) #0 !dbg !4999 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5002
  %call = call i32 @list_empty(%struct.list_head* %0) #7, !dbg !5003
  %tobool = icmp ne i32 %call, 0, !dbg !5003
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !5004

land.rhs:                                         ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5005
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5006
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5006
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5007
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5008
  %4 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5008
  %cmp = icmp eq %struct.list_head* %2, %4, !dbg !5009
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5010
  %land.ext = zext i1 %5 to i32, !dbg !5004
  ret i32 %land.ext, !dbg !5011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_request_resume(%struct.device* %dev) #0 !dbg !5012 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5016
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 1) #7, !dbg !5017
  ret i32 %call, !dbg !5018
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

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
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2495, !2496, !2497, !2498}
!llvm.ident = !{!2499}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "wakeup_attr_group", scope: !2, file: !3, line: 515, type: !262, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !87, globals: !2465, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/power.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !80}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_bus_device_type", file: !70, line: 89, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79}
!72 = !DIEnumerator(name: "ACPI_BUS_TYPE_DEVICE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "ACPI_BUS_TYPE_PROCESSOR", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "ACPI_BUS_TYPE_THERMAL", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER_BUTTON", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "ACPI_BUS_TYPE_SLEEP_BUTTON", value: 5, isUnsigned: true)
!78 = !DIEnumerator(name: "ACPI_BUS_TYPE_ECDT_EC", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "ACPI_BUS_DEVICE_TYPE_COUNT", value: 7, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !81, line: 305, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!87 = !{!88, !89, !616, !2455, !1519, !100, !2456, !2458, !2463, !2174}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_resource_entry", file: !3, line: 60, size: 192, elements: !91)
!91 = !{!92, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !3, line: 61, baseType: !93, size: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !94, line: 178, size: 128, elements: !95)
!94 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !94, line: 179, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !93, file: !94, line: 179, baseType: !97, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !90, file: !3, line: 62, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_resource", file: !3, line: 48, size: 11520, elements: !102)
!102 = !{!103, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !101, file: !3, line: 49, baseType: !104, size: 10880)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !70, line: 351, size: 10880, elements: !105)
!105 = !{!106, !108, !111, !2173, !2175, !2176, !2177, !2178, !2179, !2188, !2205, !2279, !2308, !2332, !2353, !2359, !2368, !2400, !2414, !2436, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !104, file: !70, line: 352, baseType: !107, size: 32)
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !104, file: !70, line: 353, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !110, line: 424, baseType: !88)
!110 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !104, file: !70, line: 354, baseType: !112, size: 192, offset: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !113, line: 17, size: 192, elements: !114)
!113 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !117, !2172}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !112, file: !113, line: 18, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !112, file: !113, line: 19, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !113, line: 110, size: 1152, elements: !121)
!121 = !{!122, !126, !130, !138, !2114, !2118, !2122, !2127, !2131, !2132, !2136, !2140, !2144, !2155, !2156, !2157, !2158, !2168}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !120, file: !113, line: 111, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!116, !116}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !120, file: !113, line: 112, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !116}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !120, file: !113, line: 113, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !94, line: 30, baseType: !135)
!135 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !120, file: !113, line: 114, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !136, !144}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !147)
!147 = !{!148, !1647, !1649, !1652, !1653, !1704, !1801, !1802, !1803, !1804, !1805, !1814, !1919, !1932, !2039, !2040, !2044, !2046, !2047, !2048, !2052, !2058, !2059, !2062, !2063, !2064, !2067, !2068, !2069, !2070, !2102, !2103, !2104, !2107, !2110, !2111, !2112, !2113}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !30, line: 462, baseType: !149, size: 512)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !150, line: 64, size: 512, elements: !151)
!150 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !156, !157, !159, !219, !1483, !1637, !1642, !1643, !1644, !1645, !1646}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !150, line: 65, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !149, file: !150, line: 66, baseType: !93, size: 128, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !150, line: 67, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !149, file: !150, line: 68, baseType: !160, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !150, line: 192, size: 704, elements: !162)
!162 = !{!163, !164, !180, !181}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !161, file: !150, line: 193, baseType: !93, size: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !161, file: !150, line: 194, baseType: !165, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 83, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 71, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 72, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 72, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 73, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 20, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !166, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 25, elements: !179)
!179 = !{}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !161, file: !150, line: 195, baseType: !149, size: 512, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !161, file: !150, line: 196, baseType: !182, size: 64, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !150, line: 156, size: 192, elements: !185)
!185 = !{!186, !191, !196}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !184, file: !150, line: 157, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!107, !160, !158}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !150, line: 158, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!153, !160, !158}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !184, file: !150, line: 159, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!107, !160, !158, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !150, line: 148, size: 20736, elements: !203)
!203 = !{!204, !209, !213, !214, !218}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !202, file: !150, line: 149, baseType: !205, size: 192)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 192, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!207 = !{!208}
!208 = !DISubrange(count: 3)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !202, file: !150, line: 150, baseType: !210, size: 4096, offset: 192)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 4096, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !202, file: !150, line: 151, baseType: !107, size: 32, offset: 4288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !202, file: !150, line: 152, baseType: !215, size: 16384, offset: 4320)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 16384, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !202, file: !150, line: 153, baseType: !107, size: 32, offset: 20704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !149, file: !150, line: 69, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !150, line: 138, size: 448, elements: !222)
!222 = !{!223, !227, !257, !259, !1431, !1462, !1466}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !221, file: !150, line: 139, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !158}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !221, file: !150, line: 140, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !231, line: 230, size: 128, elements: !232)
!231 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !249}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !230, file: !231, line: 231, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !158, !242, !206}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !94, line: 60, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !239, line: 73, baseType: !240)
!239 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !239, line: 15, baseType: !241)
!241 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !231, line: 30, size: 128, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !231, line: 31, baseType: !153, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !243, file: !231, line: 32, baseType: !247, size: 16, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !94, line: 19, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !230, file: !231, line: 232, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!237, !158, !242, !153, !253}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 55, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !239, line: 72, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !239, line: 16, baseType: !256)
!256 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !221, file: !150, line: 141, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !221, file: !150, line: 142, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !231, line: 84, size: 320, elements: !264)
!264 = !{!265, !266, !270, !1428, !1429}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !231, line: 85, baseType: !153, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !263, file: !231, line: 86, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!247, !158, !242, !107}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !263, file: !231, line: 88, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!247, !158, !274, !107}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !231, line: 168, size: 448, elements: !276)
!276 = !{!277, !278, !279, !280, !290, !291}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !275, file: !231, line: 169, baseType: !243, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !275, file: !231, line: 170, baseType: !253, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !275, file: !231, line: 171, baseType: !88, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !275, file: !231, line: 172, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!237, !284, !158, !274, !206, !287, !253}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !286, line: 526, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !94, line: 46, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !239, line: 88, baseType: !289)
!289 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !275, file: !231, line: 174, baseType: !281, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !275, file: !231, line: 176, baseType: !292, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!107, !284, !158, !274, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !297, line: 305, size: 1472, elements: !298)
!297 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301, !302, !303, !311, !312, !1402, !1408, !1409, !1414, !1415, !1418, !1422, !1423, !1424, !1425, !1426}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !296, file: !297, line: 308, baseType: !256, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !296, file: !297, line: 309, baseType: !256, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !296, file: !297, line: 313, baseType: !295, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !296, file: !297, line: 313, baseType: !295, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !296, file: !297, line: 315, baseType: !304, size: 192, align: 64, offset: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !305, line: 24, size: 192, align: 64, elements: !306)
!305 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !308, !310}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !304, file: !305, line: 25, baseType: !256, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !304, file: !305, line: 26, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !304, file: !305, line: 27, baseType: !309, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !296, file: !297, line: 323, baseType: !256, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !296, file: !297, line: 327, baseType: !313, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !297, line: 388, size: 7296, elements: !315)
!315 = !{!316, !1398}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !297, line: 389, baseType: !317, size: 7296)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !297, line: 389, size: 7296, elements: !318)
!318 = !{!319, !320, !324, !330, !334, !335, !336, !337, !338, !346, !351, !352, !353, !354, !363, !364, !365, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !400, !408, !411, !459, !460, !1368, !1369, !1372, !1376, !1377, !1380, !1381, !1382, !1385, !1397}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !317, file: !297, line: 390, baseType: !295, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !317, file: !297, line: 391, baseType: !321, size: 64, offset: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !305, line: 31, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !321, file: !305, line: 32, baseType: !309, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !317, file: !297, line: 392, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !326, line: 23, baseType: !327)
!326 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !328, line: 31, baseType: !329)
!328 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !317, file: !297, line: 394, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!256, !284, !256, !256, !256, !256}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !317, file: !297, line: 398, baseType: !256, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !317, file: !297, line: 399, baseType: !256, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !317, file: !297, line: 405, baseType: !256, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !317, file: !297, line: 406, baseType: !256, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !317, file: !297, line: 407, baseType: !339, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !286, line: 286, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 286, size: 64, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !341, file: !286, line: 286, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !345, line: 18, baseType: !256)
!345 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !317, file: !297, line: 416, baseType: !347, size: 32, offset: 576)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !94, line: 168, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 166, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !348, file: !94, line: 167, baseType: !107, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !317, file: !297, line: 428, baseType: !347, size: 32, offset: 608)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !317, file: !297, line: 437, baseType: !347, size: 32, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !317, file: !297, line: 447, baseType: !347, size: 32, offset: 672)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !317, file: !297, line: 450, baseType: !355, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !356, line: 13, baseType: !357)
!356 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !94, line: 175, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 173, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !358, file: !94, line: 174, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !326, line: 22, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !328, line: 30, baseType: !289)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !317, file: !297, line: 452, baseType: !107, size: 32, offset: 768)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !317, file: !297, line: 454, baseType: !165, offset: 800)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !317, file: !297, line: 457, baseType: !366, size: 256, offset: 832)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !367, line: 35, size: 256, elements: !368)
!367 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !370, !371, !373}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !366, file: !367, line: 36, baseType: !355, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !366, file: !367, line: 42, baseType: !355, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !366, file: !367, line: 46, baseType: !372, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 29, baseType: !173)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !366, file: !367, line: 47, baseType: !93, size: 128, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !317, file: !297, line: 459, baseType: !93, size: 128, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !317, file: !297, line: 466, baseType: !256, size: 64, offset: 1216)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !317, file: !297, line: 467, baseType: !256, size: 64, offset: 1280)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !317, file: !297, line: 469, baseType: !256, size: 64, offset: 1344)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !317, file: !297, line: 470, baseType: !256, size: 64, offset: 1408)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !317, file: !297, line: 471, baseType: !357, size: 64, offset: 1472)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !317, file: !297, line: 472, baseType: !256, size: 64, offset: 1536)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !317, file: !297, line: 473, baseType: !256, size: 64, offset: 1600)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !317, file: !297, line: 474, baseType: !256, size: 64, offset: 1664)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !317, file: !297, line: 475, baseType: !256, size: 64, offset: 1728)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !317, file: !297, line: 477, baseType: !165, offset: 1792)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !317, file: !297, line: 478, baseType: !256, size: 64, offset: 1792)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !317, file: !297, line: 478, baseType: !256, size: 64, offset: 1856)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !317, file: !297, line: 478, baseType: !256, size: 64, offset: 1920)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !317, file: !297, line: 478, baseType: !256, size: 64, offset: 1984)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !317, file: !297, line: 479, baseType: !256, size: 64, offset: 2048)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !317, file: !297, line: 479, baseType: !256, size: 64, offset: 2112)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !317, file: !297, line: 479, baseType: !256, size: 64, offset: 2176)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !317, file: !297, line: 480, baseType: !256, size: 64, offset: 2240)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !317, file: !297, line: 480, baseType: !256, size: 64, offset: 2304)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !317, file: !297, line: 480, baseType: !256, size: 64, offset: 2368)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !317, file: !297, line: 480, baseType: !256, size: 64, offset: 2432)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !317, file: !297, line: 482, baseType: !397, size: 2816, offset: 2496)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 2816, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 44)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !317, file: !297, line: 488, baseType: !401, size: 256, offset: 5312)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !402, line: 60, size: 256, elements: !403)
!402 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !401, file: !402, line: 61, baseType: !405, size: 256)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 256, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 4)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !317, file: !297, line: 490, baseType: !409, size: 64, offset: 5568)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !297, line: 490, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !317, file: !297, line: 493, baseType: !412, size: 896, offset: 5632)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !413, line: 53, baseType: !414)
!413 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 13, size: 896, elements: !415)
!415 = !{!416, !417, !418, !419, !422, !423, !430, !431, !451, !452, !455}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !414, file: !413, line: 18, baseType: !325, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !414, file: !413, line: 28, baseType: !357, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !414, file: !413, line: 31, baseType: !366, size: 256, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !414, file: !413, line: 32, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !413, line: 32, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !414, file: !413, line: 37, baseType: !248, size: 16, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !413, line: 40, baseType: !424, size: 192, offset: 512)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !425, line: 53, size: 192, elements: !426)
!425 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !424, file: !425, line: 54, baseType: !355, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !424, file: !425, line: 55, baseType: !165, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !424, file: !425, line: 59, baseType: !93, size: 128, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !414, file: !413, line: 41, baseType: !88, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !414, file: !413, line: 42, baseType: !432, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !435, line: 13, size: 896, elements: !436)
!435 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !434, file: !435, line: 14, baseType: !88, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !434, file: !435, line: 15, baseType: !256, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !434, file: !435, line: 17, baseType: !256, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !434, file: !435, line: 17, baseType: !256, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !434, file: !435, line: 19, baseType: !241, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !434, file: !435, line: 21, baseType: !241, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !434, file: !435, line: 22, baseType: !241, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !434, file: !435, line: 23, baseType: !241, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !434, file: !435, line: 24, baseType: !241, size: 64, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !434, file: !435, line: 25, baseType: !241, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !434, file: !435, line: 26, baseType: !241, size: 64, offset: 640)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !434, file: !435, line: 27, baseType: !241, size: 64, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !434, file: !435, line: 28, baseType: !241, size: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !434, file: !435, line: 29, baseType: !241, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !414, file: !413, line: 44, baseType: !347, size: 32, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !414, file: !413, line: 50, baseType: !453, size: 16, offset: 864)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !326, line: 19, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !328, line: 24, baseType: !248)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !414, file: !413, line: 51, baseType: !456, size: 16, offset: 880)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !326, line: 18, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !328, line: 23, baseType: !458)
!458 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !297, line: 495, baseType: !256, size: 64, offset: 6528)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !317, file: !297, line: 497, baseType: !461, size: 64, offset: 6592)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !297, line: 381, size: 384, elements: !463)
!463 = !{!464, !465, !1367}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !462, file: !297, line: 382, baseType: !347, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !462, file: !297, line: 383, baseType: !466, size: 128, offset: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !297, line: 376, size: 128, elements: !467)
!467 = !{!468, !1365}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !466, file: !297, line: 377, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !471, line: 640, size: 48640, elements: !472)
!471 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !481, !483, !484, !490, !491, !492, !493, !494, !495, !496, !497, !501, !519, !530, !625, !626, !627, !638, !639, !641, !642, !643, !644, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !723, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !779, !781, !782, !783, !795, !797, !798, !799, !800, !801, !807, !808, !809, !810, !811, !812, !813, !825, !830, !835, !836, !837, !840, !844, !847, !850, !853, !856, !860, !863, !866, !872, !873, !874, !880, !881, !882, !883, !884, !893, !894, !895, !896, !897, !902, !903, !904, !907, !908, !911, !914, !917, !920, !923, !926, !927, !1007, !1010, !1013, !1014, !1017, !1018, !1019, !1025, !1026, !1027, !1040, !1041, !1042, !1052, !1057, !1060, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !470, file: !471, line: 646, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !475, line: 56, size: 128, elements: !476)
!475 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !475, line: 57, baseType: !256, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !474, file: !475, line: 58, baseType: !479, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !326, line: 21, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !328, line: 27, baseType: !7)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !470, file: !471, line: 649, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !241)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !470, file: !471, line: 657, baseType: !88, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !470, file: !471, line: 658, baseType: !485, size: 32, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !486, line: 113, baseType: !487)
!486 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !486, line: 111, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !487, file: !486, line: 112, baseType: !347, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !471, line: 660, baseType: !7, size: 32, offset: 288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !470, file: !471, line: 661, baseType: !7, size: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !470, file: !471, line: 684, baseType: !107, size: 32, offset: 352)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !470, file: !471, line: 686, baseType: !107, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !470, file: !471, line: 687, baseType: !107, size: 32, offset: 416)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !470, file: !471, line: 688, baseType: !107, size: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !470, file: !471, line: 689, baseType: !7, size: 32, offset: 480)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !470, file: !471, line: 691, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !471, line: 691, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !470, file: !471, line: 692, baseType: !502, size: 832, offset: 576)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !471, line: 451, size: 832, elements: !503)
!503 = !{!504, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !502, file: !471, line: 453, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !471, line: 325, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !505, file: !471, line: 326, baseType: !256, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !505, file: !471, line: 327, baseType: !479, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !502, file: !471, line: 454, baseType: !304, size: 192, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !502, file: !471, line: 455, baseType: !93, size: 128, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !502, file: !471, line: 456, baseType: !7, size: 32, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !502, file: !471, line: 458, baseType: !325, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !502, file: !471, line: 459, baseType: !325, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !502, file: !471, line: 460, baseType: !325, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !502, file: !471, line: 461, baseType: !325, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !502, file: !471, line: 463, baseType: !325, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !502, file: !471, line: 465, baseType: !518, offset: 832)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !471, line: 415, elements: !179)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !470, file: !471, line: 693, baseType: !520, size: 384, offset: 1408)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !471, line: 489, size: 384, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !520, file: !471, line: 490, baseType: !93, size: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !520, file: !471, line: 491, baseType: !256, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !520, file: !471, line: 492, baseType: !256, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !520, file: !471, line: 493, baseType: !7, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !520, file: !471, line: 494, baseType: !248, size: 16, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !520, file: !471, line: 495, baseType: !248, size: 16, offset: 304)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !520, file: !471, line: 497, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !470, file: !471, line: 697, baseType: !531, size: 1792, offset: 1792)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !471, line: 507, size: 1792, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !622, !623}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !531, file: !471, line: 508, baseType: !304, size: 192, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !531, file: !471, line: 515, baseType: !325, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !531, file: !471, line: 516, baseType: !325, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !531, file: !471, line: 517, baseType: !325, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !531, file: !471, line: 518, baseType: !325, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !531, file: !471, line: 519, baseType: !325, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !531, file: !471, line: 526, baseType: !361, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !531, file: !471, line: 527, baseType: !325, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !531, file: !471, line: 528, baseType: !7, size: 32, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !531, file: !471, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !531, file: !471, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !531, file: !471, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !531, file: !471, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !531, file: !471, line: 563, baseType: !547, size: 512, offset: 704)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !548)
!548 = !{!549, !557, !558, !563, !615, !619, !620, !621}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !6, line: 119, baseType: !550, size: 256)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !551, line: 9, size: 256, elements: !552)
!551 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !550, file: !551, line: 10, baseType: !304, size: 192, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !550, file: !551, line: 11, baseType: !555, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !556, line: 29, baseType: !361)
!556 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !547, file: !6, line: 120, baseType: !555, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !547, file: !6, line: 121, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!5, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !547, file: !6, line: 122, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !566)
!566 = !{!567, !587, !588, !591, !601, !602, !610, !614}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !565, file: !6, line: 160, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !6, line: 215, baseType: !372)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !569, file: !6, line: 216, baseType: !7, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !569, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !569, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !569, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !569, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !569, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !569, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !569, file: !6, line: 233, baseType: !555, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !569, file: !6, line: 234, baseType: !562, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !569, file: !6, line: 235, baseType: !555, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !569, file: !6, line: 236, baseType: !562, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !569, file: !6, line: 237, baseType: !584, size: 4096, offset: 512)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 4096, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 8)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !565, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !565, file: !6, line: 162, baseType: !589, size: 32, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !94, line: 27, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !239, line: 96, baseType: !107)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !565, file: !6, line: 163, baseType: !592, size: 32, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !593, line: 276, baseType: !594)
!593 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !593, line: 276, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !594, file: !593, line: 276, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !593, line: 70, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !593, line: 65, size: 32, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !598, file: !593, line: 66, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !565, file: !6, line: 164, baseType: !562, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !565, file: !6, line: 165, baseType: !603, size: 128, offset: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !551, line: 14, size: 128, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !603, file: !551, line: 15, baseType: !606, size: 128)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !305, line: 125, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !606, file: !305, line: 126, baseType: !321, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !606, file: !305, line: 127, baseType: !309, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !565, file: !6, line: 166, baseType: !611, size: 64, offset: 384)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!555}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !565, file: !6, line: 167, baseType: !555, size: 64, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !547, file: !6, line: 123, baseType: !616, size: 8, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !326, line: 17, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !328, line: 21, baseType: !618)
!618 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !547, file: !6, line: 124, baseType: !616, size: 8, offset: 456)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !547, file: !6, line: 125, baseType: !616, size: 8, offset: 464)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !547, file: !6, line: 126, baseType: !616, size: 8, offset: 472)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !531, file: !471, line: 572, baseType: !547, size: 512, offset: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !531, file: !471, line: 580, baseType: !624, size: 64, offset: 1728)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !470, file: !471, line: 721, baseType: !7, size: 32, offset: 3584)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !470, file: !471, line: 722, baseType: !107, size: 32, offset: 3616)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !470, file: !471, line: 723, baseType: !628, size: 64, offset: 3648)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !631, line: 17, baseType: !632)
!631 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !631, line: 17, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !632, file: !631, line: 17, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 1)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !470, file: !471, line: 724, baseType: !630, size: 64, offset: 3712)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !470, file: !471, line: 749, baseType: !640, offset: 3776)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !471, line: 290, elements: !179)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !470, file: !471, line: 751, baseType: !93, size: 128, offset: 3776)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !470, file: !471, line: 757, baseType: !313, size: 64, offset: 3904)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !470, file: !471, line: 758, baseType: !313, size: 64, offset: 3968)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !470, file: !471, line: 761, baseType: !645, size: 320, offset: 4032)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !402, line: 34, size: 320, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !645, file: !402, line: 35, baseType: !325, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !645, file: !402, line: 36, baseType: !649, size: 256, offset: 64)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !406)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !470, file: !471, line: 766, baseType: !107, size: 32, offset: 4352)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !470, file: !471, line: 767, baseType: !107, size: 32, offset: 4384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !470, file: !471, line: 768, baseType: !107, size: 32, offset: 4416)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !470, file: !471, line: 770, baseType: !107, size: 32, offset: 4448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !470, file: !471, line: 772, baseType: !256, size: 64, offset: 4480)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !470, file: !471, line: 775, baseType: !7, size: 32, offset: 4544)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !470, file: !471, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !470, file: !471, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !470, file: !471, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !470, file: !471, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !470, file: !471, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !470, file: !471, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !470, file: !471, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !470, file: !471, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !470, file: !471, line: 831, baseType: !256, size: 64, offset: 4672)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !470, file: !471, line: 833, baseType: !666, size: 384, offset: 4736)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !667)
!667 = !{!668, !673}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !666, file: !12, line: 26, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!241, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !12, line: 27, baseType: !674, size: 320, offset: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !12, line: 27, size: 320, elements: !675)
!675 = !{!676, !686, !713}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !674, file: !12, line: 36, baseType: !677, size: 320)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !12, line: 29, size: 320, elements: !678)
!678 = !{!679, !681, !682, !683, !684, !685}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !677, file: !12, line: 30, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !677, file: !12, line: 31, baseType: !479, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !12, line: 32, baseType: !479, size: 32, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !677, file: !12, line: 33, baseType: !479, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !677, file: !12, line: 34, baseType: !325, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !677, file: !12, line: 35, baseType: !680, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !674, file: !12, line: 46, baseType: !687, size: 192)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !12, line: 38, size: 192, elements: !688)
!688 = !{!689, !690, !691, !712}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !687, file: !12, line: 39, baseType: !589, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !687, file: !12, line: 41, baseType: !692, size: 64, offset: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !687, file: !12, line: 41, size: 64, elements: !693)
!693 = !{!694, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !692, file: !12, line: 42, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !697, line: 7, size: 128, elements: !698)
!697 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!698 = !{!699, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !696, file: !697, line: 8, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !239, line: 93, baseType: !289)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !696, file: !697, line: 9, baseType: !289, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !692, file: !12, line: 43, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !705, line: 7, size: 64, elements: !706)
!705 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !711}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !704, file: !705, line: 8, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !705, line: 5, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !326, line: 20, baseType: !710)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !328, line: 26, baseType: !107)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !704, file: !705, line: 9, baseType: !709, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !687, file: !12, line: 45, baseType: !325, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !674, file: !12, line: 54, baseType: !714, size: 256)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !12, line: 48, size: 256, elements: !715)
!715 = !{!716, !719, !720, !721, !722}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !714, file: !12, line: 49, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !714, file: !12, line: 50, baseType: !107, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !714, file: !12, line: 51, baseType: !107, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !714, file: !12, line: 52, baseType: !256, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !714, file: !12, line: 53, baseType: !256, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !470, file: !471, line: 835, baseType: !724, size: 32, offset: 5120)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !94, line: 22, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !239, line: 28, baseType: !107)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !470, file: !471, line: 836, baseType: !724, size: 32, offset: 5152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !470, file: !471, line: 840, baseType: !256, size: 64, offset: 5184)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !470, file: !471, line: 849, baseType: !469, size: 64, offset: 5248)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !470, file: !471, line: 852, baseType: !469, size: 64, offset: 5312)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !470, file: !471, line: 857, baseType: !93, size: 128, offset: 5376)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !470, file: !471, line: 858, baseType: !93, size: 128, offset: 5504)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !470, file: !471, line: 859, baseType: !469, size: 64, offset: 5632)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !470, file: !471, line: 867, baseType: !93, size: 128, offset: 5696)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !470, file: !471, line: 868, baseType: !93, size: 128, offset: 5824)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !470, file: !471, line: 871, baseType: !736, size: 64, offset: 5952)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !738, line: 59, size: 768, elements: !739)
!738 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !741, !742, !743, !754, !755, !762, !771}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !738, line: 61, baseType: !485, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !737, file: !738, line: 62, baseType: !7, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !738, line: 63, baseType: !165, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !737, file: !738, line: 65, baseType: !744, size: 256, offset: 64)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 256, elements: !406)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !94, line: 182, size: 64, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !745, file: !94, line: 183, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !94, line: 186, size: 128, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !749, file: !94, line: 187, baseType: !748, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !749, file: !94, line: 187, baseType: !753, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !737, file: !738, line: 66, baseType: !745, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !737, file: !738, line: 68, baseType: !756, size: 128, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !757, line: 40, baseType: !758)
!757 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !757, line: 36, size: 128, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !758, file: !757, line: 37, baseType: !165)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !758, file: !757, line: 38, baseType: !93, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !737, file: !738, line: 69, baseType: !763, size: 128, align: 64, offset: 512)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !94, line: 216, size: 128, align: 64, elements: !764)
!764 = !{!765, !767}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !763, file: !94, line: 217, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !763, file: !94, line: 218, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !737, file: !738, line: 70, baseType: !772, size: 128, offset: 640)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 128, elements: !636)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !738, line: 54, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !773, file: !738, line: 55, baseType: !107, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !773, file: !738, line: 56, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !738, line: 56, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !470, file: !471, line: 872, baseType: !780, size: 512, offset: 6016)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !749, size: 512, elements: !406)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !470, file: !471, line: 873, baseType: !93, size: 128, offset: 6528)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !470, file: !471, line: 874, baseType: !93, size: 128, offset: 6656)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !470, file: !471, line: 876, baseType: !784, size: 64, offset: 6784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !786, line: 26, size: 192, elements: !787)
!786 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !785, file: !786, line: 27, baseType: !7, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !785, file: !786, line: 28, baseType: !790, size: 128, offset: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !791, line: 43, size: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !791, line: 44, baseType: !372)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !790, file: !791, line: 45, baseType: !93, size: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !470, file: !471, line: 879, baseType: !796, size: 64, offset: 6848)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !470, file: !471, line: 882, baseType: !796, size: 64, offset: 6912)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !470, file: !471, line: 884, baseType: !325, size: 64, offset: 6976)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !470, file: !471, line: 885, baseType: !325, size: 64, offset: 7040)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !470, file: !471, line: 890, baseType: !325, size: 64, offset: 7104)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !470, file: !471, line: 891, baseType: !802, size: 128, offset: 7168)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !471, line: 242, size: 128, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !802, file: !471, line: 244, baseType: !325, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !802, file: !471, line: 245, baseType: !325, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !802, file: !471, line: 246, baseType: !372, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !470, file: !471, line: 900, baseType: !256, size: 64, offset: 7296)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !470, file: !471, line: 901, baseType: !256, size: 64, offset: 7360)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !470, file: !471, line: 904, baseType: !325, size: 64, offset: 7424)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !470, file: !471, line: 907, baseType: !325, size: 64, offset: 7488)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !470, file: !471, line: 910, baseType: !256, size: 64, offset: 7552)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !470, file: !471, line: 911, baseType: !256, size: 64, offset: 7616)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !470, file: !471, line: 914, baseType: !814, size: 640, offset: 7680)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !815, line: 123, size: 640, elements: !816)
!815 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !823, !824}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !814, file: !815, line: 124, baseType: !818, size: 576)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 576, elements: !207)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !815, line: 108, size: 192, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !819, file: !815, line: 109, baseType: !325, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !819, file: !815, line: 110, baseType: !603, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !814, file: !815, line: 125, baseType: !7, size: 32, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !814, file: !815, line: 126, baseType: !7, size: 32, offset: 608)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !470, file: !471, line: 917, baseType: !826, size: 192, offset: 8320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !815, line: 134, size: 192, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !826, file: !815, line: 135, baseType: !763, size: 128, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !826, file: !815, line: 136, baseType: !7, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !470, file: !471, line: 923, baseType: !831, size: 64, offset: 8512)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !834, line: 11, flags: DIFlagFwdDecl)
!834 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!835 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !470, file: !471, line: 926, baseType: !831, size: 64, offset: 8576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !470, file: !471, line: 929, baseType: !831, size: 64, offset: 8640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !470, file: !471, line: 933, baseType: !838, size: 64, offset: 8704)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !471, line: 933, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !470, file: !471, line: 943, baseType: !841, size: 128, offset: 8768)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 128, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 16)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !470, file: !471, line: 945, baseType: !845, size: 64, offset: 8896)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !471, line: 49, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !470, file: !471, line: 956, baseType: !848, size: 64, offset: 8960)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !471, line: 45, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !470, file: !471, line: 959, baseType: !851, size: 64, offset: 9024)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !471, line: 959, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !470, file: !471, line: 962, baseType: !854, size: 64, offset: 9088)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !471, line: 66, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !470, file: !471, line: 966, baseType: !857, size: 64, offset: 9152)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !859, line: 35, flags: DIFlagFwdDecl)
!859 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !470, file: !471, line: 969, baseType: !861, size: 64, offset: 9216)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !815, line: 223, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !470, file: !471, line: 970, baseType: !864, size: 64, offset: 9280)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !471, line: 62, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !470, file: !471, line: 971, baseType: !867, size: 64, offset: 9344)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !868, line: 25, baseType: !869)
!868 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !868, line: 23, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !869, file: !868, line: 24, baseType: !635, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !470, file: !471, line: 972, baseType: !867, size: 64, offset: 9408)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !470, file: !471, line: 974, baseType: !867, size: 64, offset: 9472)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !470, file: !471, line: 975, baseType: !875, size: 192, offset: 9536)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !876, line: 30, size: 192, elements: !877)
!876 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !875, file: !876, line: 31, baseType: !93, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !875, file: !876, line: 32, baseType: !867, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !470, file: !471, line: 976, baseType: !256, size: 64, offset: 9728)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !470, file: !471, line: 977, baseType: !253, size: 64, offset: 9792)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !470, file: !471, line: 978, baseType: !7, size: 32, offset: 9856)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !470, file: !471, line: 980, baseType: !766, size: 64, offset: 9920)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !470, file: !471, line: 989, baseType: !885, size: 128, offset: 9984)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !886, line: 35, size: 128, elements: !887)
!886 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !885, file: !886, line: 36, baseType: !107, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !885, file: !886, line: 37, baseType: !347, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !885, file: !886, line: 38, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !886, line: 23, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !470, file: !471, line: 992, baseType: !325, size: 64, offset: 10112)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !470, file: !471, line: 993, baseType: !325, size: 64, offset: 10176)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !470, file: !471, line: 996, baseType: !165, offset: 10240)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !470, file: !471, line: 999, baseType: !372, offset: 10240)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !470, file: !471, line: 1001, baseType: !898, size: 64, offset: 10240)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !471, line: 636, size: 64, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !471, line: 637, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !470, file: !471, line: 1005, baseType: !606, size: 128, offset: 10304)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !470, file: !471, line: 1007, baseType: !469, size: 64, offset: 10432)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !470, file: !471, line: 1009, baseType: !905, size: 64, offset: 10496)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !471, line: 1009, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !470, file: !471, line: 1043, baseType: !88, size: 64, offset: 10560)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !470, file: !471, line: 1046, baseType: !909, size: 64, offset: 10624)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !471, line: 41, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !470, file: !471, line: 1050, baseType: !912, size: 64, offset: 10688)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !471, line: 42, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !470, file: !471, line: 1054, baseType: !915, size: 64, offset: 10752)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !471, line: 55, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !470, file: !471, line: 1056, baseType: !918, size: 64, offset: 10816)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !471, line: 40, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !470, file: !471, line: 1058, baseType: !921, size: 64, offset: 10880)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !471, line: 47, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !470, file: !471, line: 1061, baseType: !924, size: 64, offset: 10944)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !471, line: 43, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !470, file: !471, line: 1064, baseType: !256, size: 64, offset: 11008)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !470, file: !471, line: 1065, baseType: !928, size: 64, offset: 11072)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !876, line: 14, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !876, line: 12, size: 384, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !876, line: 13, baseType: !933, size: 384)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !876, line: 13, size: 384, elements: !934)
!934 = !{!935, !936, !937, !938}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !933, file: !876, line: 13, baseType: !107, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !933, file: !876, line: 13, baseType: !107, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !933, file: !876, line: 13, baseType: !107, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !933, file: !876, line: 13, baseType: !939, size: 256, offset: 128)
!939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !940, line: 32, size: 256, elements: !941)
!940 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!941 = !{!942, !948, !961, !967, !976, !996, !1001}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !939, file: !940, line: 37, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 34, size: 64, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !943, file: !940, line: 35, baseType: !725, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !943, file: !940, line: 36, baseType: !947, size: 32, offset: 32)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !239, line: 49, baseType: !7)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !939, file: !940, line: 45, baseType: !949, size: 192)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 40, size: 192, elements: !950)
!950 = !{!951, !953, !954, !960}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !949, file: !940, line: 41, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !239, line: 95, baseType: !107)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !949, file: !940, line: 42, baseType: !107, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !949, file: !940, line: 43, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !940, line: 11, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !940, line: 8, size: 64, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !956, file: !940, line: 9, baseType: !107, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !956, file: !940, line: 10, baseType: !88, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !949, file: !940, line: 44, baseType: !107, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !939, file: !940, line: 52, baseType: !962, size: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 48, size: 128, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !962, file: !940, line: 49, baseType: !725, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !962, file: !940, line: 50, baseType: !947, size: 32, offset: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !962, file: !940, line: 51, baseType: !955, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !939, file: !940, line: 61, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 55, size: 256, elements: !969)
!969 = !{!970, !971, !972, !973, !975}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !968, file: !940, line: 56, baseType: !725, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !968, file: !940, line: 57, baseType: !947, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !968, file: !940, line: 58, baseType: !107, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !968, file: !940, line: 59, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !239, line: 94, baseType: !240)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !968, file: !940, line: 60, baseType: !974, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !939, file: !940, line: 95, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 64, size: 256, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !977, file: !940, line: 65, baseType: !88, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !940, line: 77, baseType: !981, size: 192, offset: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !977, file: !940, line: 77, size: 192, elements: !982)
!982 = !{!983, !984, !991}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !981, file: !940, line: 82, baseType: !458, size: 16)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !981, file: !940, line: 88, baseType: !985, size: 192)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !940, line: 84, size: 192, elements: !986)
!986 = !{!987, !989, !990}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !985, file: !940, line: 85, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !585)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !985, file: !940, line: 86, baseType: !88, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !985, file: !940, line: 87, baseType: !88, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !981, file: !940, line: 93, baseType: !992, size: 96)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !940, line: 90, size: 96, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !992, file: !940, line: 91, baseType: !988, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !992, file: !940, line: 92, baseType: !480, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !939, file: !940, line: 101, baseType: !997, size: 128)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 98, size: 128, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !997, file: !940, line: 99, baseType: !241, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !997, file: !940, line: 100, baseType: !107, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !939, file: !940, line: 108, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !939, file: !940, line: 104, size: 128, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1002, file: !940, line: 105, baseType: !88, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1002, file: !940, line: 106, baseType: !107, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1002, file: !940, line: 107, baseType: !7, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !470, file: !471, line: 1067, baseType: !1008, offset: 11136)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1009, line: 12, elements: !179)
!1009 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !470, file: !471, line: 1099, baseType: !1011, size: 64, offset: 11136)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !471, line: 56, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !470, file: !471, line: 1103, baseType: !93, size: 128, offset: 11200)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !470, file: !471, line: 1104, baseType: !1015, size: 64, offset: 11328)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !471, line: 46, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !470, file: !471, line: 1105, baseType: !424, size: 192, offset: 11392)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !470, file: !471, line: 1106, baseType: !7, size: 32, offset: 11584)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !470, file: !471, line: 1109, baseType: !1020, size: 128, offset: 11648)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 128, elements: !1023)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !471, line: 51, flags: DIFlagFwdDecl)
!1023 = !{!1024}
!1024 = !DISubrange(count: 2)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !470, file: !471, line: 1110, baseType: !424, size: 192, offset: 11776)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !470, file: !471, line: 1111, baseType: !93, size: 128, offset: 11968)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !470, file: !471, line: 1173, baseType: !1028, size: 64, offset: 12096)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1030, line: 62, size: 256, align: 256, elements: !1031)
!1030 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032, !1033, !1034, !1039}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1029, file: !1030, line: 75, baseType: !480, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1029, file: !1030, line: 90, baseType: !480, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1029, file: !1030, line: 124, baseType: !1035, size: 64, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !1030, line: 109, size: 64, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1035, file: !1030, line: 110, baseType: !327, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1035, file: !1030, line: 112, baseType: !327, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !1030, line: 144, baseType: !480, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !470, file: !471, line: 1174, baseType: !479, size: 32, offset: 12160)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !470, file: !471, line: 1179, baseType: !256, size: 64, offset: 12224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !470, file: !471, line: 1182, baseType: !1043, size: 128, offset: 12288)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !402, line: 76, size: 128, elements: !1044)
!1044 = !{!1045, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1043, file: !402, line: 85, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1047, line: 7, size: 64, elements: !1048)
!1047 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1046, file: !1047, line: 12, baseType: !632, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1043, file: !402, line: 88, baseType: !134, size: 8, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1043, file: !402, line: 95, baseType: !134, size: 8, offset: 72)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !471, line: 1184, baseType: !1053, size: 128, offset: 12416)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !471, line: 1184, size: 128, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1053, file: !471, line: 1185, baseType: !485, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1053, file: !471, line: 1186, baseType: !763, size: 128, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !470, file: !471, line: 1190, baseType: !1058, size: 64, offset: 12544)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !471, line: 53, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !470, file: !471, line: 1192, baseType: !1061, size: 128, offset: 12608)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !402, line: 64, size: 128, elements: !1062)
!1062 = !{!1063, !1156, !1157}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1061, file: !402, line: 65, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !297, line: 68, size: 512, align: 128, elements: !1066)
!1066 = !{!1067, !1068, !1148, !1155}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !297, line: 69, baseType: !256, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !297, line: 77, baseType: !1069, size: 320, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !297, line: 77, size: 320, elements: !1070)
!1070 = !{!1071, !1080, !1085, !1113, !1121, !1127, !1140, !1147}
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 78, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 78, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1078, !1079}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1072, file: !297, line: 84, baseType: !93, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1072, file: !297, line: 86, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !297, line: 26, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !297, line: 87, baseType: !256, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1072, file: !297, line: 94, baseType: !256, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 96, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 96, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1081, file: !297, line: 101, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !94, line: 143, baseType: !325)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 103, baseType: !1086, size: 320)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 103, size: 320, elements: !1087)
!1087 = !{!1088, !1098, !1101, !1102}
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !297, line: 104, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !297, line: 104, size: 128, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1089, file: !297, line: 105, baseType: !93, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !297, line: 106, baseType: !1093, size: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !297, line: 106, size: 128, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !297, line: 107, baseType: !1064, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1093, file: !297, line: 109, baseType: !107, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1093, file: !297, line: 110, baseType: !107, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1086, file: !297, line: 117, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !297, line: 117, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1086, file: !297, line: 119, baseType: !88, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !297, line: 120, baseType: !1103, size: 64, offset: 256)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !297, line: 120, size: 64, elements: !1104)
!1104 = !{!1105, !1106, !1107}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1103, file: !297, line: 121, baseType: !88, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1103, file: !297, line: 122, baseType: !256, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !297, line: 123, baseType: !1108, size: 32)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1103, file: !297, line: 123, size: 32, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1108, file: !297, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1108, file: !297, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1108, file: !297, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 130, baseType: !1114, size: 192)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 130, size: 192, elements: !1115)
!1115 = !{!1116, !1117, !1118, !1119, !1120}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1114, file: !297, line: 131, baseType: !256, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1114, file: !297, line: 134, baseType: !618, size: 8, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1114, file: !297, line: 135, baseType: !618, size: 8, offset: 72)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1114, file: !297, line: 136, baseType: !347, size: 32, offset: 96)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1114, file: !297, line: 137, baseType: !7, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 139, baseType: !1122, size: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 139, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1122, file: !297, line: 140, baseType: !256, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1122, file: !297, line: 141, baseType: !347, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1122, file: !297, line: 143, baseType: !93, size: 128, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 145, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 145, size: 256, elements: !1129)
!1129 = !{!1130, !1131, !1133, !1134, !1139}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1128, file: !297, line: 146, baseType: !256, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1128, file: !297, line: 147, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !286, line: 509, baseType: !1064)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1128, file: !297, line: 148, baseType: !256, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !297, line: 149, baseType: !1135, size: 64, offset: 192)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !297, line: 149, size: 64, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1135, file: !297, line: 150, baseType: !313, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1135, file: !297, line: 151, baseType: !347, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1128, file: !297, line: 156, baseType: !165, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !297, line: 159, baseType: !1141, size: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !297, line: 159, size: 128, elements: !1142)
!1142 = !{!1143, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1141, file: !297, line: 161, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !297, line: 161, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1141, file: !297, line: 162, baseType: !88, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1069, file: !297, line: 176, baseType: !763, size: 128, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !297, line: 179, baseType: !1149, size: 32, offset: 384)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !297, line: 179, size: 32, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1149, file: !297, line: 184, baseType: !347, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1149, file: !297, line: 192, baseType: !7, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1149, file: !297, line: 194, baseType: !7, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1149, file: !297, line: 195, baseType: !107, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1065, file: !297, line: 199, baseType: !347, size: 32, offset: 416)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1061, file: !402, line: 67, baseType: !480, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1061, file: !402, line: 68, baseType: !480, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !470, file: !471, line: 1206, baseType: !107, size: 32, offset: 12736)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !470, file: !471, line: 1207, baseType: !107, size: 32, offset: 12768)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !470, file: !471, line: 1209, baseType: !256, size: 64, offset: 12800)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !470, file: !471, line: 1219, baseType: !325, size: 64, offset: 12864)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !470, file: !471, line: 1220, baseType: !325, size: 64, offset: 12928)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !470, file: !471, line: 1317, baseType: !107, size: 32, offset: 12992)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !470, file: !471, line: 1319, baseType: !469, size: 64, offset: 13056)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !470, file: !471, line: 1322, baseType: !1166, size: 64, offset: 13120)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1168, line: 56, size: 512, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1176, !1177, !1179}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1167, file: !1168, line: 57, baseType: !1166, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1167, file: !1168, line: 58, baseType: !88, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1167, file: !1168, line: 59, baseType: !256, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1168, line: 60, baseType: !256, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1167, file: !1168, line: 61, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1167, file: !1168, line: 62, baseType: !7, size: 32, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1167, file: !1168, line: 63, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !94, line: 153, baseType: !325)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1167, file: !1168, line: 64, baseType: !142, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !470, file: !471, line: 1326, baseType: !485, size: 32, offset: 13184)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !470, file: !471, line: 1342, baseType: !88, size: 64, offset: 13248)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !470, file: !471, line: 1343, baseType: !327, size: 64, offset: 13312)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !470, file: !471, line: 1344, baseType: !325, size: 64, offset: 13376)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !470, file: !471, line: 1345, baseType: !327, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !470, file: !471, line: 1346, baseType: !327, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !470, file: !471, line: 1347, baseType: !327, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !470, file: !471, line: 1348, baseType: !763, size: 128, align: 64, offset: 13504)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !470, file: !471, line: 1358, baseType: !1189, size: 34816, offset: 13824)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1190, line: 485, size: 34816, elements: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1226, !1229, !1230, !1231}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1189, file: !1190, line: 487, baseType: !1193, size: 192)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 192, elements: !207)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1195, line: 16, size: 64, elements: !1196)
!1195 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1194, file: !1195, line: 17, baseType: !453, size: 16)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1194, file: !1195, line: 18, baseType: !453, size: 16, offset: 16)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1194, file: !1195, line: 19, baseType: !453, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1194, file: !1195, line: 19, baseType: !453, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1194, file: !1195, line: 19, baseType: !453, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1194, file: !1195, line: 19, baseType: !453, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1194, file: !1195, line: 19, baseType: !453, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1194, file: !1195, line: 20, baseType: !453, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1194, file: !1195, line: 20, baseType: !453, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1194, file: !1195, line: 20, baseType: !453, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1194, file: !1195, line: 20, baseType: !453, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1194, file: !1195, line: 20, baseType: !453, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1194, file: !1195, line: 20, baseType: !453, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1189, file: !1190, line: 491, baseType: !256, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1189, file: !1190, line: 495, baseType: !248, size: 16, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1189, file: !1190, line: 496, baseType: !248, size: 16, offset: 272)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1189, file: !1190, line: 497, baseType: !248, size: 16, offset: 288)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1189, file: !1190, line: 498, baseType: !248, size: 16, offset: 304)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1189, file: !1190, line: 502, baseType: !256, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1189, file: !1190, line: 503, baseType: !256, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1189, file: !1190, line: 514, baseType: !1218, size: 256, offset: 448)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !406)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1190, line: 483, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1189, file: !1190, line: 516, baseType: !256, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1189, file: !1190, line: 518, baseType: !256, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1189, file: !1190, line: 520, baseType: !256, size: 64, offset: 832)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1189, file: !1190, line: 521, baseType: !256, size: 64, offset: 896)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1189, file: !1190, line: 522, baseType: !256, size: 64, offset: 960)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1189, file: !1190, line: 528, baseType: !1227, size: 64, offset: 1024)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1190, line: 10, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1189, file: !1190, line: 535, baseType: !256, size: 64, offset: 1088)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1189, file: !1190, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1189, file: !1190, line: 540, baseType: !1232, size: 33280, offset: 1536)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1233, line: 317, size: 33280, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1232, file: !1233, line: 330, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1232, file: !1233, line: 337, baseType: !256, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1232, file: !1233, line: 348, baseType: !1238, size: 32768, offset: 512)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1233, line: 304, size: 32768, elements: !1239)
!1239 = !{!1240, !1255, !1294, !1344, !1361}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1238, file: !1233, line: 305, baseType: !1241, size: 896)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1233, line: 12, size: 896, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1241, file: !1233, line: 13, baseType: !479, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1241, file: !1233, line: 14, baseType: !479, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1241, file: !1233, line: 15, baseType: !479, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1241, file: !1233, line: 16, baseType: !479, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1241, file: !1233, line: 17, baseType: !479, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1241, file: !1233, line: 18, baseType: !479, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1241, file: !1233, line: 19, baseType: !479, size: 32, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1241, file: !1233, line: 22, baseType: !1251, size: 640, offset: 224)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 640, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 20)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1241, file: !1233, line: 25, baseType: !479, size: 32, offset: 864)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1238, file: !1233, line: 306, baseType: !1256, size: 4096, align: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1233, line: 34, size: 4096, align: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1277, !1278, !1279, !1283, !1285, !1289}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1256, file: !1233, line: 35, baseType: !453, size: 16)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1256, file: !1233, line: 36, baseType: !453, size: 16, offset: 16)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1256, file: !1233, line: 37, baseType: !453, size: 16, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1256, file: !1233, line: 38, baseType: !453, size: 16, offset: 48)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !1233, line: 39, baseType: !1263, size: 128, offset: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !1233, line: 39, size: 128, elements: !1264)
!1264 = !{!1265, !1270}
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1233, line: 40, baseType: !1266, size: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !1233, line: 40, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1266, file: !1233, line: 41, baseType: !325, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1266, file: !1233, line: 42, baseType: !325, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1233, line: 44, baseType: !1271, size: 128)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1263, file: !1233, line: 44, size: 128, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1271, file: !1233, line: 45, baseType: !479, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1271, file: !1233, line: 46, baseType: !479, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1271, file: !1233, line: 47, baseType: !479, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1271, file: !1233, line: 48, baseType: !479, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1256, file: !1233, line: 51, baseType: !479, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1256, file: !1233, line: 52, baseType: !479, size: 32, offset: 224)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1256, file: !1233, line: 55, baseType: !1280, size: 1024, offset: 256)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 1024, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1256, file: !1233, line: 58, baseType: !1284, size: 2048, offset: 1280)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 2048, elements: !211)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1256, file: !1233, line: 60, baseType: !1286, size: 384, offset: 3328)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 384, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 12)
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !1233, line: 62, baseType: !1290, size: 384, offset: 3712)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !1233, line: 62, size: 384, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1290, file: !1233, line: 63, baseType: !1286, size: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1290, file: !1233, line: 64, baseType: !1286, size: 384)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1238, file: !1233, line: 307, baseType: !1295, size: 1088)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1233, line: 79, size: 1088, elements: !1296)
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1343}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1295, file: !1233, line: 80, baseType: !479, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1295, file: !1233, line: 81, baseType: !479, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1295, file: !1233, line: 82, baseType: !479, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1295, file: !1233, line: 83, baseType: !479, size: 32, offset: 96)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1295, file: !1233, line: 84, baseType: !479, size: 32, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1295, file: !1233, line: 85, baseType: !479, size: 32, offset: 160)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1295, file: !1233, line: 86, baseType: !479, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1295, file: !1233, line: 88, baseType: !1251, size: 640, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1295, file: !1233, line: 89, baseType: !616, size: 8, offset: 864)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1295, file: !1233, line: 90, baseType: !616, size: 8, offset: 872)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1295, file: !1233, line: 91, baseType: !616, size: 8, offset: 880)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1295, file: !1233, line: 92, baseType: !616, size: 8, offset: 888)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1295, file: !1233, line: 93, baseType: !616, size: 8, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1295, file: !1233, line: 94, baseType: !616, size: 8, offset: 904)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1295, file: !1233, line: 95, baseType: !1312, size: 64, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1314, line: 11, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1313, file: !1314, line: 12, baseType: !241, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1313, file: !1314, line: 13, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1320, line: 56, size: 1344, elements: !1321)
!1320 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1319, file: !1320, line: 61, baseType: !256, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1319, file: !1320, line: 62, baseType: !256, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1319, file: !1320, line: 63, baseType: !256, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1319, file: !1320, line: 64, baseType: !256, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1319, file: !1320, line: 65, baseType: !256, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1319, file: !1320, line: 66, baseType: !256, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1319, file: !1320, line: 68, baseType: !256, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1319, file: !1320, line: 69, baseType: !256, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1319, file: !1320, line: 70, baseType: !256, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1319, file: !1320, line: 71, baseType: !256, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1319, file: !1320, line: 72, baseType: !256, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1319, file: !1320, line: 73, baseType: !256, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1319, file: !1320, line: 74, baseType: !256, size: 64, offset: 768)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1319, file: !1320, line: 75, baseType: !256, size: 64, offset: 832)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1319, file: !1320, line: 76, baseType: !256, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1319, file: !1320, line: 81, baseType: !256, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1319, file: !1320, line: 83, baseType: !256, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1319, file: !1320, line: 84, baseType: !256, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1320, line: 85, baseType: !256, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1319, file: !1320, line: 86, baseType: !256, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1319, file: !1320, line: 87, baseType: !256, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1295, file: !1233, line: 96, baseType: !479, size: 32, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1238, file: !1233, line: 308, baseType: !1345, size: 4608, align: 512)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1233, line: 289, size: 4608, align: 512, elements: !1346)
!1346 = !{!1347, !1348, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1345, file: !1233, line: 290, baseType: !1256, size: 4096, align: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1345, file: !1233, line: 291, baseType: !1349, size: 512, offset: 4096)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1233, line: 268, size: 512, elements: !1350)
!1350 = !{!1351, !1352, !1353}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1349, file: !1233, line: 269, baseType: !325, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1349, file: !1233, line: 270, baseType: !325, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1349, file: !1233, line: 271, baseType: !1354, size: 384, offset: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 384, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 6)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1345, file: !1233, line: 292, baseType: !1358, offset: 4608)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, elements: !1359)
!1359 = !{!1360}
!1360 = !DISubrange(count: 0)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1238, file: !1233, line: 309, baseType: !1362, size: 32768)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 32768, elements: !1363)
!1363 = !{!1364}
!1364 = !DISubrange(count: 4096)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !297, line: 378, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !462, file: !297, line: 384, baseType: !785, size: 192, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !317, file: !297, line: 500, baseType: !165, offset: 6656)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !317, file: !297, line: 501, baseType: !1370, size: 64, offset: 6656)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !297, line: 387, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !317, file: !297, line: 516, baseType: !1373, size: 64, offset: 6720)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1375, line: 18, flags: DIFlagFwdDecl)
!1375 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !317, file: !297, line: 519, baseType: !284, size: 64, offset: 6784)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !317, file: !297, line: 521, baseType: !1378, size: 64, offset: 6848)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !297, line: 521, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !317, file: !297, line: 545, baseType: !347, size: 32, offset: 6912)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !317, file: !297, line: 548, baseType: !134, size: 8, offset: 6944)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !317, file: !297, line: 550, baseType: !1383, offset: 6952)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1384, line: 142, elements: !179)
!1384 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !317, file: !297, line: 554, baseType: !1386, size: 256, offset: 6976)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1387, line: 102, size: 256, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !{!1389, !1390, !1391}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1386, file: !1387, line: 103, baseType: !355, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1386, file: !1387, line: 104, baseType: !93, size: 128, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1386, file: !1387, line: 105, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1387, line: 21, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !317, file: !297, line: 557, baseType: !479, size: 32, offset: 7232)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !314, file: !297, line: 565, baseType: !1399, offset: 7296)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: -1)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !296, file: !297, line: 333, baseType: !1403, size: 64, offset: 576)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !286, line: 284, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !286, line: 284, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1404, file: !286, line: 284, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !345, line: 19, baseType: !256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !296, file: !297, line: 334, baseType: !256, size: 64, offset: 640)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !296, file: !297, line: 343, baseType: !1410, size: 256, offset: 704)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !297, line: 340, size: 256, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1410, file: !297, line: 341, baseType: !304, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1410, file: !297, line: 342, baseType: !256, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !296, file: !297, line: 351, baseType: !93, size: 128, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !296, file: !297, line: 353, baseType: !1416, size: 64, offset: 1088)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !297, line: 353, flags: DIFlagFwdDecl)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !296, file: !297, line: 356, baseType: !1419, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !297, line: 356, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !296, file: !297, line: 359, baseType: !256, size: 64, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !296, file: !297, line: 361, baseType: !284, size: 64, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !296, file: !297, line: 362, baseType: !88, size: 64, offset: 1344)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !296, file: !297, line: 365, baseType: !355, size: 64, offset: 1408)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !296, file: !297, line: 373, baseType: !1427, offset: 1472)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !297, line: 296, elements: !179)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !263, file: !231, line: 90, baseType: !258, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !263, file: !231, line: 91, baseType: !1430, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !221, file: !150, line: 143, baseType: !1432, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!1435, !158}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1438)
!1438 = !{!1439, !1440, !1444, !1448, !1454, !1458}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1437, file: !18, line: 40, baseType: !17, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1437, file: !18, line: 41, baseType: !1441, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!134}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1437, file: !18, line: 42, baseType: !1445, size: 64, offset: 128)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!88}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1437, file: !18, line: 43, baseType: !1449, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!142, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1437, file: !18, line: 44, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!142}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1437, file: !18, line: 45, baseType: !1459, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !88}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !221, file: !150, line: 144, baseType: !1463, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!142, !158}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !221, file: !150, line: 145, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !158, !1470, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1375, line: 23, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1375, line: 21, size: 32, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1472, file: !1375, line: 22, baseType: !1475, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !94, line: 32, baseType: !947)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1375, line: 28, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1375, line: 26, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1478, file: !1375, line: 27, baseType: !1481, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !94, line: 33, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !239, line: 50, baseType: !7)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !149, file: !150, line: 70, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1486, line: 123, size: 1024, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1630, !1631, !1632, !1633, !1634}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1485, file: !1486, line: 124, baseType: !347, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1485, file: !1486, line: 125, baseType: !347, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1485, file: !1486, line: 135, baseType: !1484, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1485, file: !1486, line: 136, baseType: !153, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1485, file: !1486, line: 138, baseType: !304, size: 192, align: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !1486, line: 140, baseType: !142, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1485, file: !1486, line: 141, baseType: !7, size: 32, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1486, line: 142, baseType: !1496, size: 256, offset: 512)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1486, line: 142, size: 256, elements: !1497)
!1497 = !{!1498, !1553, !1557}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1496, file: !1486, line: 143, baseType: !1499, size: 192)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1486, line: 91, size: 192, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1499, file: !1486, line: 92, baseType: !256, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1499, file: !1486, line: 94, baseType: !321, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1499, file: !1486, line: 100, baseType: !1504, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1486, line: 180, size: 704, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1523, !1524, !1525, !1551, !1552}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1505, file: !1486, line: 182, baseType: !1484, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1505, file: !1486, line: 183, baseType: !7, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1505, file: !1486, line: 186, baseType: !1510, size: 192, offset: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1511, line: 19, size: 192, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1521, !1522}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1510, file: !1511, line: 20, baseType: !1514, size: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1515, line: 292, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518, !1520}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1514, file: !1515, line: 293, baseType: !165)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1514, file: !1515, line: 295, baseType: !1519, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !94, line: 148, baseType: !7)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1514, file: !1515, line: 296, baseType: !88, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1510, file: !1511, line: 21, baseType: !7, size: 32, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1510, file: !1511, line: 22, baseType: !7, size: 32, offset: 160)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1505, file: !1486, line: 187, baseType: !479, size: 32, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1505, file: !1486, line: 188, baseType: !479, size: 32, offset: 352)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1505, file: !1486, line: 189, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1486, line: 168, size: 320, elements: !1528)
!1528 = !{!1529, !1535, !1539, !1543, !1547}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1527, file: !1486, line: 169, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!107, !1533, !1504}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !286, line: 539, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1527, file: !1486, line: 171, baseType: !1536, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!107, !1484, !153, !247}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1527, file: !1486, line: 173, baseType: !1540, size: 64, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!107, !1484}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1527, file: !1486, line: 174, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!107, !1484, !1484, !153}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1527, file: !1486, line: 176, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!107, !1533, !1484, !1504}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1505, file: !1486, line: 192, baseType: !93, size: 128, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1505, file: !1486, line: 194, baseType: !756, size: 128, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1496, file: !1486, line: 144, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1486, line: 103, size: 64, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1554, file: !1486, line: 104, baseType: !1484, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1496, file: !1486, line: 145, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1486, line: 107, size: 256, elements: !1559)
!1559 = !{!1560, !1625, !1628, !1629}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1558, file: !1486, line: 108, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1486, line: 217, size: 768, elements: !1564)
!1564 = !{!1565, !1585, !1589, !1593, !1598, !1602, !1606, !1610, !1611, !1612, !1613, !1621}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1563, file: !1486, line: 222, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!107, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1486, line: 197, size: 1088, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1570, file: !1486, line: 199, baseType: !1484, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1570, file: !1486, line: 200, baseType: !284, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1570, file: !1486, line: 201, baseType: !1533, size: 64, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1570, file: !1486, line: 202, baseType: !88, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1570, file: !1486, line: 205, baseType: !424, size: 192, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1570, file: !1486, line: 206, baseType: !424, size: 192, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1570, file: !1486, line: 207, baseType: !107, size: 32, offset: 640)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1570, file: !1486, line: 208, baseType: !93, size: 128, offset: 704)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1570, file: !1486, line: 209, baseType: !206, size: 64, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1570, file: !1486, line: 211, baseType: !253, size: 64, offset: 896)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1570, file: !1486, line: 212, baseType: !134, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1570, file: !1486, line: 213, baseType: !134, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1570, file: !1486, line: 214, baseType: !1419, size: 64, offset: 1024)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !1486, line: 223, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !1569}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1563, file: !1486, line: 236, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!107, !1533, !88}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1563, file: !1486, line: 238, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!88, !1533, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1563, file: !1486, line: 239, baseType: !1599, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!88, !1533, !88, !1597}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1563, file: !1486, line: 240, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1533, !88}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !1486, line: 242, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!237, !1569, !206, !253, !287}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1563, file: !1486, line: 252, baseType: !253, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1563, file: !1486, line: 259, baseType: !134, size: 8, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !1486, line: 260, baseType: !1607, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !1486, line: 263, baseType: !1614, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1569, !1619}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1618, line: 52, baseType: !7)
!1618 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1486, line: 27, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !1486, line: 266, baseType: !1622, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!107, !1569, !295}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1558, file: !1486, line: 109, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1486, line: 31, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1558, file: !1486, line: 110, baseType: !287, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1558, file: !1486, line: 111, baseType: !1484, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1485, file: !1486, line: 148, baseType: !88, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1485, file: !1486, line: 154, baseType: !325, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1485, file: !1486, line: 156, baseType: !248, size: 16, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1485, file: !1486, line: 157, baseType: !247, size: 16, offset: 912)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1485, file: !1486, line: 158, baseType: !1635, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1486, line: 32, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !149, file: !150, line: 71, baseType: !1638, size: 32, offset: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1639, line: 19, size: 32, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1638, file: !1639, line: 20, baseType: !485, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !149, file: !150, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !149, file: !150, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !149, file: !150, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !149, file: !150, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !149, file: !150, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !30, line: 463, baseType: !1648, size: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !146, file: !30, line: 465, baseType: !1650, size: 64, offset: 576)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !146, file: !30, line: 467, baseType: !153, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !30, line: 468, baseType: !1654, size: 64, offset: 704)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1664, !1669, !1673}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !30, line: 88, baseType: !153, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1656, file: !30, line: 89, baseType: !260, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1656, file: !30, line: 90, baseType: !1661, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!107, !1648, !201}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1656, file: !30, line: 91, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!206, !1648, !1668, !1470, !1476}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1656, file: !30, line: 93, baseType: !1670, size: 64, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1648}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1656, file: !30, line: 95, baseType: !1674, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1677)
!1677 = !{!1678, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1676, file: !37, line: 279, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!107, !1648}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1676, file: !37, line: 280, baseType: !1670, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1676, file: !37, line: 281, baseType: !1679, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1676, file: !37, line: 282, baseType: !1679, size: 64, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1676, file: !37, line: 283, baseType: !1679, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1676, file: !37, line: 284, baseType: !1679, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1676, file: !37, line: 285, baseType: !1679, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1676, file: !37, line: 286, baseType: !1679, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1676, file: !37, line: 287, baseType: !1679, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1676, file: !37, line: 288, baseType: !1679, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1676, file: !37, line: 289, baseType: !1679, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1676, file: !37, line: 290, baseType: !1679, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1676, file: !37, line: 291, baseType: !1679, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1676, file: !37, line: 292, baseType: !1679, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1676, file: !37, line: 293, baseType: !1679, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1676, file: !37, line: 294, baseType: !1679, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1676, file: !37, line: 295, baseType: !1679, size: 64, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1676, file: !37, line: 296, baseType: !1679, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1676, file: !37, line: 297, baseType: !1679, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1676, file: !37, line: 298, baseType: !1679, size: 64, offset: 1216)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1676, file: !37, line: 299, baseType: !1679, size: 64, offset: 1280)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1676, file: !37, line: 300, baseType: !1679, size: 64, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1676, file: !37, line: 301, baseType: !1679, size: 64, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !146, file: !30, line: 470, baseType: !1705, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1707, line: 82, size: 1408, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1794, !1797, !1800}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1706, file: !1707, line: 83, baseType: !153, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1706, file: !1707, line: 84, baseType: !153, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1706, file: !1707, line: 85, baseType: !1648, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1706, file: !1707, line: 86, baseType: !260, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1706, file: !1707, line: 87, baseType: !260, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1706, file: !1707, line: 88, baseType: !260, size: 64, offset: 320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1706, file: !1707, line: 90, baseType: !1716, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!107, !1648, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1728, !1729, !1730, !1731, !1745, !1758, !1759, !1760, !1761, !1762, !1770, !1771, !1772, !1773, !1774, !1775}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1720, file: !24, line: 96, baseType: !153, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1720, file: !24, line: 97, baseType: !1705, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1720, file: !24, line: 99, baseType: !1725, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1727, line: 76, flags: DIFlagFwdDecl)
!1727 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1720, file: !24, line: 100, baseType: !153, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1720, file: !24, line: 102, baseType: !134, size: 8, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1720, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1720, file: !24, line: 105, baseType: !1732, size: 64, offset: 320)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1735, line: 262, size: 1600, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1739, !1740, !1744}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1734, file: !1735, line: 263, baseType: !1738, size: 256)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !1281)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1734, file: !1735, line: 264, baseType: !1738, size: 256, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1734, file: !1735, line: 265, baseType: !1741, size: 1024, offset: 512)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1024, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1734, file: !1735, line: 266, baseType: !142, size: 64, offset: 1536)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1720, file: !24, line: 106, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1735, line: 210, size: 256, elements: !1749)
!1749 = !{!1750, !1754, !1756, !1757}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1748, file: !1735, line: 211, baseType: !1751, size: 72)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 72, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 9)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1748, file: !1735, line: 212, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1735, line: 14, baseType: !256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1748, file: !1735, line: 213, baseType: !480, size: 32, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1748, file: !1735, line: 214, baseType: !480, size: 32, offset: 224)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1720, file: !24, line: 108, baseType: !1679, size: 64, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1720, file: !24, line: 109, baseType: !1670, size: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1720, file: !24, line: 110, baseType: !1679, size: 64, offset: 576)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1720, file: !24, line: 111, baseType: !1670, size: 64, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1720, file: !24, line: 112, baseType: !1763, size: 64, offset: 704)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!107, !1648, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1767, file: !37, line: 51, baseType: !107, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1720, file: !24, line: 113, baseType: !1679, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1720, file: !24, line: 114, baseType: !260, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1720, file: !24, line: 115, baseType: !260, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1720, file: !24, line: 117, baseType: !1674, size: 64, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1720, file: !24, line: 118, baseType: !1670, size: 64, offset: 1024)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1720, file: !24, line: 120, baseType: !1776, size: 64, offset: 1088)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1706, file: !1707, line: 91, baseType: !1661, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1706, file: !1707, line: 92, baseType: !1679, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1706, file: !1707, line: 93, baseType: !1670, size: 64, offset: 576)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1706, file: !1707, line: 94, baseType: !1679, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1706, file: !1707, line: 95, baseType: !1670, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1706, file: !1707, line: 97, baseType: !1679, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1706, file: !1707, line: 98, baseType: !1679, size: 64, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1706, file: !1707, line: 100, baseType: !1763, size: 64, offset: 896)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1706, file: !1707, line: 101, baseType: !1679, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1706, file: !1707, line: 103, baseType: !1679, size: 64, offset: 1024)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1706, file: !1707, line: 105, baseType: !1679, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1706, file: !1707, line: 107, baseType: !1674, size: 64, offset: 1152)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1706, file: !1707, line: 109, baseType: !1791, size: 64, offset: 1216)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1707, line: 109, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1706, file: !1707, line: 111, baseType: !1795, size: 64, offset: 1280)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1707, line: 111, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1706, file: !1707, line: 112, baseType: !1798, offset: 1344)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1799, line: 187, elements: !179)
!1799 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1706, file: !1707, line: 114, baseType: !134, size: 8, offset: 1344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !146, file: !30, line: 471, baseType: !1719, size: 64, offset: 832)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !146, file: !30, line: 473, baseType: !88, size: 64, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !146, file: !30, line: 475, baseType: !88, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !30, line: 480, baseType: !424, size: 192, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !146, file: !30, line: 484, baseType: !1806, size: 576, offset: 1216)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1806, file: !30, line: 362, baseType: !93, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1806, file: !30, line: 363, baseType: !93, size: 128, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1806, file: !30, line: 364, baseType: !93, size: 128, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1806, file: !30, line: 365, baseType: !93, size: 128, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1806, file: !30, line: 366, baseType: !134, size: 8, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1806, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !146, file: !30, line: 485, baseType: !1815, size: 2304, offset: 1792)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1912, !1916}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1815, file: !37, line: 566, baseType: !1766, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1815, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1815, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1815, file: !37, line: 569, baseType: !134, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1815, file: !37, line: 570, baseType: !134, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1815, file: !37, line: 571, baseType: !134, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1815, file: !37, line: 572, baseType: !134, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1815, file: !37, line: 573, baseType: !134, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1815, file: !37, line: 574, baseType: !134, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1815, file: !37, line: 575, baseType: !134, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1815, file: !37, line: 576, baseType: !134, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1815, file: !37, line: 577, baseType: !479, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !37, line: 578, baseType: !165, offset: 96)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1815, file: !37, line: 580, baseType: !93, size: 128, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1815, file: !37, line: 581, baseType: !785, size: 192, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1815, file: !37, line: 582, baseType: !1833, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1835, line: 43, size: 1472, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1844, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1834, file: !1835, line: 44, baseType: !153, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1834, file: !1835, line: 45, baseType: !107, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1834, file: !1835, line: 46, baseType: !93, size: 128, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1834, file: !1835, line: 47, baseType: !165, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1834, file: !1835, line: 48, baseType: !1842, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1834, file: !1835, line: 49, baseType: !1845, size: 320, offset: 320)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1846, line: 11, size: 320, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1855}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1845, file: !1846, line: 16, baseType: !749, size: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1845, file: !1846, line: 17, baseType: !256, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1845, file: !1846, line: 18, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 19, baseType: !479, size: 32, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1834, file: !1835, line: 50, baseType: !256, size: 64, offset: 640)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1834, file: !1835, line: 51, baseType: !555, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1834, file: !1835, line: 52, baseType: !555, size: 64, offset: 768)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1834, file: !1835, line: 53, baseType: !555, size: 64, offset: 832)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1834, file: !1835, line: 54, baseType: !555, size: 64, offset: 896)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1834, file: !1835, line: 55, baseType: !555, size: 64, offset: 960)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1834, file: !1835, line: 56, baseType: !256, size: 64, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1834, file: !1835, line: 57, baseType: !256, size: 64, offset: 1088)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1834, file: !1835, line: 58, baseType: !256, size: 64, offset: 1152)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1834, file: !1835, line: 59, baseType: !256, size: 64, offset: 1216)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1834, file: !1835, line: 60, baseType: !256, size: 64, offset: 1280)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1834, file: !1835, line: 61, baseType: !1648, size: 64, offset: 1344)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1834, file: !1835, line: 62, baseType: !134, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1834, file: !1835, line: 63, baseType: !134, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1815, file: !37, line: 583, baseType: !134, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1815, file: !37, line: 584, baseType: !134, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1815, file: !37, line: 585, baseType: !134, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1815, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1815, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1815, file: !37, line: 592, baseType: !547, size: 512, offset: 576)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1815, file: !37, line: 593, baseType: !325, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1815, file: !37, line: 594, baseType: !1386, size: 256, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1815, file: !37, line: 595, baseType: !756, size: 128, offset: 1408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1815, file: !37, line: 596, baseType: !1842, size: 64, offset: 1536)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1815, file: !37, line: 597, baseType: !347, size: 32, offset: 1600)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1815, file: !37, line: 598, baseType: !347, size: 32, offset: 1632)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1815, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1815, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1815, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1815, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1815, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1815, file: !37, line: 604, baseType: !134, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1815, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1815, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1815, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1815, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1815, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1815, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1815, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1815, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1815, file: !37, line: 613, baseType: !107, size: 32, offset: 1792)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1815, file: !37, line: 614, baseType: !107, size: 32, offset: 1824)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1815, file: !37, line: 615, baseType: !325, size: 64, offset: 1856)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1815, file: !37, line: 616, baseType: !325, size: 64, offset: 1920)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1815, file: !37, line: 617, baseType: !325, size: 64, offset: 1984)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1815, file: !37, line: 618, baseType: !325, size: 64, offset: 2048)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1815, file: !37, line: 620, baseType: !1903, size: 64, offset: 2112)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1905)
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1904, file: !37, line: 537, baseType: !165)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1904, file: !37, line: 538, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1904, file: !37, line: 540, baseType: !93, size: 128, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1904, file: !37, line: 543, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1815, file: !37, line: 621, baseType: !1913, size: 64, offset: 2176)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1648, !709}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1815, file: !37, line: 622, baseType: !1917, size: 64, offset: 2240)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !146, file: !30, line: 486, baseType: !1920, size: 64, offset: 4096)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1929, !1930, !1931}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1921, file: !37, line: 643, baseType: !1676, size: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1921, file: !37, line: 644, baseType: !1679, size: 64, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1921, file: !37, line: 645, baseType: !1926, size: 64, offset: 1536)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1648, !134}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1921, file: !37, line: 646, baseType: !1679, size: 64, offset: 1600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1921, file: !37, line: 647, baseType: !1670, size: 64, offset: 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1921, file: !37, line: 648, baseType: !1670, size: 64, offset: 1728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !146, file: !30, line: 493, baseType: !1933, size: 64, offset: 4160)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1935)
!1935 = !{!1936, !1937, !1938, !2023, !2024, !2025, !2026, !2027, !2028, !2031, !2032, !2033, !2034, !2035, !2036, !2037}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1934, file: !51, line: 163, baseType: !93, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1934, file: !51, line: 164, baseType: !153, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1934, file: !51, line: 165, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1942)
!1942 = !{!1943, !1972, !1983, !1988, !1992, !2000, !2004, !2008, !2015, !2019}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1941, file: !51, line: 106, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!107, !1933, !1947, !50}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1949, line: 51, size: 1344, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1954, !1955, !1956, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1948, file: !1949, line: 52, baseType: !153, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1948, file: !1949, line: 53, baseType: !1953, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1949, line: 28, baseType: !479)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1948, file: !1949, line: 54, baseType: !153, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1948, file: !1949, line: 55, baseType: !112, size: 192, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1948, file: !1949, line: 57, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1949, line: 31, size: 704, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1958, file: !1949, line: 32, baseType: !206, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1958, file: !1949, line: 33, baseType: !107, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1958, file: !1949, line: 34, baseType: !88, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1958, file: !1949, line: 35, baseType: !1957, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1958, file: !1949, line: 43, baseType: !275, size: 448, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1948, file: !1949, line: 58, baseType: !1957, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1948, file: !1949, line: 59, baseType: !1947, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1948, file: !1949, line: 60, baseType: !1947, size: 64, offset: 576)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1948, file: !1949, line: 61, baseType: !1947, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1948, file: !1949, line: 63, baseType: !149, size: 512, offset: 704)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1948, file: !1949, line: 65, baseType: !256, size: 64, offset: 1216)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1948, file: !1949, line: 66, baseType: !88, size: 64, offset: 1280)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1941, file: !51, line: 108, baseType: !1973, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!107, !1933, !1976, !50}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1977, file: !51, line: 64, baseType: !116, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1977, file: !51, line: 65, baseType: !107, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1977, file: !51, line: 66, baseType: !1982, size: 512, offset: 96)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 512, elements: !842)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1941, file: !51, line: 110, baseType: !1984, size: 64, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!107, !1933, !7, !1987}
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !94, line: 164, baseType: !256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1941, file: !51, line: 111, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1933, !7}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1941, file: !51, line: 112, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!107, !1933, !1947, !1996, !7, !1998, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1941, file: !51, line: 117, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!107, !1933, !7, !7, !88}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1941, file: !51, line: 119, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !1933, !7, !7}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1941, file: !51, line: 121, baseType: !2009, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!107, !1933, !2012, !134}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2014, line: 11, flags: DIFlagFwdDecl)
!2014 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1941, file: !51, line: 122, baseType: !2016, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1933, !2012}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1941, file: !51, line: 123, baseType: !2020, size: 64, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!107, !1933, !1976, !1998, !1999}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1934, file: !51, line: 166, baseType: !88, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1934, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1934, file: !51, line: 171, baseType: !116, size: 64, offset: 384)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1934, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1934, file: !51, line: 173, baseType: !2029, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1934, file: !51, line: 175, baseType: !1933, size: 64, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1934, file: !51, line: 182, baseType: !1987, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1934, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1934, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1934, file: !51, line: 185, baseType: !1514, size: 128, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1934, file: !51, line: 186, baseType: !424, size: 192, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1934, file: !51, line: 187, baseType: !2038, offset: 1088)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1400)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !146, file: !30, line: 499, baseType: !93, size: 128, offset: 4224)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !146, file: !30, line: 502, baseType: !2041, size: 64, offset: 4352)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2043)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !146, file: !30, line: 504, baseType: !2045, size: 64, offset: 4416)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !146, file: !30, line: 505, baseType: !325, size: 64, offset: 4480)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !146, file: !30, line: 510, baseType: !325, size: 64, offset: 4544)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !146, file: !30, line: 511, baseType: !2049, size: 64, offset: 4608)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !146, file: !30, line: 513, baseType: !2053, size: 64, offset: 4672)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2054, file: !30, line: 293, baseType: !7, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2054, file: !30, line: 294, baseType: !256, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !146, file: !30, line: 515, baseType: !93, size: 128, offset: 4736)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !146, file: !30, line: 526, baseType: !2060, offset: 4864)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2061, line: 5, elements: !179)
!2061 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !146, file: !30, line: 528, baseType: !1947, size: 64, offset: 4864)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !146, file: !30, line: 529, baseType: !116, size: 64, offset: 4928)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !146, file: !30, line: 534, baseType: !2065, size: 32, offset: 4992)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !94, line: 16, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !94, line: 13, baseType: !479)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !146, file: !30, line: 535, baseType: !479, size: 32, offset: 5024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !146, file: !30, line: 537, baseType: !165, offset: 5056)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !146, file: !30, line: 538, baseType: !93, size: 128, offset: 5056)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !146, file: !30, line: 540, baseType: !2071, size: 64, offset: 5184)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2073, line: 54, size: 960, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2085, !2089, !2090, !2091, !2092, !2096, !2100, !2101}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2072, file: !2073, line: 55, baseType: !153, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2072, file: !2073, line: 56, baseType: !1725, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2072, file: !2073, line: 58, baseType: !260, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2072, file: !2073, line: 59, baseType: !260, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2072, file: !2073, line: 60, baseType: !158, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2072, file: !2073, line: 62, baseType: !1661, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2072, file: !2073, line: 63, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!206, !1648, !1668}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2072, file: !2073, line: 65, baseType: !2086, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !2071}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2072, file: !2073, line: 66, baseType: !1670, size: 64, offset: 512)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2072, file: !2073, line: 68, baseType: !1679, size: 64, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2072, file: !2073, line: 70, baseType: !1435, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2072, file: !2073, line: 71, baseType: !2093, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!142, !1648}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2072, file: !2073, line: 73, baseType: !2097, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !1648, !1470, !1476}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2072, file: !2073, line: 75, baseType: !1674, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2072, file: !2073, line: 77, baseType: !1795, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !146, file: !30, line: 541, baseType: !260, size: 64, offset: 5248)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !146, file: !30, line: 543, baseType: !1670, size: 64, offset: 5312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !146, file: !30, line: 544, baseType: !2105, size: 64, offset: 5376)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !146, file: !30, line: 545, baseType: !2108, size: 64, offset: 5440)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !146, file: !30, line: 547, baseType: !134, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !146, file: !30, line: 548, baseType: !134, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !146, file: !30, line: 549, baseType: !134, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !146, file: !30, line: 550, baseType: !134, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !120, file: !113, line: 116, baseType: !2115, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!134, !136, !153}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !120, file: !113, line: 118, baseType: !2119, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!107, !136, !153, !7, !88, !253}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !120, file: !113, line: 123, baseType: !2123, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!107, !136, !153, !2126, !253}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !120, file: !113, line: 126, baseType: !2128, size: 64, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!153, !136}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !120, file: !113, line: 127, baseType: !2128, size: 64, offset: 512)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !120, file: !113, line: 128, baseType: !2133, size: 64, offset: 576)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!116, !136}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !120, file: !113, line: 130, baseType: !2137, size: 64, offset: 640)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!116, !136, !116}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !120, file: !113, line: 133, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!116, !136, !153}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !120, file: !113, line: 135, baseType: !2145, size: 64, offset: 768)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!107, !136, !153, !153, !7, !7, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !113, line: 43, size: 640, elements: !2150)
!2150 = !{!2151, !2152, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2149, file: !113, line: 44, baseType: !116, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2149, file: !113, line: 45, baseType: !7, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2149, file: !113, line: 46, baseType: !2154, size: 512, offset: 128)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 512, elements: !585)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !120, file: !113, line: 140, baseType: !2137, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !120, file: !113, line: 143, baseType: !2133, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !120, file: !113, line: 145, baseType: !123, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !120, file: !113, line: 146, baseType: !2159, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!107, !136, !2162}
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !113, line: 29, size: 128, elements: !2164)
!2164 = !{!2165, !2166, !2167}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2163, file: !113, line: 30, baseType: !7, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2163, file: !113, line: 31, baseType: !7, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2163, file: !113, line: 32, baseType: !136, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !120, file: !113, line: 148, baseType: !2169, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!107, !136, !1648}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !112, file: !113, line: 20, baseType: !1648, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !70, line: 355, baseType: !2174, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !104, file: !70, line: 356, baseType: !93, size: 128, offset: 384)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !70, line: 357, baseType: !93, size: 128, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !104, file: !70, line: 358, baseType: !93, size: 128, offset: 640)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !104, file: !70, line: 359, baseType: !93, size: 128, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !104, file: !70, line: 360, baseType: !2180, size: 32, offset: 896)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !70, line: 179, size: 32, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2180, file: !70, line: 180, baseType: !479, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2180, file: !70, line: 181, baseType: !479, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2180, file: !70, line: 182, baseType: !479, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2180, file: !70, line: 183, baseType: !479, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2180, file: !70, line: 184, baseType: !479, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2180, file: !70, line: 185, baseType: !479, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !70, line: 361, baseType: !2189, size: 32, offset: 928)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !70, line: 190, size: 32, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2189, file: !70, line: 191, baseType: !479, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2189, file: !70, line: 192, baseType: !479, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2189, file: !70, line: 193, baseType: !479, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2189, file: !70, line: 194, baseType: !479, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2189, file: !70, line: 195, baseType: !479, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2189, file: !70, line: 196, baseType: !479, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2189, file: !70, line: 197, baseType: !479, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2189, file: !70, line: 198, baseType: !479, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2189, file: !70, line: 199, baseType: !479, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2189, file: !70, line: 200, baseType: !479, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2189, file: !70, line: 201, baseType: !479, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2189, file: !70, line: 202, baseType: !479, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2189, file: !70, line: 203, baseType: !479, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2189, file: !70, line: 204, baseType: !479, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !104, file: !70, line: 362, baseType: !2206, size: 960, offset: 960)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !70, line: 234, size: 960, elements: !2207)
!2207 = !{!2208, !2210, !2217, !2219, !2220, !2221, !2226, !2229}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2206, file: !70, line: 235, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !70, line: 217, baseType: !988)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2206, file: !70, line: 236, baseType: !2211, size: 32, offset: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !70, line: 227, size: 32, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2211, file: !70, line: 228, baseType: !479, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2211, file: !70, line: 229, baseType: !479, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2211, file: !70, line: 230, baseType: !479, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2211, file: !70, line: 231, baseType: !479, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2206, file: !70, line: 237, baseType: !2218, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !70, line: 218, baseType: !325)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2206, file: !70, line: 238, baseType: !206, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2206, file: !70, line: 239, baseType: !93, size: 128, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2206, file: !70, line: 240, baseType: !2222, size: 320, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !70, line: 219, baseType: !2223)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 320, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 40)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2206, file: !70, line: 241, baseType: !2227, size: 160, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !70, line: 220, baseType: !2228)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 160, elements: !1252)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2206, file: !70, line: 242, baseType: !2230, size: 64, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !110, line: 899, size: 192, elements: !2232)
!2232 = !{!2233, !2235, !2240, !2246, !2253, !2259, !2265, !2273}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !110, line: 900, baseType: !2234, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !110, line: 635, baseType: !479)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2231, file: !110, line: 904, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 901, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !110, line: 902, baseType: !2234, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2236, file: !110, line: 903, baseType: !325, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2231, file: !110, line: 910, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 906, size: 128, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2241, file: !110, line: 907, baseType: !2234, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2241, file: !110, line: 908, baseType: !479, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2241, file: !110, line: 909, baseType: !206, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2231, file: !110, line: 916, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 912, size: 128, elements: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2247, file: !110, line: 913, baseType: !2234, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2247, file: !110, line: 914, baseType: !479, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2247, file: !110, line: 915, baseType: !2252, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2231, file: !110, line: 922, baseType: !2254, size: 128)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 918, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2254, file: !110, line: 919, baseType: !2234, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2254, file: !110, line: 920, baseType: !479, size: 32, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2254, file: !110, line: 921, baseType: !2230, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2231, file: !110, line: 928, baseType: !2260, size: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 924, size: 128, elements: !2261)
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2260, file: !110, line: 925, baseType: !2234, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2260, file: !110, line: 926, baseType: !2234, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2260, file: !110, line: 927, baseType: !109, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2231, file: !110, line: 935, baseType: !2266, size: 192)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 930, size: 192, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2272}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2266, file: !110, line: 931, baseType: !2234, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2266, file: !110, line: 932, baseType: !479, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2266, file: !110, line: 933, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !110, line: 128, baseType: !325)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2266, file: !110, line: 934, baseType: !479, size: 32, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2231, file: !110, line: 941, baseType: !2274, size: 96)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2231, file: !110, line: 937, size: 96, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2274, file: !110, line: 938, baseType: !2234, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2274, file: !110, line: 939, baseType: !479, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2274, file: !110, line: 940, baseType: !479, size: 32, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !104, file: !70, line: 363, baseType: !2280, size: 1344, offset: 1920)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !70, line: 275, size: 1344, elements: !2281)
!2281 = !{!2282, !2283, !2293}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2280, file: !70, line: 276, baseType: !107, size: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2280, file: !70, line: 277, baseType: !2284, size: 32, offset: 32)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !70, line: 254, size: 32, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2284, file: !70, line: 255, baseType: !479, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2284, file: !70, line: 256, baseType: !479, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2284, file: !70, line: 257, baseType: !479, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2284, file: !70, line: 258, baseType: !479, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2284, file: !70, line: 259, baseType: !479, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2284, file: !70, line: 260, baseType: !479, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2284, file: !70, line: 261, baseType: !479, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2280, file: !70, line: 278, baseType: !2294, size: 1280, offset: 64)
!2294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 1280, elements: !2306)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !70, line: 264, size: 256, elements: !2296)
!2296 = !{!2297, !2303, !2304, !2305}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2295, file: !70, line: 269, baseType: !2298, size: 8)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !70, line: 265, size: 8, elements: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2298, file: !70, line: 266, baseType: !616, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2298, file: !70, line: 267, baseType: !616, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2298, file: !70, line: 268, baseType: !616, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2295, file: !70, line: 270, baseType: !107, size: 32, offset: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2295, file: !70, line: 271, baseType: !107, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2295, file: !70, line: 272, baseType: !93, size: 128, offset: 128)
!2306 = !{!2307}
!2307 = !DISubrange(count: 5)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !104, file: !70, line: 364, baseType: !2309, size: 640, offset: 3264)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !70, line: 315, size: 640, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2320, !2329, !2330, !2331}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2309, file: !70, line: 316, baseType: !109, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2309, file: !70, line: 317, baseType: !325, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2309, file: !70, line: 318, baseType: !325, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2309, file: !70, line: 319, baseType: !93, size: 128, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2309, file: !70, line: 320, baseType: !2316, size: 8, offset: 320)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !70, line: 305, size: 8, elements: !2317)
!2317 = !{!2318, !2319}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2316, file: !70, line: 306, baseType: !616, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2316, file: !70, line: 307, baseType: !616, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2309, file: !70, line: 321, baseType: !2321, size: 128, offset: 384)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !70, line: 310, size: 128, elements: !2322)
!2322 = !{!2323, !2328}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2321, file: !70, line: 311, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{null, !2327}
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2321, file: !70, line: 312, baseType: !1648, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2309, file: !70, line: 322, baseType: !1833, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2309, file: !70, line: 323, baseType: !107, size: 32, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2309, file: !70, line: 324, baseType: !107, size: 32, offset: 608)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !104, file: !70, line: 365, baseType: !2333, size: 192, offset: 3904)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !70, line: 297, size: 192, elements: !2334)
!2334 = !{!2335, !2336, !2340, !2341}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2333, file: !70, line: 298, baseType: !107, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !70, line: 299, baseType: !2337, size: 8, offset: 32)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !70, line: 283, size: 8, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2337, file: !70, line: 284, baseType: !616, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2333, file: !70, line: 300, baseType: !107, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2333, file: !70, line: 301, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !70, line: 287, size: 64, elements: !2344)
!2344 = !{!2345, !2350, !2351, !2352}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !70, line: 291, baseType: !2346, size: 8)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2343, file: !70, line: 288, size: 8, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2346, file: !70, line: 289, baseType: !616, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2346, file: !70, line: 290, baseType: !616, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2343, file: !70, line: 292, baseType: !616, size: 8, offset: 8)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2343, file: !70, line: 293, baseType: !616, size: 8, offset: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2343, file: !70, line: 294, baseType: !107, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !104, file: !70, line: 366, baseType: !2354, size: 64, offset: 4096)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !70, line: 209, size: 64, elements: !2355)
!2355 = !{!2356}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2354, file: !70, line: 210, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !70, line: 84, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !70, line: 367, baseType: !2360, size: 384, offset: 4160)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !70, line: 341, size: 384, elements: !2361)
!2361 = !{!2362, !2365, !2366, !2367}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2360, file: !70, line: 342, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2360, file: !70, line: 343, baseType: !93, size: 128, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2360, file: !70, line: 344, baseType: !2363, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2360, file: !70, line: 345, baseType: !93, size: 128, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !104, file: !70, line: 368, baseType: !2369, size: 64, offset: 4544)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !70, line: 122, size: 1216, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2379, !2383, !2387, !2388, !2389}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2370, file: !70, line: 123, baseType: !1746, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2370, file: !70, line: 124, baseType: !93, size: 128, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2370, file: !70, line: 125, baseType: !2375, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!134, !153, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2370, file: !70, line: 126, baseType: !2380, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!107, !2174, !1746}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2370, file: !70, line: 127, baseType: !2384, size: 64, offset: 320)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !2174}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2370, file: !70, line: 128, baseType: !1670, size: 64, offset: 384)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2370, file: !70, line: 129, baseType: !1670, size: 64, offset: 448)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2370, file: !70, line: 130, baseType: !2390, size: 704, offset: 512)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !70, line: 108, size: 704, elements: !2391)
!2391 = !{!2392, !2393, !2397, !2398, !2399}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2390, file: !70, line: 109, baseType: !149, size: 512)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2390, file: !70, line: 110, baseType: !2394, size: 64, offset: 512)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!107, !2174}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2390, file: !70, line: 111, baseType: !2384, size: 64, offset: 576)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2390, file: !70, line: 112, baseType: !134, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2390, file: !70, line: 113, baseType: !134, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !104, file: !70, line: 369, baseType: !2401, size: 64, offset: 4608)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !70, line: 138, size: 256, elements: !2403)
!2403 = !{!2404, !2405, !2409, !2413}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2402, file: !70, line: 139, baseType: !2174, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2402, file: !70, line: 140, baseType: !2406, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!107, !2174, !479}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2402, file: !70, line: 141, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2174, !479}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2402, file: !70, line: 142, baseType: !2384, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !104, file: !70, line: 370, baseType: !2415, size: 64, offset: 4672)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !70, line: 162, size: 2816, elements: !2417)
!2417 = !{!2418, !2422, !2423, !2424, !2425, !2434, !2435}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2416, file: !70, line: 163, baseType: !2419, size: 640)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 640, elements: !2420)
!2420 = !{!2421}
!2421 = !DISubrange(count: 80)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2416, file: !70, line: 164, baseType: !2419, size: 640, offset: 640)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2416, file: !70, line: 165, baseType: !1746, size: 64, offset: 1280)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2416, file: !70, line: 166, baseType: !7, size: 32, offset: 1344)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2416, file: !70, line: 167, baseType: !2426, size: 192, offset: 1408)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !70, line: 154, size: 192, elements: !2427)
!2427 = !{!2428, !2430, !2432}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2426, file: !70, line: 155, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !70, line: 150, baseType: !2394)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2426, file: !70, line: 156, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !70, line: 151, baseType: !2394)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2426, file: !70, line: 157, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !70, line: 152, baseType: !2410)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2416, file: !70, line: 168, baseType: !1720, size: 1152, offset: 1600)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2416, file: !70, line: 169, baseType: !1725, size: 64, offset: 2752)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !104, file: !70, line: 371, baseType: !2437, size: 64, offset: 4736)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2439)
!2439 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !70, line: 348, flags: DIFlagFwdDecl)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !104, file: !70, line: 372, baseType: !88, size: 64, offset: 4800)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !104, file: !70, line: 373, baseType: !146, size: 5568, offset: 4864)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !104, file: !70, line: 374, baseType: !7, size: 32, offset: 10432)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !104, file: !70, line: 375, baseType: !7, size: 32, offset: 10464)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !104, file: !70, line: 376, baseType: !93, size: 128, offset: 10496)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !104, file: !70, line: 377, baseType: !424, size: 192, offset: 10624)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !104, file: !70, line: 378, baseType: !2384, size: 64, offset: 10816)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !101, file: !3, line: 50, baseType: !93, size: 128, offset: 10880)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !3, line: 51, baseType: !206, size: 64, offset: 11008)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !101, file: !3, line: 52, baseType: !479, size: 32, offset: 11072)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !101, file: !3, line: 53, baseType: !479, size: 32, offset: 11104)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !101, file: !3, line: 54, baseType: !7, size: 32, offset: 11136)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_enabled", scope: !101, file: !3, line: 55, baseType: !134, size: 8, offset: 11168)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "resource_lock", scope: !101, file: !3, line: 56, baseType: !424, size: 192, offset: 11200)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dependents", scope: !101, file: !3, line: 57, baseType: !93, size: 128, offset: 11392)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !110, line: 421, baseType: !479)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_dependent_device", file: !3, line: 43, size: 192, elements: !2460)
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2459, file: !3, line: 44, baseType: !1648, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2459, file: !3, line: 45, baseType: !93, size: 128, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2465 = !{!2466, !0, !2471, !2474, !2477, !2491, !2493}
!2466 = !DIGlobalVariableExpression(var: !2467, expr: !DIExpression())
!2467 = distinct !DIGlobalVariable(name: "__key", scope: !2468, file: !3, line: 943, type: !1798, isLocal: true, isDefinition: true)
!2468 = distinct !DISubprogram(name: "acpi_add_power_resource", scope: !3, file: !3, line: 923, type: !2469, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!107, !109}
!2471 = !DIGlobalVariableExpression(var: !2472, expr: !DIExpression())
!2472 = distinct !DIGlobalVariable(name: "attrs", scope: !2, file: !3, line: 492, type: !2473, isLocal: true, isDefinition: true)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !636)
!2474 = !DIGlobalVariableExpression(var: !2475, expr: !DIExpression())
!2475 = distinct !DIGlobalVariable(name: "attr_groups", scope: !2, file: !3, line: 496, type: !2476, isLocal: true, isDefinition: true)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 1280, elements: !406)
!2477 = !DIGlobalVariableExpression(var: !2478, expr: !DIExpression())
!2478 = distinct !DIGlobalVariable(name: "dev_attr_resource_in_use", scope: !2, file: !3, line: 897, type: !2479, isLocal: true, isDefinition: true)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2480)
!2480 = !{!2481, !2482, !2487}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2479, file: !30, line: 100, baseType: !243, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2479, file: !30, line: 101, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!237, !1648, !2486, !206}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2479, file: !30, line: 103, baseType: !2488, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!237, !1648, !2486, !153, !253}
!2491 = !DIGlobalVariableExpression(var: !2492, expr: !DIExpression())
!2492 = distinct !DIGlobalVariable(name: "power_resource_list_lock", scope: !2, file: !3, line: 66, type: !424, isLocal: true, isDefinition: true)
!2493 = !DIGlobalVariableExpression(var: !2494, expr: !DIExpression())
!2494 = distinct !DIGlobalVariable(name: "acpi_power_resource_list", scope: !2, file: !3, line: 65, type: !93, isLocal: true, isDefinition: true)
!2495 = !{i32 7, !"Dwarf Version", i32 4}
!2496 = !{i32 2, !"Debug Info Version", i32 3}
!2497 = !{i32 1, !"wchar_size", i32 2}
!2498 = !{i32 1, !"Code Model", i32 2}
!2499 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2500 = distinct !DISubprogram(name: "acpi_power_resources_list_free", scope: !3, file: !3, line: 115, type: !2501, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !97}
!2503 = !DILocalVariable(name: "list", arg: 1, scope: !2500, file: !3, line: 115, type: !97)
!2504 = !DILocation(line: 115, column: 55, scope: !2500)
!2505 = !DILocalVariable(name: "entry", scope: !2500, file: !3, line: 117, type: !89)
!2506 = !DILocation(line: 117, column: 36, scope: !2500)
!2507 = !DILocalVariable(name: "e", scope: !2500, file: !3, line: 117, type: !89)
!2508 = !DILocation(line: 117, column: 44, scope: !2500)
!2509 = !DILocalVariable(name: "__mptr", scope: !2510, file: !3, line: 119, type: !88)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 119, column: 2)
!2511 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 119, column: 2)
!2512 = !DILocation(line: 119, column: 2, scope: !2510)
!2513 = !DILocation(line: 119, column: 2, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !3, line: 119, column: 2)
!2515 = !DILocation(line: 119, column: 2, scope: !2511)
!2516 = !DILocalVariable(name: "__mptr", scope: !2517, file: !3, line: 119, type: !88)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 119, column: 2)
!2518 = !DILocation(line: 119, column: 2, scope: !2517)
!2519 = !DILocation(line: 119, column: 2, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 119, column: 2)
!2521 = !DILocation(line: 119, column: 2, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 119, column: 2)
!2523 = !DILocation(line: 120, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 119, column: 49)
!2525 = !DILocation(line: 120, column: 20, scope: !2524)
!2526 = !DILocation(line: 120, column: 3, scope: !2524)
!2527 = !DILocation(line: 121, column: 9, scope: !2524)
!2528 = !DILocation(line: 121, column: 3, scope: !2524)
!2529 = !DILocation(line: 122, column: 2, scope: !2524)
!2530 = !DILocalVariable(name: "__mptr", scope: !2531, file: !3, line: 119, type: !88)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 119, column: 2)
!2532 = !DILocation(line: 119, column: 2, scope: !2531)
!2533 = !DILocation(line: 119, column: 2, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 119, column: 2)
!2535 = distinct !{!2535, !2515, !2536}
!2536 = !DILocation(line: 122, column: 2, scope: !2511)
!2537 = !DILocation(line: 123, column: 1, scope: !2500)
!2538 = distinct !DISubprogram(name: "list_del", scope: !2539, file: !2539, line: 144, type: !2501, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2539 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2540 = !DILocalVariable(name: "entry", arg: 1, scope: !2538, file: !2539, line: 144, type: !97)
!2541 = !DILocation(line: 144, column: 47, scope: !2538)
!2542 = !DILocation(line: 146, column: 19, scope: !2538)
!2543 = !DILocation(line: 146, column: 2, scope: !2538)
!2544 = !DILocation(line: 147, column: 2, scope: !2538)
!2545 = !DILocation(line: 147, column: 9, scope: !2538)
!2546 = !DILocation(line: 147, column: 14, scope: !2538)
!2547 = !DILocation(line: 148, column: 2, scope: !2538)
!2548 = !DILocation(line: 148, column: 9, scope: !2538)
!2549 = !DILocation(line: 148, column: 14, scope: !2538)
!2550 = !DILocation(line: 149, column: 1, scope: !2538)
!2551 = distinct !DISubprogram(name: "acpi_extract_power_resources", scope: !3, file: !3, line: 142, type: !2552, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!107, !2230, !7, !97}
!2554 = !DILocalVariable(name: "package", arg: 1, scope: !2551, file: !3, line: 142, type: !2230)
!2555 = !DILocation(line: 142, column: 53, scope: !2551)
!2556 = !DILocalVariable(name: "start", arg: 2, scope: !2551, file: !3, line: 142, type: !7)
!2557 = !DILocation(line: 142, column: 75, scope: !2551)
!2558 = !DILocalVariable(name: "list", arg: 3, scope: !2551, file: !3, line: 143, type: !97)
!2559 = !DILocation(line: 143, column: 24, scope: !2551)
!2560 = !DILocalVariable(name: "i", scope: !2551, file: !3, line: 145, type: !7)
!2561 = !DILocation(line: 145, column: 15, scope: !2551)
!2562 = !DILocalVariable(name: "err", scope: !2551, file: !3, line: 146, type: !107)
!2563 = !DILocation(line: 146, column: 6, scope: !2551)
!2564 = !DILocation(line: 148, column: 11, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 148, column: 2)
!2566 = !DILocation(line: 148, column: 9, scope: !2565)
!2567 = !DILocation(line: 148, column: 7, scope: !2565)
!2568 = !DILocation(line: 148, column: 18, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 148, column: 2)
!2570 = !DILocation(line: 148, column: 22, scope: !2569)
!2571 = !DILocation(line: 148, column: 31, scope: !2569)
!2572 = !DILocation(line: 148, column: 39, scope: !2569)
!2573 = !DILocation(line: 148, column: 20, scope: !2569)
!2574 = !DILocation(line: 148, column: 2, scope: !2565)
!2575 = !DILocalVariable(name: "element", scope: !2576, file: !3, line: 149, type: !2230)
!2576 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 148, column: 51)
!2577 = !DILocation(line: 149, column: 22, scope: !2576)
!2578 = !DILocation(line: 149, column: 33, scope: !2576)
!2579 = !DILocation(line: 149, column: 42, scope: !2576)
!2580 = !DILocation(line: 149, column: 50, scope: !2576)
!2581 = !DILocation(line: 149, column: 59, scope: !2576)
!2582 = !DILocalVariable(name: "rhandle", scope: !2576, file: !3, line: 150, type: !109)
!2583 = !DILocation(line: 150, column: 15, scope: !2576)
!2584 = !DILocation(line: 152, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 152, column: 7)
!2586 = !DILocation(line: 152, column: 16, scope: !2585)
!2587 = !DILocation(line: 152, column: 21, scope: !2585)
!2588 = !DILocation(line: 152, column: 7, scope: !2576)
!2589 = !DILocation(line: 153, column: 8, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 152, column: 51)
!2591 = !DILocation(line: 154, column: 4, scope: !2590)
!2592 = !DILocation(line: 156, column: 13, scope: !2576)
!2593 = !DILocation(line: 156, column: 22, scope: !2576)
!2594 = !DILocation(line: 156, column: 32, scope: !2576)
!2595 = !DILocation(line: 156, column: 11, scope: !2576)
!2596 = !DILocation(line: 157, column: 8, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 157, column: 7)
!2598 = !DILocation(line: 157, column: 7, scope: !2576)
!2599 = !DILocation(line: 158, column: 8, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 157, column: 17)
!2601 = !DILocation(line: 159, column: 4, scope: !2600)
!2602 = !DILocation(line: 163, column: 34, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 163, column: 7)
!2604 = !DILocation(line: 163, column: 43, scope: !2603)
!2605 = !DILocation(line: 163, column: 50, scope: !2603)
!2606 = !DILocation(line: 163, column: 7, scope: !2603)
!2607 = !DILocation(line: 163, column: 7, scope: !2576)
!2608 = !DILocation(line: 164, column: 4, scope: !2603)
!2609 = !DILocation(line: 166, column: 33, scope: !2576)
!2610 = !DILocation(line: 166, column: 9, scope: !2576)
!2611 = !DILocation(line: 166, column: 7, scope: !2576)
!2612 = !DILocation(line: 167, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 167, column: 7)
!2614 = !DILocation(line: 167, column: 7, scope: !2576)
!2615 = !DILocation(line: 168, column: 4, scope: !2613)
!2616 = !DILocation(line: 170, column: 39, scope: !2576)
!2617 = !DILocation(line: 170, column: 48, scope: !2576)
!2618 = !DILocation(line: 170, column: 9, scope: !2576)
!2619 = !DILocation(line: 170, column: 7, scope: !2576)
!2620 = !DILocation(line: 171, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 171, column: 7)
!2622 = !DILocation(line: 171, column: 7, scope: !2576)
!2623 = !DILocation(line: 172, column: 4, scope: !2621)
!2624 = !DILocation(line: 173, column: 2, scope: !2576)
!2625 = !DILocation(line: 148, column: 47, scope: !2569)
!2626 = !DILocation(line: 148, column: 2, scope: !2569)
!2627 = distinct !{!2627, !2574, !2628}
!2628 = !DILocation(line: 173, column: 2, scope: !2565)
!2629 = !DILocation(line: 174, column: 6, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 174, column: 6)
!2631 = !DILocation(line: 174, column: 6, scope: !2551)
!2632 = !DILocation(line: 175, column: 34, scope: !2630)
!2633 = !DILocation(line: 175, column: 3, scope: !2630)
!2634 = !DILocation(line: 177, column: 9, scope: !2551)
!2635 = !DILocation(line: 177, column: 2, scope: !2551)
!2636 = distinct !DISubprogram(name: "acpi_power_resource_is_dup", scope: !3, file: !3, line: 125, type: !2637, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!134, !2230, !7, !7}
!2639 = !DILocalVariable(name: "package", arg: 1, scope: !2636, file: !3, line: 125, type: !2230)
!2640 = !DILocation(line: 125, column: 59, scope: !2636)
!2641 = !DILocalVariable(name: "start", arg: 2, scope: !2636, file: !3, line: 126, type: !7)
!2642 = !DILocation(line: 126, column: 25, scope: !2636)
!2643 = !DILocalVariable(name: "i", arg: 3, scope: !2636, file: !3, line: 126, type: !7)
!2644 = !DILocation(line: 126, column: 45, scope: !2636)
!2645 = !DILocalVariable(name: "rhandle", scope: !2636, file: !3, line: 128, type: !109)
!2646 = !DILocation(line: 128, column: 14, scope: !2636)
!2647 = !DILocalVariable(name: "dup", scope: !2636, file: !3, line: 128, type: !109)
!2648 = !DILocation(line: 128, column: 23, scope: !2636)
!2649 = !DILocalVariable(name: "j", scope: !2636, file: !3, line: 129, type: !7)
!2650 = !DILocation(line: 129, column: 15, scope: !2636)
!2651 = !DILocation(line: 132, column: 12, scope: !2636)
!2652 = !DILocation(line: 132, column: 21, scope: !2636)
!2653 = !DILocation(line: 132, column: 29, scope: !2636)
!2654 = !DILocation(line: 132, column: 38, scope: !2636)
!2655 = !DILocation(line: 132, column: 41, scope: !2636)
!2656 = !DILocation(line: 132, column: 51, scope: !2636)
!2657 = !DILocation(line: 132, column: 10, scope: !2636)
!2658 = !DILocation(line: 133, column: 11, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 133, column: 2)
!2660 = !DILocation(line: 133, column: 9, scope: !2659)
!2661 = !DILocation(line: 133, column: 7, scope: !2659)
!2662 = !DILocation(line: 133, column: 18, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 133, column: 2)
!2664 = !DILocation(line: 133, column: 22, scope: !2663)
!2665 = !DILocation(line: 133, column: 20, scope: !2663)
!2666 = !DILocation(line: 133, column: 2, scope: !2659)
!2667 = !DILocation(line: 134, column: 9, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 133, column: 30)
!2669 = !DILocation(line: 134, column: 18, scope: !2668)
!2670 = !DILocation(line: 134, column: 26, scope: !2668)
!2671 = !DILocation(line: 134, column: 35, scope: !2668)
!2672 = !DILocation(line: 134, column: 38, scope: !2668)
!2673 = !DILocation(line: 134, column: 48, scope: !2668)
!2674 = !DILocation(line: 134, column: 7, scope: !2668)
!2675 = !DILocation(line: 135, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 135, column: 7)
!2677 = !DILocation(line: 135, column: 14, scope: !2676)
!2678 = !DILocation(line: 135, column: 11, scope: !2676)
!2679 = !DILocation(line: 135, column: 7, scope: !2668)
!2680 = !DILocation(line: 136, column: 4, scope: !2676)
!2681 = !DILocation(line: 137, column: 2, scope: !2668)
!2682 = !DILocation(line: 133, column: 26, scope: !2663)
!2683 = !DILocation(line: 133, column: 2, scope: !2663)
!2684 = distinct !{!2684, !2666, !2685}
!2685 = !DILocation(line: 137, column: 2, scope: !2659)
!2686 = !DILocation(line: 139, column: 2, scope: !2636)
!2687 = !DILocation(line: 140, column: 1, scope: !2636)
!2688 = !DILocalVariable(name: "handle", arg: 1, scope: !2468, file: !3, line: 923, type: !109)
!2689 = !DILocation(line: 923, column: 41, scope: !2468)
!2690 = !DILocalVariable(name: "resource", scope: !2468, file: !3, line: 925, type: !100)
!2691 = !DILocation(line: 925, column: 30, scope: !2468)
!2692 = !DILocalVariable(name: "device", scope: !2468, file: !3, line: 926, type: !2174)
!2693 = !DILocation(line: 926, column: 22, scope: !2468)
!2694 = !DILocalVariable(name: "acpi_object", scope: !2468, file: !3, line: 927, type: !2231)
!2695 = !DILocation(line: 927, column: 20, scope: !2468)
!2696 = !DILocalVariable(name: "buffer", scope: !2468, file: !3, line: 928, type: !2697)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !110, line: 969, size: 128, elements: !2698)
!2698 = !{!2699, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2697, file: !110, line: 970, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !110, line: 127, baseType: !325)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2697, file: !110, line: 971, baseType: !88, size: 64, offset: 64)
!2702 = !DILocation(line: 928, column: 21, scope: !2468)
!2703 = !DILocation(line: 928, column: 30, scope: !2468)
!2704 = !DILocation(line: 928, column: 53, scope: !2468)
!2705 = !DILocalVariable(name: "status", scope: !2468, file: !3, line: 929, type: !2455)
!2706 = !DILocation(line: 929, column: 14, scope: !2468)
!2707 = !DILocalVariable(name: "state", scope: !2468, file: !3, line: 930, type: !107)
!2708 = !DILocation(line: 930, column: 6, scope: !2468)
!2709 = !DILocalVariable(name: "result", scope: !2468, file: !3, line: 930, type: !107)
!2710 = !DILocation(line: 930, column: 13, scope: !2468)
!2711 = !DILocation(line: 932, column: 22, scope: !2468)
!2712 = !DILocation(line: 932, column: 2, scope: !2468)
!2713 = !DILocation(line: 933, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 933, column: 6)
!2715 = !DILocation(line: 933, column: 6, scope: !2468)
!2716 = !DILocation(line: 934, column: 3, scope: !2714)
!2717 = !DILocation(line: 936, column: 13, scope: !2468)
!2718 = !DILocation(line: 936, column: 11, scope: !2468)
!2719 = !DILocation(line: 937, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 937, column: 6)
!2721 = !DILocation(line: 937, column: 6, scope: !2468)
!2722 = !DILocation(line: 938, column: 3, scope: !2720)
!2723 = !DILocation(line: 940, column: 12, scope: !2468)
!2724 = !DILocation(line: 940, column: 22, scope: !2468)
!2725 = !DILocation(line: 940, column: 9, scope: !2468)
!2726 = !DILocation(line: 941, column: 26, scope: !2468)
!2727 = !DILocation(line: 941, column: 34, scope: !2468)
!2728 = !DILocation(line: 941, column: 2, scope: !2468)
!2729 = !DILocation(line: 943, column: 2, scope: !2468)
!2730 = !DILocation(line: 943, column: 2, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 943, column: 2)
!2732 = !DILocation(line: 944, column: 18, scope: !2468)
!2733 = !DILocation(line: 944, column: 28, scope: !2468)
!2734 = !DILocation(line: 944, column: 2, scope: !2468)
!2735 = !DILocation(line: 945, column: 18, scope: !2468)
!2736 = !DILocation(line: 945, column: 28, scope: !2468)
!2737 = !DILocation(line: 945, column: 2, scope: !2468)
!2738 = !DILocation(line: 946, column: 19, scope: !2468)
!2739 = !DILocation(line: 946, column: 27, scope: !2468)
!2740 = !DILocation(line: 946, column: 31, scope: !2468)
!2741 = !DILocation(line: 946, column: 2, scope: !2468)
!2742 = !DILocation(line: 946, column: 12, scope: !2468)
!2743 = !DILocation(line: 946, column: 17, scope: !2468)
!2744 = !DILocation(line: 947, column: 9, scope: !2468)
!2745 = !DILocation(line: 947, column: 2, scope: !2468)
!2746 = !DILocation(line: 948, column: 9, scope: !2468)
!2747 = !DILocation(line: 948, column: 2, scope: !2468)
!2748 = !DILocation(line: 949, column: 2, scope: !2468)
!2749 = !DILocation(line: 949, column: 10, scope: !2468)
!2750 = !DILocation(line: 949, column: 16, scope: !2468)
!2751 = !DILocation(line: 949, column: 22, scope: !2468)
!2752 = !DILocation(line: 952, column: 32, scope: !2468)
!2753 = !DILocation(line: 952, column: 11, scope: !2468)
!2754 = !DILocation(line: 952, column: 9, scope: !2468)
!2755 = !DILocation(line: 953, column: 6, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 953, column: 6)
!2757 = !DILocation(line: 953, column: 6, scope: !2468)
!2758 = !DILocation(line: 954, column: 3, scope: !2756)
!2759 = !DILocation(line: 956, column: 39, scope: !2468)
!2760 = !DILocation(line: 956, column: 54, scope: !2468)
!2761 = !DILocation(line: 956, column: 2, scope: !2468)
!2762 = !DILocation(line: 956, column: 12, scope: !2468)
!2763 = !DILocation(line: 956, column: 25, scope: !2468)
!2764 = !DILocation(line: 957, column: 32, scope: !2468)
!2765 = !DILocation(line: 957, column: 47, scope: !2468)
!2766 = !DILocation(line: 957, column: 2, scope: !2468)
!2767 = !DILocation(line: 957, column: 12, scope: !2468)
!2768 = !DILocation(line: 957, column: 18, scope: !2468)
!2769 = !DILocation(line: 959, column: 32, scope: !2468)
!2770 = !DILocation(line: 959, column: 11, scope: !2468)
!2771 = !DILocation(line: 959, column: 9, scope: !2468)
!2772 = !DILocation(line: 960, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 960, column: 6)
!2774 = !DILocation(line: 960, column: 6, scope: !2468)
!2775 = !DILocation(line: 961, column: 3, scope: !2773)
!2776 = !DILocation(line: 963, column: 44, scope: !2468)
!2777 = !DILocation(line: 964, column: 9, scope: !2468)
!2778 = !DILocation(line: 964, column: 34, scope: !2468)
!2779 = !DILocation(line: 963, column: 2, scope: !2468)
!2780 = !DILocation(line: 966, column: 2, scope: !2468)
!2781 = !DILocation(line: 966, column: 10, scope: !2468)
!2782 = !DILocation(line: 966, column: 16, scope: !2468)
!2783 = !DILocation(line: 966, column: 29, scope: !2468)
!2784 = !DILocation(line: 967, column: 27, scope: !2468)
!2785 = !DILocation(line: 967, column: 11, scope: !2468)
!2786 = !DILocation(line: 967, column: 9, scope: !2468)
!2787 = !DILocation(line: 968, column: 6, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 968, column: 6)
!2789 = !DILocation(line: 968, column: 6, scope: !2468)
!2790 = !DILocation(line: 969, column: 3, scope: !2788)
!2791 = !DILocation(line: 971, column: 27, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 971, column: 6)
!2793 = !DILocation(line: 971, column: 35, scope: !2792)
!2794 = !DILocation(line: 971, column: 7, scope: !2792)
!2795 = !DILocation(line: 971, column: 6, scope: !2468)
!2796 = !DILocation(line: 972, column: 3, scope: !2792)
!2797 = !DILocation(line: 972, column: 11, scope: !2792)
!2798 = !DILocation(line: 972, column: 18, scope: !2792)
!2799 = !DILocation(line: 974, column: 34, scope: !2468)
!2800 = !DILocation(line: 974, column: 2, scope: !2468)
!2801 = !DILocation(line: 975, column: 27, scope: !2468)
!2802 = !DILocation(line: 975, column: 2, scope: !2468)
!2803 = !DILocation(line: 976, column: 2, scope: !2468)
!2804 = !DILabel(scope: !2468, name: "err", file: !3, line: 978)
!2805 = !DILocation(line: 978, column: 2, scope: !2468)
!2806 = !DILocation(line: 979, column: 31, scope: !2468)
!2807 = !DILocation(line: 979, column: 39, scope: !2468)
!2808 = !DILocation(line: 979, column: 2, scope: !2468)
!2809 = !DILocation(line: 980, column: 9, scope: !2468)
!2810 = !DILocation(line: 980, column: 2, scope: !2468)
!2811 = !DILocation(line: 981, column: 1, scope: !2468)
!2812 = distinct !DISubprogram(name: "acpi_power_resources_list_add", scope: !3, file: !3, line: 88, type: !2813, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!107, !109, !97}
!2815 = !DILocalVariable(name: "handle", arg: 1, scope: !2812, file: !3, line: 88, type: !109)
!2816 = !DILocation(line: 88, column: 54, scope: !2812)
!2817 = !DILocalVariable(name: "list", arg: 2, scope: !2812, file: !3, line: 89, type: !97)
!2818 = !DILocation(line: 89, column: 25, scope: !2812)
!2819 = !DILocalVariable(name: "resource", scope: !2812, file: !3, line: 91, type: !100)
!2820 = !DILocation(line: 91, column: 30, scope: !2812)
!2821 = !DILocation(line: 91, column: 64, scope: !2812)
!2822 = !DILocation(line: 91, column: 41, scope: !2812)
!2823 = !DILocalVariable(name: "entry", scope: !2812, file: !3, line: 92, type: !89)
!2824 = !DILocation(line: 92, column: 36, scope: !2812)
!2825 = !DILocation(line: 94, column: 7, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 94, column: 6)
!2827 = !DILocation(line: 94, column: 16, scope: !2826)
!2828 = !DILocation(line: 94, column: 20, scope: !2826)
!2829 = !DILocation(line: 94, column: 6, scope: !2812)
!2830 = !DILocation(line: 95, column: 3, scope: !2826)
!2831 = !DILocation(line: 97, column: 10, scope: !2812)
!2832 = !DILocation(line: 97, column: 8, scope: !2812)
!2833 = !DILocation(line: 98, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 98, column: 6)
!2835 = !DILocation(line: 98, column: 6, scope: !2812)
!2836 = !DILocation(line: 99, column: 3, scope: !2834)
!2837 = !DILocation(line: 101, column: 20, scope: !2812)
!2838 = !DILocation(line: 101, column: 2, scope: !2812)
!2839 = !DILocation(line: 101, column: 9, scope: !2812)
!2840 = !DILocation(line: 101, column: 18, scope: !2812)
!2841 = !DILocation(line: 102, column: 18, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 102, column: 6)
!2843 = !DILocation(line: 102, column: 7, scope: !2842)
!2844 = !DILocation(line: 102, column: 6, scope: !2812)
!2845 = !DILocalVariable(name: "e", scope: !2846, file: !3, line: 103, type: !89)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 102, column: 25)
!2847 = !DILocation(line: 103, column: 37, scope: !2846)
!2848 = !DILocalVariable(name: "__mptr", scope: !2849, file: !3, line: 105, type: !88)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 105, column: 3)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 105, column: 3)
!2851 = !DILocation(line: 105, column: 3, scope: !2849)
!2852 = !DILocation(line: 105, column: 3, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 105, column: 3)
!2854 = !DILocation(line: 105, column: 3, scope: !2850)
!2855 = !DILocation(line: 105, column: 3, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 105, column: 3)
!2857 = !DILocation(line: 106, column: 8, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 106, column: 8)
!2859 = !DILocation(line: 106, column: 11, scope: !2858)
!2860 = !DILocation(line: 106, column: 21, scope: !2858)
!2861 = !DILocation(line: 106, column: 29, scope: !2858)
!2862 = !DILocation(line: 106, column: 39, scope: !2858)
!2863 = !DILocation(line: 106, column: 27, scope: !2858)
!2864 = !DILocation(line: 106, column: 8, scope: !2856)
!2865 = !DILocation(line: 107, column: 20, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 106, column: 46)
!2867 = !DILocation(line: 107, column: 27, scope: !2866)
!2868 = !DILocation(line: 107, column: 34, scope: !2866)
!2869 = !DILocation(line: 107, column: 37, scope: !2866)
!2870 = !DILocation(line: 107, column: 5, scope: !2866)
!2871 = !DILocation(line: 108, column: 5, scope: !2866)
!2872 = !DILocalVariable(name: "__mptr", scope: !2873, file: !3, line: 105, type: !88)
!2873 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 105, column: 3)
!2874 = !DILocation(line: 105, column: 3, scope: !2873)
!2875 = !DILocation(line: 105, column: 3, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 105, column: 3)
!2877 = distinct !{!2877, !2854, !2878}
!2878 = !DILocation(line: 109, column: 4, scope: !2850)
!2879 = !DILocation(line: 110, column: 2, scope: !2846)
!2880 = !DILocation(line: 111, column: 17, scope: !2812)
!2881 = !DILocation(line: 111, column: 24, scope: !2812)
!2882 = !DILocation(line: 111, column: 30, scope: !2812)
!2883 = !DILocation(line: 111, column: 2, scope: !2812)
!2884 = !DILocation(line: 112, column: 2, scope: !2812)
!2885 = !DILocation(line: 113, column: 1, scope: !2812)
!2886 = distinct !DISubprogram(name: "acpi_device_power_add_dependent", scope: !3, file: !3, line: 302, type: !2887, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!107, !2174, !1648}
!2889 = !DILocalVariable(name: "adev", arg: 1, scope: !2886, file: !3, line: 302, type: !2174)
!2890 = !DILocation(line: 302, column: 57, scope: !2886)
!2891 = !DILocalVariable(name: "dev", arg: 2, scope: !2886, file: !3, line: 303, type: !1648)
!2892 = !DILocation(line: 303, column: 24, scope: !2886)
!2893 = !DILocalVariable(name: "entry", scope: !2886, file: !3, line: 305, type: !89)
!2894 = !DILocation(line: 305, column: 36, scope: !2886)
!2895 = !DILocalVariable(name: "resources", scope: !2886, file: !3, line: 306, type: !97)
!2896 = !DILocation(line: 306, column: 20, scope: !2886)
!2897 = !DILocalVariable(name: "ret", scope: !2886, file: !3, line: 307, type: !107)
!2898 = !DILocation(line: 307, column: 6, scope: !2886)
!2899 = !DILocation(line: 309, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 309, column: 6)
!2901 = !DILocation(line: 309, column: 13, scope: !2900)
!2902 = !DILocation(line: 309, column: 19, scope: !2900)
!2903 = !DILocation(line: 309, column: 6, scope: !2886)
!2904 = !DILocation(line: 310, column: 3, scope: !2900)
!2905 = !DILocation(line: 312, column: 15, scope: !2886)
!2906 = !DILocation(line: 312, column: 21, scope: !2886)
!2907 = !DILocation(line: 312, column: 27, scope: !2886)
!2908 = !DILocation(line: 312, column: 49, scope: !2886)
!2909 = !DILocation(line: 312, column: 12, scope: !2886)
!2910 = !DILocalVariable(name: "__mptr", scope: !2911, file: !3, line: 313, type: !88)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 313, column: 2)
!2912 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 313, column: 2)
!2913 = !DILocation(line: 313, column: 2, scope: !2911)
!2914 = !DILocation(line: 313, column: 2, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 313, column: 2)
!2916 = !DILocation(line: 313, column: 2, scope: !2912)
!2917 = !DILocation(line: 313, column: 2, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 313, column: 2)
!2919 = !DILocation(line: 314, column: 43, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 313, column: 46)
!2921 = !DILocation(line: 314, column: 50, scope: !2920)
!2922 = !DILocation(line: 314, column: 60, scope: !2920)
!2923 = !DILocation(line: 314, column: 9, scope: !2920)
!2924 = !DILocation(line: 314, column: 7, scope: !2920)
!2925 = !DILocation(line: 315, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 315, column: 7)
!2927 = !DILocation(line: 315, column: 7, scope: !2920)
!2928 = !DILocation(line: 316, column: 4, scope: !2926)
!2929 = !DILocation(line: 317, column: 2, scope: !2920)
!2930 = !DILocalVariable(name: "__mptr", scope: !2931, file: !3, line: 313, type: !88)
!2931 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 313, column: 2)
!2932 = !DILocation(line: 313, column: 2, scope: !2931)
!2933 = !DILocation(line: 313, column: 2, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 313, column: 2)
!2935 = distinct !{!2935, !2916, !2936}
!2936 = !DILocation(line: 317, column: 2, scope: !2912)
!2937 = !DILocation(line: 319, column: 2, scope: !2886)
!2938 = !DILabel(scope: !2886, name: "err", file: !3, line: 321)
!2939 = !DILocation(line: 321, column: 1, scope: !2886)
!2940 = !DILocalVariable(name: "__mptr", scope: !2941, file: !3, line: 322, type: !88)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 322, column: 2)
!2942 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 322, column: 2)
!2943 = !DILocation(line: 322, column: 2, scope: !2941)
!2944 = !DILocation(line: 322, column: 2, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 322, column: 2)
!2946 = !DILocation(line: 322, column: 2, scope: !2942)
!2947 = !DILocation(line: 322, column: 2, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 322, column: 2)
!2949 = !DILocation(line: 323, column: 40, scope: !2948)
!2950 = !DILocation(line: 323, column: 47, scope: !2948)
!2951 = !DILocation(line: 323, column: 57, scope: !2948)
!2952 = !DILocation(line: 323, column: 3, scope: !2948)
!2953 = !DILocalVariable(name: "__mptr", scope: !2954, file: !3, line: 322, type: !88)
!2954 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 322, column: 2)
!2955 = !DILocation(line: 322, column: 2, scope: !2954)
!2956 = !DILocation(line: 322, column: 2, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 322, column: 2)
!2958 = distinct !{!2958, !2946, !2959}
!2959 = !DILocation(line: 323, column: 60, scope: !2942)
!2960 = !DILocation(line: 325, column: 9, scope: !2886)
!2961 = !DILocation(line: 325, column: 2, scope: !2886)
!2962 = !DILocation(line: 326, column: 1, scope: !2886)
!2963 = distinct !DISubprogram(name: "acpi_power_resource_add_dependent", scope: !3, file: !3, line: 240, type: !2964, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!107, !100, !1648}
!2966 = !DILocalVariable(name: "resource", arg: 1, scope: !2963, file: !3, line: 240, type: !100)
!2967 = !DILocation(line: 240, column: 63, scope: !2963)
!2968 = !DILocalVariable(name: "dev", arg: 2, scope: !2963, file: !3, line: 241, type: !1648)
!2969 = !DILocation(line: 241, column: 22, scope: !2963)
!2970 = !DILocalVariable(name: "dep", scope: !2963, file: !3, line: 243, type: !2458)
!2971 = !DILocation(line: 243, column: 38, scope: !2963)
!2972 = !DILocalVariable(name: "ret", scope: !2963, file: !3, line: 244, type: !107)
!2973 = !DILocation(line: 244, column: 6, scope: !2963)
!2974 = !DILocation(line: 246, column: 14, scope: !2963)
!2975 = !DILocation(line: 246, column: 24, scope: !2963)
!2976 = !DILocation(line: 246, column: 2, scope: !2963)
!2977 = !DILocalVariable(name: "__mptr", scope: !2978, file: !3, line: 247, type: !88)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 247, column: 2)
!2979 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 247, column: 2)
!2980 = !DILocation(line: 247, column: 2, scope: !2978)
!2981 = !DILocation(line: 247, column: 2, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 247, column: 2)
!2983 = !DILocation(line: 247, column: 2, scope: !2979)
!2984 = !DILocation(line: 247, column: 2, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 247, column: 2)
!2986 = !DILocation(line: 249, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 249, column: 7)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 247, column: 56)
!2989 = !DILocation(line: 249, column: 12, scope: !2987)
!2990 = !DILocation(line: 249, column: 19, scope: !2987)
!2991 = !DILocation(line: 249, column: 16, scope: !2987)
!2992 = !DILocation(line: 249, column: 7, scope: !2988)
!2993 = !DILocation(line: 250, column: 4, scope: !2987)
!2994 = !DILocation(line: 251, column: 2, scope: !2988)
!2995 = !DILocalVariable(name: "__mptr", scope: !2996, file: !3, line: 247, type: !88)
!2996 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 247, column: 2)
!2997 = !DILocation(line: 247, column: 2, scope: !2996)
!2998 = !DILocation(line: 247, column: 2, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 247, column: 2)
!3000 = distinct !{!3000, !2983, !3001}
!3001 = !DILocation(line: 251, column: 2, scope: !2979)
!3002 = !DILocation(line: 253, column: 8, scope: !2963)
!3003 = !DILocation(line: 253, column: 6, scope: !2963)
!3004 = !DILocation(line: 254, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 254, column: 6)
!3006 = !DILocation(line: 254, column: 6, scope: !2963)
!3007 = !DILocation(line: 255, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 254, column: 12)
!3009 = !DILocation(line: 256, column: 3, scope: !3008)
!3010 = !DILocation(line: 259, column: 13, scope: !2963)
!3011 = !DILocation(line: 259, column: 2, scope: !2963)
!3012 = !DILocation(line: 259, column: 7, scope: !2963)
!3013 = !DILocation(line: 259, column: 11, scope: !2963)
!3014 = !DILocation(line: 260, column: 17, scope: !2963)
!3015 = !DILocation(line: 260, column: 22, scope: !2963)
!3016 = !DILocation(line: 260, column: 29, scope: !2963)
!3017 = !DILocation(line: 260, column: 39, scope: !2963)
!3018 = !DILocation(line: 260, column: 2, scope: !2963)
!3019 = !DILocation(line: 261, column: 2, scope: !2963)
!3020 = !DILabel(scope: !2963, name: "unlock", file: !3, line: 263)
!3021 = !DILocation(line: 263, column: 1, scope: !2963)
!3022 = !DILocation(line: 264, column: 16, scope: !2963)
!3023 = !DILocation(line: 264, column: 26, scope: !2963)
!3024 = !DILocation(line: 264, column: 2, scope: !2963)
!3025 = !DILocation(line: 265, column: 9, scope: !2963)
!3026 = !DILocation(line: 265, column: 2, scope: !2963)
!3027 = distinct !DISubprogram(name: "acpi_power_resource_remove_dependent", scope: !3, file: !3, line: 269, type: !3028, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !100, !1648}
!3030 = !DILocalVariable(name: "resource", arg: 1, scope: !3027, file: !3, line: 269, type: !100)
!3031 = !DILocation(line: 269, column: 66, scope: !3027)
!3032 = !DILocalVariable(name: "dev", arg: 2, scope: !3027, file: !3, line: 270, type: !1648)
!3033 = !DILocation(line: 270, column: 25, scope: !3027)
!3034 = !DILocalVariable(name: "dep", scope: !3027, file: !3, line: 272, type: !2458)
!3035 = !DILocation(line: 272, column: 38, scope: !3027)
!3036 = !DILocation(line: 274, column: 14, scope: !3027)
!3037 = !DILocation(line: 274, column: 24, scope: !3027)
!3038 = !DILocation(line: 274, column: 2, scope: !3027)
!3039 = !DILocalVariable(name: "__mptr", scope: !3040, file: !3, line: 275, type: !88)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 275, column: 2)
!3041 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 275, column: 2)
!3042 = !DILocation(line: 275, column: 2, scope: !3040)
!3043 = !DILocation(line: 275, column: 2, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 275, column: 2)
!3045 = !DILocation(line: 275, column: 2, scope: !3041)
!3046 = !DILocation(line: 275, column: 2, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 275, column: 2)
!3048 = !DILocation(line: 276, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 276, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 275, column: 56)
!3051 = !DILocation(line: 276, column: 12, scope: !3049)
!3052 = !DILocation(line: 276, column: 19, scope: !3049)
!3053 = !DILocation(line: 276, column: 16, scope: !3049)
!3054 = !DILocation(line: 276, column: 7, scope: !3050)
!3055 = !DILocation(line: 277, column: 14, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 276, column: 24)
!3057 = !DILocation(line: 277, column: 19, scope: !3056)
!3058 = !DILocation(line: 277, column: 4, scope: !3056)
!3059 = !DILocation(line: 278, column: 10, scope: !3056)
!3060 = !DILocation(line: 278, column: 4, scope: !3056)
!3061 = !DILocation(line: 281, column: 4, scope: !3056)
!3062 = !DILocation(line: 283, column: 2, scope: !3050)
!3063 = !DILocalVariable(name: "__mptr", scope: !3064, file: !3, line: 275, type: !88)
!3064 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 275, column: 2)
!3065 = !DILocation(line: 275, column: 2, scope: !3064)
!3066 = !DILocation(line: 275, column: 2, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 275, column: 2)
!3068 = distinct !{!3068, !3045, !3069}
!3069 = !DILocation(line: 283, column: 2, scope: !3041)
!3070 = !DILocation(line: 284, column: 16, scope: !3027)
!3071 = !DILocation(line: 284, column: 26, scope: !3027)
!3072 = !DILocation(line: 284, column: 2, scope: !3027)
!3073 = !DILocation(line: 285, column: 1, scope: !3027)
!3074 = distinct !DISubprogram(name: "acpi_device_power_remove_dependent", scope: !3, file: !3, line: 337, type: !3075, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !2174, !1648}
!3077 = !DILocalVariable(name: "adev", arg: 1, scope: !3074, file: !3, line: 337, type: !2174)
!3078 = !DILocation(line: 337, column: 61, scope: !3074)
!3079 = !DILocalVariable(name: "dev", arg: 2, scope: !3074, file: !3, line: 338, type: !1648)
!3080 = !DILocation(line: 338, column: 21, scope: !3074)
!3081 = !DILocalVariable(name: "entry", scope: !3074, file: !3, line: 340, type: !89)
!3082 = !DILocation(line: 340, column: 36, scope: !3074)
!3083 = !DILocalVariable(name: "resources", scope: !3074, file: !3, line: 341, type: !97)
!3084 = !DILocation(line: 341, column: 20, scope: !3074)
!3085 = !DILocation(line: 343, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 343, column: 6)
!3087 = !DILocation(line: 343, column: 13, scope: !3086)
!3088 = !DILocation(line: 343, column: 19, scope: !3086)
!3089 = !DILocation(line: 343, column: 6, scope: !3074)
!3090 = !DILocation(line: 344, column: 3, scope: !3086)
!3091 = !DILocation(line: 346, column: 15, scope: !3074)
!3092 = !DILocation(line: 346, column: 21, scope: !3074)
!3093 = !DILocation(line: 346, column: 27, scope: !3074)
!3094 = !DILocation(line: 346, column: 49, scope: !3074)
!3095 = !DILocation(line: 346, column: 12, scope: !3074)
!3096 = !DILocalVariable(name: "__mptr", scope: !3097, file: !3, line: 347, type: !88)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 347, column: 2)
!3098 = distinct !DILexicalBlock(scope: !3074, file: !3, line: 347, column: 2)
!3099 = !DILocation(line: 347, column: 2, scope: !3097)
!3100 = !DILocation(line: 347, column: 2, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 347, column: 2)
!3102 = !DILocation(line: 347, column: 2, scope: !3098)
!3103 = !DILocation(line: 347, column: 2, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 347, column: 2)
!3105 = !DILocation(line: 348, column: 40, scope: !3104)
!3106 = !DILocation(line: 348, column: 47, scope: !3104)
!3107 = !DILocation(line: 348, column: 57, scope: !3104)
!3108 = !DILocation(line: 348, column: 3, scope: !3104)
!3109 = !DILocalVariable(name: "__mptr", scope: !3110, file: !3, line: 347, type: !88)
!3110 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 347, column: 2)
!3111 = !DILocation(line: 347, column: 2, scope: !3110)
!3112 = !DILocation(line: 347, column: 2, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 347, column: 2)
!3114 = distinct !{!3114, !3102, !3115}
!3115 = !DILocation(line: 348, column: 60, scope: !3098)
!3116 = !DILocation(line: 349, column: 1, scope: !3074)
!3117 = distinct !DISubprogram(name: "acpi_power_add_remove_device", scope: !3, file: !3, line: 578, type: !3118, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !2174, !134}
!3120 = !DILocalVariable(name: "adev", arg: 1, scope: !3117, file: !3, line: 578, type: !2174)
!3121 = !DILocation(line: 578, column: 55, scope: !3117)
!3122 = !DILocalVariable(name: "add", arg: 2, scope: !3117, file: !3, line: 578, type: !134)
!3123 = !DILocation(line: 578, column: 66, scope: !3117)
!3124 = !DILocalVariable(name: "state", scope: !3117, file: !3, line: 580, type: !107)
!3125 = !DILocation(line: 580, column: 6, scope: !3117)
!3126 = !DILocation(line: 582, column: 6, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 582, column: 6)
!3128 = !DILocation(line: 582, column: 12, scope: !3127)
!3129 = !DILocation(line: 582, column: 19, scope: !3127)
!3130 = !DILocation(line: 582, column: 25, scope: !3127)
!3131 = !DILocation(line: 582, column: 6, scope: !3117)
!3132 = !DILocation(line: 583, column: 26, scope: !3127)
!3133 = !DILocation(line: 583, column: 33, scope: !3127)
!3134 = !DILocation(line: 583, column: 39, scope: !3127)
!3135 = !DILocation(line: 583, column: 46, scope: !3127)
!3136 = !DILocation(line: 584, column: 32, scope: !3127)
!3137 = !DILocation(line: 583, column: 3, scope: !3127)
!3138 = !DILocation(line: 586, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 586, column: 6)
!3140 = !DILocation(line: 586, column: 13, scope: !3139)
!3141 = !DILocation(line: 586, column: 19, scope: !3139)
!3142 = !DILocation(line: 586, column: 25, scope: !3139)
!3143 = !DILocation(line: 586, column: 6, scope: !3117)
!3144 = !DILocation(line: 587, column: 3, scope: !3139)
!3145 = !DILocation(line: 589, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 589, column: 2)
!3147 = !DILocation(line: 589, column: 7, scope: !3146)
!3148 = !DILocation(line: 589, column: 30, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 589, column: 2)
!3150 = !DILocation(line: 589, column: 36, scope: !3149)
!3151 = !DILocation(line: 589, column: 2, scope: !3146)
!3152 = !DILocation(line: 590, column: 26, scope: !3149)
!3153 = !DILocation(line: 591, column: 13, scope: !3149)
!3154 = !DILocation(line: 591, column: 19, scope: !3149)
!3155 = !DILocation(line: 591, column: 25, scope: !3149)
!3156 = !DILocation(line: 591, column: 32, scope: !3149)
!3157 = !DILocation(line: 591, column: 39, scope: !3149)
!3158 = !DILocation(line: 592, column: 25, scope: !3149)
!3159 = !DILocation(line: 592, column: 13, scope: !3149)
!3160 = !DILocation(line: 592, column: 33, scope: !3149)
!3161 = !DILocation(line: 590, column: 3, scope: !3149)
!3162 = !DILocation(line: 589, column: 63, scope: !3149)
!3163 = !DILocation(line: 589, column: 2, scope: !3149)
!3164 = distinct !{!3164, !3151, !3165}
!3165 = !DILocation(line: 592, column: 36, scope: !3146)
!3166 = !DILocation(line: 593, column: 1, scope: !3117)
!3167 = distinct !DISubprogram(name: "acpi_power_expose_hide", scope: !3, file: !3, line: 567, type: !3168, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !2174, !97, !261, !134}
!3170 = !DILocalVariable(name: "adev", arg: 1, scope: !3167, file: !3, line: 567, type: !2174)
!3171 = !DILocation(line: 567, column: 56, scope: !3167)
!3172 = !DILocalVariable(name: "resources", arg: 2, scope: !3167, file: !3, line: 568, type: !97)
!3173 = !DILocation(line: 568, column: 26, scope: !3167)
!3174 = !DILocalVariable(name: "attr_group", arg: 3, scope: !3167, file: !3, line: 569, type: !261)
!3175 = !DILocation(line: 569, column: 38, scope: !3167)
!3176 = !DILocalVariable(name: "expose", arg: 4, scope: !3167, file: !3, line: 570, type: !134)
!3177 = !DILocation(line: 570, column: 13, scope: !3167)
!3178 = !DILocation(line: 572, column: 6, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 572, column: 6)
!3180 = !DILocation(line: 572, column: 6, scope: !3167)
!3181 = !DILocation(line: 573, column: 26, scope: !3179)
!3182 = !DILocation(line: 573, column: 32, scope: !3179)
!3183 = !DILocation(line: 573, column: 43, scope: !3179)
!3184 = !DILocation(line: 573, column: 3, scope: !3179)
!3185 = !DILocation(line: 575, column: 24, scope: !3179)
!3186 = !DILocation(line: 575, column: 30, scope: !3179)
!3187 = !DILocation(line: 575, column: 41, scope: !3179)
!3188 = !DILocation(line: 575, column: 3, scope: !3179)
!3189 = !DILocation(line: 576, column: 1, scope: !3167)
!3190 = distinct !DISubprogram(name: "acpi_power_wakeup_list_init", scope: !3, file: !3, line: 595, type: !3191, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!107, !97, !796}
!3193 = !DILocalVariable(name: "list", arg: 1, scope: !3190, file: !3, line: 595, type: !97)
!3194 = !DILocation(line: 595, column: 51, scope: !3190)
!3195 = !DILocalVariable(name: "system_level_p", arg: 2, scope: !3190, file: !3, line: 595, type: !796)
!3196 = !DILocation(line: 595, column: 62, scope: !3190)
!3197 = !DILocalVariable(name: "entry", scope: !3190, file: !3, line: 597, type: !89)
!3198 = !DILocation(line: 597, column: 36, scope: !3190)
!3199 = !DILocalVariable(name: "system_level", scope: !3190, file: !3, line: 598, type: !107)
!3200 = !DILocation(line: 598, column: 6, scope: !3190)
!3201 = !DILocalVariable(name: "__mptr", scope: !3202, file: !3, line: 600, type: !88)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 600, column: 2)
!3203 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 600, column: 2)
!3204 = !DILocation(line: 600, column: 2, scope: !3202)
!3205 = !DILocation(line: 600, column: 2, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 600, column: 2)
!3207 = !DILocation(line: 600, column: 2, scope: !3203)
!3208 = !DILocation(line: 600, column: 2, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 600, column: 2)
!3210 = !DILocalVariable(name: "resource", scope: !3211, file: !3, line: 601, type: !100)
!3211 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 600, column: 41)
!3212 = !DILocation(line: 601, column: 31, scope: !3211)
!3213 = !DILocation(line: 601, column: 42, scope: !3211)
!3214 = !DILocation(line: 601, column: 49, scope: !3211)
!3215 = !DILocalVariable(name: "handle", scope: !3211, file: !3, line: 602, type: !109)
!3216 = !DILocation(line: 602, column: 15, scope: !3211)
!3217 = !DILocation(line: 602, column: 24, scope: !3211)
!3218 = !DILocation(line: 602, column: 34, scope: !3211)
!3219 = !DILocation(line: 602, column: 41, scope: !3211)
!3220 = !DILocalVariable(name: "result", scope: !3211, file: !3, line: 603, type: !107)
!3221 = !DILocation(line: 603, column: 7, scope: !3211)
!3222 = !DILocalVariable(name: "state", scope: !3211, file: !3, line: 604, type: !107)
!3223 = !DILocation(line: 604, column: 7, scope: !3211)
!3224 = !DILocation(line: 606, column: 15, scope: !3211)
!3225 = !DILocation(line: 606, column: 25, scope: !3211)
!3226 = !DILocation(line: 606, column: 3, scope: !3211)
!3227 = !DILocation(line: 608, column: 33, scope: !3211)
!3228 = !DILocation(line: 608, column: 12, scope: !3211)
!3229 = !DILocation(line: 608, column: 10, scope: !3211)
!3230 = !DILocation(line: 609, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 609, column: 7)
!3232 = !DILocation(line: 609, column: 7, scope: !3211)
!3233 = !DILocation(line: 610, column: 18, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 609, column: 15)
!3235 = !DILocation(line: 610, column: 28, scope: !3234)
!3236 = !DILocation(line: 610, column: 4, scope: !3234)
!3237 = !DILocation(line: 611, column: 11, scope: !3234)
!3238 = !DILocation(line: 611, column: 4, scope: !3234)
!3239 = !DILocation(line: 613, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 613, column: 7)
!3241 = !DILocation(line: 613, column: 13, scope: !3240)
!3242 = !DILocation(line: 613, column: 7, scope: !3211)
!3243 = !DILocation(line: 614, column: 4, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 613, column: 46)
!3245 = !DILocation(line: 614, column: 14, scope: !3244)
!3246 = !DILocation(line: 614, column: 23, scope: !3244)
!3247 = !DILocation(line: 615, column: 4, scope: !3244)
!3248 = !DILocation(line: 615, column: 14, scope: !3244)
!3249 = !DILocation(line: 615, column: 29, scope: !3244)
!3250 = !DILocation(line: 616, column: 3, scope: !3244)
!3251 = !DILocation(line: 617, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 617, column: 7)
!3253 = !DILocation(line: 617, column: 22, scope: !3252)
!3254 = !DILocation(line: 617, column: 32, scope: !3252)
!3255 = !DILocation(line: 617, column: 20, scope: !3252)
!3256 = !DILocation(line: 617, column: 7, scope: !3211)
!3257 = !DILocation(line: 618, column: 19, scope: !3252)
!3258 = !DILocation(line: 618, column: 29, scope: !3252)
!3259 = !DILocation(line: 618, column: 17, scope: !3252)
!3260 = !DILocation(line: 618, column: 4, scope: !3252)
!3261 = !DILocation(line: 620, column: 17, scope: !3211)
!3262 = !DILocation(line: 620, column: 27, scope: !3211)
!3263 = !DILocation(line: 620, column: 3, scope: !3211)
!3264 = !DILocation(line: 621, column: 2, scope: !3211)
!3265 = !DILocalVariable(name: "__mptr", scope: !3266, file: !3, line: 600, type: !88)
!3266 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 600, column: 2)
!3267 = !DILocation(line: 600, column: 2, scope: !3266)
!3268 = !DILocation(line: 600, column: 2, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 600, column: 2)
!3270 = distinct !{!3270, !3207, !3271}
!3271 = !DILocation(line: 621, column: 2, scope: !3203)
!3272 = !DILocation(line: 622, column: 20, scope: !3190)
!3273 = !DILocation(line: 622, column: 3, scope: !3190)
!3274 = !DILocation(line: 622, column: 18, scope: !3190)
!3275 = !DILocation(line: 623, column: 2, scope: !3190)
!3276 = !DILocation(line: 624, column: 1, scope: !3190)
!3277 = distinct !DISubprogram(name: "acpi_power_get_state", scope: !3, file: !3, line: 180, type: !3278, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!107, !109, !796}
!3280 = !DILocalVariable(name: "handle", arg: 1, scope: !3277, file: !3, line: 180, type: !109)
!3281 = !DILocation(line: 180, column: 45, scope: !3277)
!3282 = !DILocalVariable(name: "state", arg: 2, scope: !3277, file: !3, line: 180, type: !796)
!3283 = !DILocation(line: 180, column: 58, scope: !3277)
!3284 = !DILocalVariable(name: "status", scope: !3277, file: !3, line: 182, type: !2455)
!3285 = !DILocation(line: 182, column: 14, scope: !3277)
!3286 = !DILocalVariable(name: "sta", scope: !3277, file: !3, line: 183, type: !329)
!3287 = !DILocation(line: 183, column: 21, scope: !3277)
!3288 = !DILocalVariable(name: "node_name", scope: !3277, file: !3, line: 184, type: !3289)
!3289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 40, elements: !2306)
!3290 = !DILocation(line: 184, column: 7, scope: !3277)
!3291 = !DILocalVariable(name: "buffer", scope: !3277, file: !3, line: 185, type: !2697)
!3292 = !DILocation(line: 185, column: 21, scope: !3277)
!3293 = !DILocation(line: 185, column: 30, scope: !3277)
!3294 = !DILocation(line: 185, column: 51, scope: !3277)
!3295 = !DILocation(line: 188, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 188, column: 6)
!3297 = !DILocation(line: 188, column: 14, scope: !3296)
!3298 = !DILocation(line: 188, column: 18, scope: !3296)
!3299 = !DILocation(line: 188, column: 6, scope: !3277)
!3300 = !DILocation(line: 189, column: 3, scope: !3296)
!3301 = !DILocation(line: 191, column: 33, scope: !3277)
!3302 = !DILocation(line: 191, column: 11, scope: !3277)
!3303 = !DILocation(line: 191, column: 9, scope: !3277)
!3304 = !DILocation(line: 192, column: 6, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 192, column: 6)
!3306 = !DILocation(line: 192, column: 6, scope: !3277)
!3307 = !DILocation(line: 193, column: 3, scope: !3305)
!3308 = !DILocation(line: 195, column: 12, scope: !3277)
!3309 = !DILocation(line: 195, column: 16, scope: !3277)
!3310 = !DILocation(line: 195, column: 11, scope: !3277)
!3311 = !DILocation(line: 195, column: 3, scope: !3277)
!3312 = !DILocation(line: 195, column: 9, scope: !3277)
!3313 = !DILocation(line: 198, column: 16, scope: !3277)
!3314 = !DILocation(line: 198, column: 2, scope: !3277)
!3315 = !DILocation(line: 204, column: 2, scope: !3277)
!3316 = !DILocation(line: 205, column: 1, scope: !3277)
!3317 = distinct !DISubprogram(name: "acpi_device_sleep_wake", scope: !3, file: !3, line: 647, type: !3318, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!107, !2174, !107, !107, !107}
!3320 = !DILocalVariable(name: "dev", arg: 1, scope: !3317, file: !3, line: 647, type: !2174)
!3321 = !DILocation(line: 647, column: 48, scope: !3317)
!3322 = !DILocalVariable(name: "enable", arg: 2, scope: !3317, file: !3, line: 648, type: !107)
!3323 = !DILocation(line: 648, column: 11, scope: !3317)
!3324 = !DILocalVariable(name: "sleep_state", arg: 3, scope: !3317, file: !3, line: 648, type: !107)
!3325 = !DILocation(line: 648, column: 23, scope: !3317)
!3326 = !DILocalVariable(name: "dev_state", arg: 4, scope: !3317, file: !3, line: 648, type: !107)
!3327 = !DILocation(line: 648, column: 40, scope: !3317)
!3328 = !DILocalVariable(name: "in_arg", scope: !3317, file: !3, line: 650, type: !3329)
!3329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2231, size: 576, elements: !207)
!3330 = !DILocation(line: 650, column: 20, scope: !3317)
!3331 = !DILocalVariable(name: "arg_list", scope: !3317, file: !3, line: 651, type: !3332)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !110, line: 947, size: 128, elements: !3333)
!3333 = !{!3334, !3335}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3332, file: !110, line: 948, baseType: !479, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3332, file: !110, line: 949, baseType: !2230, size: 64, offset: 64)
!3336 = !DILocation(line: 651, column: 26, scope: !3317)
!3337 = !DILocation(line: 651, column: 37, scope: !3317)
!3338 = !DILocation(line: 651, column: 42, scope: !3317)
!3339 = !DILocalVariable(name: "status", scope: !3317, file: !3, line: 652, type: !2455)
!3340 = !DILocation(line: 652, column: 14, scope: !3317)
!3341 = !DILocation(line: 665, column: 2, scope: !3317)
!3342 = !DILocation(line: 665, column: 12, scope: !3317)
!3343 = !DILocation(line: 665, column: 17, scope: !3317)
!3344 = !DILocation(line: 666, column: 28, scope: !3317)
!3345 = !DILocation(line: 666, column: 2, scope: !3317)
!3346 = !DILocation(line: 666, column: 12, scope: !3317)
!3347 = !DILocation(line: 666, column: 20, scope: !3317)
!3348 = !DILocation(line: 666, column: 26, scope: !3317)
!3349 = !DILocation(line: 667, column: 2, scope: !3317)
!3350 = !DILocation(line: 667, column: 12, scope: !3317)
!3351 = !DILocation(line: 667, column: 17, scope: !3317)
!3352 = !DILocation(line: 668, column: 28, scope: !3317)
!3353 = !DILocation(line: 668, column: 2, scope: !3317)
!3354 = !DILocation(line: 668, column: 12, scope: !3317)
!3355 = !DILocation(line: 668, column: 20, scope: !3317)
!3356 = !DILocation(line: 668, column: 26, scope: !3317)
!3357 = !DILocation(line: 669, column: 2, scope: !3317)
!3358 = !DILocation(line: 669, column: 12, scope: !3317)
!3359 = !DILocation(line: 669, column: 17, scope: !3317)
!3360 = !DILocation(line: 670, column: 28, scope: !3317)
!3361 = !DILocation(line: 670, column: 2, scope: !3317)
!3362 = !DILocation(line: 670, column: 12, scope: !3317)
!3363 = !DILocation(line: 670, column: 20, scope: !3317)
!3364 = !DILocation(line: 670, column: 26, scope: !3317)
!3365 = !DILocation(line: 671, column: 32, scope: !3317)
!3366 = !DILocation(line: 671, column: 37, scope: !3317)
!3367 = !DILocation(line: 671, column: 11, scope: !3317)
!3368 = !DILocation(line: 671, column: 9, scope: !3317)
!3369 = !DILocation(line: 672, column: 6, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 672, column: 6)
!3371 = !DILocation(line: 672, column: 6, scope: !3317)
!3372 = !DILocation(line: 673, column: 3, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 672, column: 28)
!3374 = !DILocation(line: 674, column: 13, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 674, column: 13)
!3376 = !DILocation(line: 674, column: 20, scope: !3375)
!3377 = !DILocation(line: 674, column: 13, scope: !3370)
!3378 = !DILocation(line: 675, column: 3, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 674, column: 37)
!3380 = !DILocation(line: 676, column: 3, scope: !3379)
!3381 = !DILocation(line: 676, column: 8, scope: !3379)
!3382 = !DILocation(line: 676, column: 15, scope: !3379)
!3383 = !DILocation(line: 676, column: 21, scope: !3379)
!3384 = !DILocation(line: 676, column: 27, scope: !3379)
!3385 = !DILocation(line: 677, column: 3, scope: !3379)
!3386 = !DILocation(line: 681, column: 38, scope: !3317)
!3387 = !DILocation(line: 681, column: 43, scope: !3317)
!3388 = !DILocation(line: 681, column: 59, scope: !3317)
!3389 = !DILocation(line: 681, column: 11, scope: !3317)
!3390 = !DILocation(line: 681, column: 9, scope: !3317)
!3391 = !DILocation(line: 682, column: 6, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 682, column: 6)
!3393 = !DILocation(line: 682, column: 27, scope: !3392)
!3394 = !DILocation(line: 682, column: 31, scope: !3392)
!3395 = !DILocation(line: 682, column: 38, scope: !3392)
!3396 = !DILocation(line: 682, column: 6, scope: !3317)
!3397 = !DILocation(line: 683, column: 3, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 682, column: 56)
!3399 = !DILocation(line: 684, column: 3, scope: !3398)
!3400 = !DILocation(line: 684, column: 8, scope: !3398)
!3401 = !DILocation(line: 684, column: 15, scope: !3398)
!3402 = !DILocation(line: 684, column: 21, scope: !3398)
!3403 = !DILocation(line: 684, column: 27, scope: !3398)
!3404 = !DILocation(line: 685, column: 3, scope: !3398)
!3405 = !DILocation(line: 688, column: 2, scope: !3317)
!3406 = !DILocation(line: 689, column: 1, scope: !3317)
!3407 = distinct !DISubprogram(name: "acpi_enable_wakeup_device_power", scope: !3, file: !3, line: 697, type: !3408, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!107, !2174, !107}
!3410 = !DILocalVariable(name: "dev", arg: 1, scope: !3407, file: !3, line: 697, type: !2174)
!3411 = !DILocation(line: 697, column: 57, scope: !3407)
!3412 = !DILocalVariable(name: "sleep_state", arg: 2, scope: !3407, file: !3, line: 697, type: !107)
!3413 = !DILocation(line: 697, column: 66, scope: !3407)
!3414 = !DILocalVariable(name: "entry", scope: !3407, file: !3, line: 699, type: !89)
!3415 = !DILocation(line: 699, column: 36, scope: !3407)
!3416 = !DILocalVariable(name: "err", scope: !3407, file: !3, line: 700, type: !107)
!3417 = !DILocation(line: 700, column: 6, scope: !3407)
!3418 = !DILocation(line: 702, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 702, column: 6)
!3420 = !DILocation(line: 702, column: 11, scope: !3419)
!3421 = !DILocation(line: 702, column: 15, scope: !3419)
!3422 = !DILocation(line: 702, column: 20, scope: !3419)
!3423 = !DILocation(line: 702, column: 27, scope: !3419)
!3424 = !DILocation(line: 702, column: 33, scope: !3419)
!3425 = !DILocation(line: 702, column: 6, scope: !3407)
!3426 = !DILocation(line: 703, column: 3, scope: !3419)
!3427 = !DILocation(line: 705, column: 2, scope: !3407)
!3428 = !DILocation(line: 707, column: 6, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 707, column: 6)
!3430 = !DILocation(line: 707, column: 11, scope: !3429)
!3431 = !DILocation(line: 707, column: 18, scope: !3429)
!3432 = !DILocation(line: 707, column: 31, scope: !3429)
!3433 = !DILocation(line: 707, column: 6, scope: !3407)
!3434 = !DILocation(line: 708, column: 3, scope: !3429)
!3435 = !DILocalVariable(name: "__mptr", scope: !3436, file: !3, line: 710, type: !88)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 710, column: 2)
!3437 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 710, column: 2)
!3438 = !DILocation(line: 710, column: 2, scope: !3436)
!3439 = !DILocation(line: 710, column: 2, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 710, column: 2)
!3441 = !DILocation(line: 710, column: 2, scope: !3437)
!3442 = !DILocation(line: 710, column: 2, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 710, column: 2)
!3444 = !DILocalVariable(name: "resource", scope: !3445, file: !3, line: 711, type: !100)
!3445 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 710, column: 59)
!3446 = !DILocation(line: 711, column: 31, scope: !3445)
!3447 = !DILocation(line: 711, column: 42, scope: !3445)
!3448 = !DILocation(line: 711, column: 49, scope: !3445)
!3449 = !DILocation(line: 713, column: 15, scope: !3445)
!3450 = !DILocation(line: 713, column: 25, scope: !3445)
!3451 = !DILocation(line: 713, column: 3, scope: !3445)
!3452 = !DILocation(line: 715, column: 8, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 715, column: 7)
!3454 = !DILocation(line: 715, column: 18, scope: !3453)
!3455 = !DILocation(line: 715, column: 7, scope: !3445)
!3456 = !DILocation(line: 716, column: 33, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 715, column: 34)
!3458 = !DILocation(line: 716, column: 10, scope: !3457)
!3459 = !DILocation(line: 716, column: 8, scope: !3457)
!3460 = !DILocation(line: 717, column: 9, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 717, column: 8)
!3462 = !DILocation(line: 717, column: 8, scope: !3457)
!3463 = !DILocation(line: 718, column: 5, scope: !3461)
!3464 = !DILocation(line: 718, column: 15, scope: !3461)
!3465 = !DILocation(line: 718, column: 30, scope: !3461)
!3466 = !DILocation(line: 719, column: 3, scope: !3457)
!3467 = !DILocation(line: 721, column: 17, scope: !3445)
!3468 = !DILocation(line: 721, column: 27, scope: !3445)
!3469 = !DILocation(line: 721, column: 3, scope: !3445)
!3470 = !DILocation(line: 723, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 723, column: 7)
!3472 = !DILocation(line: 723, column: 7, scope: !3445)
!3473 = !DILocation(line: 724, column: 4, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 723, column: 12)
!3475 = !DILocation(line: 726, column: 4, scope: !3474)
!3476 = !DILocation(line: 726, column: 9, scope: !3474)
!3477 = !DILocation(line: 726, column: 16, scope: !3474)
!3478 = !DILocation(line: 726, column: 22, scope: !3474)
!3479 = !DILocation(line: 726, column: 28, scope: !3474)
!3480 = !DILocation(line: 727, column: 4, scope: !3474)
!3481 = !DILocation(line: 729, column: 2, scope: !3445)
!3482 = !DILocalVariable(name: "__mptr", scope: !3483, file: !3, line: 710, type: !88)
!3483 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 710, column: 2)
!3484 = !DILocation(line: 710, column: 2, scope: !3483)
!3485 = !DILocation(line: 710, column: 2, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 710, column: 2)
!3487 = distinct !{!3487, !3441, !3488}
!3488 = !DILocation(line: 729, column: 2, scope: !3437)
!3489 = !DILocation(line: 734, column: 31, scope: !3407)
!3490 = !DILocation(line: 734, column: 39, scope: !3407)
!3491 = !DILocation(line: 734, column: 8, scope: !3407)
!3492 = !DILocation(line: 734, column: 6, scope: !3407)
!3493 = !DILocation(line: 735, column: 6, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 735, column: 6)
!3495 = !DILocation(line: 735, column: 6, scope: !3407)
!3496 = !DILocation(line: 736, column: 3, scope: !3494)
!3497 = !DILocation(line: 736, column: 8, scope: !3494)
!3498 = !DILocation(line: 736, column: 15, scope: !3494)
!3499 = !DILocation(line: 736, column: 29, scope: !3494)
!3500 = !DILabel(scope: !3407, name: "out", file: !3, line: 738)
!3501 = !DILocation(line: 738, column: 2, scope: !3407)
!3502 = !DILocation(line: 739, column: 2, scope: !3407)
!3503 = !DILocation(line: 740, column: 9, scope: !3407)
!3504 = !DILocation(line: 740, column: 2, scope: !3407)
!3505 = !DILocation(line: 741, column: 1, scope: !3407)
!3506 = distinct !DISubprogram(name: "acpi_power_on_unlocked", scope: !3, file: !3, line: 381, type: !3507, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!107, !100}
!3509 = !DILocalVariable(name: "resource", arg: 1, scope: !3506, file: !3, line: 381, type: !100)
!3510 = !DILocation(line: 381, column: 63, scope: !3506)
!3511 = !DILocalVariable(name: "result", scope: !3506, file: !3, line: 383, type: !107)
!3512 = !DILocation(line: 383, column: 6, scope: !3506)
!3513 = !DILocation(line: 385, column: 6, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 385, column: 6)
!3515 = !DILocation(line: 385, column: 16, scope: !3514)
!3516 = !DILocation(line: 385, column: 25, scope: !3514)
!3517 = !DILocation(line: 385, column: 6, scope: !3506)
!3518 = !DILocation(line: 389, column: 2, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 385, column: 29)
!3520 = !DILocation(line: 390, column: 28, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 389, column: 9)
!3522 = !DILocation(line: 390, column: 12, scope: !3521)
!3523 = !DILocation(line: 390, column: 10, scope: !3521)
!3524 = !DILocation(line: 391, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 391, column: 7)
!3526 = !DILocation(line: 391, column: 7, scope: !3521)
!3527 = !DILocation(line: 392, column: 4, scope: !3525)
!3528 = !DILocation(line: 392, column: 14, scope: !3525)
!3529 = !DILocation(line: 392, column: 23, scope: !3525)
!3530 = !DILocation(line: 394, column: 9, scope: !3506)
!3531 = !DILocation(line: 394, column: 2, scope: !3506)
!3532 = distinct !DISubprogram(name: "acpi_disable_wakeup_device_power", scope: !3, file: !3, line: 749, type: !2395, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3533 = !DILocalVariable(name: "dev", arg: 1, scope: !3532, file: !3, line: 749, type: !2174)
!3534 = !DILocation(line: 749, column: 58, scope: !3532)
!3535 = !DILocalVariable(name: "entry", scope: !3532, file: !3, line: 751, type: !89)
!3536 = !DILocation(line: 751, column: 36, scope: !3532)
!3537 = !DILocalVariable(name: "err", scope: !3532, file: !3, line: 752, type: !107)
!3538 = !DILocation(line: 752, column: 6, scope: !3532)
!3539 = !DILocation(line: 754, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 754, column: 6)
!3541 = !DILocation(line: 754, column: 11, scope: !3540)
!3542 = !DILocation(line: 754, column: 15, scope: !3540)
!3543 = !DILocation(line: 754, column: 20, scope: !3540)
!3544 = !DILocation(line: 754, column: 27, scope: !3540)
!3545 = !DILocation(line: 754, column: 33, scope: !3540)
!3546 = !DILocation(line: 754, column: 6, scope: !3532)
!3547 = !DILocation(line: 755, column: 3, scope: !3540)
!3548 = !DILocation(line: 757, column: 2, scope: !3532)
!3549 = !DILocation(line: 759, column: 8, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 759, column: 6)
!3551 = !DILocation(line: 759, column: 13, scope: !3550)
!3552 = !DILocation(line: 759, column: 20, scope: !3550)
!3553 = !DILocation(line: 759, column: 6, scope: !3550)
!3554 = !DILocation(line: 759, column: 34, scope: !3550)
!3555 = !DILocation(line: 759, column: 6, scope: !3532)
!3556 = !DILocation(line: 760, column: 3, scope: !3550)
!3557 = !DILocation(line: 766, column: 6, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 766, column: 6)
!3559 = !DILocation(line: 766, column: 11, scope: !3558)
!3560 = !DILocation(line: 766, column: 18, scope: !3558)
!3561 = !DILocation(line: 766, column: 32, scope: !3558)
!3562 = !DILocation(line: 766, column: 6, scope: !3532)
!3563 = !DILocation(line: 767, column: 3, scope: !3558)
!3564 = !DILocation(line: 767, column: 8, scope: !3558)
!3565 = !DILocation(line: 767, column: 15, scope: !3558)
!3566 = !DILocation(line: 767, column: 29, scope: !3558)
!3567 = !DILocation(line: 769, column: 31, scope: !3532)
!3568 = !DILocation(line: 769, column: 8, scope: !3532)
!3569 = !DILocation(line: 769, column: 6, scope: !3532)
!3570 = !DILocation(line: 770, column: 6, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 770, column: 6)
!3572 = !DILocation(line: 770, column: 6, scope: !3532)
!3573 = !DILocation(line: 771, column: 3, scope: !3571)
!3574 = !DILocalVariable(name: "__mptr", scope: !3575, file: !3, line: 773, type: !88)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 773, column: 2)
!3576 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 773, column: 2)
!3577 = !DILocation(line: 773, column: 2, scope: !3575)
!3578 = !DILocation(line: 773, column: 2, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 773, column: 2)
!3580 = !DILocation(line: 773, column: 2, scope: !3576)
!3581 = !DILocation(line: 773, column: 2, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 773, column: 2)
!3583 = !DILocalVariable(name: "resource", scope: !3584, file: !3, line: 774, type: !100)
!3584 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 773, column: 59)
!3585 = !DILocation(line: 774, column: 31, scope: !3584)
!3586 = !DILocation(line: 774, column: 42, scope: !3584)
!3587 = !DILocation(line: 774, column: 49, scope: !3584)
!3588 = !DILocation(line: 776, column: 15, scope: !3584)
!3589 = !DILocation(line: 776, column: 25, scope: !3584)
!3590 = !DILocation(line: 776, column: 3, scope: !3584)
!3591 = !DILocation(line: 778, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 778, column: 7)
!3593 = !DILocation(line: 778, column: 17, scope: !3592)
!3594 = !DILocation(line: 778, column: 7, scope: !3584)
!3595 = !DILocation(line: 779, column: 34, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 778, column: 33)
!3597 = !DILocation(line: 779, column: 10, scope: !3596)
!3598 = !DILocation(line: 779, column: 8, scope: !3596)
!3599 = !DILocation(line: 780, column: 9, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 780, column: 8)
!3601 = !DILocation(line: 780, column: 8, scope: !3596)
!3602 = !DILocation(line: 781, column: 5, scope: !3600)
!3603 = !DILocation(line: 781, column: 15, scope: !3600)
!3604 = !DILocation(line: 781, column: 30, scope: !3600)
!3605 = !DILocation(line: 782, column: 3, scope: !3596)
!3606 = !DILocation(line: 784, column: 17, scope: !3584)
!3607 = !DILocation(line: 784, column: 27, scope: !3584)
!3608 = !DILocation(line: 784, column: 3, scope: !3584)
!3609 = !DILocation(line: 786, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3584, file: !3, line: 786, column: 7)
!3611 = !DILocation(line: 786, column: 7, scope: !3584)
!3612 = !DILocation(line: 787, column: 4, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 786, column: 12)
!3614 = !DILocation(line: 789, column: 4, scope: !3613)
!3615 = !DILocation(line: 789, column: 9, scope: !3613)
!3616 = !DILocation(line: 789, column: 16, scope: !3613)
!3617 = !DILocation(line: 789, column: 22, scope: !3613)
!3618 = !DILocation(line: 789, column: 28, scope: !3613)
!3619 = !DILocation(line: 790, column: 4, scope: !3613)
!3620 = !DILocation(line: 792, column: 2, scope: !3584)
!3621 = !DILocalVariable(name: "__mptr", scope: !3622, file: !3, line: 773, type: !88)
!3622 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 773, column: 2)
!3623 = !DILocation(line: 773, column: 2, scope: !3622)
!3624 = !DILocation(line: 773, column: 2, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 773, column: 2)
!3626 = distinct !{!3626, !3580, !3627}
!3627 = !DILocation(line: 792, column: 2, scope: !3576)
!3628 = !DILabel(scope: !3532, name: "out", file: !3, line: 794)
!3629 = !DILocation(line: 794, column: 2, scope: !3532)
!3630 = !DILocation(line: 795, column: 2, scope: !3532)
!3631 = !DILocation(line: 796, column: 9, scope: !3532)
!3632 = !DILocation(line: 796, column: 2, scope: !3532)
!3633 = !DILocation(line: 797, column: 1, scope: !3532)
!3634 = distinct !DISubprogram(name: "acpi_power_off_unlocked", scope: !3, file: !3, line: 421, type: !3507, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3635 = !DILocalVariable(name: "resource", arg: 1, scope: !3634, file: !3, line: 421, type: !100)
!3636 = !DILocation(line: 421, column: 64, scope: !3634)
!3637 = !DILocalVariable(name: "result", scope: !3634, file: !3, line: 423, type: !107)
!3638 = !DILocation(line: 423, column: 6, scope: !3634)
!3639 = !DILocation(line: 425, column: 7, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 425, column: 6)
!3641 = !DILocation(line: 425, column: 17, scope: !3640)
!3642 = !DILocation(line: 425, column: 6, scope: !3634)
!3643 = !DILocation(line: 429, column: 3, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 425, column: 28)
!3645 = !DILocation(line: 432, column: 8, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 432, column: 6)
!3647 = !DILocation(line: 432, column: 18, scope: !3646)
!3648 = !DILocation(line: 432, column: 6, scope: !3646)
!3649 = !DILocation(line: 432, column: 6, scope: !3634)
!3650 = !DILocation(line: 436, column: 2, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 432, column: 29)
!3652 = !DILocation(line: 437, column: 29, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 436, column: 9)
!3654 = !DILocation(line: 437, column: 12, scope: !3653)
!3655 = !DILocation(line: 437, column: 10, scope: !3653)
!3656 = !DILocation(line: 438, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 438, column: 7)
!3658 = !DILocation(line: 438, column: 7, scope: !3653)
!3659 = !DILocation(line: 439, column: 4, scope: !3657)
!3660 = !DILocation(line: 439, column: 14, scope: !3657)
!3661 = !DILocation(line: 439, column: 23, scope: !3657)
!3662 = !DILocation(line: 441, column: 9, scope: !3634)
!3663 = !DILocation(line: 441, column: 2, scope: !3634)
!3664 = !DILocation(line: 442, column: 1, scope: !3634)
!3665 = distinct !DISubprogram(name: "acpi_power_get_inferred_state", scope: !3, file: !3, line: 799, type: !3666, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!107, !2174, !796}
!3668 = !DILocalVariable(name: "device", arg: 1, scope: !3665, file: !3, line: 799, type: !2174)
!3669 = !DILocation(line: 799, column: 55, scope: !3665)
!3670 = !DILocalVariable(name: "state", arg: 2, scope: !3665, file: !3, line: 799, type: !796)
!3671 = !DILocation(line: 799, column: 68, scope: !3665)
!3672 = !DILocalVariable(name: "result", scope: !3665, file: !3, line: 801, type: !107)
!3673 = !DILocation(line: 801, column: 6, scope: !3665)
!3674 = !DILocalVariable(name: "list_state", scope: !3665, file: !3, line: 802, type: !107)
!3675 = !DILocation(line: 802, column: 6, scope: !3665)
!3676 = !DILocalVariable(name: "i", scope: !3665, file: !3, line: 803, type: !107)
!3677 = !DILocation(line: 803, column: 6, scope: !3665)
!3678 = !DILocation(line: 805, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 805, column: 6)
!3680 = !DILocation(line: 805, column: 14, scope: !3679)
!3681 = !DILocation(line: 805, column: 18, scope: !3679)
!3682 = !DILocation(line: 805, column: 6, scope: !3665)
!3683 = !DILocation(line: 806, column: 3, scope: !3679)
!3684 = !DILocation(line: 812, column: 9, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 812, column: 2)
!3686 = !DILocation(line: 812, column: 7, scope: !3685)
!3687 = !DILocation(line: 812, column: 26, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3685, file: !3, line: 812, column: 2)
!3689 = !DILocation(line: 812, column: 28, scope: !3688)
!3690 = !DILocation(line: 812, column: 2, scope: !3685)
!3691 = !DILocalVariable(name: "list", scope: !3692, file: !3, line: 813, type: !97)
!3692 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 812, column: 55)
!3693 = !DILocation(line: 813, column: 21, scope: !3692)
!3694 = !DILocation(line: 813, column: 29, scope: !3692)
!3695 = !DILocation(line: 813, column: 37, scope: !3692)
!3696 = !DILocation(line: 813, column: 43, scope: !3692)
!3697 = !DILocation(line: 813, column: 50, scope: !3692)
!3698 = !DILocation(line: 813, column: 53, scope: !3692)
!3699 = !DILocation(line: 815, column: 18, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 815, column: 7)
!3701 = !DILocation(line: 815, column: 7, scope: !3700)
!3702 = !DILocation(line: 815, column: 7, scope: !3692)
!3703 = !DILocation(line: 816, column: 4, scope: !3700)
!3704 = !DILocation(line: 818, column: 38, scope: !3692)
!3705 = !DILocation(line: 818, column: 12, scope: !3692)
!3706 = !DILocation(line: 818, column: 10, scope: !3692)
!3707 = !DILocation(line: 819, column: 7, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 819, column: 7)
!3709 = !DILocation(line: 819, column: 7, scope: !3692)
!3710 = !DILocation(line: 820, column: 11, scope: !3708)
!3711 = !DILocation(line: 820, column: 4, scope: !3708)
!3712 = !DILocation(line: 822, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 822, column: 7)
!3714 = !DILocation(line: 822, column: 18, scope: !3713)
!3715 = !DILocation(line: 822, column: 7, scope: !3692)
!3716 = !DILocation(line: 823, column: 13, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 822, column: 51)
!3718 = !DILocation(line: 823, column: 5, scope: !3717)
!3719 = !DILocation(line: 823, column: 11, scope: !3717)
!3720 = !DILocation(line: 824, column: 4, scope: !3717)
!3721 = !DILocation(line: 826, column: 2, scope: !3692)
!3722 = !DILocation(line: 812, column: 51, scope: !3688)
!3723 = !DILocation(line: 812, column: 2, scope: !3688)
!3724 = distinct !{!3724, !3690, !3725}
!3725 = !DILocation(line: 826, column: 2, scope: !3685)
!3726 = !DILocation(line: 828, column: 11, scope: !3665)
!3727 = !DILocation(line: 828, column: 19, scope: !3665)
!3728 = !DILocation(line: 828, column: 25, scope: !3665)
!3729 = !DILocation(line: 828, column: 52, scope: !3665)
!3730 = !DILocation(line: 828, column: 58, scope: !3665)
!3731 = !DILocation(line: 828, column: 3, scope: !3665)
!3732 = !DILocation(line: 828, column: 9, scope: !3665)
!3733 = !DILocation(line: 830, column: 2, scope: !3665)
!3734 = !DILocation(line: 831, column: 1, scope: !3665)
!3735 = distinct !DISubprogram(name: "list_empty", scope: !2539, file: !2539, line: 280, type: !3736, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!107, !3738}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!3740 = !DILocalVariable(name: "head", arg: 1, scope: !3735, file: !2539, line: 280, type: !3738)
!3741 = !DILocation(line: 280, column: 54, scope: !3735)
!3742 = !DILocation(line: 282, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3735, file: !2539, line: 282, column: 9)
!3744 = !DILocation(line: 282, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3743, file: !2539, line: 282, column: 9)
!3746 = !DILocation(line: 282, column: 34, scope: !3735)
!3747 = !DILocation(line: 282, column: 31, scope: !3735)
!3748 = !DILocation(line: 282, column: 2, scope: !3735)
!3749 = distinct !DISubprogram(name: "acpi_power_get_list_state", scope: !3, file: !3, line: 207, type: !3191, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3750 = !DILocalVariable(name: "list", arg: 1, scope: !3749, file: !3, line: 207, type: !97)
!3751 = !DILocation(line: 207, column: 56, scope: !3749)
!3752 = !DILocalVariable(name: "state", arg: 2, scope: !3749, file: !3, line: 207, type: !796)
!3753 = !DILocation(line: 207, column: 67, scope: !3749)
!3754 = !DILocalVariable(name: "entry", scope: !3749, file: !3, line: 209, type: !89)
!3755 = !DILocation(line: 209, column: 36, scope: !3749)
!3756 = !DILocalVariable(name: "cur_state", scope: !3749, file: !3, line: 210, type: !107)
!3757 = !DILocation(line: 210, column: 6, scope: !3749)
!3758 = !DILocation(line: 212, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 212, column: 6)
!3760 = !DILocation(line: 212, column: 12, scope: !3759)
!3761 = !DILocation(line: 212, column: 16, scope: !3759)
!3762 = !DILocation(line: 212, column: 6, scope: !3749)
!3763 = !DILocation(line: 213, column: 3, scope: !3759)
!3764 = !DILocation(line: 216, column: 12, scope: !3749)
!3765 = !DILocalVariable(name: "__mptr", scope: !3766, file: !3, line: 217, type: !88)
!3766 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 217, column: 2)
!3767 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 217, column: 2)
!3768 = !DILocation(line: 217, column: 2, scope: !3766)
!3769 = !DILocation(line: 217, column: 2, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 217, column: 2)
!3771 = !DILocation(line: 217, column: 2, scope: !3767)
!3772 = !DILocation(line: 217, column: 2, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 217, column: 2)
!3774 = !DILocalVariable(name: "resource", scope: !3775, file: !3, line: 218, type: !100)
!3775 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 217, column: 41)
!3776 = !DILocation(line: 218, column: 31, scope: !3775)
!3777 = !DILocation(line: 218, column: 42, scope: !3775)
!3778 = !DILocation(line: 218, column: 49, scope: !3775)
!3779 = !DILocalVariable(name: "handle", scope: !3775, file: !3, line: 219, type: !109)
!3780 = !DILocation(line: 219, column: 15, scope: !3775)
!3781 = !DILocation(line: 219, column: 24, scope: !3775)
!3782 = !DILocation(line: 219, column: 34, scope: !3775)
!3783 = !DILocation(line: 219, column: 41, scope: !3775)
!3784 = !DILocalVariable(name: "result", scope: !3775, file: !3, line: 220, type: !107)
!3785 = !DILocation(line: 220, column: 7, scope: !3775)
!3786 = !DILocation(line: 222, column: 15, scope: !3775)
!3787 = !DILocation(line: 222, column: 25, scope: !3775)
!3788 = !DILocation(line: 222, column: 3, scope: !3775)
!3789 = !DILocation(line: 223, column: 33, scope: !3775)
!3790 = !DILocation(line: 223, column: 12, scope: !3775)
!3791 = !DILocation(line: 223, column: 10, scope: !3775)
!3792 = !DILocation(line: 224, column: 17, scope: !3775)
!3793 = !DILocation(line: 224, column: 27, scope: !3775)
!3794 = !DILocation(line: 224, column: 3, scope: !3775)
!3795 = !DILocation(line: 225, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 225, column: 7)
!3797 = !DILocation(line: 225, column: 7, scope: !3775)
!3798 = !DILocation(line: 226, column: 11, scope: !3796)
!3799 = !DILocation(line: 226, column: 4, scope: !3796)
!3800 = !DILocation(line: 228, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 228, column: 7)
!3802 = !DILocation(line: 228, column: 17, scope: !3801)
!3803 = !DILocation(line: 228, column: 7, scope: !3775)
!3804 = !DILocation(line: 229, column: 4, scope: !3801)
!3805 = !DILocation(line: 230, column: 2, scope: !3775)
!3806 = !DILocalVariable(name: "__mptr", scope: !3807, file: !3, line: 217, type: !88)
!3807 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 217, column: 2)
!3808 = !DILocation(line: 217, column: 2, scope: !3807)
!3809 = !DILocation(line: 217, column: 2, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !3, line: 217, column: 2)
!3811 = distinct !{!3811, !3771, !3812}
!3812 = !DILocation(line: 230, column: 2, scope: !3767)
!3813 = !DILocation(line: 235, column: 11, scope: !3749)
!3814 = !DILocation(line: 235, column: 3, scope: !3749)
!3815 = !DILocation(line: 235, column: 9, scope: !3749)
!3816 = !DILocation(line: 236, column: 2, scope: !3749)
!3817 = !DILocation(line: 237, column: 1, scope: !3749)
!3818 = distinct !DISubprogram(name: "acpi_power_on_resources", scope: !3, file: !3, line: 833, type: !3408, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3819 = !DILocalVariable(name: "device", arg: 1, scope: !3818, file: !3, line: 833, type: !2174)
!3820 = !DILocation(line: 833, column: 49, scope: !3818)
!3821 = !DILocalVariable(name: "state", arg: 2, scope: !3818, file: !3, line: 833, type: !107)
!3822 = !DILocation(line: 833, column: 61, scope: !3818)
!3823 = !DILocation(line: 835, column: 7, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 835, column: 6)
!3825 = !DILocation(line: 835, column: 14, scope: !3824)
!3826 = !DILocation(line: 835, column: 17, scope: !3824)
!3827 = !DILocation(line: 835, column: 23, scope: !3824)
!3828 = !DILocation(line: 835, column: 39, scope: !3824)
!3829 = !DILocation(line: 835, column: 42, scope: !3824)
!3830 = !DILocation(line: 835, column: 48, scope: !3824)
!3831 = !DILocation(line: 835, column: 6, scope: !3818)
!3832 = !DILocation(line: 836, column: 3, scope: !3824)
!3833 = !DILocation(line: 838, column: 29, scope: !3818)
!3834 = !DILocation(line: 838, column: 37, scope: !3818)
!3835 = !DILocation(line: 838, column: 43, scope: !3818)
!3836 = !DILocation(line: 838, column: 50, scope: !3818)
!3837 = !DILocation(line: 838, column: 57, scope: !3818)
!3838 = !DILocation(line: 838, column: 9, scope: !3818)
!3839 = !DILocation(line: 838, column: 2, scope: !3818)
!3840 = !DILocation(line: 839, column: 1, scope: !3818)
!3841 = distinct !DISubprogram(name: "acpi_power_on_list", scope: !3, file: !3, line: 473, type: !3842, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!107, !97}
!3844 = !DILocalVariable(name: "list", arg: 1, scope: !3841, file: !3, line: 473, type: !97)
!3845 = !DILocation(line: 473, column: 49, scope: !3841)
!3846 = !DILocalVariable(name: "entry", scope: !3841, file: !3, line: 475, type: !89)
!3847 = !DILocation(line: 475, column: 36, scope: !3841)
!3848 = !DILocalVariable(name: "result", scope: !3841, file: !3, line: 476, type: !107)
!3849 = !DILocation(line: 476, column: 6, scope: !3841)
!3850 = !DILocalVariable(name: "__mptr", scope: !3851, file: !3, line: 478, type: !88)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 478, column: 2)
!3852 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 478, column: 2)
!3853 = !DILocation(line: 478, column: 2, scope: !3851)
!3854 = !DILocation(line: 478, column: 2, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 478, column: 2)
!3856 = !DILocation(line: 478, column: 2, scope: !3852)
!3857 = !DILocation(line: 478, column: 2, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 478, column: 2)
!3859 = !DILocation(line: 479, column: 26, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 478, column: 41)
!3861 = !DILocation(line: 479, column: 33, scope: !3860)
!3862 = !DILocation(line: 479, column: 12, scope: !3860)
!3863 = !DILocation(line: 479, column: 10, scope: !3860)
!3864 = !DILocation(line: 480, column: 7, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 480, column: 7)
!3866 = !DILocation(line: 480, column: 7, scope: !3860)
!3867 = !DILocation(line: 481, column: 4, scope: !3865)
!3868 = !DILocation(line: 482, column: 2, scope: !3860)
!3869 = !DILocalVariable(name: "__mptr", scope: !3870, file: !3, line: 478, type: !88)
!3870 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 478, column: 2)
!3871 = !DILocation(line: 478, column: 2, scope: !3870)
!3872 = !DILocation(line: 478, column: 2, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 478, column: 2)
!3874 = distinct !{!3874, !3856, !3875}
!3875 = !DILocation(line: 482, column: 2, scope: !3852)
!3876 = !DILocation(line: 483, column: 2, scope: !3841)
!3877 = !DILabel(scope: !3841, name: "err", file: !3, line: 485)
!3878 = !DILocation(line: 485, column: 2, scope: !3841)
!3879 = !DILocalVariable(name: "__mptr", scope: !3880, file: !3, line: 486, type: !88)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 486, column: 2)
!3881 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 486, column: 2)
!3882 = !DILocation(line: 486, column: 2, scope: !3880)
!3883 = !DILocation(line: 486, column: 2, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 486, column: 2)
!3885 = !DILocation(line: 486, column: 2, scope: !3881)
!3886 = !DILocation(line: 486, column: 2, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 486, column: 2)
!3888 = !DILocation(line: 487, column: 18, scope: !3887)
!3889 = !DILocation(line: 487, column: 25, scope: !3887)
!3890 = !DILocation(line: 487, column: 3, scope: !3887)
!3891 = !DILocalVariable(name: "__mptr", scope: !3892, file: !3, line: 486, type: !88)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 486, column: 2)
!3893 = !DILocation(line: 486, column: 2, scope: !3892)
!3894 = !DILocation(line: 486, column: 2, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 486, column: 2)
!3896 = distinct !{!3896, !3885, !3897}
!3897 = !DILocation(line: 487, column: 33, scope: !3881)
!3898 = !DILocation(line: 489, column: 9, scope: !3841)
!3899 = !DILocation(line: 489, column: 2, scope: !3841)
!3900 = !DILocation(line: 490, column: 1, scope: !3841)
!3901 = distinct !DISubprogram(name: "acpi_power_transition", scope: !3, file: !3, line: 841, type: !3408, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3902 = !DILocalVariable(name: "device", arg: 1, scope: !3901, file: !3, line: 841, type: !2174)
!3903 = !DILocation(line: 841, column: 47, scope: !3901)
!3904 = !DILocalVariable(name: "state", arg: 2, scope: !3901, file: !3, line: 841, type: !107)
!3905 = !DILocation(line: 841, column: 59, scope: !3901)
!3906 = !DILocalVariable(name: "result", scope: !3901, file: !3, line: 843, type: !107)
!3907 = !DILocation(line: 843, column: 6, scope: !3901)
!3908 = !DILocation(line: 845, column: 7, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 845, column: 6)
!3910 = !DILocation(line: 845, column: 14, scope: !3909)
!3911 = !DILocation(line: 845, column: 18, scope: !3909)
!3912 = !DILocation(line: 845, column: 24, scope: !3909)
!3913 = !DILocation(line: 845, column: 41, scope: !3909)
!3914 = !DILocation(line: 845, column: 45, scope: !3909)
!3915 = !DILocation(line: 845, column: 51, scope: !3909)
!3916 = !DILocation(line: 845, column: 6, scope: !3901)
!3917 = !DILocation(line: 846, column: 3, scope: !3909)
!3918 = !DILocation(line: 848, column: 6, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 848, column: 6)
!3920 = !DILocation(line: 848, column: 14, scope: !3919)
!3921 = !DILocation(line: 848, column: 20, scope: !3919)
!3922 = !DILocation(line: 848, column: 29, scope: !3919)
!3923 = !DILocation(line: 848, column: 26, scope: !3919)
!3924 = !DILocation(line: 848, column: 35, scope: !3919)
!3925 = !DILocation(line: 848, column: 39, scope: !3919)
!3926 = !DILocation(line: 848, column: 47, scope: !3919)
!3927 = !DILocation(line: 848, column: 53, scope: !3919)
!3928 = !DILocation(line: 848, column: 6, scope: !3901)
!3929 = !DILocation(line: 849, column: 3, scope: !3919)
!3930 = !DILocation(line: 851, column: 7, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 851, column: 6)
!3932 = !DILocation(line: 851, column: 15, scope: !3931)
!3933 = !DILocation(line: 851, column: 21, scope: !3931)
!3934 = !DILocation(line: 851, column: 27, scope: !3931)
!3935 = !DILocation(line: 852, column: 6, scope: !3931)
!3936 = !DILocation(line: 852, column: 10, scope: !3931)
!3937 = !DILocation(line: 852, column: 18, scope: !3931)
!3938 = !DILocation(line: 852, column: 24, scope: !3931)
!3939 = !DILocation(line: 852, column: 30, scope: !3931)
!3940 = !DILocation(line: 851, column: 6, scope: !3901)
!3941 = !DILocation(line: 853, column: 3, scope: !3931)
!3942 = !DILocation(line: 860, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 860, column: 6)
!3944 = !DILocation(line: 860, column: 12, scope: !3943)
!3945 = !DILocation(line: 860, column: 6, scope: !3901)
!3946 = !DILocation(line: 862, column: 5, scope: !3943)
!3947 = !DILocation(line: 862, column: 13, scope: !3943)
!3948 = !DILocation(line: 862, column: 19, scope: !3943)
!3949 = !DILocation(line: 862, column: 26, scope: !3943)
!3950 = !DILocation(line: 862, column: 33, scope: !3943)
!3951 = !DILocation(line: 861, column: 12, scope: !3943)
!3952 = !DILocation(line: 861, column: 10, scope: !3943)
!3953 = !DILocation(line: 861, column: 3, scope: !3943)
!3954 = !DILocation(line: 864, column: 7, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 864, column: 6)
!3956 = !DILocation(line: 864, column: 14, scope: !3955)
!3957 = !DILocation(line: 864, column: 17, scope: !3955)
!3958 = !DILocation(line: 864, column: 25, scope: !3955)
!3959 = !DILocation(line: 864, column: 31, scope: !3955)
!3960 = !DILocation(line: 864, column: 37, scope: !3955)
!3961 = !DILocation(line: 864, column: 6, scope: !3901)
!3962 = !DILocation(line: 866, column: 5, scope: !3955)
!3963 = !DILocation(line: 866, column: 13, scope: !3955)
!3964 = !DILocation(line: 866, column: 19, scope: !3955)
!3965 = !DILocation(line: 866, column: 26, scope: !3955)
!3966 = !DILocation(line: 866, column: 34, scope: !3955)
!3967 = !DILocation(line: 866, column: 40, scope: !3955)
!3968 = !DILocation(line: 866, column: 47, scope: !3955)
!3969 = !DILocation(line: 865, column: 3, scope: !3955)
!3970 = !DILocation(line: 869, column: 24, scope: !3901)
!3971 = !DILocation(line: 869, column: 54, scope: !3901)
!3972 = !DILocation(line: 869, column: 2, scope: !3901)
!3973 = !DILocation(line: 869, column: 10, scope: !3901)
!3974 = !DILocation(line: 869, column: 16, scope: !3901)
!3975 = !DILocation(line: 869, column: 22, scope: !3901)
!3976 = !DILocation(line: 871, column: 9, scope: !3901)
!3977 = !DILocation(line: 871, column: 2, scope: !3901)
!3978 = !DILocation(line: 872, column: 1, scope: !3901)
!3979 = distinct !DISubprogram(name: "acpi_power_off_list", scope: !3, file: !3, line: 454, type: !3842, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!3980 = !DILocalVariable(name: "list", arg: 1, scope: !3979, file: !3, line: 454, type: !97)
!3981 = !DILocation(line: 454, column: 50, scope: !3979)
!3982 = !DILocalVariable(name: "entry", scope: !3979, file: !3, line: 456, type: !89)
!3983 = !DILocation(line: 456, column: 36, scope: !3979)
!3984 = !DILocalVariable(name: "result", scope: !3979, file: !3, line: 457, type: !107)
!3985 = !DILocation(line: 457, column: 6, scope: !3979)
!3986 = !DILocalVariable(name: "__mptr", scope: !3987, file: !3, line: 459, type: !88)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 459, column: 2)
!3988 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 459, column: 2)
!3989 = !DILocation(line: 459, column: 2, scope: !3987)
!3990 = !DILocation(line: 459, column: 2, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 459, column: 2)
!3992 = !DILocation(line: 459, column: 2, scope: !3988)
!3993 = !DILocation(line: 459, column: 2, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 459, column: 2)
!3995 = !DILocation(line: 460, column: 27, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 459, column: 49)
!3997 = !DILocation(line: 460, column: 34, scope: !3996)
!3998 = !DILocation(line: 460, column: 12, scope: !3996)
!3999 = !DILocation(line: 460, column: 10, scope: !3996)
!4000 = !DILocation(line: 461, column: 7, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 461, column: 7)
!4002 = !DILocation(line: 461, column: 7, scope: !3996)
!4003 = !DILocation(line: 462, column: 4, scope: !4001)
!4004 = !DILocation(line: 463, column: 2, scope: !3996)
!4005 = !DILocalVariable(name: "__mptr", scope: !4006, file: !3, line: 459, type: !88)
!4006 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 459, column: 2)
!4007 = !DILocation(line: 459, column: 2, scope: !4006)
!4008 = !DILocation(line: 459, column: 2, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4006, file: !3, line: 459, column: 2)
!4010 = distinct !{!4010, !3992, !4011}
!4011 = !DILocation(line: 463, column: 2, scope: !3988)
!4012 = !DILocation(line: 464, column: 2, scope: !3979)
!4013 = !DILabel(scope: !3979, name: "err", file: !3, line: 466)
!4014 = !DILocation(line: 466, column: 2, scope: !3979)
!4015 = !DILocalVariable(name: "__mptr", scope: !4016, file: !3, line: 467, type: !88)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 467, column: 2)
!4017 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 467, column: 2)
!4018 = !DILocation(line: 467, column: 2, scope: !4016)
!4019 = !DILocation(line: 467, column: 2, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 467, column: 2)
!4021 = !DILocation(line: 467, column: 2, scope: !4017)
!4022 = !DILocation(line: 467, column: 2, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 467, column: 2)
!4024 = !DILocation(line: 468, column: 17, scope: !4023)
!4025 = !DILocation(line: 468, column: 24, scope: !4023)
!4026 = !DILocation(line: 468, column: 3, scope: !4023)
!4027 = !DILocalVariable(name: "__mptr", scope: !4028, file: !3, line: 467, type: !88)
!4028 = distinct !DILexicalBlock(scope: !4023, file: !3, line: 467, column: 2)
!4029 = !DILocation(line: 467, column: 2, scope: !4028)
!4030 = !DILocation(line: 467, column: 2, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 467, column: 2)
!4032 = distinct !{!4032, !4021, !4033}
!4033 = !DILocation(line: 468, column: 32, scope: !4017)
!4034 = !DILocation(line: 470, column: 9, scope: !3979)
!4035 = !DILocation(line: 470, column: 2, scope: !3979)
!4036 = !DILocation(line: 471, column: 1, scope: !3979)
!4037 = distinct !DISubprogram(name: "kzalloc", scope: !81, file: !81, line: 662, type: !4038, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!88, !253, !1519}
!4040 = !DILocalVariable(name: "s", arg: 1, scope: !4041, file: !81, line: 445, type: !1099)
!4041 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !4042, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!88, !1099, !1519, !253}
!4044 = !DILocation(line: 445, column: 72, scope: !4041, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 552, column: 10, scope: !4046, inlinedAt: !4049)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !81, line: 540, column: 34)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !81, line: 540, column: 6)
!4048 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !4038, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4049 = distinct !DILocation(line: 664, column: 9, scope: !4037)
!4050 = !DILocalVariable(name: "flags", arg: 2, scope: !4041, file: !81, line: 446, type: !1519)
!4051 = !DILocation(line: 446, column: 9, scope: !4041, inlinedAt: !4045)
!4052 = !DILocalVariable(name: "size", arg: 3, scope: !4041, file: !81, line: 446, type: !253)
!4053 = !DILocation(line: 446, column: 23, scope: !4041, inlinedAt: !4045)
!4054 = !DILocalVariable(name: "ret", scope: !4041, file: !81, line: 448, type: !88)
!4055 = !DILocation(line: 448, column: 8, scope: !4041, inlinedAt: !4045)
!4056 = !DILocalVariable(name: "flags", arg: 1, scope: !4057, file: !81, line: 318, type: !1519)
!4057 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !4058, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!80, !1519}
!4060 = !DILocation(line: 318, column: 67, scope: !4057, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 553, column: 20, scope: !4046, inlinedAt: !4049)
!4062 = !DILocalVariable(name: "size", arg: 1, scope: !4063, file: !81, line: 346, type: !253)
!4063 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !4064, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!7, !253}
!4066 = !DILocation(line: 346, column: 58, scope: !4063, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 547, column: 11, scope: !4046, inlinedAt: !4049)
!4068 = !DILocalVariable(name: "size", arg: 1, scope: !4069, file: !81, line: 472, type: !253)
!4069 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !4070, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!88, !253, !1519, !7}
!4072 = !DILocation(line: 472, column: 28, scope: !4069, inlinedAt: !4073)
!4073 = distinct !DILocation(line: 481, column: 9, scope: !4074, inlinedAt: !4075)
!4074 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !4038, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4075 = distinct !DILocation(line: 545, column: 11, scope: !4076, inlinedAt: !4049)
!4076 = distinct !DILexicalBlock(scope: !4046, file: !81, line: 544, column: 7)
!4077 = !DILocalVariable(name: "flags", arg: 2, scope: !4069, file: !81, line: 472, type: !1519)
!4078 = !DILocation(line: 472, column: 40, scope: !4069, inlinedAt: !4073)
!4079 = !DILocalVariable(name: "order", arg: 3, scope: !4069, file: !81, line: 472, type: !7)
!4080 = !DILocation(line: 472, column: 60, scope: !4069, inlinedAt: !4073)
!4081 = !DILocalVariable(name: "size", arg: 1, scope: !4074, file: !81, line: 478, type: !253)
!4082 = !DILocation(line: 478, column: 51, scope: !4074, inlinedAt: !4075)
!4083 = !DILocalVariable(name: "flags", arg: 2, scope: !4074, file: !81, line: 478, type: !1519)
!4084 = !DILocation(line: 478, column: 63, scope: !4074, inlinedAt: !4075)
!4085 = !DILocalVariable(name: "order", scope: !4074, file: !81, line: 480, type: !7)
!4086 = !DILocation(line: 480, column: 15, scope: !4074, inlinedAt: !4075)
!4087 = !DILocalVariable(name: "size", arg: 1, scope: !4048, file: !81, line: 538, type: !253)
!4088 = !DILocation(line: 538, column: 45, scope: !4048, inlinedAt: !4049)
!4089 = !DILocalVariable(name: "flags", arg: 2, scope: !4048, file: !81, line: 538, type: !1519)
!4090 = !DILocation(line: 538, column: 57, scope: !4048, inlinedAt: !4049)
!4091 = !DILocalVariable(name: "index", scope: !4046, file: !81, line: 542, type: !7)
!4092 = !DILocation(line: 542, column: 16, scope: !4046, inlinedAt: !4049)
!4093 = !DILocalVariable(name: "size", arg: 1, scope: !4037, file: !81, line: 662, type: !253)
!4094 = !DILocation(line: 662, column: 36, scope: !4037)
!4095 = !DILocalVariable(name: "flags", arg: 2, scope: !4037, file: !81, line: 662, type: !1519)
!4096 = !DILocation(line: 662, column: 48, scope: !4037)
!4097 = !DILocation(line: 664, column: 17, scope: !4037)
!4098 = !DILocation(line: 664, column: 23, scope: !4037)
!4099 = !DILocation(line: 664, column: 29, scope: !4037)
!4100 = !DILocation(line: 540, column: 27, scope: !4047, inlinedAt: !4049)
!4101 = !DILocation(line: 540, column: 6, scope: !4047, inlinedAt: !4049)
!4102 = !DILocation(line: 540, column: 6, scope: !4048, inlinedAt: !4049)
!4103 = !DILocation(line: 544, column: 7, scope: !4076, inlinedAt: !4049)
!4104 = !DILocation(line: 544, column: 12, scope: !4076, inlinedAt: !4049)
!4105 = !DILocation(line: 544, column: 7, scope: !4046, inlinedAt: !4049)
!4106 = !DILocation(line: 545, column: 25, scope: !4076, inlinedAt: !4049)
!4107 = !DILocation(line: 545, column: 31, scope: !4076, inlinedAt: !4049)
!4108 = !DILocation(line: 480, column: 33, scope: !4074, inlinedAt: !4075)
!4109 = !DILocation(line: 480, column: 23, scope: !4074, inlinedAt: !4075)
!4110 = !DILocation(line: 481, column: 29, scope: !4074, inlinedAt: !4075)
!4111 = !DILocation(line: 481, column: 35, scope: !4074, inlinedAt: !4075)
!4112 = !DILocation(line: 481, column: 42, scope: !4074, inlinedAt: !4075)
!4113 = !DILocation(line: 474, column: 23, scope: !4069, inlinedAt: !4073)
!4114 = !DILocation(line: 474, column: 29, scope: !4069, inlinedAt: !4073)
!4115 = !DILocation(line: 474, column: 36, scope: !4069, inlinedAt: !4073)
!4116 = !DILocation(line: 474, column: 9, scope: !4069, inlinedAt: !4073)
!4117 = !DILocation(line: 545, column: 4, scope: !4076, inlinedAt: !4049)
!4118 = !DILocation(line: 547, column: 25, scope: !4046, inlinedAt: !4049)
!4119 = !DILocation(line: 348, column: 7, scope: !4120, inlinedAt: !4067)
!4120 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 348, column: 6)
!4121 = !DILocation(line: 348, column: 6, scope: !4063, inlinedAt: !4067)
!4122 = !DILocation(line: 349, column: 3, scope: !4120, inlinedAt: !4067)
!4123 = !DILocation(line: 351, column: 6, scope: !4124, inlinedAt: !4067)
!4124 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 351, column: 6)
!4125 = !DILocation(line: 351, column: 11, scope: !4124, inlinedAt: !4067)
!4126 = !DILocation(line: 351, column: 6, scope: !4063, inlinedAt: !4067)
!4127 = !DILocation(line: 352, column: 3, scope: !4124, inlinedAt: !4067)
!4128 = !DILocation(line: 354, column: 32, scope: !4129, inlinedAt: !4067)
!4129 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 354, column: 6)
!4130 = !DILocation(line: 354, column: 37, scope: !4129, inlinedAt: !4067)
!4131 = !DILocation(line: 354, column: 42, scope: !4129, inlinedAt: !4067)
!4132 = !DILocation(line: 354, column: 45, scope: !4129, inlinedAt: !4067)
!4133 = !DILocation(line: 354, column: 50, scope: !4129, inlinedAt: !4067)
!4134 = !DILocation(line: 354, column: 6, scope: !4063, inlinedAt: !4067)
!4135 = !DILocation(line: 355, column: 3, scope: !4129, inlinedAt: !4067)
!4136 = !DILocation(line: 356, column: 32, scope: !4137, inlinedAt: !4067)
!4137 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 356, column: 6)
!4138 = !DILocation(line: 356, column: 37, scope: !4137, inlinedAt: !4067)
!4139 = !DILocation(line: 356, column: 43, scope: !4137, inlinedAt: !4067)
!4140 = !DILocation(line: 356, column: 46, scope: !4137, inlinedAt: !4067)
!4141 = !DILocation(line: 356, column: 51, scope: !4137, inlinedAt: !4067)
!4142 = !DILocation(line: 356, column: 6, scope: !4063, inlinedAt: !4067)
!4143 = !DILocation(line: 357, column: 3, scope: !4137, inlinedAt: !4067)
!4144 = !DILocation(line: 358, column: 6, scope: !4145, inlinedAt: !4067)
!4145 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 358, column: 6)
!4146 = !DILocation(line: 358, column: 11, scope: !4145, inlinedAt: !4067)
!4147 = !DILocation(line: 358, column: 6, scope: !4063, inlinedAt: !4067)
!4148 = !DILocation(line: 358, column: 26, scope: !4145, inlinedAt: !4067)
!4149 = !DILocation(line: 359, column: 6, scope: !4150, inlinedAt: !4067)
!4150 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 359, column: 6)
!4151 = !DILocation(line: 359, column: 11, scope: !4150, inlinedAt: !4067)
!4152 = !DILocation(line: 359, column: 6, scope: !4063, inlinedAt: !4067)
!4153 = !DILocation(line: 359, column: 26, scope: !4150, inlinedAt: !4067)
!4154 = !DILocation(line: 360, column: 6, scope: !4155, inlinedAt: !4067)
!4155 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 360, column: 6)
!4156 = !DILocation(line: 360, column: 11, scope: !4155, inlinedAt: !4067)
!4157 = !DILocation(line: 360, column: 6, scope: !4063, inlinedAt: !4067)
!4158 = !DILocation(line: 360, column: 26, scope: !4155, inlinedAt: !4067)
!4159 = !DILocation(line: 361, column: 6, scope: !4160, inlinedAt: !4067)
!4160 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 361, column: 6)
!4161 = !DILocation(line: 361, column: 11, scope: !4160, inlinedAt: !4067)
!4162 = !DILocation(line: 361, column: 6, scope: !4063, inlinedAt: !4067)
!4163 = !DILocation(line: 361, column: 26, scope: !4160, inlinedAt: !4067)
!4164 = !DILocation(line: 362, column: 6, scope: !4165, inlinedAt: !4067)
!4165 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 362, column: 6)
!4166 = !DILocation(line: 362, column: 11, scope: !4165, inlinedAt: !4067)
!4167 = !DILocation(line: 362, column: 6, scope: !4063, inlinedAt: !4067)
!4168 = !DILocation(line: 362, column: 26, scope: !4165, inlinedAt: !4067)
!4169 = !DILocation(line: 363, column: 6, scope: !4170, inlinedAt: !4067)
!4170 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 363, column: 6)
!4171 = !DILocation(line: 363, column: 11, scope: !4170, inlinedAt: !4067)
!4172 = !DILocation(line: 363, column: 6, scope: !4063, inlinedAt: !4067)
!4173 = !DILocation(line: 363, column: 26, scope: !4170, inlinedAt: !4067)
!4174 = !DILocation(line: 364, column: 6, scope: !4175, inlinedAt: !4067)
!4175 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 364, column: 6)
!4176 = !DILocation(line: 364, column: 11, scope: !4175, inlinedAt: !4067)
!4177 = !DILocation(line: 364, column: 6, scope: !4063, inlinedAt: !4067)
!4178 = !DILocation(line: 364, column: 26, scope: !4175, inlinedAt: !4067)
!4179 = !DILocation(line: 365, column: 6, scope: !4180, inlinedAt: !4067)
!4180 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 365, column: 6)
!4181 = !DILocation(line: 365, column: 11, scope: !4180, inlinedAt: !4067)
!4182 = !DILocation(line: 365, column: 6, scope: !4063, inlinedAt: !4067)
!4183 = !DILocation(line: 365, column: 26, scope: !4180, inlinedAt: !4067)
!4184 = !DILocation(line: 366, column: 6, scope: !4185, inlinedAt: !4067)
!4185 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 366, column: 6)
!4186 = !DILocation(line: 366, column: 11, scope: !4185, inlinedAt: !4067)
!4187 = !DILocation(line: 366, column: 6, scope: !4063, inlinedAt: !4067)
!4188 = !DILocation(line: 366, column: 26, scope: !4185, inlinedAt: !4067)
!4189 = !DILocation(line: 367, column: 6, scope: !4190, inlinedAt: !4067)
!4190 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 367, column: 6)
!4191 = !DILocation(line: 367, column: 11, scope: !4190, inlinedAt: !4067)
!4192 = !DILocation(line: 367, column: 6, scope: !4063, inlinedAt: !4067)
!4193 = !DILocation(line: 367, column: 26, scope: !4190, inlinedAt: !4067)
!4194 = !DILocation(line: 368, column: 6, scope: !4195, inlinedAt: !4067)
!4195 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 368, column: 6)
!4196 = !DILocation(line: 368, column: 11, scope: !4195, inlinedAt: !4067)
!4197 = !DILocation(line: 368, column: 6, scope: !4063, inlinedAt: !4067)
!4198 = !DILocation(line: 368, column: 26, scope: !4195, inlinedAt: !4067)
!4199 = !DILocation(line: 369, column: 6, scope: !4200, inlinedAt: !4067)
!4200 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 369, column: 6)
!4201 = !DILocation(line: 369, column: 11, scope: !4200, inlinedAt: !4067)
!4202 = !DILocation(line: 369, column: 6, scope: !4063, inlinedAt: !4067)
!4203 = !DILocation(line: 369, column: 26, scope: !4200, inlinedAt: !4067)
!4204 = !DILocation(line: 370, column: 6, scope: !4205, inlinedAt: !4067)
!4205 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 370, column: 6)
!4206 = !DILocation(line: 370, column: 11, scope: !4205, inlinedAt: !4067)
!4207 = !DILocation(line: 370, column: 6, scope: !4063, inlinedAt: !4067)
!4208 = !DILocation(line: 370, column: 26, scope: !4205, inlinedAt: !4067)
!4209 = !DILocation(line: 371, column: 6, scope: !4210, inlinedAt: !4067)
!4210 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 371, column: 6)
!4211 = !DILocation(line: 371, column: 11, scope: !4210, inlinedAt: !4067)
!4212 = !DILocation(line: 371, column: 6, scope: !4063, inlinedAt: !4067)
!4213 = !DILocation(line: 371, column: 26, scope: !4210, inlinedAt: !4067)
!4214 = !DILocation(line: 372, column: 6, scope: !4215, inlinedAt: !4067)
!4215 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 372, column: 6)
!4216 = !DILocation(line: 372, column: 11, scope: !4215, inlinedAt: !4067)
!4217 = !DILocation(line: 372, column: 6, scope: !4063, inlinedAt: !4067)
!4218 = !DILocation(line: 372, column: 26, scope: !4215, inlinedAt: !4067)
!4219 = !DILocation(line: 373, column: 6, scope: !4220, inlinedAt: !4067)
!4220 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 373, column: 6)
!4221 = !DILocation(line: 373, column: 11, scope: !4220, inlinedAt: !4067)
!4222 = !DILocation(line: 373, column: 6, scope: !4063, inlinedAt: !4067)
!4223 = !DILocation(line: 373, column: 26, scope: !4220, inlinedAt: !4067)
!4224 = !DILocation(line: 374, column: 6, scope: !4225, inlinedAt: !4067)
!4225 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 374, column: 6)
!4226 = !DILocation(line: 374, column: 11, scope: !4225, inlinedAt: !4067)
!4227 = !DILocation(line: 374, column: 6, scope: !4063, inlinedAt: !4067)
!4228 = !DILocation(line: 374, column: 26, scope: !4225, inlinedAt: !4067)
!4229 = !DILocation(line: 375, column: 6, scope: !4230, inlinedAt: !4067)
!4230 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 375, column: 6)
!4231 = !DILocation(line: 375, column: 11, scope: !4230, inlinedAt: !4067)
!4232 = !DILocation(line: 375, column: 6, scope: !4063, inlinedAt: !4067)
!4233 = !DILocation(line: 375, column: 27, scope: !4230, inlinedAt: !4067)
!4234 = !DILocation(line: 376, column: 6, scope: !4235, inlinedAt: !4067)
!4235 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 376, column: 6)
!4236 = !DILocation(line: 376, column: 11, scope: !4235, inlinedAt: !4067)
!4237 = !DILocation(line: 376, column: 6, scope: !4063, inlinedAt: !4067)
!4238 = !DILocation(line: 376, column: 32, scope: !4235, inlinedAt: !4067)
!4239 = !DILocation(line: 377, column: 6, scope: !4240, inlinedAt: !4067)
!4240 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 377, column: 6)
!4241 = !DILocation(line: 377, column: 11, scope: !4240, inlinedAt: !4067)
!4242 = !DILocation(line: 377, column: 6, scope: !4063, inlinedAt: !4067)
!4243 = !DILocation(line: 377, column: 32, scope: !4240, inlinedAt: !4067)
!4244 = !DILocation(line: 378, column: 6, scope: !4245, inlinedAt: !4067)
!4245 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 378, column: 6)
!4246 = !DILocation(line: 378, column: 11, scope: !4245, inlinedAt: !4067)
!4247 = !DILocation(line: 378, column: 6, scope: !4063, inlinedAt: !4067)
!4248 = !DILocation(line: 378, column: 32, scope: !4245, inlinedAt: !4067)
!4249 = !DILocation(line: 379, column: 6, scope: !4250, inlinedAt: !4067)
!4250 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 379, column: 6)
!4251 = !DILocation(line: 379, column: 11, scope: !4250, inlinedAt: !4067)
!4252 = !DILocation(line: 379, column: 6, scope: !4063, inlinedAt: !4067)
!4253 = !DILocation(line: 379, column: 33, scope: !4250, inlinedAt: !4067)
!4254 = !DILocation(line: 380, column: 6, scope: !4255, inlinedAt: !4067)
!4255 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 380, column: 6)
!4256 = !DILocation(line: 380, column: 11, scope: !4255, inlinedAt: !4067)
!4257 = !DILocation(line: 380, column: 6, scope: !4063, inlinedAt: !4067)
!4258 = !DILocation(line: 380, column: 33, scope: !4255, inlinedAt: !4067)
!4259 = !DILocation(line: 381, column: 6, scope: !4260, inlinedAt: !4067)
!4260 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 381, column: 6)
!4261 = !DILocation(line: 381, column: 11, scope: !4260, inlinedAt: !4067)
!4262 = !DILocation(line: 381, column: 6, scope: !4063, inlinedAt: !4067)
!4263 = !DILocation(line: 381, column: 33, scope: !4260, inlinedAt: !4067)
!4264 = !DILocation(line: 382, column: 2, scope: !4265, inlinedAt: !4067)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !81, line: 382, column: 2)
!4266 = distinct !DILexicalBlock(scope: !4063, file: !81, line: 382, column: 2)
!4267 = !{i32 -2144221257, i32 -2144221228, i32 -2144221182, i32 -2144221124, i32 -2144221070, i32 -2144221016, i32 -2144220961, i32 -2144220930}
!4268 = !DILocation(line: 382, column: 2, scope: !4269, inlinedAt: !4067)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !81, line: 382, column: 2)
!4270 = distinct !DILexicalBlock(scope: !4266, file: !81, line: 382, column: 2)
!4271 = !{i32 -2144220487, i32 -2144220480, i32 -2144220426, i32 -2144220395, i32 -2144220365}
!4272 = !DILocation(line: 382, column: 2, scope: !4270, inlinedAt: !4067)
!4273 = !DILocation(line: 386, column: 1, scope: !4063, inlinedAt: !4067)
!4274 = !DILocation(line: 547, column: 9, scope: !4046, inlinedAt: !4049)
!4275 = !DILocation(line: 549, column: 8, scope: !4276, inlinedAt: !4049)
!4276 = distinct !DILexicalBlock(scope: !4046, file: !81, line: 549, column: 7)
!4277 = !DILocation(line: 549, column: 7, scope: !4046, inlinedAt: !4049)
!4278 = !DILocation(line: 550, column: 4, scope: !4276, inlinedAt: !4049)
!4279 = !DILocation(line: 553, column: 33, scope: !4046, inlinedAt: !4049)
!4280 = !DILocation(line: 325, column: 6, scope: !4281, inlinedAt: !4061)
!4281 = distinct !DILexicalBlock(scope: !4057, file: !81, line: 325, column: 6)
!4282 = !DILocation(line: 325, column: 6, scope: !4057, inlinedAt: !4061)
!4283 = !DILocation(line: 326, column: 3, scope: !4281, inlinedAt: !4061)
!4284 = !DILocation(line: 332, column: 9, scope: !4057, inlinedAt: !4061)
!4285 = !DILocation(line: 332, column: 15, scope: !4057, inlinedAt: !4061)
!4286 = !DILocation(line: 332, column: 2, scope: !4057, inlinedAt: !4061)
!4287 = !DILocation(line: 336, column: 1, scope: !4057, inlinedAt: !4061)
!4288 = !DILocation(line: 553, column: 5, scope: !4046, inlinedAt: !4049)
!4289 = !DILocation(line: 553, column: 41, scope: !4046, inlinedAt: !4049)
!4290 = !DILocation(line: 554, column: 5, scope: !4046, inlinedAt: !4049)
!4291 = !DILocation(line: 554, column: 12, scope: !4046, inlinedAt: !4049)
!4292 = !DILocation(line: 448, column: 31, scope: !4041, inlinedAt: !4045)
!4293 = !DILocation(line: 448, column: 34, scope: !4041, inlinedAt: !4045)
!4294 = !DILocation(line: 448, column: 14, scope: !4041, inlinedAt: !4045)
!4295 = !DILocation(line: 450, column: 22, scope: !4041, inlinedAt: !4045)
!4296 = !DILocation(line: 450, column: 25, scope: !4041, inlinedAt: !4045)
!4297 = !DILocation(line: 450, column: 30, scope: !4041, inlinedAt: !4045)
!4298 = !DILocation(line: 450, column: 36, scope: !4041, inlinedAt: !4045)
!4299 = !DILocation(line: 450, column: 8, scope: !4041, inlinedAt: !4045)
!4300 = !DILocation(line: 450, column: 6, scope: !4041, inlinedAt: !4045)
!4301 = !DILocation(line: 451, column: 9, scope: !4041, inlinedAt: !4045)
!4302 = !DILocation(line: 552, column: 3, scope: !4046, inlinedAt: !4049)
!4303 = !DILocation(line: 557, column: 19, scope: !4048, inlinedAt: !4049)
!4304 = !DILocation(line: 557, column: 25, scope: !4048, inlinedAt: !4049)
!4305 = !DILocation(line: 557, column: 9, scope: !4048, inlinedAt: !4049)
!4306 = !DILocation(line: 557, column: 2, scope: !4048, inlinedAt: !4049)
!4307 = !DILocation(line: 558, column: 1, scope: !4048, inlinedAt: !4049)
!4308 = !DILocation(line: 664, column: 2, scope: !4037)
!4309 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2539, file: !2539, line: 33, type: !2501, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4310 = !DILocalVariable(name: "list", arg: 1, scope: !4309, file: !2539, line: 33, type: !97)
!4311 = !DILocation(line: 33, column: 53, scope: !4309)
!4312 = !DILocation(line: 35, column: 2, scope: !4309)
!4313 = !DILocation(line: 35, column: 2, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4309, file: !2539, line: 35, column: 2)
!4315 = !DILocation(line: 35, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4314, file: !2539, line: 35, column: 2)
!4317 = !DILocation(line: 35, column: 2, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4314, file: !2539, line: 35, column: 2)
!4319 = !DILocation(line: 36, column: 15, scope: !4309)
!4320 = !DILocation(line: 36, column: 2, scope: !4309)
!4321 = !DILocation(line: 36, column: 8, scope: !4309)
!4322 = !DILocation(line: 36, column: 13, scope: !4309)
!4323 = !DILocation(line: 37, column: 1, scope: !4309)
!4324 = distinct !DISubprogram(name: "acpi_release_power_resource", scope: !3, file: !3, line: 874, type: !1671, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4325 = !DILocalVariable(name: "dev", arg: 1, scope: !4324, file: !3, line: 874, type: !1648)
!4326 = !DILocation(line: 874, column: 56, scope: !4324)
!4327 = !DILocalVariable(name: "device", scope: !4324, file: !3, line: 876, type: !2174)
!4328 = !DILocation(line: 876, column: 22, scope: !4324)
!4329 = !DILocalVariable(name: "__mptr", scope: !4330, file: !3, line: 876, type: !88)
!4330 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 876, column: 31)
!4331 = !DILocation(line: 876, column: 31, scope: !4330)
!4332 = !DILocation(line: 876, column: 31, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 876, column: 31)
!4334 = !DILocalVariable(name: "resource", scope: !4324, file: !3, line: 877, type: !100)
!4335 = !DILocation(line: 877, column: 30, scope: !4324)
!4336 = !DILocalVariable(name: "__mptr", scope: !4337, file: !3, line: 879, type: !88)
!4337 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 879, column: 13)
!4338 = !DILocation(line: 879, column: 13, scope: !4337)
!4339 = !DILocation(line: 879, column: 13, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 879, column: 13)
!4341 = !DILocation(line: 879, column: 11, scope: !4324)
!4342 = !DILocation(line: 881, column: 2, scope: !4324)
!4343 = !DILocation(line: 882, column: 12, scope: !4324)
!4344 = !DILocation(line: 882, column: 22, scope: !4324)
!4345 = !DILocation(line: 882, column: 2, scope: !4324)
!4346 = !DILocation(line: 883, column: 2, scope: !4324)
!4347 = !DILocation(line: 885, column: 21, scope: !4324)
!4348 = !DILocation(line: 885, column: 29, scope: !4324)
!4349 = !DILocation(line: 885, column: 2, scope: !4324)
!4350 = !DILocation(line: 886, column: 8, scope: !4324)
!4351 = !DILocation(line: 886, column: 2, scope: !4324)
!4352 = !DILocation(line: 887, column: 1, scope: !4324)
!4353 = distinct !DISubprogram(name: "acpi_power_sysfs_remove", scope: !3, file: !3, line: 899, type: !2385, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4354 = !DILocalVariable(name: "device", arg: 1, scope: !4353, file: !3, line: 899, type: !2174)
!4355 = !DILocation(line: 899, column: 57, scope: !4353)
!4356 = !DILocation(line: 901, column: 22, scope: !4353)
!4357 = !DILocation(line: 901, column: 30, scope: !4353)
!4358 = !DILocation(line: 901, column: 2, scope: !4353)
!4359 = !DILocation(line: 902, column: 1, scope: !4353)
!4360 = distinct !DISubprogram(name: "acpi_power_add_resource_to_list", scope: !3, file: !3, line: 904, type: !4361, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !100}
!4363 = !DILocalVariable(name: "resource", arg: 1, scope: !4360, file: !3, line: 904, type: !100)
!4364 = !DILocation(line: 904, column: 73, scope: !4360)
!4365 = !DILocation(line: 906, column: 2, scope: !4360)
!4366 = !DILocation(line: 908, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 908, column: 6)
!4368 = !DILocation(line: 908, column: 6, scope: !4360)
!4369 = !DILocalVariable(name: "r", scope: !4370, file: !3, line: 909, type: !100)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 908, column: 46)
!4371 = !DILocation(line: 909, column: 31, scope: !4370)
!4372 = !DILocalVariable(name: "__mptr", scope: !4373, file: !3, line: 911, type: !88)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 911, column: 3)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 911, column: 3)
!4375 = !DILocation(line: 911, column: 3, scope: !4373)
!4376 = !DILocation(line: 911, column: 3, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4373, file: !3, line: 911, column: 3)
!4378 = !DILocation(line: 911, column: 3, scope: !4374)
!4379 = !DILocation(line: 911, column: 3, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 911, column: 3)
!4381 = !DILocation(line: 912, column: 8, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 912, column: 8)
!4383 = !DILocation(line: 912, column: 11, scope: !4382)
!4384 = !DILocation(line: 912, column: 19, scope: !4382)
!4385 = !DILocation(line: 912, column: 29, scope: !4382)
!4386 = !DILocation(line: 912, column: 17, scope: !4382)
!4387 = !DILocation(line: 912, column: 8, scope: !4380)
!4388 = !DILocation(line: 913, column: 20, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 912, column: 36)
!4390 = !DILocation(line: 913, column: 30, scope: !4389)
!4391 = !DILocation(line: 913, column: 42, scope: !4389)
!4392 = !DILocation(line: 913, column: 45, scope: !4389)
!4393 = !DILocation(line: 913, column: 5, scope: !4389)
!4394 = !DILocation(line: 914, column: 5, scope: !4389)
!4395 = !DILocalVariable(name: "__mptr", scope: !4396, file: !3, line: 911, type: !88)
!4396 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 911, column: 3)
!4397 = !DILocation(line: 911, column: 3, scope: !4396)
!4398 = !DILocation(line: 911, column: 3, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 911, column: 3)
!4400 = distinct !{!4400, !4378, !4401}
!4401 = !DILocation(line: 915, column: 4, scope: !4374)
!4402 = !DILocation(line: 916, column: 2, scope: !4370)
!4403 = !DILocation(line: 917, column: 17, scope: !4360)
!4404 = !DILocation(line: 917, column: 27, scope: !4360)
!4405 = !DILocation(line: 917, column: 2, scope: !4360)
!4406 = !DILabel(scope: !4360, name: "out", file: !3, line: 919)
!4407 = !DILocation(line: 919, column: 2, scope: !4360)
!4408 = !DILocation(line: 920, column: 2, scope: !4360)
!4409 = !DILocation(line: 921, column: 1, scope: !4360)
!4410 = distinct !DISubprogram(name: "acpi_resume_power_resources", scope: !3, file: !3, line: 984, type: !4411, scopeLine: 985, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null}
!4413 = !DILocalVariable(name: "resource", scope: !4410, file: !3, line: 986, type: !100)
!4414 = !DILocation(line: 986, column: 30, scope: !4410)
!4415 = !DILocation(line: 988, column: 2, scope: !4410)
!4416 = !DILocalVariable(name: "__mptr", scope: !4417, file: !3, line: 990, type: !88)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 990, column: 2)
!4418 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 990, column: 2)
!4419 = !DILocation(line: 990, column: 2, scope: !4417)
!4420 = !DILocation(line: 990, column: 2, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 990, column: 2)
!4422 = !DILocation(line: 990, column: 2, scope: !4418)
!4423 = !DILocation(line: 990, column: 2, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 990, column: 2)
!4425 = !DILocalVariable(name: "result", scope: !4426, file: !3, line: 991, type: !107)
!4426 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 990, column: 70)
!4427 = !DILocation(line: 991, column: 7, scope: !4426)
!4428 = !DILocalVariable(name: "state", scope: !4426, file: !3, line: 991, type: !107)
!4429 = !DILocation(line: 991, column: 15, scope: !4426)
!4430 = !DILocation(line: 993, column: 15, scope: !4426)
!4431 = !DILocation(line: 993, column: 25, scope: !4426)
!4432 = !DILocation(line: 993, column: 3, scope: !4426)
!4433 = !DILocation(line: 995, column: 33, scope: !4426)
!4434 = !DILocation(line: 995, column: 43, scope: !4426)
!4435 = !DILocation(line: 995, column: 50, scope: !4426)
!4436 = !DILocation(line: 995, column: 12, scope: !4426)
!4437 = !DILocation(line: 995, column: 10, scope: !4426)
!4438 = !DILocation(line: 996, column: 7, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 996, column: 7)
!4440 = !DILocation(line: 996, column: 7, scope: !4426)
!4441 = !DILocation(line: 997, column: 18, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 996, column: 15)
!4443 = !DILocation(line: 997, column: 28, scope: !4442)
!4444 = !DILocation(line: 997, column: 4, scope: !4442)
!4445 = !DILocation(line: 998, column: 4, scope: !4442)
!4446 = !DILocation(line: 1001, column: 7, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 1001, column: 7)
!4448 = !DILocation(line: 1001, column: 13, scope: !4447)
!4449 = !DILocation(line: 1002, column: 7, scope: !4447)
!4450 = !DILocation(line: 1002, column: 10, scope: !4447)
!4451 = !DILocation(line: 1002, column: 20, scope: !4447)
!4452 = !DILocation(line: 1001, column: 7, scope: !4426)
!4453 = !DILocation(line: 1003, column: 4, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 1002, column: 31)
!4455 = !DILocation(line: 1004, column: 20, scope: !4454)
!4456 = !DILocation(line: 1004, column: 4, scope: !4454)
!4457 = !DILocation(line: 1005, column: 3, scope: !4454)
!4458 = !DILocation(line: 1007, column: 17, scope: !4426)
!4459 = !DILocation(line: 1007, column: 27, scope: !4426)
!4460 = !DILocation(line: 1007, column: 3, scope: !4426)
!4461 = !DILocation(line: 1008, column: 2, scope: !4426)
!4462 = !DILocalVariable(name: "__mptr", scope: !4463, file: !3, line: 990, type: !88)
!4463 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 990, column: 2)
!4464 = !DILocation(line: 990, column: 2, scope: !4463)
!4465 = !DILocation(line: 990, column: 2, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 990, column: 2)
!4467 = distinct !{!4467, !4422, !4468}
!4468 = !DILocation(line: 1008, column: 2, scope: !4418)
!4469 = !DILocation(line: 1010, column: 2, scope: !4410)
!4470 = !DILocation(line: 1011, column: 1, scope: !4410)
!4471 = distinct !DISubprogram(name: "__acpi_power_on", scope: !3, file: !3, line: 351, type: !3507, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4472 = !DILocalVariable(name: "resource", arg: 1, scope: !4471, file: !3, line: 351, type: !100)
!4473 = !DILocation(line: 351, column: 56, scope: !4471)
!4474 = !DILocalVariable(name: "dep", scope: !4471, file: !3, line: 353, type: !2458)
!4475 = !DILocation(line: 353, column: 38, scope: !4471)
!4476 = !DILocalVariable(name: "status", scope: !4471, file: !3, line: 354, type: !2455)
!4477 = !DILocation(line: 354, column: 14, scope: !4471)
!4478 = !DILocation(line: 356, column: 32, scope: !4471)
!4479 = !DILocation(line: 356, column: 42, scope: !4471)
!4480 = !DILocation(line: 356, column: 49, scope: !4471)
!4481 = !DILocation(line: 356, column: 11, scope: !4471)
!4482 = !DILocation(line: 356, column: 9, scope: !4471)
!4483 = !DILocation(line: 357, column: 6, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 357, column: 6)
!4485 = !DILocation(line: 357, column: 6, scope: !4471)
!4486 = !DILocation(line: 358, column: 3, scope: !4484)
!4487 = !DILocation(line: 368, column: 18, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 368, column: 6)
!4489 = !DILocation(line: 368, column: 28, scope: !4488)
!4490 = !DILocation(line: 368, column: 6, scope: !4488)
!4491 = !DILocation(line: 368, column: 40, scope: !4488)
!4492 = !DILocation(line: 369, column: 24, scope: !4488)
!4493 = !DILocation(line: 369, column: 34, scope: !4488)
!4494 = !DILocation(line: 369, column: 6, scope: !4488)
!4495 = !DILocation(line: 368, column: 6, scope: !4471)
!4496 = !DILocation(line: 370, column: 3, scope: !4488)
!4497 = !DILocalVariable(name: "__mptr", scope: !4498, file: !3, line: 372, type: !88)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 372, column: 2)
!4499 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 372, column: 2)
!4500 = !DILocation(line: 372, column: 2, scope: !4498)
!4501 = !DILocation(line: 372, column: 2, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 372, column: 2)
!4503 = !DILocation(line: 372, column: 2, scope: !4499)
!4504 = !DILocation(line: 372, column: 2, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 372, column: 2)
!4506 = !DILocation(line: 375, column: 21, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 372, column: 56)
!4508 = !DILocation(line: 375, column: 26, scope: !4507)
!4509 = !DILocation(line: 375, column: 3, scope: !4507)
!4510 = !DILocation(line: 376, column: 2, scope: !4507)
!4511 = !DILocalVariable(name: "__mptr", scope: !4512, file: !3, line: 372, type: !88)
!4512 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 372, column: 2)
!4513 = !DILocation(line: 372, column: 2, scope: !4512)
!4514 = !DILocation(line: 372, column: 2, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 372, column: 2)
!4516 = distinct !{!4516, !4503, !4517}
!4517 = !DILocation(line: 376, column: 2, scope: !4499)
!4518 = !DILocation(line: 378, column: 2, scope: !4471)
!4519 = !DILocation(line: 379, column: 1, scope: !4471)
!4520 = distinct !DISubprogram(name: "acpi_turn_off_unused_power_resources", scope: !3, file: !3, line: 1013, type: !4411, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4521 = !DILocalVariable(name: "resource", scope: !4520, file: !3, line: 1015, type: !100)
!4522 = !DILocation(line: 1015, column: 30, scope: !4520)
!4523 = !DILocation(line: 1017, column: 2, scope: !4520)
!4524 = !DILocalVariable(name: "__mptr", scope: !4525, file: !3, line: 1019, type: !88)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1019, column: 2)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1019, column: 2)
!4527 = !DILocation(line: 1019, column: 2, scope: !4525)
!4528 = !DILocation(line: 1019, column: 2, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 1019, column: 2)
!4530 = !DILocation(line: 1019, column: 2, scope: !4526)
!4531 = !DILocation(line: 1019, column: 2, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1019, column: 2)
!4533 = !DILocalVariable(name: "result", scope: !4534, file: !3, line: 1020, type: !107)
!4534 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1019, column: 78)
!4535 = !DILocation(line: 1020, column: 7, scope: !4534)
!4536 = !DILocalVariable(name: "state", scope: !4534, file: !3, line: 1020, type: !107)
!4537 = !DILocation(line: 1020, column: 15, scope: !4534)
!4538 = !DILocation(line: 1022, column: 15, scope: !4534)
!4539 = !DILocation(line: 1022, column: 25, scope: !4534)
!4540 = !DILocation(line: 1022, column: 3, scope: !4534)
!4541 = !DILocation(line: 1024, column: 33, scope: !4534)
!4542 = !DILocation(line: 1024, column: 43, scope: !4534)
!4543 = !DILocation(line: 1024, column: 50, scope: !4534)
!4544 = !DILocation(line: 1024, column: 12, scope: !4534)
!4545 = !DILocation(line: 1024, column: 10, scope: !4534)
!4546 = !DILocation(line: 1025, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1025, column: 7)
!4548 = !DILocation(line: 1025, column: 7, scope: !4534)
!4549 = !DILocation(line: 1026, column: 18, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 1025, column: 15)
!4551 = !DILocation(line: 1026, column: 28, scope: !4550)
!4552 = !DILocation(line: 1026, column: 4, scope: !4550)
!4553 = !DILocation(line: 1027, column: 4, scope: !4550)
!4554 = !DILocation(line: 1030, column: 7, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 1030, column: 7)
!4556 = !DILocation(line: 1030, column: 13, scope: !4555)
!4557 = !DILocation(line: 1031, column: 7, scope: !4555)
!4558 = !DILocation(line: 1031, column: 11, scope: !4555)
!4559 = !DILocation(line: 1031, column: 21, scope: !4555)
!4560 = !DILocation(line: 1030, column: 7, scope: !4534)
!4561 = !DILocation(line: 1032, column: 4, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 1031, column: 32)
!4563 = !DILocation(line: 1033, column: 21, scope: !4562)
!4564 = !DILocation(line: 1033, column: 4, scope: !4562)
!4565 = !DILocation(line: 1034, column: 3, scope: !4562)
!4566 = !DILocation(line: 1036, column: 17, scope: !4534)
!4567 = !DILocation(line: 1036, column: 27, scope: !4534)
!4568 = !DILocation(line: 1036, column: 3, scope: !4534)
!4569 = !DILocation(line: 1037, column: 2, scope: !4534)
!4570 = !DILocalVariable(name: "__mptr", scope: !4571, file: !3, line: 1019, type: !88)
!4571 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 1019, column: 2)
!4572 = !DILocation(line: 1019, column: 2, scope: !4571)
!4573 = !DILocation(line: 1019, column: 2, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 1019, column: 2)
!4575 = distinct !{!4575, !4530, !4576}
!4576 = !DILocation(line: 1037, column: 2, scope: !4526)
!4577 = !DILocation(line: 1039, column: 2, scope: !4520)
!4578 = !DILocation(line: 1040, column: 1, scope: !4520)
!4579 = distinct !DISubprogram(name: "__acpi_power_off", scope: !3, file: !3, line: 407, type: !3507, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4580 = !DILocalVariable(name: "resource", arg: 1, scope: !4579, file: !3, line: 407, type: !100)
!4581 = !DILocation(line: 407, column: 57, scope: !4579)
!4582 = !DILocalVariable(name: "status", scope: !4579, file: !3, line: 409, type: !2455)
!4583 = !DILocation(line: 409, column: 14, scope: !4579)
!4584 = !DILocation(line: 411, column: 32, scope: !4579)
!4585 = !DILocation(line: 411, column: 42, scope: !4579)
!4586 = !DILocation(line: 411, column: 49, scope: !4579)
!4587 = !DILocation(line: 411, column: 11, scope: !4579)
!4588 = !DILocation(line: 411, column: 9, scope: !4579)
!4589 = !DILocation(line: 413, column: 6, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 413, column: 6)
!4591 = !DILocation(line: 413, column: 6, scope: !4579)
!4592 = !DILocation(line: 414, column: 3, scope: !4590)
!4593 = !DILocation(line: 418, column: 2, scope: !4579)
!4594 = !DILocation(line: 419, column: 1, scope: !4579)
!4595 = distinct !DISubprogram(name: "__list_del_entry", scope: !2539, file: !2539, line: 130, type: !2501, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4596 = !DILocalVariable(name: "entry", arg: 1, scope: !4595, file: !2539, line: 130, type: !97)
!4597 = !DILocation(line: 130, column: 55, scope: !4595)
!4598 = !DILocation(line: 132, column: 30, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4595, file: !2539, line: 132, column: 6)
!4600 = !DILocation(line: 132, column: 7, scope: !4599)
!4601 = !DILocation(line: 132, column: 6, scope: !4595)
!4602 = !DILocation(line: 133, column: 3, scope: !4599)
!4603 = !DILocation(line: 135, column: 13, scope: !4595)
!4604 = !DILocation(line: 135, column: 20, scope: !4595)
!4605 = !DILocation(line: 135, column: 26, scope: !4595)
!4606 = !DILocation(line: 135, column: 33, scope: !4595)
!4607 = !DILocation(line: 135, column: 2, scope: !4595)
!4608 = !DILocation(line: 136, column: 1, scope: !4595)
!4609 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2539, file: !2539, line: 51, type: !4610, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!134, !97}
!4612 = !DILocalVariable(name: "entry", arg: 1, scope: !4609, file: !2539, line: 51, type: !97)
!4613 = !DILocation(line: 51, column: 61, scope: !4609)
!4614 = !DILocation(line: 53, column: 2, scope: !4609)
!4615 = distinct !DISubprogram(name: "__list_del", scope: !2539, file: !2539, line: 110, type: !4616, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !97, !97}
!4618 = !DILocalVariable(name: "prev", arg: 1, scope: !4615, file: !2539, line: 110, type: !97)
!4619 = !DILocation(line: 110, column: 50, scope: !4615)
!4620 = !DILocalVariable(name: "next", arg: 2, scope: !4615, file: !2539, line: 110, type: !97)
!4621 = !DILocation(line: 110, column: 75, scope: !4615)
!4622 = !DILocation(line: 112, column: 15, scope: !4615)
!4623 = !DILocation(line: 112, column: 2, scope: !4615)
!4624 = !DILocation(line: 112, column: 8, scope: !4615)
!4625 = !DILocation(line: 112, column: 13, scope: !4615)
!4626 = !DILocation(line: 113, column: 2, scope: !4615)
!4627 = !DILocation(line: 113, column: 2, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4615, file: !2539, line: 113, column: 2)
!4629 = !DILocation(line: 113, column: 2, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4628, file: !2539, line: 113, column: 2)
!4631 = !DILocation(line: 113, column: 2, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !2539, line: 113, column: 2)
!4633 = !DILocation(line: 114, column: 1, scope: !4615)
!4634 = distinct !DISubprogram(name: "acpi_power_get_context", scope: !3, file: !3, line: 78, type: !4635, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!100, !109}
!4637 = !DILocalVariable(name: "handle", arg: 1, scope: !4634, file: !3, line: 78, type: !109)
!4638 = !DILocation(line: 78, column: 71, scope: !4634)
!4639 = !DILocalVariable(name: "device", scope: !4634, file: !3, line: 80, type: !2174)
!4640 = !DILocation(line: 80, column: 22, scope: !4634)
!4641 = !DILocation(line: 82, column: 26, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 82, column: 6)
!4643 = !DILocation(line: 82, column: 6, scope: !4642)
!4644 = !DILocation(line: 82, column: 6, scope: !4634)
!4645 = !DILocation(line: 83, column: 3, scope: !4642)
!4646 = !DILocation(line: 85, column: 27, scope: !4634)
!4647 = !DILocation(line: 85, column: 9, scope: !4634)
!4648 = !DILocation(line: 85, column: 2, scope: !4634)
!4649 = !DILocation(line: 86, column: 1, scope: !4634)
!4650 = distinct !DISubprogram(name: "list_add_tail", scope: !2539, file: !2539, line: 98, type: !4616, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4651 = !DILocalVariable(name: "new", arg: 1, scope: !4650, file: !2539, line: 98, type: !97)
!4652 = !DILocation(line: 98, column: 52, scope: !4650)
!4653 = !DILocalVariable(name: "head", arg: 2, scope: !4650, file: !2539, line: 98, type: !97)
!4654 = !DILocation(line: 98, column: 75, scope: !4650)
!4655 = !DILocation(line: 100, column: 13, scope: !4650)
!4656 = !DILocation(line: 100, column: 18, scope: !4650)
!4657 = !DILocation(line: 100, column: 24, scope: !4650)
!4658 = !DILocation(line: 100, column: 30, scope: !4650)
!4659 = !DILocation(line: 100, column: 2, scope: !4650)
!4660 = !DILocation(line: 101, column: 1, scope: !4650)
!4661 = distinct !DISubprogram(name: "to_power_resource", scope: !3, file: !3, line: 73, type: !4662, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!100, !2174}
!4664 = !DILocalVariable(name: "device", arg: 1, scope: !4661, file: !3, line: 73, type: !2174)
!4665 = !DILocation(line: 73, column: 67, scope: !4661)
!4666 = !DILocalVariable(name: "__mptr", scope: !4667, file: !3, line: 75, type: !88)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 75, column: 9)
!4668 = !DILocation(line: 75, column: 9, scope: !4667)
!4669 = !DILocation(line: 75, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 75, column: 9)
!4671 = !DILocation(line: 75, column: 2, scope: !4661)
!4672 = distinct !DISubprogram(name: "__list_add", scope: !2539, file: !2539, line: 63, type: !4673, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !97, !97, !97}
!4675 = !DILocalVariable(name: "new", arg: 1, scope: !4672, file: !2539, line: 63, type: !97)
!4676 = !DILocation(line: 63, column: 49, scope: !4672)
!4677 = !DILocalVariable(name: "prev", arg: 2, scope: !4672, file: !2539, line: 64, type: !97)
!4678 = !DILocation(line: 64, column: 28, scope: !4672)
!4679 = !DILocalVariable(name: "next", arg: 3, scope: !4672, file: !2539, line: 65, type: !97)
!4680 = !DILocation(line: 65, column: 28, scope: !4672)
!4681 = !DILocation(line: 67, column: 24, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4672, file: !2539, line: 67, column: 6)
!4683 = !DILocation(line: 67, column: 29, scope: !4682)
!4684 = !DILocation(line: 67, column: 35, scope: !4682)
!4685 = !DILocation(line: 67, column: 7, scope: !4682)
!4686 = !DILocation(line: 67, column: 6, scope: !4672)
!4687 = !DILocation(line: 68, column: 3, scope: !4682)
!4688 = !DILocation(line: 70, column: 15, scope: !4672)
!4689 = !DILocation(line: 70, column: 2, scope: !4672)
!4690 = !DILocation(line: 70, column: 8, scope: !4672)
!4691 = !DILocation(line: 70, column: 13, scope: !4672)
!4692 = !DILocation(line: 71, column: 14, scope: !4672)
!4693 = !DILocation(line: 71, column: 2, scope: !4672)
!4694 = !DILocation(line: 71, column: 7, scope: !4672)
!4695 = !DILocation(line: 71, column: 12, scope: !4672)
!4696 = !DILocation(line: 72, column: 14, scope: !4672)
!4697 = !DILocation(line: 72, column: 2, scope: !4672)
!4698 = !DILocation(line: 72, column: 7, scope: !4672)
!4699 = !DILocation(line: 72, column: 12, scope: !4672)
!4700 = !DILocation(line: 73, column: 2, scope: !4672)
!4701 = !DILocation(line: 73, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4672, file: !2539, line: 73, column: 2)
!4703 = !DILocation(line: 73, column: 2, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4702, file: !2539, line: 73, column: 2)
!4705 = !DILocation(line: 73, column: 2, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4702, file: !2539, line: 73, column: 2)
!4707 = !DILocation(line: 74, column: 1, scope: !4672)
!4708 = distinct !DISubprogram(name: "__list_add_valid", scope: !2539, file: !2539, line: 45, type: !4709, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!134, !97, !97, !97}
!4711 = !DILocalVariable(name: "new", arg: 1, scope: !4708, file: !2539, line: 45, type: !97)
!4712 = !DILocation(line: 45, column: 55, scope: !4708)
!4713 = !DILocalVariable(name: "prev", arg: 2, scope: !4708, file: !2539, line: 46, type: !97)
!4714 = !DILocation(line: 46, column: 23, scope: !4708)
!4715 = !DILocalVariable(name: "next", arg: 3, scope: !4708, file: !2539, line: 47, type: !97)
!4716 = !DILocation(line: 47, column: 23, scope: !4708)
!4717 = !DILocation(line: 49, column: 2, scope: !4708)
!4718 = distinct !DISubprogram(name: "acpi_power_expose_list", scope: !3, file: !3, line: 539, type: !4719, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{null, !2174, !97, !261}
!4721 = !DILocalVariable(name: "adev", arg: 1, scope: !4718, file: !3, line: 539, type: !2174)
!4722 = !DILocation(line: 539, column: 56, scope: !4718)
!4723 = !DILocalVariable(name: "resources", arg: 2, scope: !4718, file: !3, line: 540, type: !97)
!4724 = !DILocation(line: 540, column: 26, scope: !4718)
!4725 = !DILocalVariable(name: "attr_group", arg: 3, scope: !4718, file: !3, line: 541, type: !261)
!4726 = !DILocation(line: 541, column: 38, scope: !4718)
!4727 = !DILocalVariable(name: "entry", scope: !4718, file: !3, line: 543, type: !89)
!4728 = !DILocation(line: 543, column: 36, scope: !4718)
!4729 = !DILocalVariable(name: "ret", scope: !4718, file: !3, line: 544, type: !107)
!4730 = !DILocation(line: 544, column: 6, scope: !4718)
!4731 = !DILocation(line: 546, column: 17, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 546, column: 6)
!4733 = !DILocation(line: 546, column: 6, scope: !4732)
!4734 = !DILocation(line: 546, column: 6, scope: !4718)
!4735 = !DILocation(line: 547, column: 3, scope: !4732)
!4736 = !DILocation(line: 549, column: 28, scope: !4718)
!4737 = !DILocation(line: 549, column: 34, scope: !4718)
!4738 = !DILocation(line: 549, column: 38, scope: !4718)
!4739 = !DILocation(line: 549, column: 44, scope: !4718)
!4740 = !DILocation(line: 549, column: 8, scope: !4718)
!4741 = !DILocation(line: 549, column: 6, scope: !4718)
!4742 = !DILocation(line: 550, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 550, column: 6)
!4744 = !DILocation(line: 550, column: 6, scope: !4718)
!4745 = !DILocation(line: 551, column: 3, scope: !4743)
!4746 = !DILocalVariable(name: "__mptr", scope: !4747, file: !3, line: 553, type: !88)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 553, column: 2)
!4748 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 553, column: 2)
!4749 = !DILocation(line: 553, column: 2, scope: !4747)
!4750 = !DILocation(line: 553, column: 2, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 553, column: 2)
!4752 = !DILocation(line: 553, column: 2, scope: !4748)
!4753 = !DILocation(line: 553, column: 2, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 553, column: 2)
!4755 = !DILocalVariable(name: "res_dev", scope: !4756, file: !3, line: 554, type: !2174)
!4756 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 553, column: 46)
!4757 = !DILocation(line: 554, column: 23, scope: !4756)
!4758 = !DILocation(line: 554, column: 34, scope: !4756)
!4759 = !DILocation(line: 554, column: 41, scope: !4756)
!4760 = !DILocation(line: 554, column: 51, scope: !4756)
!4761 = !DILocation(line: 556, column: 34, scope: !4756)
!4762 = !DILocation(line: 556, column: 40, scope: !4756)
!4763 = !DILocation(line: 556, column: 44, scope: !4756)
!4764 = !DILocation(line: 557, column: 12, scope: !4756)
!4765 = !DILocation(line: 557, column: 24, scope: !4756)
!4766 = !DILocation(line: 558, column: 13, scope: !4756)
!4767 = !DILocation(line: 558, column: 22, scope: !4756)
!4768 = !DILocation(line: 558, column: 26, scope: !4756)
!4769 = !DILocation(line: 559, column: 22, scope: !4756)
!4770 = !DILocation(line: 559, column: 31, scope: !4756)
!4771 = !DILocation(line: 559, column: 12, scope: !4756)
!4772 = !DILocation(line: 556, column: 9, scope: !4756)
!4773 = !DILocation(line: 556, column: 7, scope: !4756)
!4774 = !DILocation(line: 560, column: 7, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 560, column: 7)
!4776 = !DILocation(line: 560, column: 7, scope: !4756)
!4777 = !DILocation(line: 561, column: 25, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 560, column: 12)
!4779 = !DILocation(line: 561, column: 31, scope: !4778)
!4780 = !DILocation(line: 561, column: 42, scope: !4778)
!4781 = !DILocation(line: 561, column: 4, scope: !4778)
!4782 = !DILocation(line: 562, column: 4, scope: !4778)
!4783 = !DILocation(line: 564, column: 2, scope: !4756)
!4784 = !DILocalVariable(name: "__mptr", scope: !4785, file: !3, line: 553, type: !88)
!4785 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 553, column: 2)
!4786 = !DILocation(line: 553, column: 2, scope: !4785)
!4787 = !DILocation(line: 553, column: 2, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 553, column: 2)
!4789 = distinct !{!4789, !4752, !4790}
!4790 = !DILocation(line: 564, column: 2, scope: !4748)
!4791 = !DILocation(line: 565, column: 1, scope: !4718)
!4792 = distinct !DISubprogram(name: "acpi_power_hide_list", scope: !3, file: !3, line: 520, type: !4719, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4793 = !DILocalVariable(name: "adev", arg: 1, scope: !4792, file: !3, line: 520, type: !2174)
!4794 = !DILocation(line: 520, column: 54, scope: !4792)
!4795 = !DILocalVariable(name: "resources", arg: 2, scope: !4792, file: !3, line: 521, type: !97)
!4796 = !DILocation(line: 521, column: 24, scope: !4792)
!4797 = !DILocalVariable(name: "attr_group", arg: 3, scope: !4792, file: !3, line: 522, type: !261)
!4798 = !DILocation(line: 522, column: 36, scope: !4792)
!4799 = !DILocalVariable(name: "entry", scope: !4792, file: !3, line: 524, type: !89)
!4800 = !DILocation(line: 524, column: 36, scope: !4792)
!4801 = !DILocation(line: 526, column: 17, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 526, column: 6)
!4803 = !DILocation(line: 526, column: 6, scope: !4802)
!4804 = !DILocation(line: 526, column: 6, scope: !4792)
!4805 = !DILocation(line: 527, column: 3, scope: !4802)
!4806 = !DILocalVariable(name: "__mptr", scope: !4807, file: !3, line: 529, type: !88)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 529, column: 2)
!4808 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 529, column: 2)
!4809 = !DILocation(line: 529, column: 2, scope: !4807)
!4810 = !DILocation(line: 529, column: 2, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 529, column: 2)
!4812 = !DILocation(line: 529, column: 2, scope: !4808)
!4813 = !DILocation(line: 529, column: 2, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 529, column: 2)
!4815 = !DILocalVariable(name: "res_dev", scope: !4816, file: !3, line: 530, type: !2174)
!4816 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 529, column: 54)
!4817 = !DILocation(line: 530, column: 23, scope: !4816)
!4818 = !DILocation(line: 530, column: 34, scope: !4816)
!4819 = !DILocation(line: 530, column: 41, scope: !4816)
!4820 = !DILocation(line: 530, column: 51, scope: !4816)
!4821 = !DILocation(line: 532, column: 33, scope: !4816)
!4822 = !DILocation(line: 532, column: 39, scope: !4816)
!4823 = !DILocation(line: 532, column: 43, scope: !4816)
!4824 = !DILocation(line: 533, column: 11, scope: !4816)
!4825 = !DILocation(line: 533, column: 23, scope: !4816)
!4826 = !DILocation(line: 534, column: 21, scope: !4816)
!4827 = !DILocation(line: 534, column: 30, scope: !4816)
!4828 = !DILocation(line: 534, column: 11, scope: !4816)
!4829 = !DILocation(line: 532, column: 3, scope: !4816)
!4830 = !DILocation(line: 535, column: 2, scope: !4816)
!4831 = !DILocalVariable(name: "__mptr", scope: !4832, file: !3, line: 529, type: !88)
!4832 = distinct !DILexicalBlock(scope: !4814, file: !3, line: 529, column: 2)
!4833 = !DILocation(line: 529, column: 2, scope: !4832)
!4834 = !DILocation(line: 529, column: 2, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 529, column: 2)
!4836 = distinct !{!4836, !4812, !4837}
!4837 = !DILocation(line: 535, column: 2, scope: !4808)
!4838 = !DILocation(line: 536, column: 22, scope: !4792)
!4839 = !DILocation(line: 536, column: 28, scope: !4792)
!4840 = !DILocation(line: 536, column: 32, scope: !4792)
!4841 = !DILocation(line: 536, column: 38, scope: !4792)
!4842 = !DILocation(line: 536, column: 2, scope: !4792)
!4843 = !DILocation(line: 537, column: 1, scope: !4792)
!4844 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !4845, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!153, !144}
!4847 = !DILocalVariable(name: "dev", arg: 1, scope: !4844, file: !30, line: 609, type: !144)
!4848 = !DILocation(line: 609, column: 57, scope: !4844)
!4849 = !DILocation(line: 612, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4844, file: !30, line: 612, column: 6)
!4851 = !DILocation(line: 612, column: 11, scope: !4850)
!4852 = !DILocation(line: 612, column: 6, scope: !4844)
!4853 = !DILocation(line: 613, column: 10, scope: !4850)
!4854 = !DILocation(line: 613, column: 15, scope: !4850)
!4855 = !DILocation(line: 613, column: 3, scope: !4850)
!4856 = !DILocation(line: 615, column: 23, scope: !4844)
!4857 = !DILocation(line: 615, column: 28, scope: !4844)
!4858 = !DILocation(line: 615, column: 9, scope: !4844)
!4859 = !DILocation(line: 615, column: 2, scope: !4844)
!4860 = !DILocation(line: 616, column: 1, scope: !4844)
!4861 = distinct !DISubprogram(name: "kobject_name", scope: !150, file: !150, line: 88, type: !4862, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!153, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!4866 = !DILocalVariable(name: "kobj", arg: 1, scope: !4861, file: !150, line: 88, type: !4864)
!4867 = !DILocation(line: 88, column: 62, scope: !4861)
!4868 = !DILocation(line: 90, column: 9, scope: !4861)
!4869 = !DILocation(line: 90, column: 15, scope: !4861)
!4870 = !DILocation(line: 90, column: 2, scope: !4861)
!4871 = distinct !DISubprogram(name: "acpi_power_on", scope: !3, file: !3, line: 397, type: !3507, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4872 = !DILocalVariable(name: "resource", arg: 1, scope: !4871, file: !3, line: 397, type: !100)
!4873 = !DILocation(line: 397, column: 54, scope: !4871)
!4874 = !DILocalVariable(name: "result", scope: !4871, file: !3, line: 399, type: !107)
!4875 = !DILocation(line: 399, column: 6, scope: !4871)
!4876 = !DILocation(line: 401, column: 14, scope: !4871)
!4877 = !DILocation(line: 401, column: 24, scope: !4871)
!4878 = !DILocation(line: 401, column: 2, scope: !4871)
!4879 = !DILocation(line: 402, column: 34, scope: !4871)
!4880 = !DILocation(line: 402, column: 11, scope: !4871)
!4881 = !DILocation(line: 402, column: 9, scope: !4871)
!4882 = !DILocation(line: 403, column: 16, scope: !4871)
!4883 = !DILocation(line: 403, column: 26, scope: !4871)
!4884 = !DILocation(line: 403, column: 2, scope: !4871)
!4885 = !DILocation(line: 404, column: 9, scope: !4871)
!4886 = !DILocation(line: 404, column: 2, scope: !4871)
!4887 = distinct !DISubprogram(name: "acpi_power_off", scope: !3, file: !3, line: 444, type: !3507, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4888 = !DILocalVariable(name: "resource", arg: 1, scope: !4887, file: !3, line: 444, type: !100)
!4889 = !DILocation(line: 444, column: 55, scope: !4887)
!4890 = !DILocalVariable(name: "result", scope: !4887, file: !3, line: 446, type: !107)
!4891 = !DILocation(line: 446, column: 6, scope: !4887)
!4892 = !DILocation(line: 448, column: 14, scope: !4887)
!4893 = !DILocation(line: 448, column: 24, scope: !4887)
!4894 = !DILocation(line: 448, column: 2, scope: !4887)
!4895 = !DILocation(line: 449, column: 35, scope: !4887)
!4896 = !DILocation(line: 449, column: 11, scope: !4887)
!4897 = !DILocation(line: 449, column: 9, scope: !4887)
!4898 = !DILocation(line: 450, column: 16, scope: !4887)
!4899 = !DILocation(line: 450, column: 26, scope: !4887)
!4900 = !DILocation(line: 450, column: 2, scope: !4887)
!4901 = !DILocation(line: 451, column: 9, scope: !4887)
!4902 = !DILocation(line: 451, column: 2, scope: !4887)
!4903 = distinct !DISubprogram(name: "get_order", scope: !4904, file: !4904, line: 29, type: !4905, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4904 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!107, !256}
!4907 = !DILocalVariable(name: "x", arg: 1, scope: !4908, file: !4909, line: 366, type: !327)
!4908 = distinct !DISubprogram(name: "fls64", scope: !4909, file: !4909, line: 366, type: !4910, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4909 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!107, !327}
!4912 = !DILocation(line: 366, column: 40, scope: !4908, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 46, column: 9, scope: !4903)
!4914 = !DILocalVariable(name: "bitpos", scope: !4908, file: !4909, line: 368, type: !107)
!4915 = !DILocation(line: 368, column: 6, scope: !4908, inlinedAt: !4913)
!4916 = !DILocalVariable(name: "size", arg: 1, scope: !4903, file: !4904, line: 29, type: !256)
!4917 = !DILocation(line: 29, column: 63, scope: !4903)
!4918 = !DILocation(line: 31, column: 27, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4903, file: !4904, line: 31, column: 6)
!4920 = !DILocation(line: 31, column: 6, scope: !4919)
!4921 = !DILocation(line: 31, column: 6, scope: !4903)
!4922 = !DILocation(line: 32, column: 8, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !4904, line: 32, column: 7)
!4924 = distinct !DILexicalBlock(scope: !4919, file: !4904, line: 31, column: 34)
!4925 = !DILocation(line: 32, column: 7, scope: !4924)
!4926 = !DILocation(line: 33, column: 4, scope: !4923)
!4927 = !DILocation(line: 35, column: 7, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !4904, line: 35, column: 7)
!4929 = !DILocation(line: 35, column: 12, scope: !4928)
!4930 = !DILocation(line: 35, column: 7, scope: !4924)
!4931 = !DILocation(line: 36, column: 4, scope: !4928)
!4932 = !DILocation(line: 38, column: 10, scope: !4924)
!4933 = !DILocation(line: 38, column: 28, scope: !4924)
!4934 = !DILocation(line: 38, column: 41, scope: !4924)
!4935 = !DILocation(line: 38, column: 3, scope: !4924)
!4936 = !DILocation(line: 41, column: 6, scope: !4903)
!4937 = !DILocation(line: 42, column: 7, scope: !4903)
!4938 = !DILocation(line: 46, column: 15, scope: !4903)
!4939 = !DILocation(line: 374, column: 2, scope: !4908, inlinedAt: !4913)
!4940 = !DILocation(line: 376, column: 14, scope: !4908, inlinedAt: !4913)
!4941 = !{i32 265499}
!4942 = !DILocation(line: 377, column: 9, scope: !4908, inlinedAt: !4913)
!4943 = !DILocation(line: 377, column: 16, scope: !4908, inlinedAt: !4913)
!4944 = !DILocation(line: 46, column: 2, scope: !4903)
!4945 = !DILocation(line: 48, column: 1, scope: !4903)
!4946 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4947, file: !4947, line: 30, type: !4948, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4947 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!107, !325}
!4950 = !DILocation(line: 366, column: 40, scope: !4908, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 32, column: 9, scope: !4946)
!4952 = !DILocation(line: 368, column: 6, scope: !4908, inlinedAt: !4951)
!4953 = !DILocalVariable(name: "n", arg: 1, scope: !4946, file: !4947, line: 30, type: !325)
!4954 = !DILocation(line: 30, column: 21, scope: !4946)
!4955 = !DILocation(line: 32, column: 15, scope: !4946)
!4956 = !DILocation(line: 374, column: 2, scope: !4908, inlinedAt: !4951)
!4957 = !DILocation(line: 376, column: 14, scope: !4908, inlinedAt: !4951)
!4958 = !DILocation(line: 377, column: 9, scope: !4908, inlinedAt: !4951)
!4959 = !DILocation(line: 377, column: 16, scope: !4908, inlinedAt: !4951)
!4960 = !DILocation(line: 32, column: 18, scope: !4946)
!4961 = !DILocation(line: 32, column: 2, scope: !4946)
!4962 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4963, file: !4963, line: 137, type: !4964, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4963 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!88, !1099, !142, !253, !1519}
!4966 = !DILocalVariable(name: "s", arg: 1, scope: !4962, file: !4963, line: 137, type: !1099)
!4967 = !DILocation(line: 137, column: 54, scope: !4962)
!4968 = !DILocalVariable(name: "object", arg: 2, scope: !4962, file: !4963, line: 137, type: !142)
!4969 = !DILocation(line: 137, column: 69, scope: !4962)
!4970 = !DILocalVariable(name: "size", arg: 3, scope: !4962, file: !4963, line: 138, type: !253)
!4971 = !DILocation(line: 138, column: 12, scope: !4962)
!4972 = !DILocalVariable(name: "flags", arg: 4, scope: !4962, file: !4963, line: 138, type: !1519)
!4973 = !DILocation(line: 138, column: 24, scope: !4962)
!4974 = !DILocation(line: 140, column: 17, scope: !4962)
!4975 = !DILocation(line: 140, column: 2, scope: !4962)
!4976 = distinct !DISubprogram(name: "acpi_power_in_use_show", scope: !3, file: !3, line: 889, type: !2484, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4977 = !DILocalVariable(name: "dev", arg: 1, scope: !4976, file: !3, line: 889, type: !1648)
!4978 = !DILocation(line: 889, column: 54, scope: !4976)
!4979 = !DILocalVariable(name: "attr", arg: 2, scope: !4976, file: !3, line: 890, type: !2486)
!4980 = !DILocation(line: 890, column: 36, scope: !4976)
!4981 = !DILocalVariable(name: "buf", arg: 3, scope: !4976, file: !3, line: 891, type: !206)
!4982 = !DILocation(line: 891, column: 17, scope: !4976)
!4983 = !DILocalVariable(name: "resource", scope: !4976, file: !3, line: 892, type: !100)
!4984 = !DILocation(line: 892, column: 30, scope: !4976)
!4985 = !DILocalVariable(name: "__mptr", scope: !4986, file: !3, line: 894, type: !88)
!4986 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 894, column: 31)
!4987 = !DILocation(line: 894, column: 31, scope: !4986)
!4988 = !DILocation(line: 894, column: 31, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 894, column: 31)
!4990 = !DILocation(line: 894, column: 13, scope: !4976)
!4991 = !DILocation(line: 894, column: 11, scope: !4976)
!4992 = !DILocation(line: 895, column: 17, scope: !4976)
!4993 = !DILocation(line: 895, column: 32, scope: !4976)
!4994 = !DILocation(line: 895, column: 42, scope: !4976)
!4995 = !DILocation(line: 895, column: 31, scope: !4976)
!4996 = !DILocation(line: 895, column: 30, scope: !4976)
!4997 = !DILocation(line: 895, column: 9, scope: !4976)
!4998 = !DILocation(line: 895, column: 2, scope: !4976)
!4999 = distinct !DISubprogram(name: "list_is_singular", scope: !2539, file: !2539, line: 358, type: !3736, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5000 = !DILocalVariable(name: "head", arg: 1, scope: !4999, file: !2539, line: 358, type: !3738)
!5001 = !DILocation(line: 358, column: 60, scope: !4999)
!5002 = !DILocation(line: 360, column: 21, scope: !4999)
!5003 = !DILocation(line: 360, column: 10, scope: !4999)
!5004 = !DILocation(line: 360, column: 27, scope: !4999)
!5005 = !DILocation(line: 360, column: 31, scope: !4999)
!5006 = !DILocation(line: 360, column: 37, scope: !4999)
!5007 = !DILocation(line: 360, column: 45, scope: !4999)
!5008 = !DILocation(line: 360, column: 51, scope: !4999)
!5009 = !DILocation(line: 360, column: 42, scope: !4999)
!5010 = !DILocation(line: 0, scope: !4999)
!5011 = !DILocation(line: 360, column: 2, scope: !4999)
!5012 = distinct !DISubprogram(name: "pm_request_resume", scope: !5013, file: !5013, line: 344, type: !1680, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5013 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5014 = !DILocalVariable(name: "dev", arg: 1, scope: !5012, file: !5013, line: 344, type: !1648)
!5015 = !DILocation(line: 344, column: 52, scope: !5012)
!5016 = !DILocation(line: 346, column: 29, scope: !5012)
!5017 = !DILocation(line: 346, column: 9, scope: !5012)
!5018 = !DILocation(line: 346, column: 2, scope: !5012)
