; ModuleID = '../bcout/drivers/i2c/i2c-mux.llvm.bc'
source_filename = "drivers/i2c/i2c-mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.kmem_cache = type opaque
%struct.i2c_mux_core = type { %struct.i2c_adapter*, %struct.device*, i8, i8*, i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)*, i32, i32, [0 x %struct.i2c_adapter*] }
%struct.i2c_mux_priv = type { %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_mux_core*, i32 }
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

@i2c_adapter_type = external dso_local global %struct.device_type, align 8
@.str = private unnamed_addr constant [35 x i8] c"No room for more i2c-mux adapters\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"i2c-%d-mux (chan_id %d)\00", align 1
@i2c_mux_lock_ops = internal constant %struct.i2c_lock_operations { void (%struct.i2c_adapter*, i32)* @i2c_mux_lock_bus, i32 (%struct.i2c_adapter*, i32)* @i2c_mux_trylock_bus, void (%struct.i2c_adapter*, i32)* @i2c_mux_unlock_bus }, align 8, !dbg !0
@i2c_parent_lock_ops = internal constant %struct.i2c_lock_operations { void (%struct.i2c_adapter*, i32)* @i2c_parent_lock_bus, i32 (%struct.i2c_adapter*, i32)* @i2c_parent_trylock_bus, void (%struct.i2c_adapter*, i32)* @i2c_parent_unlock_bus }, align 8, !dbg !2569
@.str.2 = private unnamed_addr constant [58 x i8] c"Segment %d behind mux can't share classes with ancestors\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"i2c-arb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"i2c-gate\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c-mux\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"failed to add mux-adapter %u as bus %u (error=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"failed to add mux-adapter %u (error=%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"mux_device\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"can't create symlink to mux device\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"drivers/i2c/i2c-mux.c\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"channel-%u\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"can't create symlink to channel %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Added multiplexed i2c bus %d\0A\00", align 1
@__UNIQUE_ID_author175 = internal constant [52 x i8] c"i2c_mux.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1, !dbg !2549
@__UNIQUE_ID_description176 = internal constant [58 x i8] c"i2c_mux.description=I2C driver for multiplexed I2C busses\00", section ".modinfo", align 1, !dbg !2554
@__UNIQUE_ID_file177 = internal constant [33 x i8] c"i2c_mux.file=drivers/i2c/i2c-mux\00", section ".modinfo", align 1, !dbg !2559
@__UNIQUE_ID_license178 = internal constant [23 x i8] c"i2c_mux.license=GPL v2\00", section ".modinfo", align 1, !dbg !2564
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author175, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_description176, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_file177, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license178, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @i2c_root_adapter(%struct.device* %dev) #0 !dbg !2576 {
entry:
  %retval = alloca %struct.i2c_adapter*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %i2c = alloca %struct.device*, align 8
  %i2c_root = alloca %struct.i2c_adapter*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.i2c_adapter*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.declare(metadata %struct.device** %i2c, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_root, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2585
  store %struct.device* %0, %struct.device** %i2c, align 8, !dbg !2587
  br label %for.cond, !dbg !2588

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device*, %struct.device** %i2c, align 8, !dbg !2589
  %tobool = icmp ne %struct.device* %1, null, !dbg !2591
  br i1 %tobool, label %for.body, label %for.end, !dbg !2591

for.body:                                         ; preds = %for.cond
  %2 = load %struct.device*, %struct.device** %i2c, align 8, !dbg !2592
  %type = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 4, !dbg !2595
  %3 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !2595
  %cmp = icmp eq %struct.device_type* %3, @i2c_adapter_type, !dbg !2596
  br i1 %cmp, label %if.then, label %if.end, !dbg !2597

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !2598

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2599

for.inc:                                          ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %i2c, align 8, !dbg !2600
  %parent = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 1, !dbg !2601
  %5 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2601
  store %struct.device* %5, %struct.device** %i2c, align 8, !dbg !2602
  br label %for.cond, !dbg !2603, !llvm.loop !2604

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load %struct.device*, %struct.device** %i2c, align 8, !dbg !2606
  %tobool1 = icmp ne %struct.device* %6, null, !dbg !2606
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2608

if.then2:                                         ; preds = %for.end
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %retval, align 8, !dbg !2609
  br label %return, !dbg !2609

if.end3:                                          ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2610, metadata !DIExpression()), !dbg !2612
  %7 = load %struct.device*, %struct.device** %i2c, align 8, !dbg !2612
  %8 = bitcast %struct.device* %7 to i8*, !dbg !2612
  store i8* %8, i8** %__mptr, align 8, !dbg !2612
  br label %do.body, !dbg !2612

do.body:                                          ; preds = %if.end3
  br label %do.end, !dbg !2613

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !2612
  %add.ptr = getelementptr i8, i8* %9, i64 -96, !dbg !2612
  %10 = bitcast i8* %add.ptr to %struct.i2c_adapter*, !dbg !2612
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %tmp, align 8, !dbg !2613
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %tmp, align 8, !dbg !2612
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %i2c_root, align 8, !dbg !2615
  br label %while.cond, !dbg !2616

while.cond:                                       ; preds = %while.body, %do.end
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_root, align 8, !dbg !2617
  %call = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %12) #7, !dbg !2618
  %tobool4 = icmp ne %struct.i2c_adapter* %call, null, !dbg !2616
  br i1 %tobool4, label %while.body, label %while.end, !dbg !2616

while.body:                                       ; preds = %while.cond
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_root, align 8, !dbg !2619
  %call5 = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %13) #7, !dbg !2620
  store %struct.i2c_adapter* %call5, %struct.i2c_adapter** %i2c_root, align 8, !dbg !2621
  br label %while.cond, !dbg !2616, !llvm.loop !2622

while.end:                                        ; preds = %while.cond
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_root, align 8, !dbg !2624
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %retval, align 8, !dbg !2625
  br label %return, !dbg !2625

return:                                           ; preds = %while.end, %if.then2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %retval, align 8, !dbg !2626
  ret %struct.i2c_adapter* %15, !dbg !2626
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %adapter) #0 !dbg !2627 {
entry:
  %retval = alloca %struct.i2c_adapter*, align 8
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %parent = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !2634, metadata !DIExpression()), !dbg !2635
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2636
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2637
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2638
  %1 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !2638
  store %struct.device* %1, %struct.device** %parent, align 8, !dbg !2635
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2639
  %cmp = icmp ne %struct.device* %2, null, !dbg !2641
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2642

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2643
  %type = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 4, !dbg !2644
  %4 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !2644
  %cmp2 = icmp eq %struct.device_type* %4, @i2c_adapter_type, !dbg !2645
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2646

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2647, metadata !DIExpression()), !dbg !2649
  %5 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2649
  %6 = bitcast %struct.device* %5 to i8*, !dbg !2649
  store i8* %6, i8** %__mptr, align 8, !dbg !2649
  br label %do.body, !dbg !2649

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !2650

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2649
  %add.ptr = getelementptr i8, i8* %7, i64 -96, !dbg !2649
  %8 = bitcast i8* %add.ptr to %struct.i2c_adapter*, !dbg !2649
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %tmp, align 8, !dbg !2650
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %tmp, align 8, !dbg !2649
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %retval, align 8, !dbg !2652
  br label %return, !dbg !2652

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %retval, align 8, !dbg !2653
  br label %return, !dbg !2653

return:                                           ; preds = %if.else, %do.end
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %retval, align 8, !dbg !2654
  ret %struct.i2c_adapter* %10, !dbg !2654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %parent, %struct.device* %dev, i32 %max_adapters, i32 %sizeof_priv, i32 %flags, i32 (%struct.i2c_mux_core*, i32)* %select, i32 (%struct.i2c_mux_core*, i32)* %deselect) #0 !dbg !2655 {
entry:
  %retval = alloca %struct.i2c_mux_core*, align 8
  %parent.addr = alloca %struct.i2c_adapter*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %max_adapters.addr = alloca i32, align 4
  %sizeof_priv.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %select.addr = alloca i32 (%struct.i2c_mux_core*, i32)*, align 8
  %deselect.addr = alloca i32 (%struct.i2c_mux_core*, i32)*, align 8
  %muxc = alloca %struct.i2c_mux_core*, align 8
  store %struct.i2c_adapter* %parent, %struct.i2c_adapter** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent.addr, metadata !2677, metadata !DIExpression()), !dbg !2678
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i32 %max_adapters, i32* %max_adapters.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_adapters.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i32 %sizeof_priv, i32* %sizeof_priv.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sizeof_priv.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  store i32 (%struct.i2c_mux_core*, i32)* %select, i32 (%struct.i2c_mux_core*, i32)** %select.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.i2c_mux_core*, i32)** %select.addr, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i32 (%struct.i2c_mux_core*, i32)* %deselect, i32 (%struct.i2c_mux_core*, i32)** %deselect.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.i2c_mux_core*, i32)** %deselect.addr, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc, metadata !2691, metadata !DIExpression()), !dbg !2692
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2693
  %1 = load i32, i32* %max_adapters.addr, align 4, !dbg !2694
  %conv = sext i32 %1 to i64, !dbg !2694
  %call = call i64 @__ab_c_size(i64 %conv, i64 8, i64 56) #7, !dbg !2694
  %2 = load i32, i32* %sizeof_priv.addr, align 4, !dbg !2695
  %conv1 = sext i32 %2 to i64, !dbg !2695
  %add = add i64 %call, %conv1, !dbg !2696
  %call2 = call i8* @devm_kzalloc(%struct.device* %0, i64 %add, i32 3264) #7, !dbg !2697
  %3 = bitcast i8* %call2 to %struct.i2c_mux_core*, !dbg !2697
  store %struct.i2c_mux_core* %3, %struct.i2c_mux_core** %muxc, align 8, !dbg !2698
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2699
  %tobool = icmp ne %struct.i2c_mux_core* %4, null, !dbg !2699
  br i1 %tobool, label %if.end, label %if.then, !dbg !2701

if.then:                                          ; preds = %entry
  store %struct.i2c_mux_core* null, %struct.i2c_mux_core** %retval, align 8, !dbg !2702
  br label %return, !dbg !2702

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %sizeof_priv.addr, align 4, !dbg !2703
  %tobool3 = icmp ne i32 %5, 0, !dbg !2703
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2705

if.then4:                                         ; preds = %if.end
  %6 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2706
  %adapter = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %6, i32 0, i32 8, !dbg !2707
  %7 = load i32, i32* %max_adapters.addr, align 4, !dbg !2708
  %idxprom = sext i32 %7 to i64, !dbg !2706
  %arrayidx = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter, i64 0, i64 %idxprom, !dbg !2706
  %8 = bitcast %struct.i2c_adapter** %arrayidx to i8*, !dbg !2709
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2710
  %priv = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %9, i32 0, i32 3, !dbg !2711
  store i8* %8, i8** %priv, align 8, !dbg !2712
  br label %if.end5, !dbg !2710

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent.addr, align 8, !dbg !2713
  %11 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2714
  %parent6 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %11, i32 0, i32 0, !dbg !2715
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %parent6, align 8, !dbg !2716
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2717
  %13 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2718
  %dev7 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %13, i32 0, i32 1, !dbg !2719
  store %struct.device* %12, %struct.device** %dev7, align 8, !dbg !2720
  %14 = load i32, i32* %flags.addr, align 4, !dbg !2721
  %conv8 = zext i32 %14 to i64, !dbg !2721
  %and = and i64 %conv8, 1, !dbg !2723
  %tobool9 = icmp ne i64 %and, 0, !dbg !2723
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2724

if.then10:                                        ; preds = %if.end5
  %15 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2725
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %15, i32 0, i32 2, !dbg !2726
  %bf.load = load i8, i8* %mux_locked, align 8, !dbg !2727
  %bf.clear = and i8 %bf.load, -2, !dbg !2727
  %bf.set = or i8 %bf.clear, 1, !dbg !2727
  store i8 %bf.set, i8* %mux_locked, align 8, !dbg !2727
  br label %if.end11, !dbg !2725

if.end11:                                         ; preds = %if.then10, %if.end5
  %16 = load i32, i32* %flags.addr, align 4, !dbg !2728
  %conv12 = zext i32 %16 to i64, !dbg !2728
  %and13 = and i64 %conv12, 2, !dbg !2730
  %tobool14 = icmp ne i64 %and13, 0, !dbg !2730
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !2731

if.then15:                                        ; preds = %if.end11
  %17 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2732
  %arbitrator = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %17, i32 0, i32 2, !dbg !2733
  %bf.load16 = load i8, i8* %arbitrator, align 8, !dbg !2734
  %bf.clear17 = and i8 %bf.load16, -3, !dbg !2734
  %bf.set18 = or i8 %bf.clear17, 2, !dbg !2734
  store i8 %bf.set18, i8* %arbitrator, align 8, !dbg !2734
  br label %if.end19, !dbg !2732

if.end19:                                         ; preds = %if.then15, %if.end11
  %18 = load i32, i32* %flags.addr, align 4, !dbg !2735
  %conv20 = zext i32 %18 to i64, !dbg !2735
  %and21 = and i64 %conv20, 4, !dbg !2737
  %tobool22 = icmp ne i64 %and21, 0, !dbg !2737
  br i1 %tobool22, label %if.then23, label %if.end27, !dbg !2738

if.then23:                                        ; preds = %if.end19
  %19 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2739
  %gate = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %19, i32 0, i32 2, !dbg !2740
  %bf.load24 = load i8, i8* %gate, align 8, !dbg !2741
  %bf.clear25 = and i8 %bf.load24, -5, !dbg !2741
  %bf.set26 = or i8 %bf.clear25, 4, !dbg !2741
  store i8 %bf.set26, i8* %gate, align 8, !dbg !2741
  br label %if.end27, !dbg !2739

if.end27:                                         ; preds = %if.then23, %if.end19
  %20 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %select.addr, align 8, !dbg !2742
  %21 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2743
  %select28 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %21, i32 0, i32 4, !dbg !2744
  store i32 (%struct.i2c_mux_core*, i32)* %20, i32 (%struct.i2c_mux_core*, i32)** %select28, align 8, !dbg !2745
  %22 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect.addr, align 8, !dbg !2746
  %23 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2747
  %deselect29 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %23, i32 0, i32 5, !dbg !2748
  store i32 (%struct.i2c_mux_core*, i32)* %22, i32 (%struct.i2c_mux_core*, i32)** %deselect29, align 8, !dbg !2749
  %24 = load i32, i32* %max_adapters.addr, align 4, !dbg !2750
  %25 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2751
  %max_adapters30 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %25, i32 0, i32 7, !dbg !2752
  store i32 %24, i32* %max_adapters30, align 4, !dbg !2753
  %26 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !2754
  store %struct.i2c_mux_core* %26, %struct.i2c_mux_core** %retval, align 8, !dbg !2755
  br label %return, !dbg !2755

return:                                           ; preds = %if.end27, %if.then
  %27 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %retval, align 8, !dbg !2756
  ret %struct.i2c_mux_core* %27, !dbg !2756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !2757 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2764, metadata !DIExpression()), !dbg !2765
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2766
  %1 = load i64, i64* %size.addr, align 8, !dbg !2767
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2768
  %or = or i32 %2, 256, !dbg !2769
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !2770
  ret i8* %call, !dbg !2771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !2772 {
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
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !2776, metadata !DIExpression()), !dbg !2777
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !2778, metadata !DIExpression()), !dbg !2779
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2784, metadata !DIExpression()), !dbg !2787
  %0 = load i64, i64* %a.addr, align 8, !dbg !2787
  store i64 %0, i64* %__a, align 8, !dbg !2787
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2788, metadata !DIExpression()), !dbg !2787
  %1 = load i64, i64* %b.addr, align 8, !dbg !2787
  store i64 %1, i64* %__b, align 8, !dbg !2787
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2789, metadata !DIExpression()), !dbg !2787
  store i64* %bytes, i64** %__d, align 8, !dbg !2787
  %cmp = icmp eq i64* %__a, %__b, !dbg !2787
  %conv = zext i1 %cmp to i32, !dbg !2787
  %2 = load i64*, i64** %__d, align 8, !dbg !2787
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2787
  %conv2 = zext i1 %cmp1 to i32, !dbg !2787
  %3 = load i64, i64* %__a, align 8, !dbg !2787
  %4 = load i64, i64* %__b, align 8, !dbg !2787
  %5 = load i64*, i64** %__d, align 8, !dbg !2787
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2787
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2787
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2787
  store i64 %8, i64* %5, align 8, !dbg !2787
  %frombool = zext i1 %7 to i8, !dbg !2787
  store i8 %frombool, i8* %tmp, align 1, !dbg !2787
  %9 = load i8, i8* %tmp, align 1, !dbg !2787
  %tobool = trunc i8 %9 to i1, !dbg !2787
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !2791
  br i1 %call, label %if.then, label %if.end, !dbg !2792

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !2793
  br label %return, !dbg !2793

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !2794, metadata !DIExpression()), !dbg !2797
  %10 = load i64, i64* %bytes, align 8, !dbg !2797
  store i64 %10, i64* %__a3, align 8, !dbg !2797
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !2798, metadata !DIExpression()), !dbg !2797
  %11 = load i64, i64* %c.addr, align 8, !dbg !2797
  store i64 %11, i64* %__b4, align 8, !dbg !2797
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !2799, metadata !DIExpression()), !dbg !2797
  store i64* %bytes, i64** %__d5, align 8, !dbg !2797
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !2797
  %conv7 = zext i1 %cmp6 to i32, !dbg !2797
  %12 = load i64*, i64** %__d5, align 8, !dbg !2797
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !2797
  %conv9 = zext i1 %cmp8 to i32, !dbg !2797
  %13 = load i64, i64* %__a3, align 8, !dbg !2797
  %14 = load i64, i64* %__b4, align 8, !dbg !2797
  %15 = load i64*, i64** %__d5, align 8, !dbg !2797
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !2797
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2797
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2797
  store i64 %18, i64* %15, align 8, !dbg !2797
  %frombool11 = zext i1 %17 to i8, !dbg !2797
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !2797
  %19 = load i8, i8* %tmp10, align 1, !dbg !2797
  %tobool12 = trunc i8 %19 to i1, !dbg !2797
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #7, !dbg !2800
  br i1 %call13, label %if.then14, label %if.end15, !dbg !2801

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !2802
  br label %return, !dbg !2802

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !2803
  store i64 %20, i64* %retval, align 8, !dbg !2804
  br label %return, !dbg !2804

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !2805
  ret i64 %21, !dbg !2805
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %muxc, i32 %force_nr, i32 %chan_id, i32 %class) #0 !dbg !2806 {
entry:
  %retval = alloca i32, align 4
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  %force_nr.addr = alloca i32, align 4
  %chan_id.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %parent = alloca %struct.i2c_adapter*, align 8
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %symlink_name = alloca [20 x i8], align 16
  %ret = alloca i32, align 4
  %dev_node = alloca %struct.device_node*, align 8
  %mux_node = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %reg = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp159 = alloca %struct.acpi_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp210 = alloca i64, align 8
  %__ret_warn_on219 = alloca i32, align 4
  %tmp255 = alloca i64, align 8
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  store i32 %force_nr, i32* %force_nr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %force_nr.addr, metadata !2811, metadata !DIExpression()), !dbg !2812
  store i32 %chan_id, i32* %chan_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan_id.addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  store i32 %class, i32* %class.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %class.addr, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !2817, metadata !DIExpression()), !dbg !2818
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2819
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %0, i32 0, i32 0, !dbg !2820
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !2820
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %parent, align 8, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata [20 x i8]* %symlink_name, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2832, metadata !DIExpression()), !dbg !2833
  %2 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2834
  %num_adapters = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %2, i32 0, i32 6, !dbg !2836
  %3 = load i32, i32* %num_adapters, align 8, !dbg !2836
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2837
  %max_adapters = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 7, !dbg !2838
  %5 = load i32, i32* %max_adapters, align 4, !dbg !2838
  %cmp = icmp sge i32 %3, %5, !dbg !2839
  br i1 %cmp, label %if.then, label %if.end, !dbg !2840

if.then:                                          ; preds = %entry
  %6 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2841
  %dev = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %6, i32 0, i32 1, !dbg !2841
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2841
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2841
  store i32 -22, i32* %retval, align 4, !dbg !2843
  br label %return, !dbg !2843

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 1000, i32 3264) #7, !dbg !2844
  %8 = bitcast i8* %call to %struct.i2c_mux_priv*, !dbg !2844
  store %struct.i2c_mux_priv* %8, %struct.i2c_mux_priv** %priv, align 8, !dbg !2845
  %9 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2846
  %tobool = icmp ne %struct.i2c_mux_priv* %9, null, !dbg !2846
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2848

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end3:                                          ; preds = %if.end
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2850
  %11 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2851
  %muxc4 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %11, i32 0, i32 2, !dbg !2852
  store %struct.i2c_mux_core* %10, %struct.i2c_mux_core** %muxc4, align 8, !dbg !2853
  %12 = load i32, i32* %chan_id.addr, align 4, !dbg !2854
  %13 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2855
  %chan_id5 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %13, i32 0, i32 3, !dbg !2856
  store i32 %12, i32* %chan_id5, align 8, !dbg !2857
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2858
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 2, !dbg !2860
  %15 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !2860
  %master_xfer = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %15, i32 0, i32 0, !dbg !2861
  %16 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer, align 8, !dbg !2861
  %tobool6 = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %16, null, !dbg !2858
  br i1 %tobool6, label %if.then7, label %if.end15, !dbg !2862

if.then7:                                         ; preds = %if.end3
  %17 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2863
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %17, i32 0, i32 2, !dbg !2866
  %bf.load = load i8, i8* %mux_locked, align 8, !dbg !2866
  %bf.clear = and i8 %bf.load, 1, !dbg !2866
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2866
  %tobool8 = icmp ne i32 %bf.cast, 0, !dbg !2863
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2867

if.then9:                                         ; preds = %if.then7
  %18 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2868
  %algo10 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %18, i32 0, i32 1, !dbg !2869
  %master_xfer11 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo10, i32 0, i32 0, !dbg !2870
  store i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_mux_master_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer11, align 8, !dbg !2871
  br label %if.end14, !dbg !2868

if.else:                                          ; preds = %if.then7
  %19 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2872
  %algo12 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %19, i32 0, i32 1, !dbg !2873
  %master_xfer13 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo12, i32 0, i32 0, !dbg !2874
  store i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @__i2c_mux_master_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer13, align 8, !dbg !2875
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %if.end15, !dbg !2876

if.end15:                                         ; preds = %if.end14, %if.end3
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2877
  %algo16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %20, i32 0, i32 2, !dbg !2879
  %21 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo16, align 8, !dbg !2879
  %master_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %21, i32 0, i32 1, !dbg !2880
  %22 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer_atomic, align 8, !dbg !2880
  %tobool17 = icmp ne i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %22, null, !dbg !2877
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !2881

if.then18:                                        ; preds = %if.end15
  %23 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2882
  %algo19 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %23, i32 0, i32 1, !dbg !2883
  %master_xfer20 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo19, i32 0, i32 0, !dbg !2884
  %24 = load i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer20, align 8, !dbg !2884
  %25 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2885
  %algo21 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %25, i32 0, i32 1, !dbg !2886
  %master_xfer_atomic22 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo21, i32 0, i32 1, !dbg !2887
  store i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* %24, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)** %master_xfer_atomic22, align 8, !dbg !2888
  br label %if.end23, !dbg !2885

if.end23:                                         ; preds = %if.then18, %if.end15
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2889
  %algo24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %26, i32 0, i32 2, !dbg !2891
  %27 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo24, align 8, !dbg !2891
  %smbus_xfer = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %27, i32 0, i32 2, !dbg !2892
  %28 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer, align 8, !dbg !2892
  %tobool25 = icmp ne i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %28, null, !dbg !2889
  br i1 %tobool25, label %if.then26, label %if.end39, !dbg !2893

if.then26:                                        ; preds = %if.end23
  %29 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2894
  %mux_locked27 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %29, i32 0, i32 2, !dbg !2897
  %bf.load28 = load i8, i8* %mux_locked27, align 8, !dbg !2897
  %bf.clear29 = and i8 %bf.load28, 1, !dbg !2897
  %bf.cast30 = zext i8 %bf.clear29 to i32, !dbg !2897
  %tobool31 = icmp ne i32 %bf.cast30, 0, !dbg !2894
  br i1 %tobool31, label %if.then32, label %if.else35, !dbg !2898

if.then32:                                        ; preds = %if.then26
  %30 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2899
  %algo33 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %30, i32 0, i32 1, !dbg !2900
  %smbus_xfer34 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo33, i32 0, i32 2, !dbg !2901
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* @i2c_mux_smbus_xfer, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer34, align 8, !dbg !2902
  br label %if.end38, !dbg !2899

if.else35:                                        ; preds = %if.then26
  %31 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2903
  %algo36 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %31, i32 0, i32 1, !dbg !2904
  %smbus_xfer37 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo36, i32 0, i32 2, !dbg !2905
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* @__i2c_mux_smbus_xfer, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer37, align 8, !dbg !2906
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then32
  br label %if.end39, !dbg !2907

if.end39:                                         ; preds = %if.end38, %if.end23
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2908
  %algo40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %32, i32 0, i32 2, !dbg !2910
  %33 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo40, align 8, !dbg !2910
  %smbus_xfer_atomic = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %33, i32 0, i32 3, !dbg !2911
  %34 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer_atomic, align 8, !dbg !2911
  %tobool41 = icmp ne i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %34, null, !dbg !2908
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !2912

if.then42:                                        ; preds = %if.end39
  %35 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2913
  %algo43 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %35, i32 0, i32 1, !dbg !2914
  %smbus_xfer44 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo43, i32 0, i32 2, !dbg !2915
  %36 = load i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer44, align 8, !dbg !2915
  %37 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2916
  %algo45 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %37, i32 0, i32 1, !dbg !2917
  %smbus_xfer_atomic46 = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo45, i32 0, i32 3, !dbg !2918
  store i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* %36, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)** %smbus_xfer_atomic46, align 8, !dbg !2919
  br label %if.end47, !dbg !2916

if.end47:                                         ; preds = %if.then42, %if.end39
  %38 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2920
  %algo48 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %38, i32 0, i32 1, !dbg !2921
  %functionality = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %algo48, i32 0, i32 4, !dbg !2922
  store i32 (%struct.i2c_adapter*)* @i2c_mux_functionality, i32 (%struct.i2c_adapter*)** %functionality, align 8, !dbg !2923
  %39 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2924
  %adap = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %39, i32 0, i32 0, !dbg !2925
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap, i32 0, i32 12, !dbg !2926
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !2924
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2927
  %call49 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %40) #7, !dbg !2928
  %41 = load i32, i32* %chan_id.addr, align 4, !dbg !2929
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %call49, i32 %41) #7, !dbg !2930
  %42 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2931
  %adap51 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %42, i32 0, i32 0, !dbg !2932
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap51, i32 0, i32 0, !dbg !2933
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !2934
  %43 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2935
  %algo52 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %43, i32 0, i32 1, !dbg !2936
  %44 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2937
  %adap53 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %44, i32 0, i32 0, !dbg !2938
  %algo54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap53, i32 0, i32 2, !dbg !2939
  store %struct.i2c_algorithm* %algo52, %struct.i2c_algorithm** %algo54, align 8, !dbg !2940
  %45 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2941
  %46 = bitcast %struct.i2c_mux_priv* %45 to i8*, !dbg !2941
  %47 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2942
  %adap55 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %47, i32 0, i32 0, !dbg !2943
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap55, i32 0, i32 3, !dbg !2944
  store i8* %46, i8** %algo_data, align 8, !dbg !2945
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2946
  %dev56 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 9, !dbg !2947
  %49 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2948
  %adap57 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %49, i32 0, i32 0, !dbg !2949
  %dev58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap57, i32 0, i32 9, !dbg !2950
  %parent59 = getelementptr inbounds %struct.device, %struct.device* %dev58, i32 0, i32 1, !dbg !2951
  store %struct.device* %dev56, %struct.device** %parent59, align 8, !dbg !2952
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2953
  %retries = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %50, i32 0, i32 8, !dbg !2954
  %51 = load i32, i32* %retries, align 4, !dbg !2954
  %52 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2955
  %adap60 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %52, i32 0, i32 0, !dbg !2956
  %retries61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap60, i32 0, i32 8, !dbg !2957
  store i32 %51, i32* %retries61, align 4, !dbg !2958
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2959
  %timeout = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 7, !dbg !2960
  %54 = load i32, i32* %timeout, align 8, !dbg !2960
  %55 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2961
  %adap62 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %55, i32 0, i32 0, !dbg !2962
  %timeout63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap62, i32 0, i32 7, !dbg !2963
  store i32 %54, i32* %timeout63, align 8, !dbg !2964
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2965
  %quirks = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 17, !dbg !2966
  %57 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %quirks, align 8, !dbg !2966
  %58 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2967
  %adap64 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %58, i32 0, i32 0, !dbg !2968
  %quirks65 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap64, i32 0, i32 17, !dbg !2969
  store %struct.i2c_adapter_quirks* %57, %struct.i2c_adapter_quirks** %quirks65, align 8, !dbg !2970
  %59 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2971
  %mux_locked66 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %59, i32 0, i32 2, !dbg !2973
  %bf.load67 = load i8, i8* %mux_locked66, align 8, !dbg !2973
  %bf.clear68 = and i8 %bf.load67, 1, !dbg !2973
  %bf.cast69 = zext i8 %bf.clear68 to i32, !dbg !2973
  %tobool70 = icmp ne i32 %bf.cast69, 0, !dbg !2971
  br i1 %tobool70, label %if.then71, label %if.else73, !dbg !2974

if.then71:                                        ; preds = %if.end47
  %60 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2975
  %adap72 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %60, i32 0, i32 0, !dbg !2976
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap72, i32 0, i32 4, !dbg !2977
  store %struct.i2c_lock_operations* @i2c_mux_lock_ops, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !2978
  br label %if.end76, !dbg !2975

if.else73:                                        ; preds = %if.end47
  %61 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2979
  %adap74 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %61, i32 0, i32 0, !dbg !2980
  %lock_ops75 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap74, i32 0, i32 4, !dbg !2981
  store %struct.i2c_lock_operations* @i2c_parent_lock_ops, %struct.i2c_lock_operations** %lock_ops75, align 8, !dbg !2982
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then71
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2983
  %call77 = call i32 @i2c_mux_parent_classes(%struct.i2c_adapter* %62) #7, !dbg !2985
  %63 = load i32, i32* %class.addr, align 4, !dbg !2986
  %and = and i32 %call77, %63, !dbg !2987
  %tobool78 = icmp ne i32 %and, 0, !dbg !2987
  br i1 %tobool78, label %if.then79, label %if.else81, !dbg !2988

if.then79:                                        ; preds = %if.end76
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !2989
  %dev80 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %64, i32 0, i32 9, !dbg !2989
  %65 = load i32, i32* %chan_id.addr, align 4, !dbg !2989
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %65) #8, !dbg !2989
  br label %if.end84, !dbg !2989

if.else81:                                        ; preds = %if.end76
  %66 = load i32, i32* %class.addr, align 4, !dbg !2990
  %67 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !2991
  %adap82 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %67, i32 0, i32 0, !dbg !2992
  %class83 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap82, i32 0, i32 1, !dbg !2993
  store i32 %66, i32* %class83, align 8, !dbg !2994
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then79
  %68 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !2995
  %dev85 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %68, i32 0, i32 1, !dbg !2997
  %69 = load %struct.device*, %struct.device** %dev85, align 8, !dbg !2997
  %of_node = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 23, !dbg !2998
  %70 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2998
  %tobool86 = icmp ne %struct.device_node* %70, null, !dbg !2995
  br i1 %tobool86, label %if.then87, label %if.end151, !dbg !2999

if.then87:                                        ; preds = %if.end84
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev_node, metadata !3000, metadata !DIExpression()), !dbg !3002
  %71 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3003
  %dev88 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %71, i32 0, i32 1, !dbg !3004
  %72 = load %struct.device*, %struct.device** %dev88, align 8, !dbg !3004
  %of_node89 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 23, !dbg !3005
  %73 = load %struct.device_node*, %struct.device_node** %of_node89, align 8, !dbg !3005
  store %struct.device_node* %73, %struct.device_node** %dev_node, align 8, !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.device_node** %mux_node, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3008, metadata !DIExpression()), !dbg !3009
  store %struct.device_node* null, %struct.device_node** %child, align 8, !dbg !3009
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !3010, metadata !DIExpression()), !dbg !3011
  %74 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3012
  %arbitrator = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %74, i32 0, i32 2, !dbg !3014
  %bf.load90 = load i8, i8* %arbitrator, align 8, !dbg !3014
  %bf.lshr = lshr i8 %bf.load90, 1, !dbg !3014
  %bf.clear91 = and i8 %bf.lshr, 1, !dbg !3014
  %bf.cast92 = zext i8 %bf.clear91 to i32, !dbg !3014
  %tobool93 = icmp ne i32 %bf.cast92, 0, !dbg !3012
  br i1 %tobool93, label %if.then94, label %if.else96, !dbg !3015

if.then94:                                        ; preds = %if.then87
  %75 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !3016
  %call95 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !3017
  store %struct.device_node* %call95, %struct.device_node** %mux_node, align 8, !dbg !3018
  br label %if.end107, !dbg !3019

if.else96:                                        ; preds = %if.then87
  %76 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3020
  %gate = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %76, i32 0, i32 2, !dbg !3022
  %bf.load97 = load i8, i8* %gate, align 8, !dbg !3022
  %bf.lshr98 = lshr i8 %bf.load97, 2, !dbg !3022
  %bf.clear99 = and i8 %bf.lshr98, 1, !dbg !3022
  %bf.cast100 = zext i8 %bf.clear99 to i32, !dbg !3022
  %tobool101 = icmp ne i32 %bf.cast100, 0, !dbg !3020
  br i1 %tobool101, label %if.then102, label %if.else104, !dbg !3023

if.then102:                                       ; preds = %if.else96
  %77 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !3024
  %call103 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !3025
  store %struct.device_node* %call103, %struct.device_node** %mux_node, align 8, !dbg !3026
  br label %if.end106, !dbg !3027

if.else104:                                       ; preds = %if.else96
  %78 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !3028
  %call105 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !3029
  store %struct.device_node* %call105, %struct.device_node** %mux_node, align 8, !dbg !3030
  br label %if.end106

if.end106:                                        ; preds = %if.else104, %if.then102
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then94
  %79 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3031
  %tobool108 = icmp ne %struct.device_node* %79, null, !dbg !3031
  br i1 %tobool108, label %if.then109, label %if.end114, !dbg !3033

if.then109:                                       ; preds = %if.end107
  %80 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3034
  %call110 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %reg) #7, !dbg !3037
  %tobool111 = icmp ne i32 %call110, 0, !dbg !3037
  br i1 %tobool111, label %if.end113, label %if.then112, !dbg !3038

if.then112:                                       ; preds = %if.then109
  %81 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3039
  call void @of_node_put(%struct.device_node* %81) #7, !dbg !3041
  store %struct.device_node* null, %struct.device_node** %mux_node, align 8, !dbg !3042
  br label %if.end113, !dbg !3043

if.end113:                                        ; preds = %if.then112, %if.then109
  br label %if.end114, !dbg !3044

if.end114:                                        ; preds = %if.end113, %if.end107
  %82 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3045
  %tobool115 = icmp ne %struct.device_node* %82, null, !dbg !3045
  br i1 %tobool115, label %if.else118, label %if.then116, !dbg !3047

if.then116:                                       ; preds = %if.end114
  %83 = load %struct.device_node*, %struct.device_node** %dev_node, align 8, !dbg !3048
  %call117 = call %struct.device_node* @of_node_get(%struct.device_node* %83) #7, !dbg !3049
  store %struct.device_node* %call117, %struct.device_node** %mux_node, align 8, !dbg !3050
  br label %if.end134, !dbg !3051

if.else118:                                       ; preds = %if.end114
  %84 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3052
  %arbitrator119 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %84, i32 0, i32 2, !dbg !3054
  %bf.load120 = load i8, i8* %arbitrator119, align 8, !dbg !3054
  %bf.lshr121 = lshr i8 %bf.load120, 1, !dbg !3054
  %bf.clear122 = and i8 %bf.lshr121, 1, !dbg !3054
  %bf.cast123 = zext i8 %bf.clear122 to i32, !dbg !3054
  %tobool124 = icmp ne i32 %bf.cast123, 0, !dbg !3052
  br i1 %tobool124, label %if.then131, label %lor.lhs.false, !dbg !3055

lor.lhs.false:                                    ; preds = %if.else118
  %85 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3056
  %gate125 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %85, i32 0, i32 2, !dbg !3057
  %bf.load126 = load i8, i8* %gate125, align 8, !dbg !3057
  %bf.lshr127 = lshr i8 %bf.load126, 2, !dbg !3057
  %bf.clear128 = and i8 %bf.lshr127, 1, !dbg !3057
  %bf.cast129 = zext i8 %bf.clear128 to i32, !dbg !3057
  %tobool130 = icmp ne i32 %bf.cast129, 0, !dbg !3056
  br i1 %tobool130, label %if.then131, label %if.end133, !dbg !3058

if.then131:                                       ; preds = %lor.lhs.false, %if.else118
  %86 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3059
  %call132 = call %struct.device_node* @of_node_get(%struct.device_node* %86) #7, !dbg !3060
  store %struct.device_node* %call132, %struct.device_node** %child, align 8, !dbg !3061
  br label %if.end133, !dbg !3062

if.end133:                                        ; preds = %if.then131, %lor.lhs.false
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then116
  %87 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3063
  %tobool135 = icmp ne %struct.device_node* %87, null, !dbg !3063
  br i1 %tobool135, label %if.end147, label %if.then136, !dbg !3065

if.then136:                                       ; preds = %if.end134
  %88 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3066
  %call137 = call %struct.device_node* @of_get_next_child(%struct.device_node* %88, %struct.device_node* null) #7, !dbg !3066
  store %struct.device_node* %call137, %struct.device_node** %child, align 8, !dbg !3066
  br label %for.cond, !dbg !3066

for.cond:                                         ; preds = %for.inc, %if.then136
  %89 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3069
  %cmp138 = icmp ne %struct.device_node* %89, null, !dbg !3069
  br i1 %cmp138, label %for.body, label %for.end, !dbg !3066

for.body:                                         ; preds = %for.cond
  %90 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3071
  %call139 = call i32 @of_property_read_u32(%struct.device_node* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %reg) #7, !dbg !3073
  store i32 %call139, i32* %ret, align 4, !dbg !3074
  %91 = load i32, i32* %ret, align 4, !dbg !3075
  %tobool140 = icmp ne i32 %91, 0, !dbg !3075
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !3077

if.then141:                                       ; preds = %for.body
  br label %for.inc, !dbg !3078

if.end142:                                        ; preds = %for.body
  %92 = load i32, i32* %chan_id.addr, align 4, !dbg !3079
  %93 = load i32, i32* %reg, align 4, !dbg !3081
  %cmp143 = icmp eq i32 %92, %93, !dbg !3082
  br i1 %cmp143, label %if.then144, label %if.end145, !dbg !3083

if.then144:                                       ; preds = %if.end142
  br label %for.end, !dbg !3084

if.end145:                                        ; preds = %if.end142
  br label %for.inc, !dbg !3085

for.inc:                                          ; preds = %if.end145, %if.then141
  %94 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3069
  %95 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3069
  %call146 = call %struct.device_node* @of_get_next_child(%struct.device_node* %94, %struct.device_node* %95) #7, !dbg !3069
  store %struct.device_node* %call146, %struct.device_node** %child, align 8, !dbg !3069
  br label %for.cond, !dbg !3069, !llvm.loop !3086

for.end:                                          ; preds = %if.then144, %for.cond
  br label %if.end147, !dbg !3088

if.end147:                                        ; preds = %for.end, %if.end134
  %96 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3089
  %97 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3090
  %adap148 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %97, i32 0, i32 0, !dbg !3091
  %dev149 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap148, i32 0, i32 9, !dbg !3092
  %of_node150 = getelementptr inbounds %struct.device, %struct.device* %dev149, i32 0, i32 23, !dbg !3093
  store %struct.device_node* %96, %struct.device_node** %of_node150, align 8, !dbg !3094
  %98 = load %struct.device_node*, %struct.device_node** %mux_node, align 8, !dbg !3095
  call void @of_node_put(%struct.device_node* %98) #7, !dbg !3096
  br label %if.end151, !dbg !3097

if.end151:                                        ; preds = %if.end147, %if.end84
  %99 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3098
  %dev152 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %99, i32 0, i32 1, !dbg !3100
  %100 = load %struct.device*, %struct.device** %dev152, align 8, !dbg !3100
  %call153 = call zeroext i1 @has_acpi_companion(%struct.device* %100) #7, !dbg !3101
  br i1 %call153, label %if.then154, label %if.end160, !dbg !3102

if.then154:                                       ; preds = %if.end151
  %101 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3103
  %adap155 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %101, i32 0, i32 0, !dbg !3104
  %dev156 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap155, i32 0, i32 9, !dbg !3105
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3106, metadata !DIExpression()), !dbg !3108
  %102 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3108
  %dev157 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %102, i32 0, i32 1, !dbg !3108
  %103 = load %struct.device*, %struct.device** %dev157, align 8, !dbg !3108
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 24, !dbg !3108
  %104 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3108
  store %struct.fwnode_handle* %104, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3108
  %105 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3108
  %call158 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %105) #7, !dbg !3108
  br i1 %call158, label %cond.true, label %cond.false, !dbg !3108

cond.true:                                        ; preds = %if.then154
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3109, metadata !DIExpression()), !dbg !3111
  %106 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3111
  %107 = bitcast %struct.fwnode_handle* %106 to i8*, !dbg !3111
  store i8* %107, i8** %__mptr, align 8, !dbg !3111
  br label %do.body, !dbg !3111

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3112

do.end:                                           ; preds = %do.body
  %108 = load i8*, i8** %__mptr, align 8, !dbg !3111
  %add.ptr = getelementptr i8, i8* %108, i64 -16, !dbg !3111
  %109 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3111
  store %struct.acpi_device* %109, %struct.acpi_device** %tmp159, align 8, !dbg !3112
  %110 = load %struct.acpi_device*, %struct.acpi_device** %tmp159, align 8, !dbg !3111
  br label %cond.end, !dbg !3108

cond.false:                                       ; preds = %if.then154
  br label %cond.end, !dbg !3108

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %110, %do.end ], [ null, %cond.false ], !dbg !3108
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3108
  %111 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3108
  %112 = load i32, i32* %chan_id.addr, align 4, !dbg !3114
  %conv = zext i32 %112 to i64, !dbg !3114
  call void @acpi_preset_companion(%struct.device* %dev156, %struct.acpi_device* %111, i64 %conv) #7, !dbg !3115
  br label %if.end160, !dbg !3115

if.end160:                                        ; preds = %cond.end, %if.end151
  %113 = load i32, i32* %force_nr.addr, align 4, !dbg !3116
  %tobool161 = icmp ne i32 %113, 0, !dbg !3116
  br i1 %tobool161, label %if.then162, label %if.else171, !dbg !3118

if.then162:                                       ; preds = %if.end160
  %114 = load i32, i32* %force_nr.addr, align 4, !dbg !3119
  %115 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3121
  %adap163 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %115, i32 0, i32 0, !dbg !3122
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap163, i32 0, i32 11, !dbg !3123
  store i32 %114, i32* %nr, align 8, !dbg !3124
  %116 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3125
  %adap164 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %116, i32 0, i32 0, !dbg !3126
  %call165 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %adap164) #7, !dbg !3127
  store i32 %call165, i32* %ret, align 4, !dbg !3128
  %117 = load i32, i32* %ret, align 4, !dbg !3129
  %cmp166 = icmp slt i32 %117, 0, !dbg !3131
  br i1 %cmp166, label %if.then168, label %if.end170, !dbg !3132

if.then168:                                       ; preds = %if.then162
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3133
  %dev169 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %118, i32 0, i32 9, !dbg !3133
  %119 = load i32, i32* %chan_id.addr, align 4, !dbg !3133
  %120 = load i32, i32* %force_nr.addr, align 4, !dbg !3133
  %121 = load i32, i32* %ret, align 4, !dbg !3133
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %119, i32 %120, i32 %121) #8, !dbg !3133
  br label %err_free_priv, !dbg !3135

if.end170:                                        ; preds = %if.then162
  br label %if.end179, !dbg !3136

if.else171:                                       ; preds = %if.end160
  %122 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3137
  %adap172 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %122, i32 0, i32 0, !dbg !3139
  %call173 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %adap172) #7, !dbg !3140
  store i32 %call173, i32* %ret, align 4, !dbg !3141
  %123 = load i32, i32* %ret, align 4, !dbg !3142
  %cmp174 = icmp slt i32 %123, 0, !dbg !3144
  br i1 %cmp174, label %if.then176, label %if.end178, !dbg !3145

if.then176:                                       ; preds = %if.else171
  %124 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3146
  %dev177 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %124, i32 0, i32 9, !dbg !3146
  %125 = load i32, i32* %chan_id.addr, align 4, !dbg !3146
  %126 = load i32, i32* %ret, align 4, !dbg !3146
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev177, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %125, i32 %126) #8, !dbg !3146
  br label %err_free_priv, !dbg !3148

if.end178:                                        ; preds = %if.else171
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end170
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3149, metadata !DIExpression()), !dbg !3151
  %127 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3151
  %adap180 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %127, i32 0, i32 0, !dbg !3151
  %dev181 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap180, i32 0, i32 9, !dbg !3151
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev181, i32 0, i32 0, !dbg !3151
  %128 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3151
  %dev182 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %128, i32 0, i32 1, !dbg !3151
  %129 = load %struct.device*, %struct.device** %dev182, align 8, !dbg !3151
  %kobj183 = getelementptr inbounds %struct.device, %struct.device* %129, i32 0, i32 0, !dbg !3151
  %call184 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !3151
  %tobool185 = icmp ne i32 %call184, 0, !dbg !3151
  %lnot = xor i1 %tobool185, true, !dbg !3151
  %lnot186 = xor i1 %lnot, true, !dbg !3151
  %lnot.ext = zext i1 %lnot186 to i32, !dbg !3151
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3151
  %130 = load i32, i32* %__ret_warn_on, align 4, !dbg !3152
  %tobool187 = icmp ne i32 %130, 0, !dbg !3152
  %lnot188 = xor i1 %tobool187, true, !dbg !3152
  %lnot190 = xor i1 %lnot188, true, !dbg !3152
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !3152
  %conv192 = sext i32 %lnot.ext191 to i64, !dbg !3152
  %tobool193 = icmp ne i64 %conv192, 0, !dbg !3152
  br i1 %tobool193, label %if.then194, label %if.end209, !dbg !3151

if.then194:                                       ; preds = %if.end179
  br label %do.body195, !dbg !3152

do.body195:                                       ; preds = %if.then194
  br label %do.body196, !dbg !3154

do.body196:                                       ; preds = %do.body195
  br label %do.end197, !dbg !3156

do.end197:                                        ; preds = %do.body196
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !3154
  br label %do.body198, !dbg !3154

do.body198:                                       ; preds = %do.end197
  br label %do.body199, !dbg !3158

do.body199:                                       ; preds = %do.body198
  br label %do.end200, !dbg !3160

do.end200:                                        ; preds = %do.body199
  br label %do.body201, !dbg !3158

do.body201:                                       ; preds = %do.end200
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 422, i32 2313, i64 12) #9, !dbg !3162, !srcloc !3164
  br label %do.end202, !dbg !3162

do.end202:                                        ; preds = %do.body201
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #9, !dbg !3165, !srcloc !3167
  br label %do.body203, !dbg !3158

do.body203:                                       ; preds = %do.end202
  br label %do.end204, !dbg !3168

do.end204:                                        ; preds = %do.body203
  br label %do.end205, !dbg !3158

do.end205:                                        ; preds = %do.end204
  br label %do.body206, !dbg !3154

do.body206:                                       ; preds = %do.end205
  br label %do.end207, !dbg !3170

do.end207:                                        ; preds = %do.body206
  br label %do.end208, !dbg !3154

do.end208:                                        ; preds = %do.end207
  br label %if.end209, !dbg !3154

if.end209:                                        ; preds = %do.end208, %if.end179
  %131 = load i32, i32* %__ret_warn_on, align 4, !dbg !3151
  %tobool211 = icmp ne i32 %131, 0, !dbg !3151
  %lnot212 = xor i1 %tobool211, true, !dbg !3151
  %lnot214 = xor i1 %lnot212, true, !dbg !3151
  %lnot.ext215 = zext i1 %lnot214 to i32, !dbg !3151
  %conv216 = sext i32 %lnot.ext215 to i64, !dbg !3151
  store i64 %conv216, i64* %tmp210, align 8, !dbg !3152
  %132 = load i64, i64* %tmp210, align 8, !dbg !3151
  %arraydecay217 = getelementptr inbounds [20 x i8], [20 x i8]* %symlink_name, i64 0, i64 0, !dbg !3172
  %133 = load i32, i32* %chan_id.addr, align 4, !dbg !3173
  %call218 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay217, i64 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %133) #7, !dbg !3174
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on219, metadata !3175, metadata !DIExpression()), !dbg !3177
  %134 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3177
  %dev220 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %134, i32 0, i32 1, !dbg !3177
  %135 = load %struct.device*, %struct.device** %dev220, align 8, !dbg !3177
  %kobj221 = getelementptr inbounds %struct.device, %struct.device* %135, i32 0, i32 0, !dbg !3177
  %136 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3177
  %adap222 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %136, i32 0, i32 0, !dbg !3177
  %dev223 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap222, i32 0, i32 9, !dbg !3177
  %kobj224 = getelementptr inbounds %struct.device, %struct.device* %dev223, i32 0, i32 0, !dbg !3177
  %arraydecay225 = getelementptr inbounds [20 x i8], [20 x i8]* %symlink_name, i64 0, i64 0, !dbg !3177
  %call226 = call i32 @sysfs_create_link(%struct.kobject* %kobj221, %struct.kobject* %kobj224, i8* %arraydecay225) #7, !dbg !3177
  %tobool227 = icmp ne i32 %call226, 0, !dbg !3177
  %lnot228 = xor i1 %tobool227, true, !dbg !3177
  %lnot230 = xor i1 %lnot228, true, !dbg !3177
  %lnot.ext231 = zext i1 %lnot230 to i32, !dbg !3177
  store i32 %lnot.ext231, i32* %__ret_warn_on219, align 4, !dbg !3177
  %137 = load i32, i32* %__ret_warn_on219, align 4, !dbg !3178
  %tobool232 = icmp ne i32 %137, 0, !dbg !3178
  %lnot233 = xor i1 %tobool232, true, !dbg !3178
  %lnot235 = xor i1 %lnot233, true, !dbg !3178
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !3178
  %conv237 = sext i32 %lnot.ext236 to i64, !dbg !3178
  %tobool238 = icmp ne i64 %conv237, 0, !dbg !3178
  br i1 %tobool238, label %if.then239, label %if.end254, !dbg !3177

if.then239:                                       ; preds = %if.end209
  br label %do.body240, !dbg !3178

do.body240:                                       ; preds = %if.then239
  br label %do.body241, !dbg !3180

do.body241:                                       ; preds = %do.body240
  br label %do.end242, !dbg !3182

do.end242:                                        ; preds = %do.body241
  %138 = load i32, i32* %chan_id.addr, align 4, !dbg !3180
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i32 %138) #7, !dbg !3180
  br label %do.body243, !dbg !3180

do.body243:                                       ; preds = %do.end242
  br label %do.body244, !dbg !3184

do.body244:                                       ; preds = %do.body243
  br label %do.end245, !dbg !3186

do.end245:                                        ; preds = %do.body244
  br label %do.body246, !dbg !3184

do.body246:                                       ; preds = %do.end245
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 427, i32 2313, i64 12) #9, !dbg !3188, !srcloc !3190
  br label %do.end247, !dbg !3188

do.end247:                                        ; preds = %do.body246
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 174) #9, !dbg !3191, !srcloc !3193
  br label %do.body248, !dbg !3184

do.body248:                                       ; preds = %do.end247
  br label %do.end249, !dbg !3194

do.end249:                                        ; preds = %do.body248
  br label %do.end250, !dbg !3184

do.end250:                                        ; preds = %do.end249
  br label %do.body251, !dbg !3180

do.body251:                                       ; preds = %do.end250
  br label %do.end252, !dbg !3196

do.end252:                                        ; preds = %do.body251
  br label %do.end253, !dbg !3180

do.end253:                                        ; preds = %do.end252
  br label %if.end254, !dbg !3180

if.end254:                                        ; preds = %do.end253, %if.end209
  %139 = load i32, i32* %__ret_warn_on219, align 4, !dbg !3177
  %tobool256 = icmp ne i32 %139, 0, !dbg !3177
  %lnot257 = xor i1 %tobool256, true, !dbg !3177
  %lnot259 = xor i1 %lnot257, true, !dbg !3177
  %lnot.ext260 = zext i1 %lnot259 to i32, !dbg !3177
  %conv261 = sext i32 %lnot.ext260 to i64, !dbg !3177
  store i64 %conv261, i64* %tmp255, align 8, !dbg !3178
  %140 = load i64, i64* %tmp255, align 8, !dbg !3177
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3198
  %dev262 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 9, !dbg !3198
  %142 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3198
  %adap263 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %142, i32 0, i32 0, !dbg !3198
  %call264 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %adap263) #7, !dbg !3198
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev262, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %call264) #8, !dbg !3198
  %143 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3199
  %adap265 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %143, i32 0, i32 0, !dbg !3200
  %144 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3201
  %adapter = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %144, i32 0, i32 8, !dbg !3202
  %145 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3203
  %num_adapters266 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %145, i32 0, i32 6, !dbg !3204
  %146 = load i32, i32* %num_adapters266, align 8, !dbg !3205
  %inc = add i32 %146, 1, !dbg !3205
  store i32 %inc, i32* %num_adapters266, align 8, !dbg !3205
  %idxprom = sext i32 %146 to i64, !dbg !3201
  %arrayidx = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter, i64 0, i64 %idxprom, !dbg !3201
  store %struct.i2c_adapter* %adap265, %struct.i2c_adapter** %arrayidx, align 8, !dbg !3206
  store i32 0, i32* %retval, align 4, !dbg !3207
  br label %return, !dbg !3207

err_free_priv:                                    ; preds = %if.then176, %if.then168
  call void @llvm.dbg.label(metadata !3208), !dbg !3209
  %147 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3210
  %148 = bitcast %struct.i2c_mux_priv* %147 to i8*, !dbg !3210
  call void @kfree(i8* %148) #7, !dbg !3211
  %149 = load i32, i32* %ret, align 4, !dbg !3212
  store i32 %149, i32* %retval, align 4, !dbg !3213
  br label %return, !dbg !3213

return:                                           ; preds = %err_free_priv, %if.end254, %if.then2, %if.then
  %150 = load i32, i32* %retval, align 4, !dbg !3214
  ret i32 %150, !dbg !3214
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3215 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3218, metadata !DIExpression()), !dbg !3222
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3228, metadata !DIExpression()), !dbg !3229
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3230, metadata !DIExpression()), !dbg !3231
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3232, metadata !DIExpression()), !dbg !3233
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3234, metadata !DIExpression()), !dbg !3238
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3240, metadata !DIExpression()), !dbg !3244
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3246, metadata !DIExpression()), !dbg !3250
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3255, metadata !DIExpression()), !dbg !3256
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3257, metadata !DIExpression()), !dbg !3258
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3259, metadata !DIExpression()), !dbg !3260
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3261, metadata !DIExpression()), !dbg !3262
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3263, metadata !DIExpression()), !dbg !3264
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3265, metadata !DIExpression()), !dbg !3266
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3267, metadata !DIExpression()), !dbg !3268
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3269, metadata !DIExpression()), !dbg !3270
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  %0 = load i64, i64* %size.addr, align 8, !dbg !3275
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3276
  %or = or i32 %1, 256, !dbg !3277
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3278
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !3279
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3280

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3281
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3282
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3283

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3284
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3285
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3286
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3287
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3264
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3288
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3289
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3290
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3291
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3292
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3293
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3294
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3294
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3294
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3294
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3294
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3295
  br label %kmalloc.exit, !dbg !3295

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3296
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3297
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3297
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3299

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3300
  br label %kmalloc_index.exit.i, !dbg !3300

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3301
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3303
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3304

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3305
  br label %kmalloc_index.exit.i, !dbg !3305

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3306
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3308
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3309

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3310
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3311
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3312

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3313
  br label %kmalloc_index.exit.i, !dbg !3313

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3314
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3316
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3317

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3318
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3319
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3320

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3321
  br label %kmalloc_index.exit.i, !dbg !3321

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3322
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3324
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3325

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3326
  br label %kmalloc_index.exit.i, !dbg !3326

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3327
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3329
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3330

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3331
  br label %kmalloc_index.exit.i, !dbg !3331

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3332
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3334
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3335

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3336
  br label %kmalloc_index.exit.i, !dbg !3336

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3337
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3339
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3340

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3341
  br label %kmalloc_index.exit.i, !dbg !3341

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3342
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3344
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3345

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3346
  br label %kmalloc_index.exit.i, !dbg !3346

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3347
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3349
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3350

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3351
  br label %kmalloc_index.exit.i, !dbg !3351

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3352
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3354
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3355

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3356
  br label %kmalloc_index.exit.i, !dbg !3356

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3357
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3359
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3360

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3361
  br label %kmalloc_index.exit.i, !dbg !3361

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3362
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3364
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3365

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3366
  br label %kmalloc_index.exit.i, !dbg !3366

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3367
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3369
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3370

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3371
  br label %kmalloc_index.exit.i, !dbg !3371

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3372
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3374
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3375

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3376
  br label %kmalloc_index.exit.i, !dbg !3376

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3377
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3379
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3380

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3381
  br label %kmalloc_index.exit.i, !dbg !3381

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3382
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3384
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3385

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3386
  br label %kmalloc_index.exit.i, !dbg !3386

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3387
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3389
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3390

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3391
  br label %kmalloc_index.exit.i, !dbg !3391

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3392
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3394
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3395

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3396
  br label %kmalloc_index.exit.i, !dbg !3396

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3397
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3399
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3400

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3401
  br label %kmalloc_index.exit.i, !dbg !3401

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3402
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3404
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3405

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3406
  br label %kmalloc_index.exit.i, !dbg !3406

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3407
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3409
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3410

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3411
  br label %kmalloc_index.exit.i, !dbg !3411

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3412
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3414
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3415

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3416
  br label %kmalloc_index.exit.i, !dbg !3416

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3417
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3419
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3420

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3421
  br label %kmalloc_index.exit.i, !dbg !3421

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3422
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3424
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3425

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3426
  br label %kmalloc_index.exit.i, !dbg !3426

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3427
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3429
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3430

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3431
  br label %kmalloc_index.exit.i, !dbg !3431

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3432
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3434
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3435

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3436
  br label %kmalloc_index.exit.i, !dbg !3436

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3437
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3439
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3440

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3441
  br label %kmalloc_index.exit.i, !dbg !3441

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3442, !srcloc !3445
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #9, !dbg !3446, !srcloc !3449
  unreachable, !dbg !3450

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3451
  store i32 %45, i32* %index.i, align 4, !dbg !3452
  %46 = load i32, i32* %index.i, align 4, !dbg !3453
  %tobool.i = icmp ne i32 %46, 0, !dbg !3453
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3455

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3456
  br label %kmalloc.exit, !dbg !3456

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3457
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3458
  %and.i.i = and i32 %48, 17, !dbg !3458
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3458
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3458
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3458
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3458
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3460

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3461
  br label %kmalloc_type.exit.i, !dbg !3461

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3462
  %and2.i.i = and i32 %49, 1, !dbg !3463
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3462
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3462
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3462
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3464
  br label %kmalloc_type.exit.i, !dbg !3464

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3465
  %idxprom.i = zext i32 %51 to i64, !dbg !3466
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3466
  %52 = load i32, i32* %index.i, align 4, !dbg !3467
  %idxprom6.i = zext i32 %52 to i64, !dbg !3466
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3466
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3466
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3468
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3469
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3470
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3471
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3472
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3472
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3472
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3472
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3472
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3233
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3473
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3474
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3475
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3476
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3477
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3478
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3479
  store i8* %62, i8** %retval.i, align 8, !dbg !3480
  br label %kmalloc.exit, !dbg !3480

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3481
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3482
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3483
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3483
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3483
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3483
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3483
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3484
  br label %kmalloc.exit, !dbg !3484

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3485
  ret i8* %65, !dbg !3486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_mux_master_xfer(%struct.i2c_adapter* %adap, %struct.i2c_msg* %msgs, i32 %num) #0 !dbg !3487 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %muxc = alloca %struct.i2c_mux_core*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3492, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3494, metadata !DIExpression()), !dbg !3495
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3496
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3497
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3497
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3496
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3495
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc, metadata !3498, metadata !DIExpression()), !dbg !3499
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3500
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3501
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc1, align 8, !dbg !3501
  store %struct.i2c_mux_core* %4, %struct.i2c_mux_core** %muxc, align 8, !dbg !3499
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3502, metadata !DIExpression()), !dbg !3503
  %5 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3504
  %parent2 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %5, i32 0, i32 0, !dbg !3505
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent2, align 8, !dbg !3505
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %parent, align 8, !dbg !3503
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3506, metadata !DIExpression()), !dbg !3507
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3508
  %select = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %7, i32 0, i32 4, !dbg !3509
  %8 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %select, align 8, !dbg !3509
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3510
  %10 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3511
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %10, i32 0, i32 3, !dbg !3512
  %11 = load i32, i32* %chan_id, align 8, !dbg !3512
  %call = call i32 %8(%struct.i2c_mux_core* %9, i32 %11) #7, !dbg !3508
  store i32 %call, i32* %ret, align 4, !dbg !3513
  %12 = load i32, i32* %ret, align 4, !dbg !3514
  %cmp = icmp sge i32 %12, 0, !dbg !3516
  br i1 %cmp, label %if.then, label %if.end, !dbg !3517

if.then:                                          ; preds = %entry
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3518
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !3519
  %15 = load i32, i32* %num.addr, align 4, !dbg !3520
  %call3 = call i32 @i2c_transfer(%struct.i2c_adapter* %13, %struct.i2c_msg* %14, i32 %15) #7, !dbg !3521
  store i32 %call3, i32* %ret, align 4, !dbg !3522
  br label %if.end, !dbg !3523

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3524
  %deselect = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %16, i32 0, i32 5, !dbg !3526
  %17 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect, align 8, !dbg !3526
  %tobool = icmp ne i32 (%struct.i2c_mux_core*, i32)* %17, null, !dbg !3524
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !3527

if.then4:                                         ; preds = %if.end
  %18 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3528
  %deselect5 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %18, i32 0, i32 5, !dbg !3529
  %19 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect5, align 8, !dbg !3529
  %20 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3530
  %21 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3531
  %chan_id6 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %21, i32 0, i32 3, !dbg !3532
  %22 = load i32, i32* %chan_id6, align 8, !dbg !3532
  %call7 = call i32 %19(%struct.i2c_mux_core* %20, i32 %22) #7, !dbg !3528
  br label %if.end8, !dbg !3528

if.end8:                                          ; preds = %if.then4, %if.end
  %23 = load i32, i32* %ret, align 4, !dbg !3533
  ret i32 %23, !dbg !3534
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i2c_mux_master_xfer(%struct.i2c_adapter* %adap, %struct.i2c_msg* %msgs, i32 %num) #0 !dbg !3535 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %muxc = alloca %struct.i2c_mux_core*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3536, metadata !DIExpression()), !dbg !3537
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3540, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3542, metadata !DIExpression()), !dbg !3543
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3544
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3545
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3545
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3544
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3543
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc, metadata !3546, metadata !DIExpression()), !dbg !3547
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3548
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3549
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc1, align 8, !dbg !3549
  store %struct.i2c_mux_core* %4, %struct.i2c_mux_core** %muxc, align 8, !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3550, metadata !DIExpression()), !dbg !3551
  %5 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3552
  %parent2 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %5, i32 0, i32 0, !dbg !3553
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent2, align 8, !dbg !3553
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %parent, align 8, !dbg !3551
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3554, metadata !DIExpression()), !dbg !3555
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3556
  %select = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %7, i32 0, i32 4, !dbg !3557
  %8 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %select, align 8, !dbg !3557
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3558
  %10 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3559
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %10, i32 0, i32 3, !dbg !3560
  %11 = load i32, i32* %chan_id, align 8, !dbg !3560
  %call = call i32 %8(%struct.i2c_mux_core* %9, i32 %11) #7, !dbg !3556
  store i32 %call, i32* %ret, align 4, !dbg !3561
  %12 = load i32, i32* %ret, align 4, !dbg !3562
  %cmp = icmp sge i32 %12, 0, !dbg !3564
  br i1 %cmp, label %if.then, label %if.end, !dbg !3565

if.then:                                          ; preds = %entry
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3566
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !3567
  %15 = load i32, i32* %num.addr, align 4, !dbg !3568
  %call3 = call i32 @__i2c_transfer(%struct.i2c_adapter* %13, %struct.i2c_msg* %14, i32 %15) #7, !dbg !3569
  store i32 %call3, i32* %ret, align 4, !dbg !3570
  br label %if.end, !dbg !3571

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3572
  %deselect = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %16, i32 0, i32 5, !dbg !3574
  %17 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect, align 8, !dbg !3574
  %tobool = icmp ne i32 (%struct.i2c_mux_core*, i32)* %17, null, !dbg !3572
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !3575

if.then4:                                         ; preds = %if.end
  %18 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3576
  %deselect5 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %18, i32 0, i32 5, !dbg !3577
  %19 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect5, align 8, !dbg !3577
  %20 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3578
  %21 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3579
  %chan_id6 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %21, i32 0, i32 3, !dbg !3580
  %22 = load i32, i32* %chan_id6, align 8, !dbg !3580
  %call7 = call i32 %19(%struct.i2c_mux_core* %20, i32 %22) #7, !dbg !3576
  br label %if.end8, !dbg !3576

if.end8:                                          ; preds = %if.then4, %if.end
  %23 = load i32, i32* %ret, align 4, !dbg !3581
  ret i32 %23, !dbg !3582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_mux_smbus_xfer(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #0 !dbg !3583 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %muxc = alloca %struct.i2c_mux_core*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3584, metadata !DIExpression()), !dbg !3585
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !3586, metadata !DIExpression()), !dbg !3587
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !3588, metadata !DIExpression()), !dbg !3589
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !3590, metadata !DIExpression()), !dbg !3591
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !3592, metadata !DIExpression()), !dbg !3593
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3598, metadata !DIExpression()), !dbg !3599
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3600
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3601
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3601
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3600
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc, metadata !3602, metadata !DIExpression()), !dbg !3603
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3604
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3605
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc1, align 8, !dbg !3605
  store %struct.i2c_mux_core* %4, %struct.i2c_mux_core** %muxc, align 8, !dbg !3603
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3606, metadata !DIExpression()), !dbg !3607
  %5 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3608
  %parent2 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %5, i32 0, i32 0, !dbg !3609
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent2, align 8, !dbg !3609
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %parent, align 8, !dbg !3607
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3610, metadata !DIExpression()), !dbg !3611
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3612
  %select = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %7, i32 0, i32 4, !dbg !3613
  %8 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %select, align 8, !dbg !3613
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3614
  %10 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3615
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %10, i32 0, i32 3, !dbg !3616
  %11 = load i32, i32* %chan_id, align 8, !dbg !3616
  %call = call i32 %8(%struct.i2c_mux_core* %9, i32 %11) #7, !dbg !3612
  store i32 %call, i32* %ret, align 4, !dbg !3617
  %12 = load i32, i32* %ret, align 4, !dbg !3618
  %cmp = icmp sge i32 %12, 0, !dbg !3620
  br i1 %cmp, label %if.then, label %if.end, !dbg !3621

if.then:                                          ; preds = %entry
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3622
  %14 = load i16, i16* %addr.addr, align 2, !dbg !3623
  %15 = load i16, i16* %flags.addr, align 2, !dbg !3624
  %16 = load i8, i8* %read_write.addr, align 1, !dbg !3625
  %17 = load i8, i8* %command.addr, align 1, !dbg !3626
  %18 = load i32, i32* %size.addr, align 4, !dbg !3627
  %19 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3628
  %call3 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %13, i16 zeroext %14, i16 zeroext %15, i8 signext %16, i8 zeroext %17, i32 %18, %union.i2c_smbus_data* %19) #7, !dbg !3629
  store i32 %call3, i32* %ret, align 4, !dbg !3630
  br label %if.end, !dbg !3631

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3632
  %deselect = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %20, i32 0, i32 5, !dbg !3634
  %21 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect, align 8, !dbg !3634
  %tobool = icmp ne i32 (%struct.i2c_mux_core*, i32)* %21, null, !dbg !3632
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !3635

if.then4:                                         ; preds = %if.end
  %22 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3636
  %deselect5 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %22, i32 0, i32 5, !dbg !3637
  %23 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect5, align 8, !dbg !3637
  %24 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3638
  %25 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3639
  %chan_id6 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %25, i32 0, i32 3, !dbg !3640
  %26 = load i32, i32* %chan_id6, align 8, !dbg !3640
  %call7 = call i32 %23(%struct.i2c_mux_core* %24, i32 %26) #7, !dbg !3636
  br label %if.end8, !dbg !3636

if.end8:                                          ; preds = %if.then4, %if.end
  %27 = load i32, i32* %ret, align 4, !dbg !3641
  ret i32 %27, !dbg !3642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__i2c_mux_smbus_xfer(%struct.i2c_adapter* %adap, i16 zeroext %addr, i16 zeroext %flags, i8 signext %read_write, i8 zeroext %command, i32 %size, %union.i2c_smbus_data* %data) #0 !dbg !3643 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i16, align 2
  %flags.addr = alloca i16, align 2
  %read_write.addr = alloca i8, align 1
  %command.addr = alloca i8, align 1
  %size.addr = alloca i32, align 4
  %data.addr = alloca %union.i2c_smbus_data*, align 8
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %muxc = alloca %struct.i2c_mux_core*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3644, metadata !DIExpression()), !dbg !3645
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !3646, metadata !DIExpression()), !dbg !3647
  store i16 %flags, i16* %flags.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %flags.addr, metadata !3648, metadata !DIExpression()), !dbg !3649
  store i8 %read_write, i8* %read_write.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %read_write.addr, metadata !3650, metadata !DIExpression()), !dbg !3651
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !3652, metadata !DIExpression()), !dbg !3653
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3654, metadata !DIExpression()), !dbg !3655
  store %union.i2c_smbus_data* %data, %union.i2c_smbus_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %union.i2c_smbus_data** %data.addr, metadata !3656, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3658, metadata !DIExpression()), !dbg !3659
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3660
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3661
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3661
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3660
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3659
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc, metadata !3662, metadata !DIExpression()), !dbg !3663
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3664
  %muxc1 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3665
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc1, align 8, !dbg !3665
  store %struct.i2c_mux_core* %4, %struct.i2c_mux_core** %muxc, align 8, !dbg !3663
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3666, metadata !DIExpression()), !dbg !3667
  %5 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3668
  %parent2 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %5, i32 0, i32 0, !dbg !3669
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent2, align 8, !dbg !3669
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %parent, align 8, !dbg !3667
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3670, metadata !DIExpression()), !dbg !3671
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3672
  %select = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %7, i32 0, i32 4, !dbg !3673
  %8 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %select, align 8, !dbg !3673
  %9 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3674
  %10 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3675
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %10, i32 0, i32 3, !dbg !3676
  %11 = load i32, i32* %chan_id, align 8, !dbg !3676
  %call = call i32 %8(%struct.i2c_mux_core* %9, i32 %11) #7, !dbg !3672
  store i32 %call, i32* %ret, align 4, !dbg !3677
  %12 = load i32, i32* %ret, align 4, !dbg !3678
  %cmp = icmp sge i32 %12, 0, !dbg !3680
  br i1 %cmp, label %if.then, label %if.end, !dbg !3681

if.then:                                          ; preds = %entry
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3682
  %14 = load i16, i16* %addr.addr, align 2, !dbg !3683
  %15 = load i16, i16* %flags.addr, align 2, !dbg !3684
  %16 = load i8, i8* %read_write.addr, align 1, !dbg !3685
  %17 = load i8, i8* %command.addr, align 1, !dbg !3686
  %18 = load i32, i32* %size.addr, align 4, !dbg !3687
  %19 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %data.addr, align 8, !dbg !3688
  %call3 = call i32 @__i2c_smbus_xfer(%struct.i2c_adapter* %13, i16 zeroext %14, i16 zeroext %15, i8 signext %16, i8 zeroext %17, i32 %18, %union.i2c_smbus_data* %19) #7, !dbg !3689
  store i32 %call3, i32* %ret, align 4, !dbg !3690
  br label %if.end, !dbg !3691

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3692
  %deselect = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %20, i32 0, i32 5, !dbg !3694
  %21 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect, align 8, !dbg !3694
  %tobool = icmp ne i32 (%struct.i2c_mux_core*, i32)* %21, null, !dbg !3692
  br i1 %tobool, label %if.then4, label %if.end8, !dbg !3695

if.then4:                                         ; preds = %if.end
  %22 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3696
  %deselect5 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %22, i32 0, i32 5, !dbg !3697
  %23 = load i32 (%struct.i2c_mux_core*, i32)*, i32 (%struct.i2c_mux_core*, i32)** %deselect5, align 8, !dbg !3697
  %24 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3698
  %25 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3699
  %chan_id6 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %25, i32 0, i32 3, !dbg !3700
  %26 = load i32, i32* %chan_id6, align 8, !dbg !3700
  %call7 = call i32 %23(%struct.i2c_mux_core* %24, i32 %26) #7, !dbg !3696
  br label %if.end8, !dbg !3696

if.end8:                                          ; preds = %if.then4, %if.end
  %27 = load i32, i32* %ret, align 4, !dbg !3701
  ret i32 %27, !dbg !3702
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_mux_functionality(%struct.i2c_adapter* %adap) #0 !dbg !3703 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3704, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3706, metadata !DIExpression()), !dbg !3707
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3708
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3709
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3709
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3708
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3707
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3710, metadata !DIExpression()), !dbg !3711
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3712
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3713
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3713
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !3714
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !3714
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !3711
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3715
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 2, !dbg !3716
  %7 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo, align 8, !dbg !3716
  %functionality = getelementptr inbounds %struct.i2c_algorithm, %struct.i2c_algorithm* %7, i32 0, i32 4, !dbg !3717
  %8 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %functionality, align 8, !dbg !3717
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3718
  %call = call i32 %8(%struct.i2c_adapter* %9) #7, !dbg !3715
  ret i32 %call, !dbg !3719
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_id(%struct.i2c_adapter* %adap) #0 !dbg !3720 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3721, metadata !DIExpression()), !dbg !3722
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3723
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 11, !dbg !3724
  %1 = load i32, i32* %nr, align 8, !dbg !3724
  ret i32 %1, !dbg !3725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_mux_parent_classes(%struct.i2c_adapter* %parent) #0 !dbg !3726 {
entry:
  %parent.addr = alloca %struct.i2c_adapter*, align 8
  %class = alloca i32, align 4
  store %struct.i2c_adapter* %parent, %struct.i2c_adapter** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent.addr, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.declare(metadata i32* %class, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i32 0, i32* %class, align 4, !dbg !3732
  br label %do.body, !dbg !3733

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent.addr, align 8, !dbg !3734
  %class1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 1, !dbg !3736
  %1 = load i32, i32* %class1, align 8, !dbg !3736
  %2 = load i32, i32* %class, align 4, !dbg !3737
  %or = or i32 %2, %1, !dbg !3737
  store i32 %or, i32* %class, align 4, !dbg !3737
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent.addr, align 8, !dbg !3738
  %call = call %struct.i2c_adapter* @i2c_parent_is_i2c_adapter(%struct.i2c_adapter* %3) #7, !dbg !3739
  store %struct.i2c_adapter* %call, %struct.i2c_adapter** %parent.addr, align 8, !dbg !3740
  br label %do.cond, !dbg !3741

do.cond:                                          ; preds = %do.body
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent.addr, align 8, !dbg !3742
  %tobool = icmp ne %struct.i2c_adapter* %4, null, !dbg !3741
  br i1 %tobool, label %do.body, label %do.end, !dbg !3741, !llvm.loop !3743

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %class, align 4, !dbg !3745
  ret i32 %5, !dbg !3746
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3747 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3756, metadata !DIExpression()), !dbg !3757
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3758
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3759
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3760
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #7, !dbg !3761
  ret i32 %call, !dbg !3762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !3763 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3766, metadata !DIExpression()), !dbg !3767
  ret void, !dbg !3768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !3769 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3772, metadata !DIExpression()), !dbg !3773
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3774
  ret %struct.device_node* %0, !dbg !3775
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_acpi_companion(%struct.device* %dev) #0 !dbg !3776 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3780, metadata !DIExpression()), !dbg !3781
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3782
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !3783
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3783
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %1) #7, !dbg !3784
  ret i1 %call, !dbg !3785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_preset_companion(%struct.device* %dev, %struct.acpi_device* %parent, i64 %addr) #0 !dbg !3786 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %parent.addr = alloca %struct.acpi_device*, align 8
  %addr.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3789, metadata !DIExpression()), !dbg !3790
  store %struct.acpi_device* %parent, %struct.acpi_device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %parent.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3795
  %1 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !3795
  %2 = load i64, i64* %addr.addr, align 8, !dbg !3795
  %call = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %1, i64 %2, i1 zeroext false) #7, !dbg !3795
  %tobool = icmp ne %struct.acpi_device* %call, null, !dbg !3795
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3795

cond.true:                                        ; preds = %entry
  %3 = load %struct.acpi_device*, %struct.acpi_device** %parent.addr, align 8, !dbg !3795
  %4 = load i64, i64* %addr.addr, align 8, !dbg !3795
  %call1 = call %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device* %3, i64 %4, i1 zeroext false) #7, !dbg !3795
  %call2 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %call1) #7, !dbg !3795
  br label %cond.end, !dbg !3795

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3795

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call2, %cond.true ], [ null, %cond.false ], !dbg !3795
  call void @set_primary_fwnode(%struct.device* %0, %struct.fwnode_handle* %cond) #7, !dbg !3795
  ret void, !dbg !3796
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @i2c_mux_del_adapters(%struct.i2c_mux_core* %muxc) #0 !dbg !3797 {
entry:
  %muxc.addr = alloca %struct.i2c_mux_core*, align 8
  %symlink_name = alloca [20 x i8], align 16
  %adap = alloca %struct.i2c_adapter*, align 8
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.i2c_mux_core* %muxc, %struct.i2c_mux_core** %muxc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_core** %muxc.addr, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.declare(metadata [20 x i8]* %symlink_name, metadata !3802, metadata !DIExpression()), !dbg !3803
  br label %while.cond, !dbg !3804

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3805
  %num_adapters = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %0, i32 0, i32 6, !dbg !3806
  %1 = load i32, i32* %num_adapters, align 8, !dbg !3806
  %tobool = icmp ne i32 %1, 0, !dbg !3804
  br i1 %tobool, label %while.body, label %while.end, !dbg !3804

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap, metadata !3807, metadata !DIExpression()), !dbg !3809
  %2 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3810
  %adapter = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %2, i32 0, i32 8, !dbg !3811
  %3 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3812
  %num_adapters1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %3, i32 0, i32 6, !dbg !3813
  %4 = load i32, i32* %num_adapters1, align 8, !dbg !3814
  %dec = add i32 %4, -1, !dbg !3814
  store i32 %dec, i32* %num_adapters1, align 8, !dbg !3814
  %idxprom = sext i32 %dec to i64, !dbg !3810
  %arrayidx = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter, i64 0, i64 %idxprom, !dbg !3810
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %arrayidx, align 8, !dbg !3810
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %adap, align 8, !dbg !3809
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3815, metadata !DIExpression()), !dbg !3816
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !3817
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 3, !dbg !3818
  %7 = load i8*, i8** %algo_data, align 8, !dbg !3818
  %8 = bitcast i8* %7 to %struct.i2c_mux_priv*, !dbg !3817
  store %struct.i2c_mux_priv* %8, %struct.i2c_mux_priv** %priv, align 8, !dbg !3816
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3819, metadata !DIExpression()), !dbg !3820
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !3821
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 9, !dbg !3822
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3823
  %10 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3823
  store %struct.device_node* %10, %struct.device_node** %np, align 8, !dbg !3820
  %11 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3824
  %adapter2 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %11, i32 0, i32 8, !dbg !3825
  %12 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3826
  %num_adapters3 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %12, i32 0, i32 6, !dbg !3827
  %13 = load i32, i32* %num_adapters3, align 8, !dbg !3827
  %idxprom4 = sext i32 %13 to i64, !dbg !3824
  %arrayidx5 = getelementptr [0 x %struct.i2c_adapter*], [0 x %struct.i2c_adapter*]* %adapter2, i64 0, i64 %idxprom4, !dbg !3824
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %arrayidx5, align 8, !dbg !3828
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %symlink_name, i64 0, i64 0, !dbg !3829
  %14 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3830
  %chan_id = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %14, i32 0, i32 3, !dbg !3831
  %15 = load i32, i32* %chan_id, align 8, !dbg !3831
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %15) #7, !dbg !3832
  %16 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc.addr, align 8, !dbg !3833
  %dev6 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %16, i32 0, i32 1, !dbg !3834
  %17 = load %struct.device*, %struct.device** %dev6, align 8, !dbg !3834
  %kobj = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0, !dbg !3835
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %symlink_name, i64 0, i64 0, !dbg !3836
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* %arraydecay7) #7, !dbg !3837
  %18 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3838
  %adap8 = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %18, i32 0, i32 0, !dbg !3839
  %dev9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %adap8, i32 0, i32 9, !dbg !3840
  %kobj10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 0, !dbg !3841
  call void @sysfs_remove_link(%struct.kobject* %kobj10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !3842
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !3843
  call void @i2c_del_adapter(%struct.i2c_adapter* %19) #7, !dbg !3844
  %20 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3845
  call void @of_node_put(%struct.device_node* %20) #7, !dbg !3846
  %21 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3847
  %22 = bitcast %struct.i2c_mux_priv* %21 to i8*, !dbg !3847
  call void @kfree(i8* %22) #7, !dbg !3848
  br label %while.cond, !dbg !3804, !llvm.loop !3849

while.end:                                        ; preds = %while.cond
  ret void, !dbg !3851
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3852 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3855, metadata !DIExpression()), !dbg !3856
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3857
  %tobool = trunc i8 %0 to i1, !dbg !3857
  %lnot = xor i1 %tobool, true, !dbg !3857
  %lnot1 = xor i1 %lnot, true, !dbg !3857
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3857
  %conv = sext i32 %lnot.ext to i64, !dbg !3857
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3857
  ret i1 %tobool2, !dbg !3858
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3859 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3863, metadata !DIExpression()), !dbg !3868
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3870, metadata !DIExpression()), !dbg !3871
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3872, metadata !DIExpression()), !dbg !3873
  %0 = load i64, i64* %size.addr, align 8, !dbg !3874
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3876
  br i1 %1, label %if.then, label %if.end447, !dbg !3877

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3878
  %tobool = icmp ne i64 %2, 0, !dbg !3878
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3881

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3882
  br label %return, !dbg !3882

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3883
  %cmp = icmp ult i64 %3, 4096, !dbg !3885
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3886

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3887
  br label %return, !dbg !3887

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub = sub i64 %4, 1, !dbg !3888
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3888
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3888

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub4 = sub i64 %6, 1, !dbg !3888
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3888
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3888

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub6 = sub i64 %8, 1, !dbg !3888
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3888
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3888

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3888

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub9 = sub i64 %9, 1, !dbg !3888
  %and = and i64 %sub9, -9223372036854775808, !dbg !3888
  %tobool10 = icmp ne i64 %and, 0, !dbg !3888
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3888

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3888

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub13 = sub i64 %10, 1, !dbg !3888
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3888
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3888
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3888

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3888

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub18 = sub i64 %11, 1, !dbg !3888
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3888
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3888
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3888

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3888

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub23 = sub i64 %12, 1, !dbg !3888
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3888
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3888
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3888

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3888

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub28 = sub i64 %13, 1, !dbg !3888
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3888
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3888
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3888

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3888

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub33 = sub i64 %14, 1, !dbg !3888
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3888
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3888
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3888

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3888

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub38 = sub i64 %15, 1, !dbg !3888
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3888
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3888
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3888

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3888

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub43 = sub i64 %16, 1, !dbg !3888
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3888
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3888
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3888

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3888

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub48 = sub i64 %17, 1, !dbg !3888
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3888
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3888
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3888

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3888

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub53 = sub i64 %18, 1, !dbg !3888
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3888
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3888
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3888

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3888

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub58 = sub i64 %19, 1, !dbg !3888
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3888
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3888
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3888

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3888

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub63 = sub i64 %20, 1, !dbg !3888
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3888
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3888
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3888

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3888

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub68 = sub i64 %21, 1, !dbg !3888
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3888
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3888
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3888

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3888

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub73 = sub i64 %22, 1, !dbg !3888
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3888
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3888
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3888

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3888

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub78 = sub i64 %23, 1, !dbg !3888
  %and79 = and i64 %sub78, 562949953421312, !dbg !3888
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3888
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3888

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3888

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub83 = sub i64 %24, 1, !dbg !3888
  %and84 = and i64 %sub83, 281474976710656, !dbg !3888
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3888
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3888

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3888

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub88 = sub i64 %25, 1, !dbg !3888
  %and89 = and i64 %sub88, 140737488355328, !dbg !3888
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3888
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3888

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3888

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub93 = sub i64 %26, 1, !dbg !3888
  %and94 = and i64 %sub93, 70368744177664, !dbg !3888
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3888
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3888

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3888

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub98 = sub i64 %27, 1, !dbg !3888
  %and99 = and i64 %sub98, 35184372088832, !dbg !3888
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3888
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3888

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3888

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub103 = sub i64 %28, 1, !dbg !3888
  %and104 = and i64 %sub103, 17592186044416, !dbg !3888
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3888
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3888

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3888

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub108 = sub i64 %29, 1, !dbg !3888
  %and109 = and i64 %sub108, 8796093022208, !dbg !3888
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3888
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3888

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3888

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub113 = sub i64 %30, 1, !dbg !3888
  %and114 = and i64 %sub113, 4398046511104, !dbg !3888
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3888
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3888

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3888

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub118 = sub i64 %31, 1, !dbg !3888
  %and119 = and i64 %sub118, 2199023255552, !dbg !3888
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3888
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3888

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3888

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub123 = sub i64 %32, 1, !dbg !3888
  %and124 = and i64 %sub123, 1099511627776, !dbg !3888
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3888
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3888

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3888

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub128 = sub i64 %33, 1, !dbg !3888
  %and129 = and i64 %sub128, 549755813888, !dbg !3888
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3888
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3888

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3888

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub133 = sub i64 %34, 1, !dbg !3888
  %and134 = and i64 %sub133, 274877906944, !dbg !3888
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3888
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3888

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3888

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub138 = sub i64 %35, 1, !dbg !3888
  %and139 = and i64 %sub138, 137438953472, !dbg !3888
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3888
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3888

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3888

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub143 = sub i64 %36, 1, !dbg !3888
  %and144 = and i64 %sub143, 68719476736, !dbg !3888
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3888
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3888

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3888

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub148 = sub i64 %37, 1, !dbg !3888
  %and149 = and i64 %sub148, 34359738368, !dbg !3888
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3888
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3888

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3888

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub153 = sub i64 %38, 1, !dbg !3888
  %and154 = and i64 %sub153, 17179869184, !dbg !3888
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3888
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3888

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3888

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub158 = sub i64 %39, 1, !dbg !3888
  %and159 = and i64 %sub158, 8589934592, !dbg !3888
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3888
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3888

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3888

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub163 = sub i64 %40, 1, !dbg !3888
  %and164 = and i64 %sub163, 4294967296, !dbg !3888
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3888
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3888

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3888

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub168 = sub i64 %41, 1, !dbg !3888
  %and169 = and i64 %sub168, 2147483648, !dbg !3888
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3888
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3888

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3888

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub173 = sub i64 %42, 1, !dbg !3888
  %and174 = and i64 %sub173, 1073741824, !dbg !3888
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3888
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3888

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3888

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub178 = sub i64 %43, 1, !dbg !3888
  %and179 = and i64 %sub178, 536870912, !dbg !3888
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3888
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3888

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3888

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub183 = sub i64 %44, 1, !dbg !3888
  %and184 = and i64 %sub183, 268435456, !dbg !3888
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3888
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3888

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3888

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub188 = sub i64 %45, 1, !dbg !3888
  %and189 = and i64 %sub188, 134217728, !dbg !3888
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3888
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3888

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3888

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub193 = sub i64 %46, 1, !dbg !3888
  %and194 = and i64 %sub193, 67108864, !dbg !3888
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3888
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3888

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3888

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub198 = sub i64 %47, 1, !dbg !3888
  %and199 = and i64 %sub198, 33554432, !dbg !3888
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3888
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3888

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3888

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub203 = sub i64 %48, 1, !dbg !3888
  %and204 = and i64 %sub203, 16777216, !dbg !3888
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3888
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3888

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3888

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub208 = sub i64 %49, 1, !dbg !3888
  %and209 = and i64 %sub208, 8388608, !dbg !3888
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3888
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3888

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3888

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub213 = sub i64 %50, 1, !dbg !3888
  %and214 = and i64 %sub213, 4194304, !dbg !3888
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3888
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3888

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3888

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub218 = sub i64 %51, 1, !dbg !3888
  %and219 = and i64 %sub218, 2097152, !dbg !3888
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3888
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3888

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3888

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub223 = sub i64 %52, 1, !dbg !3888
  %and224 = and i64 %sub223, 1048576, !dbg !3888
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3888
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3888

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3888

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub228 = sub i64 %53, 1, !dbg !3888
  %and229 = and i64 %sub228, 524288, !dbg !3888
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3888
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3888

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3888

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub233 = sub i64 %54, 1, !dbg !3888
  %and234 = and i64 %sub233, 262144, !dbg !3888
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3888
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3888

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3888

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub238 = sub i64 %55, 1, !dbg !3888
  %and239 = and i64 %sub238, 131072, !dbg !3888
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3888
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3888

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3888

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub243 = sub i64 %56, 1, !dbg !3888
  %and244 = and i64 %sub243, 65536, !dbg !3888
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3888
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3888

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3888

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub248 = sub i64 %57, 1, !dbg !3888
  %and249 = and i64 %sub248, 32768, !dbg !3888
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3888
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3888

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3888

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub253 = sub i64 %58, 1, !dbg !3888
  %and254 = and i64 %sub253, 16384, !dbg !3888
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3888
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3888

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3888

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub258 = sub i64 %59, 1, !dbg !3888
  %and259 = and i64 %sub258, 8192, !dbg !3888
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3888
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3888

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3888

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub263 = sub i64 %60, 1, !dbg !3888
  %and264 = and i64 %sub263, 4096, !dbg !3888
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3888
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3888

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3888

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub268 = sub i64 %61, 1, !dbg !3888
  %and269 = and i64 %sub268, 2048, !dbg !3888
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3888
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3888

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3888

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub273 = sub i64 %62, 1, !dbg !3888
  %and274 = and i64 %sub273, 1024, !dbg !3888
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3888
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3888

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3888

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub278 = sub i64 %63, 1, !dbg !3888
  %and279 = and i64 %sub278, 512, !dbg !3888
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3888
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3888

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3888

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub283 = sub i64 %64, 1, !dbg !3888
  %and284 = and i64 %sub283, 256, !dbg !3888
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3888
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3888

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3888

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub288 = sub i64 %65, 1, !dbg !3888
  %and289 = and i64 %sub288, 128, !dbg !3888
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3888
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3888

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3888

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub293 = sub i64 %66, 1, !dbg !3888
  %and294 = and i64 %sub293, 64, !dbg !3888
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3888
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3888

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3888

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub298 = sub i64 %67, 1, !dbg !3888
  %and299 = and i64 %sub298, 32, !dbg !3888
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3888
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3888

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3888

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub303 = sub i64 %68, 1, !dbg !3888
  %and304 = and i64 %sub303, 16, !dbg !3888
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3888
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3888

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3888

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub308 = sub i64 %69, 1, !dbg !3888
  %and309 = and i64 %sub308, 8, !dbg !3888
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3888
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3888

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3888

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub313 = sub i64 %70, 1, !dbg !3888
  %and314 = and i64 %sub313, 4, !dbg !3888
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3888
  %71 = zext i1 %tobool315 to i64, !dbg !3888
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3888
  br label %cond.end, !dbg !3888

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3888
  br label %cond.end317, !dbg !3888

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3888
  br label %cond.end319, !dbg !3888

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3888
  br label %cond.end321, !dbg !3888

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3888
  br label %cond.end323, !dbg !3888

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3888
  br label %cond.end325, !dbg !3888

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3888
  br label %cond.end327, !dbg !3888

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3888
  br label %cond.end329, !dbg !3888

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3888
  br label %cond.end331, !dbg !3888

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3888
  br label %cond.end333, !dbg !3888

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3888
  br label %cond.end335, !dbg !3888

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3888
  br label %cond.end337, !dbg !3888

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3888
  br label %cond.end339, !dbg !3888

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3888
  br label %cond.end341, !dbg !3888

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3888
  br label %cond.end343, !dbg !3888

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3888
  br label %cond.end345, !dbg !3888

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3888
  br label %cond.end347, !dbg !3888

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3888
  br label %cond.end349, !dbg !3888

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3888
  br label %cond.end351, !dbg !3888

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3888
  br label %cond.end353, !dbg !3888

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3888
  br label %cond.end355, !dbg !3888

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3888
  br label %cond.end357, !dbg !3888

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3888
  br label %cond.end359, !dbg !3888

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3888
  br label %cond.end361, !dbg !3888

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3888
  br label %cond.end363, !dbg !3888

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3888
  br label %cond.end365, !dbg !3888

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3888
  br label %cond.end367, !dbg !3888

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3888
  br label %cond.end369, !dbg !3888

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3888
  br label %cond.end371, !dbg !3888

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3888
  br label %cond.end373, !dbg !3888

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3888
  br label %cond.end375, !dbg !3888

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3888
  br label %cond.end377, !dbg !3888

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3888
  br label %cond.end379, !dbg !3888

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3888
  br label %cond.end381, !dbg !3888

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3888
  br label %cond.end383, !dbg !3888

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3888
  br label %cond.end385, !dbg !3888

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3888
  br label %cond.end387, !dbg !3888

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3888
  br label %cond.end389, !dbg !3888

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3888
  br label %cond.end391, !dbg !3888

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3888
  br label %cond.end393, !dbg !3888

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3888
  br label %cond.end395, !dbg !3888

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3888
  br label %cond.end397, !dbg !3888

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3888
  br label %cond.end399, !dbg !3888

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3888
  br label %cond.end401, !dbg !3888

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3888
  br label %cond.end403, !dbg !3888

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3888
  br label %cond.end405, !dbg !3888

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3888
  br label %cond.end407, !dbg !3888

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3888
  br label %cond.end409, !dbg !3888

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3888
  br label %cond.end411, !dbg !3888

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3888
  br label %cond.end413, !dbg !3888

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3888
  br label %cond.end415, !dbg !3888

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3888
  br label %cond.end417, !dbg !3888

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3888
  br label %cond.end419, !dbg !3888

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3888
  br label %cond.end421, !dbg !3888

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3888
  br label %cond.end423, !dbg !3888

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3888
  br label %cond.end425, !dbg !3888

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3888
  br label %cond.end427, !dbg !3888

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3888
  br label %cond.end429, !dbg !3888

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3888
  br label %cond.end431, !dbg !3888

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3888
  br label %cond.end433, !dbg !3888

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3888
  br label %cond.end435, !dbg !3888

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3888
  br label %cond.end437, !dbg !3888

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3888
  br label %cond.end440, !dbg !3888

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3888

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3888
  br label %cond.end444, !dbg !3888

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3888
  %sub443 = sub i64 %72, 1, !dbg !3888
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3888
  br label %cond.end444, !dbg !3888

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3888
  %sub446 = sub i32 %cond445, 12, !dbg !3889
  %add = add i32 %sub446, 1, !dbg !3890
  store i32 %add, i32* %retval, align 4, !dbg !3891
  br label %return, !dbg !3891

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3892
  %dec = add i64 %73, -1, !dbg !3892
  store i64 %dec, i64* %size.addr, align 8, !dbg !3892
  %74 = load i64, i64* %size.addr, align 8, !dbg !3893
  %shr = lshr i64 %74, 12, !dbg !3893
  store i64 %shr, i64* %size.addr, align 8, !dbg !3893
  %75 = load i64, i64* %size.addr, align 8, !dbg !3894
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3871
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3895
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3896
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3895, !srcloc !3897
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3895
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3898
  %add.i = add i32 %79, 1, !dbg !3899
  store i32 %add.i, i32* %retval, align 4, !dbg !3900
  br label %return, !dbg !3900

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3901
  ret i32 %80, !dbg !3901
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3902 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3863, metadata !DIExpression()), !dbg !3906
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3870, metadata !DIExpression()), !dbg !3908
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3909, metadata !DIExpression()), !dbg !3910
  %0 = load i64, i64* %n.addr, align 8, !dbg !3911
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3908
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3912
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3913
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3912, !srcloc !3897
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3912
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3914
  %add.i = add i32 %4, 1, !dbg !3915
  %sub = sub i32 %add.i, 1, !dbg !3916
  ret i32 %sub, !dbg !3917
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3918 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3922, metadata !DIExpression()), !dbg !3923
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3930
  ret i8* %0, !dbg !3931
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @__i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter*, i16 zeroext, i16 zeroext, i8 signext, i8 zeroext, i32, %union.i2c_smbus_data*) #3

; Function Attrs: noredzone
declare dso_local i32 @__i2c_smbus_xfer(%struct.i2c_adapter*, i16 zeroext, i16 zeroext, i8 signext, i8 zeroext, i32, %union.i2c_smbus_data*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_mux_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !3932 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3933, metadata !DIExpression()), !dbg !3934
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3935, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3937, metadata !DIExpression()), !dbg !3938
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3939
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3940
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3940
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3939
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3938
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3941, metadata !DIExpression()), !dbg !3942
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3943
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3944
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3944
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !3945
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !3945
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !3942
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3946
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 6, !dbg !3946
  call void @rt_mutex_lock(%struct.rt_mutex* %mux_lock) #7, !dbg !3946
  %7 = load i32, i32* %flags.addr, align 4, !dbg !3947
  %conv = zext i32 %7 to i64, !dbg !3947
  %and = and i64 %conv, 1, !dbg !3949
  %tobool = icmp ne i64 %and, 0, !dbg !3949
  br i1 %tobool, label %if.end, label %if.then, !dbg !3950

if.then:                                          ; preds = %entry
  br label %return, !dbg !3951

if.end:                                           ; preds = %entry
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3952
  %9 = load i32, i32* %flags.addr, align 4, !dbg !3953
  call void @i2c_lock_bus(%struct.i2c_adapter* %8, i32 %9) #7, !dbg !3954
  br label %return, !dbg !3955

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_mux_trylock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !3956 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3957, metadata !DIExpression()), !dbg !3958
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3961, metadata !DIExpression()), !dbg !3962
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3963
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !3964
  %1 = load i8*, i8** %algo_data, align 8, !dbg !3964
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3963
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3962
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !3965, metadata !DIExpression()), !dbg !3966
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !3967
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !3968
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !3968
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !3969
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !3969
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !3966
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3970
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 6, !dbg !3972
  %call = call i32 @rt_mutex_trylock(%struct.rt_mutex* %mux_lock) #7, !dbg !3973
  %tobool = icmp ne i32 %call, 0, !dbg !3973
  br i1 %tobool, label %if.end, label %if.then, !dbg !3974

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3975
  br label %return, !dbg !3975

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %flags.addr, align 4, !dbg !3976
  %conv = zext i32 %7 to i64, !dbg !3976
  %and = and i64 %conv, 1, !dbg !3978
  %tobool2 = icmp ne i64 %and, 0, !dbg !3978
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3979

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

if.end4:                                          ; preds = %if.end
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3981
  %9 = load i32, i32* %flags.addr, align 4, !dbg !3983
  %call5 = call i32 @i2c_trylock_bus(%struct.i2c_adapter* %8, i32 %9) #7, !dbg !3984
  %tobool6 = icmp ne i32 %call5, 0, !dbg !3984
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3985

if.then7:                                         ; preds = %if.end4
  store i32 1, i32* %retval, align 4, !dbg !3986
  br label %return, !dbg !3986

if.end8:                                          ; preds = %if.end4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !3987
  %mux_lock9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 6, !dbg !3988
  call void @rt_mutex_unlock(%struct.rt_mutex* %mux_lock9) #7, !dbg !3989
  store i32 0, i32* %retval, align 4, !dbg !3990
  br label %return, !dbg !3990

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3991
  ret i32 %11, !dbg !3991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_mux_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !3992 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3993, metadata !DIExpression()), !dbg !3994
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3995, metadata !DIExpression()), !dbg !3996
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !3997, metadata !DIExpression()), !dbg !3998
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3999
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !4000
  %1 = load i8*, i8** %algo_data, align 8, !dbg !4000
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !3999
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !3998
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !4001, metadata !DIExpression()), !dbg !4002
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !4003
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !4004
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4004
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !4005
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !4005
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !4002
  %6 = load i32, i32* %flags.addr, align 4, !dbg !4006
  %conv = zext i32 %6 to i64, !dbg !4006
  %and = and i64 %conv, 1, !dbg !4008
  %tobool = icmp ne i64 %and, 0, !dbg !4008
  br i1 %tobool, label %if.then, label %if.end, !dbg !4009

if.then:                                          ; preds = %entry
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4010
  %8 = load i32, i32* %flags.addr, align 4, !dbg !4011
  call void @i2c_unlock_bus(%struct.i2c_adapter* %7, i32 %8) #7, !dbg !4012
  br label %if.end, !dbg !4012

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4013
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 6, !dbg !4014
  call void @rt_mutex_unlock(%struct.rt_mutex* %mux_lock) #7, !dbg !4015
  ret void, !dbg !4016
}

; Function Attrs: noredzone
declare dso_local void @rt_mutex_lock(%struct.rt_mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4017 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4018, metadata !DIExpression()), !dbg !4019
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4020, metadata !DIExpression()), !dbg !4021
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4022
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !4023
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !4023
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !4024
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !4024
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4025
  %4 = load i32, i32* %flags.addr, align 4, !dbg !4026
  call void %2(%struct.i2c_adapter* %3, i32 %4) #7, !dbg !4022
  ret void, !dbg !4027
}

; Function Attrs: noredzone
declare dso_local i32 @rt_mutex_trylock(%struct.rt_mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_trylock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4028 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4029, metadata !DIExpression()), !dbg !4030
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4033
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !4034
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !4034
  %trylock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 1, !dbg !4035
  %2 = load i32 (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)** %trylock_bus, align 8, !dbg !4035
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4036
  %4 = load i32, i32* %flags.addr, align 4, !dbg !4037
  %call = call i32 %2(%struct.i2c_adapter* %3, i32 %4) #7, !dbg !4033
  ret i32 %call, !dbg !4038
}

; Function Attrs: noredzone
declare dso_local void @rt_mutex_unlock(%struct.rt_mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4039 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4044
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !4045
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !4045
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !4046
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !4046
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4047
  %4 = load i32, i32* %flags.addr, align 4, !dbg !4048
  call void %2(%struct.i2c_adapter* %3, i32 %4) #7, !dbg !4044
  ret void, !dbg !4049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_parent_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4050 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !4055, metadata !DIExpression()), !dbg !4056
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4057
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !4058
  %1 = load i8*, i8** %algo_data, align 8, !dbg !4058
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !4057
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !4056
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !4059, metadata !DIExpression()), !dbg !4060
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !4061
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !4062
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4062
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !4063
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !4063
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !4060
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4064
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 6, !dbg !4064
  call void @rt_mutex_lock(%struct.rt_mutex* %mux_lock) #7, !dbg !4064
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4065
  %8 = load i32, i32* %flags.addr, align 4, !dbg !4066
  call void @i2c_lock_bus(%struct.i2c_adapter* %7, i32 %8) #7, !dbg !4067
  ret void, !dbg !4068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_parent_trylock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4069 {
entry:
  %retval = alloca i32, align 4
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !4074, metadata !DIExpression()), !dbg !4075
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4076
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !4077
  %1 = load i8*, i8** %algo_data, align 8, !dbg !4077
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !4076
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !4075
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !4078, metadata !DIExpression()), !dbg !4079
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !4080
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !4081
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4081
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !4082
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !4082
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !4079
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4083
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 6, !dbg !4085
  %call = call i32 @rt_mutex_trylock(%struct.rt_mutex* %mux_lock) #7, !dbg !4086
  %tobool = icmp ne i32 %call, 0, !dbg !4086
  br i1 %tobool, label %if.end, label %if.then, !dbg !4087

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4088
  br label %return, !dbg !4088

if.end:                                           ; preds = %entry
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4089
  %8 = load i32, i32* %flags.addr, align 4, !dbg !4091
  %call2 = call i32 @i2c_trylock_bus(%struct.i2c_adapter* %7, i32 %8) #7, !dbg !4092
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4092
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4093

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !4094
  br label %return, !dbg !4094

if.end5:                                          ; preds = %if.end
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4095
  %mux_lock6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 6, !dbg !4096
  call void @rt_mutex_unlock(%struct.rt_mutex* %mux_lock6) #7, !dbg !4097
  store i32 0, i32* %retval, align 4, !dbg !4098
  br label %return, !dbg !4098

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4099
  ret i32 %10, !dbg !4099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_parent_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #0 !dbg !4100 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  %priv = alloca %struct.i2c_mux_priv*, align 8
  %parent = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !4101, metadata !DIExpression()), !dbg !4102
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4103, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.declare(metadata %struct.i2c_mux_priv** %priv, metadata !4105, metadata !DIExpression()), !dbg !4106
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !4107
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 3, !dbg !4108
  %1 = load i8*, i8** %algo_data, align 8, !dbg !4108
  %2 = bitcast i8* %1 to %struct.i2c_mux_priv*, !dbg !4107
  store %struct.i2c_mux_priv* %2, %struct.i2c_mux_priv** %priv, align 8, !dbg !4106
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %parent, metadata !4109, metadata !DIExpression()), !dbg !4110
  %3 = load %struct.i2c_mux_priv*, %struct.i2c_mux_priv** %priv, align 8, !dbg !4111
  %muxc = getelementptr inbounds %struct.i2c_mux_priv, %struct.i2c_mux_priv* %3, i32 0, i32 2, !dbg !4112
  %4 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %muxc, align 8, !dbg !4112
  %parent1 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %4, i32 0, i32 0, !dbg !4113
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent1, align 8, !dbg !4113
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %parent, align 8, !dbg !4110
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4114
  %7 = load i32, i32* %flags.addr, align 4, !dbg !4115
  call void @i2c_unlock_bus(%struct.i2c_adapter* %6, i32 %7) #7, !dbg !4116
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %parent, align 8, !dbg !4117
  %mux_lock = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 6, !dbg !4118
  call void @rt_mutex_unlock(%struct.rt_mutex* %mux_lock) #7, !dbg !4119
  ret void, !dbg !4120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !4121 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4124, metadata !DIExpression()), !dbg !4125
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4126, metadata !DIExpression()), !dbg !4127
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4134
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4135
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !4136
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4137
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #7, !dbg !4138
  store i32 %call, i32* %ret, align 4, !dbg !4133
  %4 = load i32, i32* %ret, align 4, !dbg !4139
  %cmp = icmp sge i32 %4, 0, !dbg !4141
  br i1 %cmp, label %if.then, label %if.else, !dbg !4142

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4143
  br label %return, !dbg !4143

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4144
  store i32 %5, i32* %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4146
  ret i32 %6, !dbg !4146
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #3

; Function Attrs: noredzone
declare dso_local %struct.acpi_device* @acpi_find_child_device(%struct.acpi_device*, i64, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !4147 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4150, metadata !DIExpression()), !dbg !4151
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4152
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !4153
  ret %struct.fwnode_handle* %fwnode, !dbg !4154
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!2571, !2572, !2573, !2574}
!llvm.ident = !{!2575}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i2c_mux_lock_ops", scope: !2, file: !3, line: 270, type: !139, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !2548, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/i2c-mux.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69}
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
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !70, line: 305, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!76 = !{!77, !78, !96, !1532, !83, !2266, !828}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !80, line: 695, size: 7552, elements: !81)
!80 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !86, !87, !136, !137, !151, !1319, !1320, !1321, !1322, !2213, !2214, !2215, !2219, !2220, !2221, !2222, !2254, !2265}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !79, file: !80, line: 696, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !85, line: 76, flags: DIFlagFwdDecl)
!85 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !79, file: !80, line: 697, baseType: !7, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !79, file: !80, line: 698, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !80, line: 519, size: 320, elements: !91)
!91 = !{!92, !111, !112, !129, !130}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !90, file: !80, line: 529, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !78, !97, !96}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !99, line: 69, size: 128, elements: !100)
!99 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !105, !106, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !98, file: !99, line: 70, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 71, baseType: !102, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !98, file: !99, line: 84, baseType: !102, size: 16, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !98, file: !99, line: 85, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !110)
!110 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !90, file: !80, line: 531, baseType: !93, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !90, file: !80, line: 533, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!96, !78, !116, !104, !118, !119, !96, !120}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !117, line: 19, baseType: !102)
!117 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !117, line: 17, baseType: !109)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !99, line: 135, size: 272, elements: !122)
!122 = !{!123, !124, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !121, file: !99, line: 136, baseType: !109, size: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !121, file: !99, line: 137, baseType: !102, size: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !121, file: !99, line: 138, baseType: !126, size: 272)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 272, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 34)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !90, file: !80, line: 536, baseType: !113, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !90, file: !80, line: 541, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!134, !78}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !117, line: 21, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !79, file: !80, line: 699, baseType: !77, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !79, file: !80, line: 702, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !80, line: 557, size: 192, elements: !141)
!141 = !{!142, !146, !150}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !140, file: !80, line: 558, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !78, !7}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !140, file: !80, line: 559, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!96, !78, !7}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !140, file: !80, line: 560, baseType: !143, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !79, file: !80, line: 703, baseType: !152, size: 192, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !153, line: 30, size: 192, elements: !154)
!153 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !165, !181}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !152, file: !153, line: 31, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !157, line: 29, baseType: !158)
!157 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !157, line: 20, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !158, file: !157, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !162, line: 25, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 25, elements: !164)
!164 = !{}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !152, file: !153, line: 32, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !167, line: 125, size: 128, elements: !168)
!167 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !180}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !166, file: !167, line: 126, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !167, line: 31, size: 64, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !170, file: !167, line: 32, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !167, line: 24, size: 192, align: 64, elements: !175)
!175 = !{!176, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !174, file: !167, line: 25, baseType: !177, size: 64)
!177 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !174, file: !167, line: 26, baseType: !173, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !174, file: !167, line: 27, baseType: !173, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !166, file: !167, line: 127, baseType: !173, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !153, line: 33, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !184, line: 640, size: 48640, elements: !185)
!184 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !192, !195, !196, !207, !208, !209, !210, !211, !212, !213, !214, !218, !244, !255, !347, !348, !349, !360, !361, !363, !364, !599, !600, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !679, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !735, !737, !738, !739, !741, !743, !744, !745, !746, !747, !753, !754, !755, !756, !757, !758, !759, !773, !778, !782, !783, !784, !787, !791, !794, !797, !800, !803, !806, !809, !812, !818, !819, !820, !826, !827, !831, !832, !833, !842, !843, !844, !845, !846, !851, !852, !853, !856, !857, !860, !863, !866, !869, !872, !875, !876, !957, !960, !963, !964, !967, !968, !969, !975, !976, !977, !990, !991, !992, !1002, !1007, !1010, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !183, file: !184, line: 646, baseType: !187, size: 128)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !188, line: 56, size: 128, elements: !189)
!188 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !188, line: 57, baseType: !177, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !187, file: !188, line: 58, baseType: !134, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !183, file: !184, line: 649, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!194 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !183, file: !184, line: 657, baseType: !77, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !183, file: !184, line: 658, baseType: !197, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !198, line: 113, baseType: !199)
!198 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !198, line: 111, size: 32, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !199, file: !198, line: 112, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !203, line: 168, baseType: !204)
!203 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 166, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !204, file: !203, line: 167, baseType: !96, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 660, baseType: !7, size: 32, offset: 288)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !183, file: !184, line: 661, baseType: !7, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !183, file: !184, line: 684, baseType: !96, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !183, file: !184, line: 686, baseType: !96, size: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !183, file: !184, line: 687, baseType: !96, size: 32, offset: 416)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !183, file: !184, line: 688, baseType: !96, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !183, file: !184, line: 689, baseType: !7, size: 32, offset: 480)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !183, file: !184, line: 691, baseType: !215, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !184, line: 691, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !183, file: !184, line: 692, baseType: !219, size: 832, offset: 576)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !184, line: 451, size: 832, elements: !220)
!220 = !{!221, !226, !227, !233, !234, !238, !239, !240, !241, !242}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !219, file: !184, line: 453, baseType: !222, size: 128)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !184, line: 325, size: 128, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !222, file: !184, line: 326, baseType: !177, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !222, file: !184, line: 327, baseType: !134, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !219, file: !184, line: 454, baseType: !174, size: 192, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !219, file: !184, line: 455, baseType: !228, size: 128, offset: 320)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !203, line: 178, size: 128, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !203, line: 179, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !203, line: 179, baseType: !231, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !219, file: !184, line: 456, baseType: !7, size: 32, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !219, file: !184, line: 458, baseType: !235, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !117, line: 23, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !237)
!237 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !219, file: !184, line: 459, baseType: !235, size: 64, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !219, file: !184, line: 460, baseType: !235, size: 64, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !219, file: !184, line: 461, baseType: !235, size: 64, offset: 704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !219, file: !184, line: 463, baseType: !235, size: 64, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !219, file: !184, line: 465, baseType: !243, offset: 832)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !184, line: 415, elements: !164)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !183, file: !184, line: 693, baseType: !245, size: 384, offset: 1408)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !184, line: 489, size: 384, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !245, file: !184, line: 490, baseType: !228, size: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !245, file: !184, line: 491, baseType: !177, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !245, file: !184, line: 492, baseType: !177, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !245, file: !184, line: 493, baseType: !7, size: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !245, file: !184, line: 494, baseType: !104, size: 16, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !245, file: !184, line: 495, baseType: !104, size: 16, offset: 304)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !245, file: !184, line: 497, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !183, file: !184, line: 697, baseType: !256, size: 1792, offset: 1792)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !184, line: 507, size: 1792, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !268, !269, !270, !271, !272, !273, !274, !344, !345}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !256, file: !184, line: 508, baseType: !174, size: 192, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !256, file: !184, line: 515, baseType: !235, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !256, file: !184, line: 516, baseType: !235, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !256, file: !184, line: 517, baseType: !235, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !256, file: !184, line: 518, baseType: !235, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !256, file: !184, line: 519, baseType: !235, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !256, file: !184, line: 526, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !117, line: 22, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !267)
!267 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !256, file: !184, line: 527, baseType: !235, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !184, line: 528, baseType: !7, size: 32, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !256, file: !184, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !256, file: !184, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !256, file: !184, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !256, file: !184, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !256, file: !184, line: 563, baseType: !275, size: 512, offset: 704)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !276)
!276 = !{!277, !285, !286, !291, !340, !341, !342, !343}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !6, line: 119, baseType: !278, size: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !279, line: 9, size: 256, elements: !280)
!279 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !279, line: 10, baseType: !174, size: 192, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !278, file: !279, line: 11, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !284, line: 29, baseType: !265)
!284 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !275, file: !6, line: 120, baseType: !283, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !275, file: !6, line: 121, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!5, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !6, line: 122, baseType: !292, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !294)
!294 = !{!295, !315, !316, !320, !330, !331, !335, !339}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !293, file: !6, line: 160, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !297, file: !6, line: 215, baseType: !156)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !297, file: !6, line: 216, baseType: !7, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !297, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !297, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !297, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !297, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !297, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !297, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !297, file: !6, line: 233, baseType: !283, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !297, file: !6, line: 234, baseType: !290, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !297, file: !6, line: 235, baseType: !283, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !297, file: !6, line: 236, baseType: !290, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !297, file: !6, line: 237, baseType: !312, size: 4096, offset: 512)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !293, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !293, file: !6, line: 162, baseType: !317, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !203, line: 27, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !319, line: 96, baseType: !96)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !293, file: !6, line: 163, baseType: !321, size: 32, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !322, line: 276, baseType: !323)
!322 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !322, line: 276, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !323, file: !322, line: 276, baseType: !326, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !322, line: 70, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !322, line: 65, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !327, file: !322, line: 66, baseType: !7, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !293, file: !6, line: 164, baseType: !290, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !293, file: !6, line: 165, baseType: !332, size: 128, offset: 256)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !279, line: 14, size: 128, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !332, file: !279, line: 15, baseType: !166, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !293, file: !6, line: 166, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!283}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !293, file: !6, line: 167, baseType: !283, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !6, line: 123, baseType: !119, size: 8, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !275, file: !6, line: 124, baseType: !119, size: 8, offset: 456)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !275, file: !6, line: 125, baseType: !119, size: 8, offset: 464)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !275, file: !6, line: 126, baseType: !119, size: 8, offset: 472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !256, file: !184, line: 572, baseType: !275, size: 512, offset: 1216)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !256, file: !184, line: 580, baseType: !346, size: 64, offset: 1728)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !183, file: !184, line: 721, baseType: !7, size: 32, offset: 3584)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !183, file: !184, line: 722, baseType: !96, size: 32, offset: 3616)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !183, file: !184, line: 723, baseType: !350, size: 64, offset: 3648)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !353, line: 17, baseType: !354)
!353 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !353, line: 17, size: 64, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !354, file: !353, line: 17, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 1)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !183, file: !184, line: 724, baseType: !352, size: 64, offset: 3712)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !183, file: !184, line: 749, baseType: !362, offset: 3776)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !184, line: 290, elements: !164)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !183, file: !184, line: 751, baseType: !228, size: 128, offset: 3776)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !183, file: !184, line: 757, baseType: !365, size: 64, offset: 3904)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !367, line: 388, size: 7296, elements: !368)
!367 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = !{!369, !595}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 389, baseType: !370, size: 7296)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !367, line: 389, size: 7296, elements: !371)
!371 = !{!372, !419, !420, !421, !425, !426, !427, !428, !429, !436, !437, !438, !439, !440, !441, !442, !450, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !484, !492, !495, !541, !542, !564, !565, !568, !571, !572, !575, !576, !579, !582, !594}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !370, file: !367, line: 390, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !367, line: 305, size: 1472, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !391, !392, !397, !398, !401, !405, !406, !409, !410, !417}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !374, file: !367, line: 308, baseType: !177, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !374, file: !367, line: 309, baseType: !177, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !374, file: !367, line: 313, baseType: !373, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !374, file: !367, line: 313, baseType: !373, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !374, file: !367, line: 315, baseType: !174, size: 192, align: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !374, file: !367, line: 323, baseType: !177, size: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !374, file: !367, line: 327, baseType: !365, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !374, file: !367, line: 333, baseType: !384, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !385, line: 284, baseType: !386)
!385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !385, line: 284, size: 64, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !386, file: !385, line: 284, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !390, line: 19, baseType: !177)
!390 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !374, file: !367, line: 334, baseType: !177, size: 64, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !374, file: !367, line: 343, baseType: !393, size: 256, offset: 704)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !367, line: 340, size: 256, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !393, file: !367, line: 341, baseType: !174, size: 192, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !393, file: !367, line: 342, baseType: !177, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !374, file: !367, line: 351, baseType: !228, size: 128, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !374, file: !367, line: 353, baseType: !399, size: 64, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !367, line: 353, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !374, file: !367, line: 356, baseType: !402, size: 64, offset: 1152)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !367, line: 356, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !374, file: !367, line: 359, baseType: !177, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !374, file: !367, line: 361, baseType: !407, size: 64, offset: 1280)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !385, line: 526, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !374, file: !367, line: 362, baseType: !77, size: 64, offset: 1344)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !374, file: !367, line: 365, baseType: !411, size: 64, offset: 1408)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !412, line: 13, baseType: !413)
!412 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !203, line: 175, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 173, size: 64, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !414, file: !203, line: 174, baseType: !265, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !374, file: !367, line: 373, baseType: !418, offset: 1472)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !367, line: 296, elements: !164)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !370, file: !367, line: 391, baseType: !170, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !370, file: !367, line: 392, baseType: !235, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !370, file: !367, line: 394, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!177, !407, !177, !177, !177, !177}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !370, file: !367, line: 398, baseType: !177, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !370, file: !367, line: 399, baseType: !177, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !370, file: !367, line: 405, baseType: !177, size: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !370, file: !367, line: 406, baseType: !177, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !367, line: 407, baseType: !430, size: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !385, line: 286, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 286, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !432, file: !385, line: 286, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !390, line: 18, baseType: !177)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !370, file: !367, line: 416, baseType: !202, size: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !370, file: !367, line: 428, baseType: !202, size: 32, offset: 608)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !370, file: !367, line: 437, baseType: !202, size: 32, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !370, file: !367, line: 447, baseType: !202, size: 32, offset: 672)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !370, file: !367, line: 450, baseType: !411, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !370, file: !367, line: 452, baseType: !96, size: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !370, file: !367, line: 454, baseType: !443, offset: 800)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !157, line: 83, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !157, line: 71, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !157, line: 72, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !444, file: !157, line: 72, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !447, file: !157, line: 73, baseType: !158)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !370, file: !367, line: 457, baseType: !451, size: 256, offset: 832)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !452, line: 35, size: 256, elements: !453)
!452 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!453 = !{!454, !455, !456, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !452, line: 36, baseType: !411, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !451, file: !452, line: 42, baseType: !411, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !451, file: !452, line: 46, baseType: !156, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !451, file: !452, line: 47, baseType: !228, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !370, file: !367, line: 459, baseType: !228, size: 128, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !370, file: !367, line: 466, baseType: !177, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !370, file: !367, line: 467, baseType: !177, size: 64, offset: 1280)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !370, file: !367, line: 469, baseType: !177, size: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !370, file: !367, line: 470, baseType: !177, size: 64, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !370, file: !367, line: 471, baseType: !413, size: 64, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !370, file: !367, line: 472, baseType: !177, size: 64, offset: 1536)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !370, file: !367, line: 473, baseType: !177, size: 64, offset: 1600)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !370, file: !367, line: 474, baseType: !177, size: 64, offset: 1664)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !370, file: !367, line: 475, baseType: !177, size: 64, offset: 1728)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !370, file: !367, line: 477, baseType: !443, offset: 1792)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !370, file: !367, line: 478, baseType: !177, size: 64, offset: 1792)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !370, file: !367, line: 478, baseType: !177, size: 64, offset: 1856)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !370, file: !367, line: 478, baseType: !177, size: 64, offset: 1920)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !370, file: !367, line: 478, baseType: !177, size: 64, offset: 1984)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !370, file: !367, line: 479, baseType: !177, size: 64, offset: 2048)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !370, file: !367, line: 479, baseType: !177, size: 64, offset: 2112)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !370, file: !367, line: 479, baseType: !177, size: 64, offset: 2176)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !370, file: !367, line: 480, baseType: !177, size: 64, offset: 2240)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !370, file: !367, line: 480, baseType: !177, size: 64, offset: 2304)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !370, file: !367, line: 480, baseType: !177, size: 64, offset: 2368)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !370, file: !367, line: 480, baseType: !177, size: 64, offset: 2432)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !370, file: !367, line: 482, baseType: !481, size: 2816, offset: 2496)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 2816, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 44)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !370, file: !367, line: 488, baseType: !485, size: 256, offset: 5312)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !486, line: 60, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !485, file: !486, line: 61, baseType: !489, size: 256)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 4)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !370, file: !367, line: 490, baseType: !493, size: 64, offset: 5568)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !367, line: 490, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !367, line: 493, baseType: !496, size: 896, offset: 5632)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !497, line: 53, baseType: !498)
!497 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 13, size: 896, elements: !499)
!499 = !{!500, !501, !502, !503, !506, !507, !514, !515, !535, !536, !537}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !498, file: !497, line: 18, baseType: !235, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !498, file: !497, line: 28, baseType: !413, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !498, file: !497, line: 31, baseType: !451, size: 256, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !498, file: !497, line: 32, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !497, line: 32, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !498, file: !497, line: 37, baseType: !104, size: 16, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !498, file: !497, line: 40, baseType: !508, size: 192, offset: 512)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !509, line: 53, size: 192, elements: !510)
!509 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512, !513}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !508, file: !509, line: 54, baseType: !411, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !508, file: !509, line: 55, baseType: !443, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !508, file: !509, line: 59, baseType: !228, size: 128, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !498, file: !497, line: 41, baseType: !77, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !498, file: !497, line: 42, baseType: !516, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !519, line: 13, size: 896, elements: !520)
!519 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !518, file: !519, line: 14, baseType: !77, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !518, file: !519, line: 15, baseType: !177, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !518, file: !519, line: 17, baseType: !177, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !518, file: !519, line: 17, baseType: !177, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !518, file: !519, line: 19, baseType: !194, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !518, file: !519, line: 21, baseType: !194, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !518, file: !519, line: 22, baseType: !194, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !518, file: !519, line: 23, baseType: !194, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !518, file: !519, line: 24, baseType: !194, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !518, file: !519, line: 25, baseType: !194, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !518, file: !519, line: 26, baseType: !194, size: 64, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !518, file: !519, line: 27, baseType: !194, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !518, file: !519, line: 28, baseType: !194, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !518, file: !519, line: 29, baseType: !194, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !498, file: !497, line: 44, baseType: !202, size: 32, offset: 832)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !498, file: !497, line: 50, baseType: !116, size: 16, offset: 864)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !498, file: !497, line: 51, baseType: !538, size: 16, offset: 880)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !117, line: 18, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !540)
!540 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !367, line: 495, baseType: !177, size: 64, offset: 6528)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !370, file: !367, line: 497, baseType: !543, size: 64, offset: 6592)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !367, line: 381, size: 384, elements: !545)
!545 = !{!546, !547, !553}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !544, file: !367, line: 382, baseType: !202, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !544, file: !367, line: 383, baseType: !548, size: 128, offset: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !367, line: 376, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !548, file: !367, line: 377, baseType: !182, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !367, line: 378, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !544, file: !367, line: 384, baseType: !554, size: 192, offset: 192)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !555, line: 26, size: 192, elements: !556)
!555 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !554, file: !555, line: 27, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !554, file: !555, line: 28, baseType: !559, size: 128, offset: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !560, line: 43, size: 128, elements: !561)
!560 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !559, file: !560, line: 44, baseType: !156)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !559, file: !560, line: 45, baseType: !228, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !370, file: !367, line: 500, baseType: !443, offset: 6656)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !370, file: !367, line: 501, baseType: !566, size: 64, offset: 6656)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !367, line: 387, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !370, file: !367, line: 516, baseType: !569, size: 64, offset: 6720)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !367, line: 516, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !370, file: !367, line: 519, baseType: !407, size: 64, offset: 6784)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !370, file: !367, line: 521, baseType: !573, size: 64, offset: 6848)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !367, line: 521, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !370, file: !367, line: 545, baseType: !202, size: 32, offset: 6912)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !370, file: !367, line: 548, baseType: !577, size: 8, offset: 6944)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !203, line: 30, baseType: !578)
!578 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !370, file: !367, line: 550, baseType: !580, offset: 6952)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !581, line: 142, elements: !164)
!581 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !370, file: !367, line: 554, baseType: !583, size: 256, offset: 6976)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !584, line: 102, size: 256, elements: !585)
!584 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !587, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !583, file: !584, line: 103, baseType: !411, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !583, file: !584, line: 104, baseType: !228, size: 128, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !583, file: !584, line: 105, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !584, line: 21, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !370, file: !367, line: 557, baseType: !134, size: 32, offset: 7232)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !366, file: !367, line: 565, baseType: !596, offset: 7296)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: -1)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !183, file: !184, line: 758, baseType: !365, size: 64, offset: 3968)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !183, file: !184, line: 761, baseType: !601, size: 320, offset: 4032)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !486, line: 34, size: 320, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !601, file: !486, line: 35, baseType: !235, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !601, file: !486, line: 36, baseType: !605, size: 256, offset: 64)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !490)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !183, file: !184, line: 766, baseType: !96, size: 32, offset: 4352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !183, file: !184, line: 767, baseType: !96, size: 32, offset: 4384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !183, file: !184, line: 768, baseType: !96, size: 32, offset: 4416)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !183, file: !184, line: 770, baseType: !96, size: 32, offset: 4448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !183, file: !184, line: 772, baseType: !177, size: 64, offset: 4480)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !183, file: !184, line: 775, baseType: !7, size: 32, offset: 4544)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !183, file: !184, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !183, file: !184, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !183, file: !184, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !183, file: !184, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !183, file: !184, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !183, file: !184, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !183, file: !184, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !183, file: !184, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !183, file: !184, line: 831, baseType: !177, size: 64, offset: 4672)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !183, file: !184, line: 833, baseType: !622, size: 384, offset: 4736)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !623)
!623 = !{!624, !629}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !622, file: !12, line: 26, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!194, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !12, line: 27, baseType: !630, size: 320, offset: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !12, line: 27, size: 320, elements: !631)
!631 = !{!632, !642, !669}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !630, file: !12, line: 36, baseType: !633, size: 320)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 29, size: 320, elements: !634)
!634 = !{!635, !637, !638, !639, !640, !641}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !633, file: !12, line: 30, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !12, line: 31, baseType: !134, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !12, line: 32, baseType: !134, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !633, file: !12, line: 33, baseType: !134, size: 32, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !633, file: !12, line: 34, baseType: !235, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !633, file: !12, line: 35, baseType: !636, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !630, file: !12, line: 46, baseType: !643, size: 192)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 38, size: 192, elements: !644)
!644 = !{!645, !646, !647, !668}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !643, file: !12, line: 39, baseType: !317, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !643, file: !12, line: 41, baseType: !648, size: 64, offset: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !12, line: 41, size: 64, elements: !649)
!649 = !{!650, !658}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !648, file: !12, line: 42, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !653, line: 7, size: 128, elements: !654)
!653 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!654 = !{!655, !657}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !652, file: !653, line: 8, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !319, line: 93, baseType: !267)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !652, file: !653, line: 9, baseType: !267, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !648, file: !12, line: 43, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !661, line: 7, size: 64, elements: !662)
!661 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !660, file: !661, line: 8, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !661, line: 5, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !117, line: 20, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !660, file: !661, line: 9, baseType: !665, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !643, file: !12, line: 45, baseType: !235, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !630, file: !12, line: 54, baseType: !670, size: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !12, line: 48, size: 256, elements: !671)
!671 = !{!672, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !670, file: !12, line: 49, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !670, file: !12, line: 50, baseType: !96, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !670, file: !12, line: 51, baseType: !96, size: 32, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !670, file: !12, line: 52, baseType: !177, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !670, file: !12, line: 53, baseType: !177, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !183, file: !184, line: 835, baseType: !680, size: 32, offset: 5120)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 22, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !319, line: 28, baseType: !96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !183, file: !184, line: 836, baseType: !680, size: 32, offset: 5152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !183, file: !184, line: 840, baseType: !177, size: 64, offset: 5184)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !183, file: !184, line: 849, baseType: !182, size: 64, offset: 5248)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !184, line: 852, baseType: !182, size: 64, offset: 5312)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !183, file: !184, line: 857, baseType: !228, size: 128, offset: 5376)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !183, file: !184, line: 858, baseType: !228, size: 128, offset: 5504)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !183, file: !184, line: 859, baseType: !182, size: 64, offset: 5632)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !183, file: !184, line: 867, baseType: !228, size: 128, offset: 5696)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !183, file: !184, line: 868, baseType: !228, size: 128, offset: 5824)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !183, file: !184, line: 871, baseType: !692, size: 64, offset: 5952)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !694, line: 59, size: 768, elements: !695)
!694 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !697, !698, !699, !710, !711, !718, !727}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !693, file: !694, line: 61, baseType: !197, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !693, file: !694, line: 62, baseType: !7, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !694, line: 63, baseType: !443, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !693, file: !694, line: 65, baseType: !700, size: 256, offset: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 256, elements: !490)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !203, line: 182, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !701, file: !203, line: 183, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !203, line: 186, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !203, line: 187, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !705, file: !203, line: 187, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !693, file: !694, line: 66, baseType: !701, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !693, file: !694, line: 68, baseType: !712, size: 128, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !713, line: 40, baseType: !714)
!713 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !713, line: 36, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !714, file: !713, line: 37, baseType: !443)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !714, file: !713, line: 38, baseType: !228, size: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !694, line: 69, baseType: !719, size: 128, align: 64, offset: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !203, line: 216, size: 128, align: 64, elements: !720)
!720 = !{!721, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !719, file: !203, line: 217, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !719, file: !203, line: 218, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !722}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !693, file: !694, line: 70, baseType: !728, size: 128, offset: 640)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 128, elements: !358)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !694, line: 54, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !729, file: !694, line: 55, baseType: !96, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !729, file: !694, line: 56, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !694, line: 56, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !183, file: !184, line: 872, baseType: !736, size: 512, offset: 6016)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 512, elements: !490)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !183, file: !184, line: 873, baseType: !228, size: 128, offset: 6528)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !183, file: !184, line: 874, baseType: !228, size: 128, offset: 6656)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !183, file: !184, line: 876, baseType: !740, size: 64, offset: 6784)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !183, file: !184, line: 879, baseType: !742, size: 64, offset: 6848)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !183, file: !184, line: 882, baseType: !742, size: 64, offset: 6912)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !183, file: !184, line: 884, baseType: !235, size: 64, offset: 6976)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !183, file: !184, line: 885, baseType: !235, size: 64, offset: 7040)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !183, file: !184, line: 890, baseType: !235, size: 64, offset: 7104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !183, file: !184, line: 891, baseType: !748, size: 128, offset: 7168)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !184, line: 242, size: 128, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !748, file: !184, line: 244, baseType: !235, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !748, file: !184, line: 245, baseType: !235, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !184, line: 246, baseType: !156, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !183, file: !184, line: 900, baseType: !177, size: 64, offset: 7296)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !183, file: !184, line: 901, baseType: !177, size: 64, offset: 7360)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !183, file: !184, line: 904, baseType: !235, size: 64, offset: 7424)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !183, file: !184, line: 907, baseType: !235, size: 64, offset: 7488)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !183, file: !184, line: 910, baseType: !177, size: 64, offset: 7552)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !183, file: !184, line: 911, baseType: !177, size: 64, offset: 7616)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !183, file: !184, line: 914, baseType: !760, size: 640, offset: 7680)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !761, line: 123, size: 640, elements: !762)
!761 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !771, !772}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !760, file: !761, line: 124, baseType: !764, size: 576)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 576, elements: !769)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !761, line: 108, size: 192, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !765, file: !761, line: 109, baseType: !235, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !765, file: !761, line: 110, baseType: !332, size: 128, offset: 64)
!769 = !{!770}
!770 = !DISubrange(count: 3)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !760, file: !761, line: 125, baseType: !7, size: 32, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !760, file: !761, line: 126, baseType: !7, size: 32, offset: 608)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !183, file: !184, line: 917, baseType: !774, size: 192, offset: 8320)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !761, line: 134, size: 192, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !774, file: !761, line: 135, baseType: !719, size: 128, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !774, file: !761, line: 136, baseType: !7, size: 32, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !183, file: !184, line: 923, baseType: !779, size: 64, offset: 8512)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !184, line: 923, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !183, file: !184, line: 926, baseType: !779, size: 64, offset: 8576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !183, file: !184, line: 929, baseType: !779, size: 64, offset: 8640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !183, file: !184, line: 933, baseType: !785, size: 64, offset: 8704)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !184, line: 933, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !183, file: !184, line: 943, baseType: !788, size: 128, offset: 8768)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 16)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !183, file: !184, line: 945, baseType: !792, size: 64, offset: 8896)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !184, line: 49, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !183, file: !184, line: 956, baseType: !795, size: 64, offset: 8960)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !184, line: 45, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !183, file: !184, line: 959, baseType: !798, size: 64, offset: 9024)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !184, line: 959, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !183, file: !184, line: 962, baseType: !801, size: 64, offset: 9088)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !184, line: 66, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !183, file: !184, line: 966, baseType: !804, size: 64, offset: 9152)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !184, line: 50, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !183, file: !184, line: 969, baseType: !807, size: 64, offset: 9216)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !761, line: 223, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !183, file: !184, line: 970, baseType: !810, size: 64, offset: 9280)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !184, line: 62, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !183, file: !184, line: 971, baseType: !813, size: 64, offset: 9344)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !814, line: 25, baseType: !815)
!814 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !814, line: 23, size: 64, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !815, file: !814, line: 24, baseType: !357, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !183, file: !184, line: 972, baseType: !813, size: 64, offset: 9408)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !183, file: !184, line: 974, baseType: !813, size: 64, offset: 9472)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !183, file: !184, line: 975, baseType: !821, size: 192, offset: 9536)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !822, line: 30, size: 192, elements: !823)
!822 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !821, file: !822, line: 31, baseType: !228, size: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !821, file: !822, line: 32, baseType: !813, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !183, file: !184, line: 976, baseType: !177, size: 64, offset: 9728)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !183, file: !184, line: 977, baseType: !828, size: 64, offset: 9792)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 55, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !177)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !183, file: !184, line: 978, baseType: !7, size: 32, offset: 9856)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !183, file: !184, line: 980, baseType: !722, size: 64, offset: 9920)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !183, file: !184, line: 989, baseType: !834, size: 128, offset: 9984)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !835, line: 35, size: 128, elements: !836)
!835 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !834, file: !835, line: 36, baseType: !96, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !834, file: !835, line: 37, baseType: !202, size: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !834, file: !835, line: 38, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !835, line: 23, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !183, file: !184, line: 992, baseType: !235, size: 64, offset: 10112)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !183, file: !184, line: 993, baseType: !235, size: 64, offset: 10176)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !183, file: !184, line: 996, baseType: !443, offset: 10240)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !183, file: !184, line: 999, baseType: !156, offset: 10240)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !183, file: !184, line: 1001, baseType: !847, size: 64, offset: 10240)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !184, line: 636, size: 64, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !184, line: 637, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !183, file: !184, line: 1005, baseType: !166, size: 128, offset: 10304)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !183, file: !184, line: 1007, baseType: !182, size: 64, offset: 10432)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !183, file: !184, line: 1009, baseType: !854, size: 64, offset: 10496)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !184, line: 1009, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !183, file: !184, line: 1043, baseType: !77, size: 64, offset: 10560)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !183, file: !184, line: 1046, baseType: !858, size: 64, offset: 10624)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !184, line: 41, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !183, file: !184, line: 1050, baseType: !861, size: 64, offset: 10688)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !184, line: 42, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !183, file: !184, line: 1054, baseType: !864, size: 64, offset: 10752)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !184, line: 55, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !183, file: !184, line: 1056, baseType: !867, size: 64, offset: 10816)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !184, line: 40, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !183, file: !184, line: 1058, baseType: !870, size: 64, offset: 10880)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !184, line: 47, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !183, file: !184, line: 1061, baseType: !873, size: 64, offset: 10944)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !184, line: 43, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !183, file: !184, line: 1064, baseType: !177, size: 64, offset: 11008)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !183, file: !184, line: 1065, baseType: !877, size: 64, offset: 11072)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !822, line: 14, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !822, line: 12, size: 384, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !879, file: !822, line: 13, baseType: !882, size: 384)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !879, file: !822, line: 13, size: 384, elements: !883)
!883 = !{!884, !885, !886, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !882, file: !822, line: 13, baseType: !96, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !882, file: !822, line: 13, baseType: !96, size: 32, offset: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !882, file: !822, line: 13, baseType: !96, size: 32, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !882, file: !822, line: 13, baseType: !888, size: 256, offset: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !889, line: 32, size: 256, elements: !890)
!889 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !897, !910, !916, !926, !946, !951}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !888, file: !889, line: 37, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 34, size: 64, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !892, file: !889, line: 35, baseType: !681, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !892, file: !889, line: 36, baseType: !896, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !319, line: 49, baseType: !7)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !888, file: !889, line: 45, baseType: !898, size: 192)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 40, size: 192, elements: !899)
!899 = !{!900, !902, !903, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !898, file: !889, line: 41, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !319, line: 95, baseType: !96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !898, file: !889, line: 42, baseType: !96, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !898, file: !889, line: 43, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !889, line: 11, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !889, line: 8, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !905, file: !889, line: 9, baseType: !96, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !905, file: !889, line: 10, baseType: !77, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !898, file: !889, line: 44, baseType: !96, size: 32, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !888, file: !889, line: 52, baseType: !911, size: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 48, size: 128, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !889, line: 49, baseType: !681, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !889, line: 50, baseType: !896, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !911, file: !889, line: 51, baseType: !904, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !888, file: !889, line: 61, baseType: !917, size: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 55, size: 256, elements: !918)
!918 = !{!919, !920, !921, !922, !925}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !917, file: !889, line: 56, baseType: !681, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !917, file: !889, line: 57, baseType: !896, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !917, file: !889, line: 58, baseType: !96, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !917, file: !889, line: 59, baseType: !923, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !319, line: 94, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !319, line: 15, baseType: !194)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !917, file: !889, line: 60, baseType: !923, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !888, file: !889, line: 95, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 64, size: 256, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !927, file: !889, line: 65, baseType: !77, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !889, line: 77, baseType: !931, size: 192, offset: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !889, line: 77, size: 192, elements: !932)
!932 = !{!933, !934, !941}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !931, file: !889, line: 82, baseType: !540, size: 16)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !931, file: !889, line: 88, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !889, line: 84, size: 192, elements: !936)
!936 = !{!937, !939, !940}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !935, file: !889, line: 85, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !313)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !935, file: !889, line: 86, baseType: !77, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !935, file: !889, line: 87, baseType: !77, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !931, file: !889, line: 93, baseType: !942, size: 96)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !889, line: 90, size: 96, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !942, file: !889, line: 91, baseType: !938, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !942, file: !889, line: 92, baseType: !135, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !888, file: !889, line: 101, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 98, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !947, file: !889, line: 99, baseType: !194, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !947, file: !889, line: 100, baseType: !96, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !888, file: !889, line: 108, baseType: !952, size: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !889, line: 104, size: 128, elements: !953)
!953 = !{!954, !955, !956}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !952, file: !889, line: 105, baseType: !77, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !952, file: !889, line: 106, baseType: !96, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !952, file: !889, line: 107, baseType: !7, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !183, file: !184, line: 1067, baseType: !958, offset: 11136)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !959, line: 12, elements: !164)
!959 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!960 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !183, file: !184, line: 1099, baseType: !961, size: 64, offset: 11136)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !184, line: 56, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !183, file: !184, line: 1103, baseType: !228, size: 128, offset: 11200)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !183, file: !184, line: 1104, baseType: !965, size: 64, offset: 11328)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !184, line: 46, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !183, file: !184, line: 1105, baseType: !508, size: 192, offset: 11392)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !183, file: !184, line: 1106, baseType: !7, size: 32, offset: 11584)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !183, file: !184, line: 1109, baseType: !970, size: 128, offset: 11648)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 128, elements: !973)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !184, line: 51, flags: DIFlagFwdDecl)
!973 = !{!974}
!974 = !DISubrange(count: 2)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !183, file: !184, line: 1110, baseType: !508, size: 192, offset: 11776)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !183, file: !184, line: 1111, baseType: !228, size: 128, offset: 11968)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !183, file: !184, line: 1173, baseType: !978, size: 64, offset: 12096)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !980, line: 62, size: 256, align: 256, elements: !981)
!980 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982, !983, !984, !989}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !979, file: !980, line: 75, baseType: !135, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !979, file: !980, line: 90, baseType: !135, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !979, file: !980, line: 124, baseType: !985, size: 64, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !980, line: 109, size: 64, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !985, file: !980, line: 110, baseType: !236, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !985, file: !980, line: 112, baseType: !236, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !980, line: 144, baseType: !135, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !183, file: !184, line: 1174, baseType: !134, size: 32, offset: 12160)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !183, file: !184, line: 1179, baseType: !177, size: 64, offset: 12224)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !183, file: !184, line: 1182, baseType: !993, size: 128, offset: 12288)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !486, line: 76, size: 128, elements: !994)
!994 = !{!995, !1000, !1001}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !993, file: !486, line: 85, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !997, line: 7, size: 64, elements: !998)
!997 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !996, file: !997, line: 12, baseType: !354, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !993, file: !486, line: 88, baseType: !577, size: 8, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !993, file: !486, line: 95, baseType: !577, size: 8, offset: 72)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !184, line: 1184, baseType: !1003, size: 128, offset: 12416)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !184, line: 1184, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1003, file: !184, line: 1185, baseType: !197, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1003, file: !184, line: 1186, baseType: !719, size: 128, align: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !183, file: !184, line: 1190, baseType: !1008, size: 64, offset: 12544)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !184, line: 53, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !183, file: !184, line: 1192, baseType: !1011, size: 128, offset: 12608)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !486, line: 64, size: 128, elements: !1012)
!1012 = !{!1013, !1106, !1107}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1011, file: !486, line: 65, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !367, line: 68, size: 512, align: 128, elements: !1016)
!1016 = !{!1017, !1018, !1098, !1105}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1015, file: !367, line: 69, baseType: !177, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !367, line: 77, baseType: !1019, size: 320, offset: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !367, line: 77, size: 320, elements: !1020)
!1020 = !{!1021, !1030, !1035, !1063, !1071, !1077, !1090, !1097}
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 78, baseType: !1022, size: 320)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 78, size: 320, elements: !1023)
!1023 = !{!1024, !1025, !1028, !1029}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1022, file: !367, line: 84, baseType: !228, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1022, file: !367, line: 86, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !367, line: 26, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1022, file: !367, line: 87, baseType: !177, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1022, file: !367, line: 94, baseType: !177, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 96, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 96, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1031, file: !367, line: 101, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !203, line: 143, baseType: !235)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 103, baseType: !1036, size: 320)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 103, size: 320, elements: !1037)
!1037 = !{!1038, !1048, !1051, !1052}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !367, line: 104, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !367, line: 104, size: 128, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1039, file: !367, line: 105, baseType: !228, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !367, line: 106, baseType: !1043, size: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !367, line: 106, size: 128, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1043, file: !367, line: 107, baseType: !1014, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1043, file: !367, line: 109, baseType: !96, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1043, file: !367, line: 110, baseType: !96, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1036, file: !367, line: 117, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !367, line: 117, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1036, file: !367, line: 119, baseType: !77, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !367, line: 120, baseType: !1053, size: 64, offset: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1036, file: !367, line: 120, size: 64, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1053, file: !367, line: 121, baseType: !77, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1053, file: !367, line: 122, baseType: !177, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !367, line: 123, baseType: !1058, size: 32)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1053, file: !367, line: 123, size: 32, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1058, file: !367, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1058, file: !367, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1058, file: !367, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 130, baseType: !1064, size: 192)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 130, size: 192, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1064, file: !367, line: 131, baseType: !177, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1064, file: !367, line: 134, baseType: !110, size: 8, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1064, file: !367, line: 135, baseType: !110, size: 8, offset: 72)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1064, file: !367, line: 136, baseType: !202, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1064, file: !367, line: 137, baseType: !7, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 139, baseType: !1072, size: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 139, size: 256, elements: !1073)
!1073 = !{!1074, !1075, !1076}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1072, file: !367, line: 140, baseType: !177, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1072, file: !367, line: 141, baseType: !202, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1072, file: !367, line: 143, baseType: !228, size: 128, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 145, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 145, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1083, !1084, !1089}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1078, file: !367, line: 146, baseType: !177, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1078, file: !367, line: 147, baseType: !1082, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !385, line: 509, baseType: !1014)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1078, file: !367, line: 148, baseType: !177, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !367, line: 149, baseType: !1085, size: 64, offset: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !367, line: 149, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1085, file: !367, line: 150, baseType: !365, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1085, file: !367, line: 151, baseType: !202, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1078, file: !367, line: 156, baseType: !443, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !367, line: 159, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !367, line: 159, size: 128, elements: !1092)
!1092 = !{!1093, !1096}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1091, file: !367, line: 161, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !367, line: 161, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1091, file: !367, line: 162, baseType: !77, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1019, file: !367, line: 176, baseType: !719, size: 128, align: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !367, line: 179, baseType: !1099, size: 32, offset: 384)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1015, file: !367, line: 179, size: 32, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1099, file: !367, line: 184, baseType: !202, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1099, file: !367, line: 192, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1099, file: !367, line: 194, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1099, file: !367, line: 195, baseType: !96, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1015, file: !367, line: 199, baseType: !202, size: 32, offset: 416)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1011, file: !486, line: 67, baseType: !135, size: 32, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1011, file: !486, line: 68, baseType: !135, size: 32, offset: 96)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !183, file: !184, line: 1206, baseType: !96, size: 32, offset: 12736)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !183, file: !184, line: 1207, baseType: !96, size: 32, offset: 12768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !183, file: !184, line: 1209, baseType: !177, size: 64, offset: 12800)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !183, file: !184, line: 1219, baseType: !235, size: 64, offset: 12864)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !183, file: !184, line: 1220, baseType: !235, size: 64, offset: 12928)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !183, file: !184, line: 1317, baseType: !96, size: 32, offset: 12992)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !183, file: !184, line: 1319, baseType: !182, size: 64, offset: 13056)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !183, file: !184, line: 1322, baseType: !1116, size: 64, offset: 13120)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1118, line: 56, size: 512, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1126, !1127, !1129}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !1118, line: 57, baseType: !1116, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1117, file: !1118, line: 58, baseType: !77, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1117, file: !1118, line: 59, baseType: !177, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !1118, line: 60, baseType: !177, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1117, file: !1118, line: 61, baseType: !1125, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1117, file: !1118, line: 62, baseType: !7, size: 32, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1117, file: !1118, line: 63, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !203, line: 153, baseType: !235)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1117, file: !1118, line: 64, baseType: !1130, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !183, file: !184, line: 1326, baseType: !197, size: 32, offset: 13184)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !183, file: !184, line: 1342, baseType: !77, size: 64, offset: 13248)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !183, file: !184, line: 1343, baseType: !236, size: 64, offset: 13312)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !183, file: !184, line: 1344, baseType: !235, size: 64, offset: 13376)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !183, file: !184, line: 1345, baseType: !236, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !183, file: !184, line: 1346, baseType: !236, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !183, file: !184, line: 1347, baseType: !236, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !183, file: !184, line: 1348, baseType: !719, size: 128, align: 64, offset: 13504)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !183, file: !184, line: 1358, baseType: !1141, size: 34816, offset: 13824)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1142, line: 485, size: 34816, elements: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !{!1144, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1173, !1174, !1175, !1176, !1177, !1178, !1181, !1182, !1183}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1141, file: !1142, line: 487, baseType: !1145, size: 192)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 192, elements: !769)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1147, line: 16, size: 64, elements: !1148)
!1147 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1146, file: !1147, line: 17, baseType: !116, size: 16)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1146, file: !1147, line: 18, baseType: !116, size: 16, offset: 16)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1146, file: !1147, line: 19, baseType: !116, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1146, file: !1147, line: 19, baseType: !116, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1146, file: !1147, line: 19, baseType: !116, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1146, file: !1147, line: 19, baseType: !116, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1146, file: !1147, line: 19, baseType: !116, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1146, file: !1147, line: 20, baseType: !116, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1146, file: !1147, line: 20, baseType: !116, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1146, file: !1147, line: 20, baseType: !116, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1146, file: !1147, line: 20, baseType: !116, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1146, file: !1147, line: 20, baseType: !116, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1146, file: !1147, line: 20, baseType: !116, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1141, file: !1142, line: 491, baseType: !177, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1141, file: !1142, line: 495, baseType: !104, size: 16, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1141, file: !1142, line: 496, baseType: !104, size: 16, offset: 272)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1141, file: !1142, line: 497, baseType: !104, size: 16, offset: 288)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1141, file: !1142, line: 498, baseType: !104, size: 16, offset: 304)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1141, file: !1142, line: 502, baseType: !177, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1141, file: !1142, line: 503, baseType: !177, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1141, file: !1142, line: 514, baseType: !1170, size: 256, offset: 448)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 256, elements: !490)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1142, line: 483, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1141, file: !1142, line: 516, baseType: !177, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1141, file: !1142, line: 518, baseType: !177, size: 64, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1141, file: !1142, line: 520, baseType: !177, size: 64, offset: 832)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1141, file: !1142, line: 521, baseType: !177, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1141, file: !1142, line: 522, baseType: !177, size: 64, offset: 960)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1141, file: !1142, line: 528, baseType: !1179, size: 64, offset: 1024)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1142, line: 10, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1141, file: !1142, line: 535, baseType: !177, size: 64, offset: 1088)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1141, file: !1142, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1141, file: !1142, line: 540, baseType: !1184, size: 33280, offset: 1536)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1185, line: 317, size: 33280, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1184, file: !1185, line: 330, baseType: !7, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1184, file: !1185, line: 337, baseType: !177, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1184, file: !1185, line: 348, baseType: !1190, size: 32768, offset: 512)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1185, line: 304, size: 32768, elements: !1191)
!1191 = !{!1192, !1207, !1248, !1298, !1315}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1190, file: !1185, line: 305, baseType: !1193, size: 896)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1185, line: 12, size: 896, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1206}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1193, file: !1185, line: 13, baseType: !134, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1193, file: !1185, line: 14, baseType: !134, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1193, file: !1185, line: 15, baseType: !134, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1193, file: !1185, line: 16, baseType: !134, size: 32, offset: 96)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1193, file: !1185, line: 17, baseType: !134, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1193, file: !1185, line: 18, baseType: !134, size: 32, offset: 160)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1193, file: !1185, line: 19, baseType: !134, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1193, file: !1185, line: 22, baseType: !1203, size: 640, offset: 224)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 640, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 20)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1193, file: !1185, line: 25, baseType: !134, size: 32, offset: 864)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1190, file: !1185, line: 306, baseType: !1208, size: 4096, align: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1185, line: 34, size: 4096, align: 128, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1229, !1230, !1231, !1235, !1239, !1243}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1208, file: !1185, line: 35, baseType: !116, size: 16)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1208, file: !1185, line: 36, baseType: !116, size: 16, offset: 16)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1208, file: !1185, line: 37, baseType: !116, size: 16, offset: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1208, file: !1185, line: 38, baseType: !116, size: 16, offset: 48)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1185, line: 39, baseType: !1215, size: 128, offset: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1208, file: !1185, line: 39, size: 128, elements: !1216)
!1216 = !{!1217, !1222}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1185, line: 40, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1185, line: 40, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1218, file: !1185, line: 41, baseType: !235, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1218, file: !1185, line: 42, baseType: !235, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1185, line: 44, baseType: !1223, size: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1185, line: 44, size: 128, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1223, file: !1185, line: 45, baseType: !134, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1223, file: !1185, line: 46, baseType: !134, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1223, file: !1185, line: 47, baseType: !134, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1223, file: !1185, line: 48, baseType: !134, size: 32, offset: 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1208, file: !1185, line: 51, baseType: !134, size: 32, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1208, file: !1185, line: 52, baseType: !134, size: 32, offset: 224)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1208, file: !1185, line: 55, baseType: !1232, size: 1024, offset: 256)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 1024, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1208, file: !1185, line: 58, baseType: !1236, size: 2048, offset: 1280)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 2048, elements: !1237)
!1237 = !{!1238}
!1238 = !DISubrange(count: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1208, file: !1185, line: 60, baseType: !1240, size: 384, offset: 3328)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 384, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 12)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1185, line: 62, baseType: !1244, size: 384, offset: 3712)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1208, file: !1185, line: 62, size: 384, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1244, file: !1185, line: 63, baseType: !1240, size: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1244, file: !1185, line: 64, baseType: !1240, size: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1190, file: !1185, line: 307, baseType: !1249, size: 1088)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1185, line: 79, size: 1088, elements: !1250)
!1250 = !{!1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1297}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1249, file: !1185, line: 80, baseType: !134, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1249, file: !1185, line: 81, baseType: !134, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1249, file: !1185, line: 82, baseType: !134, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1249, file: !1185, line: 83, baseType: !134, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1249, file: !1185, line: 84, baseType: !134, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1249, file: !1185, line: 85, baseType: !134, size: 32, offset: 160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1249, file: !1185, line: 86, baseType: !134, size: 32, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1249, file: !1185, line: 88, baseType: !1203, size: 640, offset: 224)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1249, file: !1185, line: 89, baseType: !119, size: 8, offset: 864)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1249, file: !1185, line: 90, baseType: !119, size: 8, offset: 872)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1249, file: !1185, line: 91, baseType: !119, size: 8, offset: 880)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1249, file: !1185, line: 92, baseType: !119, size: 8, offset: 888)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1249, file: !1185, line: 93, baseType: !119, size: 8, offset: 896)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1249, file: !1185, line: 94, baseType: !119, size: 8, offset: 904)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1249, file: !1185, line: 95, baseType: !1266, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1268, line: 11, size: 128, elements: !1269)
!1268 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1267, file: !1268, line: 12, baseType: !194, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1267, file: !1268, line: 13, baseType: !1272, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1274, line: 56, size: 1344, elements: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1273, file: !1274, line: 61, baseType: !177, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1273, file: !1274, line: 62, baseType: !177, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1273, file: !1274, line: 63, baseType: !177, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1273, file: !1274, line: 64, baseType: !177, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1273, file: !1274, line: 65, baseType: !177, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1273, file: !1274, line: 66, baseType: !177, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1273, file: !1274, line: 68, baseType: !177, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1273, file: !1274, line: 69, baseType: !177, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1273, file: !1274, line: 70, baseType: !177, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1273, file: !1274, line: 71, baseType: !177, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1273, file: !1274, line: 72, baseType: !177, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1273, file: !1274, line: 73, baseType: !177, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1273, file: !1274, line: 74, baseType: !177, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1273, file: !1274, line: 75, baseType: !177, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1273, file: !1274, line: 76, baseType: !177, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1273, file: !1274, line: 81, baseType: !177, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1273, file: !1274, line: 83, baseType: !177, size: 64, offset: 1024)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1273, file: !1274, line: 84, baseType: !177, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !1274, line: 85, baseType: !177, size: 64, offset: 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1273, file: !1274, line: 86, baseType: !177, size: 64, offset: 1216)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1273, file: !1274, line: 87, baseType: !177, size: 64, offset: 1280)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1249, file: !1185, line: 96, baseType: !134, size: 32, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1190, file: !1185, line: 308, baseType: !1299, size: 4608, align: 512)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1185, line: 289, size: 4608, align: 512, elements: !1300)
!1300 = !{!1301, !1302, !1311}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1299, file: !1185, line: 290, baseType: !1208, size: 4096, align: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1299, file: !1185, line: 291, baseType: !1303, size: 512, offset: 4096)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1185, line: 268, size: 512, elements: !1304)
!1304 = !{!1305, !1306, !1307}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1303, file: !1185, line: 269, baseType: !235, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1303, file: !1185, line: 270, baseType: !235, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1303, file: !1185, line: 271, baseType: !1308, size: 384, offset: 128)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 6)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1299, file: !1185, line: 292, baseType: !1312, offset: 4608)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 0)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1190, file: !1185, line: 309, baseType: !1316, size: 32768)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 32768, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 4096)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !79, file: !80, line: 704, baseType: !152, size: 192, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !79, file: !80, line: 706, baseType: !96, size: 32, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !79, file: !80, line: 707, baseType: !96, size: 32, offset: 736)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !79, file: !80, line: 708, baseType: !1323, size: 5568, offset: 768)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1324)
!1324 = !{!1325, !1660, !1662, !1665, !1666, !1717, !1811, !1812, !1813, !1814, !1815, !1824, !1929, !1942, !2138, !2139, !2143, !2145, !2146, !2147, !2151, !2157, !2158, !2161, !2162, !2163, !2166, !2167, !2168, !2169, !2201, !2202, !2203, !2206, !2209, !2210, !2211, !2212}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1323, file: !30, line: 462, baseType: !1326, size: 512)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1327, line: 64, size: 512, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1332, !1333, !1335, !1376, !1496, !1650, !1655, !1656, !1657, !1658, !1659}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1326, file: !1327, line: 65, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1326, file: !1327, line: 66, baseType: !228, size: 128, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1326, file: !1327, line: 67, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1326, file: !1327, line: 68, baseType: !1336, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1327, line: 192, size: 704, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1337, file: !1327, line: 193, baseType: !228, size: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1337, file: !1327, line: 194, baseType: !443, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1337, file: !1327, line: 195, baseType: !1326, size: 512, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1337, file: !1327, line: 196, baseType: !1343, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1327, line: 156, size: 192, elements: !1346)
!1346 = !{!1347, !1352, !1357}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1345, file: !1327, line: 157, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!96, !1336, !1334}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1345, file: !1327, line: 158, baseType: !1353, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1330, !1336, !1334}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1345, file: !1327, line: 159, baseType: !1358, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!96, !1336, !1334, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1327, line: 148, size: 20736, elements: !1364)
!1364 = !{!1365, !1368, !1370, !1371, !1375}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1363, file: !1327, line: 149, baseType: !1366, size: 192)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 192, elements: !769)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1363, file: !1327, line: 150, baseType: !1369, size: 4096, offset: 192)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1367, size: 4096, elements: !1237)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1363, file: !1327, line: 151, baseType: !96, size: 32, offset: 4288)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1363, file: !1327, line: 152, baseType: !1372, size: 16384, offset: 4320)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 16384, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 2048)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1363, file: !1327, line: 153, baseType: !96, size: 32, offset: 20704)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1326, file: !1327, line: 69, baseType: !1377, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1327, line: 138, size: 448, elements: !1379)
!1379 = !{!1380, !1384, !1406, !1408, !1443, !1474, !1478}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1378, file: !1327, line: 139, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1334}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1378, file: !1327, line: 140, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1388, line: 230, size: 128, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1402}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1387, file: !1388, line: 231, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !1334, !1396, !1367}
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !203, line: 60, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !319, line: 73, baseType: !924)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1388, line: 30, size: 128, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1397, file: !1388, line: 31, baseType: !1330, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1397, file: !1388, line: 32, baseType: !1401, size: 16, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !203, line: 19, baseType: !104)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1387, file: !1388, line: 232, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!1394, !1334, !1396, !1330, !828}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1378, file: !1327, line: 141, baseType: !1407, size: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1378, file: !1327, line: 142, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1388, line: 84, size: 320, elements: !1413)
!1413 = !{!1414, !1415, !1419, !1440, !1441}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1412, file: !1388, line: 85, baseType: !1330, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1412, file: !1388, line: 86, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1401, !1334, !1396, !96}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1412, file: !1388, line: 88, baseType: !1420, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!1401, !1334, !1423, !96}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1388, line: 168, size: 448, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1435, !1436}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1424, file: !1388, line: 169, baseType: !1397, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1424, file: !1388, line: 170, baseType: !828, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1424, file: !1388, line: 171, baseType: !77, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1424, file: !1388, line: 172, baseType: !1430, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1394, !407, !1334, !1423, !1367, !1433, !828}
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !203, line: 46, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !319, line: 88, baseType: !267)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1424, file: !1388, line: 174, baseType: !1430, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1424, file: !1388, line: 176, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!96, !407, !1334, !1423, !373}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1412, file: !1388, line: 90, baseType: !1407, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1412, file: !1388, line: 91, baseType: !1442, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1378, file: !1327, line: 143, baseType: !1444, size: 64, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1447, !1334}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1450)
!1450 = !{!1451, !1452, !1456, !1460, !1466, !1470}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !18, line: 40, baseType: !17, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1449, file: !18, line: 41, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!577}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1449, file: !18, line: 42, baseType: !1457, size: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!77}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1449, file: !18, line: 43, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!1130, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1449, file: !18, line: 44, baseType: !1467, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1130}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1449, file: !18, line: 45, baseType: !1471, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !77}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1378, file: !1327, line: 144, baseType: !1475, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!1130, !1334}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1378, file: !1327, line: 145, baseType: !1479, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1334, !1482, !1489}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1484, line: 23, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 21, size: 32, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1485, file: !1484, line: 22, baseType: !1488, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !203, line: 32, baseType: !896)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1484, line: 28, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1484, line: 26, size: 32, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1491, file: !1484, line: 27, baseType: !1494, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !203, line: 33, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !319, line: 50, baseType: !7)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1326, file: !1327, line: 70, baseType: !1497, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1499, line: 123, size: 1024, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1643, !1644, !1645, !1646, !1647}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1498, file: !1499, line: 124, baseType: !202, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1498, file: !1499, line: 125, baseType: !202, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1498, file: !1499, line: 135, baseType: !1497, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1498, file: !1499, line: 136, baseType: !1330, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1498, file: !1499, line: 138, baseType: !174, size: 192, align: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1498, file: !1499, line: 140, baseType: !1130, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1498, file: !1499, line: 141, baseType: !7, size: 32, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 142, baseType: !1509, size: 256, offset: 512)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 142, size: 256, elements: !1510)
!1510 = !{!1511, !1566, !1570}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1509, file: !1499, line: 143, baseType: !1512, size: 192)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1499, line: 91, size: 192, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1512, file: !1499, line: 92, baseType: !177, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1512, file: !1499, line: 94, baseType: !170, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1512, file: !1499, line: 100, baseType: !1517, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1499, line: 180, size: 704, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1536, !1537, !1538, !1564, !1565}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1518, file: !1499, line: 182, baseType: !1497, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1518, file: !1499, line: 183, baseType: !7, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1518, file: !1499, line: 186, baseType: !1523, size: 192, offset: 128)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1524, line: 19, size: 192, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1534, !1535}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1523, file: !1524, line: 20, baseType: !1527, size: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1528, line: 292, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1531, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1527, file: !1528, line: 293, baseType: !443)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1527, file: !1528, line: 295, baseType: !1532, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !203, line: 148, baseType: !7)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1527, file: !1528, line: 296, baseType: !77, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1523, file: !1524, line: 21, baseType: !7, size: 32, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1523, file: !1524, line: 22, baseType: !7, size: 32, offset: 160)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1518, file: !1499, line: 187, baseType: !134, size: 32, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1518, file: !1499, line: 188, baseType: !134, size: 32, offset: 352)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1518, file: !1499, line: 189, baseType: !1539, size: 64, offset: 384)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1499, line: 168, size: 320, elements: !1541)
!1541 = !{!1542, !1548, !1552, !1556, !1560}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1540, file: !1499, line: 169, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!96, !1546, !1517}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !385, line: 539, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1540, file: !1499, line: 171, baseType: !1549, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!96, !1497, !1330, !1401}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1540, file: !1499, line: 173, baseType: !1553, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!96, !1497}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1540, file: !1499, line: 174, baseType: !1557, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!96, !1497, !1497, !1330}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1540, file: !1499, line: 176, baseType: !1561, size: 64, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!96, !1546, !1497, !1517}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1518, file: !1499, line: 192, baseType: !228, size: 128, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1518, file: !1499, line: 194, baseType: !712, size: 128, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1509, file: !1499, line: 144, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1499, line: 103, size: 64, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1567, file: !1499, line: 104, baseType: !1497, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1509, file: !1499, line: 145, baseType: !1571, size: 256)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1499, line: 107, size: 256, elements: !1572)
!1572 = !{!1573, !1638, !1641, !1642}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1571, file: !1499, line: 108, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1499, line: 217, size: 768, elements: !1577)
!1577 = !{!1578, !1598, !1602, !1606, !1611, !1615, !1619, !1623, !1624, !1625, !1626, !1634}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1576, file: !1499, line: 222, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!96, !1582}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1499, line: 197, size: 1088, elements: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1583, file: !1499, line: 199, baseType: !1497, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1583, file: !1499, line: 200, baseType: !407, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1583, file: !1499, line: 201, baseType: !1546, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1583, file: !1499, line: 202, baseType: !77, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1583, file: !1499, line: 205, baseType: !508, size: 192, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1583, file: !1499, line: 206, baseType: !508, size: 192, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1583, file: !1499, line: 207, baseType: !96, size: 32, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1583, file: !1499, line: 208, baseType: !228, size: 128, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1583, file: !1499, line: 209, baseType: !1367, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1583, file: !1499, line: 211, baseType: !828, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1583, file: !1499, line: 212, baseType: !577, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1583, file: !1499, line: 213, baseType: !577, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1583, file: !1499, line: 214, baseType: !402, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1576, file: !1499, line: 223, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1582}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1576, file: !1499, line: 236, baseType: !1603, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!96, !1546, !77}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1576, file: !1499, line: 238, baseType: !1607, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!77, !1546, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1576, file: !1499, line: 239, baseType: !1612, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!77, !1546, !77, !1610}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1576, file: !1499, line: 240, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !1546, !77}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1576, file: !1499, line: 242, baseType: !1620, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1394, !1582, !1367, !828, !1433}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1576, file: !1499, line: 252, baseType: !828, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1576, file: !1499, line: 259, baseType: !577, size: 8, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1576, file: !1499, line: 260, baseType: !1620, size: 64, offset: 576)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1576, file: !1499, line: 263, baseType: !1627, size: 64, offset: 640)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !1582, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1631, line: 52, baseType: !7)
!1631 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1499, line: 27, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1576, file: !1499, line: 266, baseType: !1635, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!96, !1582, !373}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1571, file: !1499, line: 109, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1499, line: 31, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1571, file: !1499, line: 110, baseType: !1433, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1571, file: !1499, line: 111, baseType: !1497, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1498, file: !1499, line: 148, baseType: !77, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1498, file: !1499, line: 154, baseType: !235, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1499, line: 156, baseType: !104, size: 16, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1498, file: !1499, line: 157, baseType: !1401, size: 16, offset: 912)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1498, file: !1499, line: 158, baseType: !1648, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1499, line: 32, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1326, file: !1327, line: 71, baseType: !1651, size: 32, offset: 448)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1652, line: 19, size: 32, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1651, file: !1652, line: 20, baseType: !197, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1326, file: !1327, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1326, file: !1327, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1326, file: !1327, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1326, file: !1327, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1326, file: !1327, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1323, file: !30, line: 463, baseType: !1661, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1323, file: !30, line: 465, baseType: !1663, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1323, file: !30, line: 467, baseType: !1330, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1323, file: !30, line: 468, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1677, !1682, !1686}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !30, line: 88, baseType: !1330, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1669, file: !30, line: 89, baseType: !1409, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1669, file: !30, line: 90, baseType: !1674, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!96, !1661, !1362}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1669, file: !30, line: 91, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1367, !1661, !1681, !1482, !1489}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1669, file: !30, line: 93, baseType: !1683, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !1661}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1669, file: !30, line: 95, baseType: !1687, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1690)
!1690 = !{!1691, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1689, file: !37, line: 279, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!96, !1661}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1689, file: !37, line: 280, baseType: !1683, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1689, file: !37, line: 281, baseType: !1692, size: 64, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1689, file: !37, line: 282, baseType: !1692, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1689, file: !37, line: 283, baseType: !1692, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1689, file: !37, line: 284, baseType: !1692, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1689, file: !37, line: 285, baseType: !1692, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1689, file: !37, line: 286, baseType: !1692, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1689, file: !37, line: 287, baseType: !1692, size: 64, offset: 512)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1689, file: !37, line: 288, baseType: !1692, size: 64, offset: 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1689, file: !37, line: 289, baseType: !1692, size: 64, offset: 640)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1689, file: !37, line: 290, baseType: !1692, size: 64, offset: 704)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1689, file: !37, line: 291, baseType: !1692, size: 64, offset: 768)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1689, file: !37, line: 292, baseType: !1692, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1689, file: !37, line: 293, baseType: !1692, size: 64, offset: 896)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1689, file: !37, line: 294, baseType: !1692, size: 64, offset: 960)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1689, file: !37, line: 295, baseType: !1692, size: 64, offset: 1024)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1689, file: !37, line: 296, baseType: !1692, size: 64, offset: 1088)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1689, file: !37, line: 297, baseType: !1692, size: 64, offset: 1152)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1689, file: !37, line: 298, baseType: !1692, size: 64, offset: 1216)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1689, file: !37, line: 299, baseType: !1692, size: 64, offset: 1280)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1689, file: !37, line: 300, baseType: !1692, size: 64, offset: 1344)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1689, file: !37, line: 301, baseType: !1692, size: 64, offset: 1408)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1323, file: !30, line: 470, baseType: !1718, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1720, line: 82, size: 1408, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1804, !1807, !1810}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1719, file: !1720, line: 83, baseType: !1330, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1719, file: !1720, line: 84, baseType: !1330, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1719, file: !1720, line: 85, baseType: !1661, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1719, file: !1720, line: 86, baseType: !1409, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1719, file: !1720, line: 87, baseType: !1409, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1719, file: !1720, line: 88, baseType: !1409, size: 64, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1719, file: !1720, line: 90, baseType: !1729, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!96, !1661, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1755, !1768, !1769, !1770, !1771, !1772, !1780, !1781, !1782, !1783, !1784, !1785}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1733, file: !24, line: 96, baseType: !1330, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1733, file: !24, line: 97, baseType: !1718, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1733, file: !24, line: 99, baseType: !83, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1733, file: !24, line: 100, baseType: !1330, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1733, file: !24, line: 102, baseType: !577, size: 8, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1733, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1733, file: !24, line: 105, baseType: !1742, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1745, line: 262, size: 1600, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1749, !1750, !1754}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1744, file: !1745, line: 263, baseType: !1748, size: 256)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !1233)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1744, file: !1745, line: 264, baseType: !1748, size: 256, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1744, file: !1745, line: 265, baseType: !1751, size: 1024, offset: 512)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !1752)
!1752 = !{!1753}
!1753 = !DISubrange(count: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1744, file: !1745, line: 266, baseType: !1130, size: 64, offset: 1536)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1733, file: !24, line: 106, baseType: !1756, size: 64, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1745, line: 210, size: 256, elements: !1759)
!1759 = !{!1760, !1764, !1766, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1758, file: !1745, line: 211, baseType: !1761, size: 72)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 72, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 9)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1758, file: !1745, line: 212, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1745, line: 14, baseType: !177)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1758, file: !1745, line: 213, baseType: !135, size: 32, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1758, file: !1745, line: 214, baseType: !135, size: 32, offset: 224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1733, file: !24, line: 108, baseType: !1692, size: 64, offset: 448)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1733, file: !24, line: 109, baseType: !1683, size: 64, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1733, file: !24, line: 110, baseType: !1692, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1733, file: !24, line: 111, baseType: !1683, size: 64, offset: 640)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1733, file: !24, line: 112, baseType: !1773, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!96, !1661, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1777, file: !37, line: 51, baseType: !96, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1733, file: !24, line: 113, baseType: !1692, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1733, file: !24, line: 114, baseType: !1409, size: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1733, file: !24, line: 115, baseType: !1409, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1733, file: !24, line: 117, baseType: !1687, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1733, file: !24, line: 118, baseType: !1683, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1733, file: !24, line: 120, baseType: !1786, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1719, file: !1720, line: 91, baseType: !1674, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1719, file: !1720, line: 92, baseType: !1692, size: 64, offset: 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1719, file: !1720, line: 93, baseType: !1683, size: 64, offset: 576)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1719, file: !1720, line: 94, baseType: !1692, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1719, file: !1720, line: 95, baseType: !1683, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1719, file: !1720, line: 97, baseType: !1692, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1719, file: !1720, line: 98, baseType: !1692, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1719, file: !1720, line: 100, baseType: !1773, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1719, file: !1720, line: 101, baseType: !1692, size: 64, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1719, file: !1720, line: 103, baseType: !1692, size: 64, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1719, file: !1720, line: 105, baseType: !1692, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1719, file: !1720, line: 107, baseType: !1687, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1719, file: !1720, line: 109, baseType: !1801, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1720, line: 109, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1719, file: !1720, line: 111, baseType: !1805, size: 64, offset: 1280)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1720, line: 111, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1719, file: !1720, line: 112, baseType: !1808, offset: 1344)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1809, line: 187, elements: !164)
!1809 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1719, file: !1720, line: 114, baseType: !577, size: 8, offset: 1344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1323, file: !30, line: 471, baseType: !1732, size: 64, offset: 832)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1323, file: !30, line: 473, baseType: !77, size: 64, offset: 896)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1323, file: !30, line: 475, baseType: !77, size: 64, offset: 960)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1323, file: !30, line: 480, baseType: !508, size: 192, offset: 1024)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1323, file: !30, line: 484, baseType: !1816, size: 576, offset: 1216)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1816, file: !30, line: 362, baseType: !228, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1816, file: !30, line: 363, baseType: !228, size: 128, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1816, file: !30, line: 364, baseType: !228, size: 128, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1816, file: !30, line: 365, baseType: !228, size: 128, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1816, file: !30, line: 366, baseType: !577, size: 8, offset: 512)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1816, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1323, file: !30, line: 485, baseType: !1825, size: 2304, offset: 1792)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1922, !1926}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1825, file: !37, line: 566, baseType: !1776, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1825, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1825, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1825, file: !37, line: 569, baseType: !577, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1825, file: !37, line: 570, baseType: !577, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1825, file: !37, line: 571, baseType: !577, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1825, file: !37, line: 572, baseType: !577, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1825, file: !37, line: 573, baseType: !577, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1825, file: !37, line: 574, baseType: !577, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1825, file: !37, line: 575, baseType: !577, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1825, file: !37, line: 576, baseType: !577, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1825, file: !37, line: 577, baseType: !134, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1825, file: !37, line: 578, baseType: !443, offset: 96)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1825, file: !37, line: 580, baseType: !228, size: 128, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1825, file: !37, line: 581, baseType: !554, size: 192, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1825, file: !37, line: 582, baseType: !1843, size: 64, offset: 448)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1845, line: 43, size: 1472, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1854, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1844, file: !1845, line: 44, baseType: !1330, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1844, file: !1845, line: 45, baseType: !96, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1844, file: !1845, line: 46, baseType: !228, size: 128, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1844, file: !1845, line: 47, baseType: !443, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1844, file: !1845, line: 48, baseType: !1852, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1844, file: !1845, line: 49, baseType: !1855, size: 320, offset: 320)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1856, line: 11, size: 320, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860, !1865}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1855, file: !1856, line: 16, baseType: !705, size: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1855, file: !1856, line: 17, baseType: !177, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1855, file: !1856, line: 18, baseType: !1861, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 19, baseType: !134, size: 32, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1844, file: !1845, line: 50, baseType: !177, size: 64, offset: 640)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1844, file: !1845, line: 51, baseType: !283, size: 64, offset: 704)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1844, file: !1845, line: 52, baseType: !283, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1844, file: !1845, line: 53, baseType: !283, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1844, file: !1845, line: 54, baseType: !283, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1844, file: !1845, line: 55, baseType: !283, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1844, file: !1845, line: 56, baseType: !177, size: 64, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1844, file: !1845, line: 57, baseType: !177, size: 64, offset: 1088)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1844, file: !1845, line: 58, baseType: !177, size: 64, offset: 1152)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1844, file: !1845, line: 59, baseType: !177, size: 64, offset: 1216)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1844, file: !1845, line: 60, baseType: !177, size: 64, offset: 1280)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1844, file: !1845, line: 61, baseType: !1661, size: 64, offset: 1344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1844, file: !1845, line: 62, baseType: !577, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1844, file: !1845, line: 63, baseType: !577, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1825, file: !37, line: 583, baseType: !577, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1825, file: !37, line: 584, baseType: !577, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1825, file: !37, line: 585, baseType: !577, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1825, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1825, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1825, file: !37, line: 592, baseType: !275, size: 512, offset: 576)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1825, file: !37, line: 593, baseType: !235, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1825, file: !37, line: 594, baseType: !583, size: 256, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1825, file: !37, line: 595, baseType: !712, size: 128, offset: 1408)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1825, file: !37, line: 596, baseType: !1852, size: 64, offset: 1536)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1825, file: !37, line: 597, baseType: !202, size: 32, offset: 1600)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1825, file: !37, line: 598, baseType: !202, size: 32, offset: 1632)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1825, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1825, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1825, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1825, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1825, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1825, file: !37, line: 604, baseType: !577, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1825, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1825, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1825, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1825, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1825, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1825, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1825, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1825, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1825, file: !37, line: 613, baseType: !96, size: 32, offset: 1792)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1825, file: !37, line: 614, baseType: !96, size: 32, offset: 1824)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1825, file: !37, line: 615, baseType: !235, size: 64, offset: 1856)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1825, file: !37, line: 616, baseType: !235, size: 64, offset: 1920)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1825, file: !37, line: 617, baseType: !235, size: 64, offset: 1984)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1825, file: !37, line: 618, baseType: !235, size: 64, offset: 2048)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1825, file: !37, line: 620, baseType: !1913, size: 64, offset: 2112)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1914, file: !37, line: 537, baseType: !443)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1914, file: !37, line: 538, baseType: !7, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1914, file: !37, line: 540, baseType: !228, size: 128, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1914, file: !37, line: 543, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1825, file: !37, line: 621, baseType: !1923, size: 64, offset: 2176)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !1661, !665}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1825, file: !37, line: 622, baseType: !1927, size: 64, offset: 2240)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1323, file: !30, line: 486, baseType: !1930, size: 64, offset: 4096)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1939, !1940, !1941}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1931, file: !37, line: 643, baseType: !1689, size: 1472)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1931, file: !37, line: 644, baseType: !1692, size: 64, offset: 1472)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1931, file: !37, line: 645, baseType: !1936, size: 64, offset: 1536)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1661, !577}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1931, file: !37, line: 646, baseType: !1692, size: 64, offset: 1600)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1931, file: !37, line: 647, baseType: !1683, size: 64, offset: 1664)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1931, file: !37, line: 648, baseType: !1683, size: 64, offset: 1728)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1323, file: !30, line: 493, baseType: !1943, size: 64, offset: 4160)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1945)
!1945 = !{!1946, !1947, !1948, !2122, !2123, !2124, !2125, !2126, !2127, !2130, !2131, !2132, !2133, !2134, !2135, !2136}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1944, file: !51, line: 163, baseType: !228, size: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1944, file: !51, line: 164, baseType: !1330, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1944, file: !51, line: 165, baseType: !1949, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1952)
!1952 = !{!1953, !2071, !2082, !2087, !2091, !2099, !2103, !2107, !2114, !2118}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1951, file: !51, line: 106, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!96, !1943, !1957, !50}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1959, line: 51, size: 1344, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962, !1964, !1965, !2055, !2064, !2065, !2066, !2067, !2068, !2069, !2070}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1958, file: !1959, line: 52, baseType: !1330, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1958, file: !1959, line: 53, baseType: !1963, size: 32, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1959, line: 28, baseType: !134)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1958, file: !1959, line: 54, baseType: !1330, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1958, file: !1959, line: 55, baseType: !1966, size: 192, offset: 192)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1967, line: 17, size: 192, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1968 = !{!1969, !1971, !2054}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1966, file: !1967, line: 18, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1966, file: !1967, line: 19, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1967, line: 110, size: 1152, elements: !1975)
!1975 = !{!1976, !1980, !1984, !1990, !1996, !2000, !2004, !2009, !2013, !2014, !2018, !2022, !2026, !2037, !2038, !2039, !2040, !2050}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1974, file: !1967, line: 111, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1970, !1970}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1974, file: !1967, line: 112, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1970}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1974, file: !1967, line: 113, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!577, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1974, file: !1967, line: 114, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1130, !1988, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1974, file: !1967, line: 116, baseType: !1997, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!577, !1988, !1330}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1974, file: !1967, line: 118, baseType: !2001, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!96, !1988, !1330, !7, !77, !828}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1974, file: !1967, line: 123, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!96, !1988, !1330, !2008, !828}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1974, file: !1967, line: 126, baseType: !2010, size: 64, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1330, !1988}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1974, file: !1967, line: 127, baseType: !2010, size: 64, offset: 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1974, file: !1967, line: 128, baseType: !2015, size: 64, offset: 576)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1970, !1988}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1974, file: !1967, line: 130, baseType: !2019, size: 64, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1970, !1988, !1970}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1974, file: !1967, line: 133, baseType: !2023, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1970, !1988, !1330}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1974, file: !1967, line: 135, baseType: !2027, size: 64, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!96, !1988, !1330, !1330, !7, !7, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1967, line: 43, size: 640, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2031, file: !1967, line: 44, baseType: !1970, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2031, file: !1967, line: 45, baseType: !7, size: 32, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2031, file: !1967, line: 46, baseType: !2036, size: 512, offset: 128)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 512, elements: !313)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1974, file: !1967, line: 140, baseType: !2019, size: 64, offset: 832)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1974, file: !1967, line: 143, baseType: !2015, size: 64, offset: 896)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1974, file: !1967, line: 145, baseType: !1977, size: 64, offset: 960)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1974, file: !1967, line: 146, baseType: !2041, size: 64, offset: 1024)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!96, !1988, !2044}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1967, line: 29, size: 128, elements: !2046)
!2046 = !{!2047, !2048, !2049}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2045, file: !1967, line: 30, baseType: !7, size: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2045, file: !1967, line: 31, baseType: !7, size: 32, offset: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2045, file: !1967, line: 32, baseType: !1988, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1974, file: !1967, line: 148, baseType: !2051, size: 64, offset: 1088)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!96, !1988, !1661}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1966, file: !1967, line: 20, baseType: !1661, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1958, file: !1959, line: 57, baseType: !2056, size: 64, offset: 384)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1959, line: 31, size: 704, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2057, file: !1959, line: 32, baseType: !1367, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2057, file: !1959, line: 33, baseType: !96, size: 32, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2057, file: !1959, line: 34, baseType: !77, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2057, file: !1959, line: 35, baseType: !2056, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2057, file: !1959, line: 43, baseType: !1424, size: 448, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1958, file: !1959, line: 58, baseType: !2056, size: 64, offset: 448)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1958, file: !1959, line: 59, baseType: !1957, size: 64, offset: 512)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1958, file: !1959, line: 60, baseType: !1957, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1958, file: !1959, line: 61, baseType: !1957, size: 64, offset: 640)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1958, file: !1959, line: 63, baseType: !1326, size: 512, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1958, file: !1959, line: 65, baseType: !177, size: 64, offset: 1216)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1958, file: !1959, line: 66, baseType: !77, size: 64, offset: 1280)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1951, file: !51, line: 108, baseType: !2072, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!96, !1943, !2075, !50}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2077)
!2077 = !{!2078, !2079, !2080}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2076, file: !51, line: 64, baseType: !1970, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2076, file: !51, line: 65, baseType: !96, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2076, file: !51, line: 66, baseType: !2081, size: 512, offset: 96)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 512, elements: !789)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1951, file: !51, line: 110, baseType: !2083, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!96, !1943, !7, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !203, line: 164, baseType: !177)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1951, file: !51, line: 111, baseType: !2088, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !1943, !7}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1951, file: !51, line: 112, baseType: !2092, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!96, !1943, !1957, !2095, !7, !2097, !2098}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1951, file: !51, line: 117, baseType: !2100, size: 64, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!96, !1943, !7, !7, !77}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1951, file: !51, line: 119, baseType: !2104, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !1943, !7, !7}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1951, file: !51, line: 121, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!96, !1943, !2111, !577}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2113, line: 11, flags: DIFlagFwdDecl)
!2113 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1951, file: !51, line: 122, baseType: !2115, size: 64, offset: 512)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{null, !1943, !2111}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1951, file: !51, line: 123, baseType: !2119, size: 64, offset: 576)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!96, !1943, !2075, !2097, !2098}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1944, file: !51, line: 166, baseType: !77, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1944, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1944, file: !51, line: 171, baseType: !1970, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1944, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1944, file: !51, line: 173, baseType: !2128, size: 64, offset: 512)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1944, file: !51, line: 175, baseType: !1943, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1944, file: !51, line: 182, baseType: !2086, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1944, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1944, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1944, file: !51, line: 185, baseType: !1527, size: 128, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1944, file: !51, line: 186, baseType: !508, size: 192, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1944, file: !51, line: 187, baseType: !2137, offset: 1088)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !597)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1323, file: !30, line: 499, baseType: !228, size: 128, offset: 4224)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1323, file: !30, line: 502, baseType: !2140, size: 64, offset: 4352)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2142)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1323, file: !30, line: 504, baseType: !2144, size: 64, offset: 4416)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1323, file: !30, line: 505, baseType: !235, size: 64, offset: 4480)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1323, file: !30, line: 510, baseType: !235, size: 64, offset: 4544)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1323, file: !30, line: 511, baseType: !2148, size: 64, offset: 4608)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1323, file: !30, line: 513, baseType: !2152, size: 64, offset: 4672)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2153, file: !30, line: 293, baseType: !7, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2153, file: !30, line: 294, baseType: !177, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1323, file: !30, line: 515, baseType: !228, size: 128, offset: 4736)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1323, file: !30, line: 526, baseType: !2159, offset: 4864)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2160, line: 5, elements: !164)
!2160 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1323, file: !30, line: 528, baseType: !1957, size: 64, offset: 4864)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1323, file: !30, line: 529, baseType: !1970, size: 64, offset: 4928)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1323, file: !30, line: 534, baseType: !2164, size: 32, offset: 4992)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 16, baseType: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !203, line: 13, baseType: !134)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1323, file: !30, line: 535, baseType: !134, size: 32, offset: 5024)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1323, file: !30, line: 537, baseType: !443, offset: 5056)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1323, file: !30, line: 538, baseType: !228, size: 128, offset: 5056)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1323, file: !30, line: 540, baseType: !2170, size: 64, offset: 5184)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2172, line: 54, size: 960, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2184, !2188, !2189, !2190, !2191, !2195, !2199, !2200}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2171, file: !2172, line: 55, baseType: !1330, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2171, file: !2172, line: 56, baseType: !83, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2171, file: !2172, line: 58, baseType: !1409, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2171, file: !2172, line: 59, baseType: !1409, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2171, file: !2172, line: 60, baseType: !1334, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2171, file: !2172, line: 62, baseType: !1674, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2171, file: !2172, line: 63, baseType: !2181, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!1367, !1661, !1681}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2171, file: !2172, line: 65, baseType: !2185, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !2170}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2171, file: !2172, line: 66, baseType: !1683, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2171, file: !2172, line: 68, baseType: !1692, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2171, file: !2172, line: 70, baseType: !1447, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2171, file: !2172, line: 71, baseType: !2192, size: 64, offset: 704)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!1130, !1661}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2171, file: !2172, line: 73, baseType: !2196, size: 64, offset: 768)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !1661, !1482, !1489}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2171, file: !2172, line: 75, baseType: !1687, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2171, file: !2172, line: 77, baseType: !1805, size: 64, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1323, file: !30, line: 541, baseType: !1409, size: 64, offset: 5248)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1323, file: !30, line: 543, baseType: !1683, size: 64, offset: 5312)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1323, file: !30, line: 544, baseType: !2204, size: 64, offset: 5376)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1323, file: !30, line: 545, baseType: !2207, size: 64, offset: 5440)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1323, file: !30, line: 547, baseType: !577, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1323, file: !30, line: 548, baseType: !577, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1323, file: !30, line: 549, baseType: !577, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1323, file: !30, line: 550, baseType: !577, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !79, file: !80, line: 709, baseType: !177, size: 64, offset: 6336)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !79, file: !80, line: 713, baseType: !96, size: 32, offset: 6400)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !79, file: !80, line: 714, baseType: !2216, size: 384, offset: 6432)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 384, elements: !2217)
!2217 = !{!2218}
!2218 = !DISubrange(count: 48)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !79, file: !80, line: 715, baseType: !554, size: 192, offset: 6848)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !79, file: !80, line: 717, baseType: !508, size: 192, offset: 7040)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !79, file: !80, line: 718, baseType: !228, size: 128, offset: 7232)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !79, file: !80, line: 720, baseType: !2223, size: 64, offset: 7360)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !80, line: 618, size: 832, elements: !2225)
!2225 = !{!2226, !2230, !2231, !2235, !2236, !2237, !2238, !2242, !2243, !2246, !2247, !2250, !2253}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2224, file: !80, line: 619, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!96, !78}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2224, file: !80, line: 621, baseType: !2227, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2224, file: !80, line: 622, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !78, !96}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2224, file: !80, line: 623, baseType: !2227, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2224, file: !80, line: 624, baseType: !2232, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2224, file: !80, line: 625, baseType: !2227, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2224, file: !80, line: 627, baseType: !2239, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !78}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2224, file: !80, line: 628, baseType: !2239, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2224, file: !80, line: 631, baseType: !2244, size: 64, offset: 512)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !80, line: 631, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2224, file: !80, line: 632, baseType: !2244, size: 64, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2224, file: !80, line: 633, baseType: !2248, size: 64, offset: 640)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !80, line: 633, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2224, file: !80, line: 634, baseType: !2251, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !80, line: 634, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2224, file: !80, line: 635, baseType: !2251, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !79, file: !80, line: 721, baseType: !2255, size: 64, offset: 7424)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2257)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !80, line: 664, size: 192, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !80, line: 665, baseType: !235, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2257, file: !80, line: 666, baseType: !96, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2257, file: !80, line: 667, baseType: !116, size: 16, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2257, file: !80, line: 668, baseType: !116, size: 16, offset: 112)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2257, file: !80, line: 669, baseType: !116, size: 16, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2257, file: !80, line: 670, baseType: !116, size: 16, offset: 144)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !79, file: !80, line: 723, baseType: !1943, size: 64, offset: 7488)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2268, line: 351, size: 10880, elements: !2269)
!2268 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2289, !2306, !2380, !2409, !2433, !2454, !2460, !2469, !2501, !2515, !2537, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2267, file: !2268, line: 352, baseType: !96, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2267, file: !2268, line: 353, baseType: !2272, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !2273, line: 424, baseType: !77)
!2273 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2267, file: !2268, line: 354, baseType: !1966, size: 192, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2267, file: !2268, line: 355, baseType: !2266, size: 64, offset: 320)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2267, file: !2268, line: 356, baseType: !228, size: 128, offset: 384)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2267, file: !2268, line: 357, baseType: !228, size: 128, offset: 512)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2267, file: !2268, line: 358, baseType: !228, size: 128, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2267, file: !2268, line: 359, baseType: !228, size: 128, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2267, file: !2268, line: 360, baseType: !2281, size: 32, offset: 896)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2268, line: 179, size: 32, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2281, file: !2268, line: 180, baseType: !134, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2281, file: !2268, line: 181, baseType: !134, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2281, file: !2268, line: 182, baseType: !134, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2281, file: !2268, line: 183, baseType: !134, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2281, file: !2268, line: 184, baseType: !134, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2281, file: !2268, line: 185, baseType: !134, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !2268, line: 361, baseType: !2290, size: 32, offset: 928)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2268, line: 190, size: 32, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2290, file: !2268, line: 191, baseType: !134, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2290, file: !2268, line: 192, baseType: !134, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2290, file: !2268, line: 193, baseType: !134, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2290, file: !2268, line: 194, baseType: !134, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2290, file: !2268, line: 195, baseType: !134, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2290, file: !2268, line: 196, baseType: !134, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2290, file: !2268, line: 197, baseType: !134, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2290, file: !2268, line: 198, baseType: !134, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2290, file: !2268, line: 199, baseType: !134, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2290, file: !2268, line: 200, baseType: !134, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2290, file: !2268, line: 201, baseType: !134, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2290, file: !2268, line: 202, baseType: !134, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2290, file: !2268, line: 203, baseType: !134, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2290, file: !2268, line: 204, baseType: !134, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2267, file: !2268, line: 362, baseType: !2307, size: 960, offset: 960)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2268, line: 234, size: 960, elements: !2308)
!2308 = !{!2309, !2311, !2318, !2320, !2321, !2322, !2327, !2330}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2307, file: !2268, line: 235, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2268, line: 217, baseType: !938)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2307, file: !2268, line: 236, baseType: !2312, size: 32, offset: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2268, line: 227, size: 32, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2312, file: !2268, line: 228, baseType: !134, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2312, file: !2268, line: 229, baseType: !134, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2312, file: !2268, line: 230, baseType: !134, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2312, file: !2268, line: 231, baseType: !134, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2307, file: !2268, line: 237, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2268, line: 218, baseType: !235)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2307, file: !2268, line: 238, baseType: !1367, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2307, file: !2268, line: 239, baseType: !228, size: 128, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2307, file: !2268, line: 240, baseType: !2323, size: 320, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2268, line: 219, baseType: !2324)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 320, elements: !2325)
!2325 = !{!2326}
!2326 = !DISubrange(count: 40)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2307, file: !2268, line: 241, baseType: !2328, size: 160, offset: 704)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2268, line: 220, baseType: !2329)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 160, elements: !1204)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2307, file: !2268, line: 242, baseType: !2331, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !2273, line: 899, size: 192, elements: !2333)
!2333 = !{!2334, !2336, !2341, !2347, !2354, !2360, !2366, !2374}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2332, file: !2273, line: 900, baseType: !2335, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !2273, line: 635, baseType: !134)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2332, file: !2273, line: 904, baseType: !2337, size: 128)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 901, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2337, file: !2273, line: 902, baseType: !2335, size: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2337, file: !2273, line: 903, baseType: !235, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2332, file: !2273, line: 910, baseType: !2342, size: 128)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 906, size: 128, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2342, file: !2273, line: 907, baseType: !2335, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2342, file: !2273, line: 908, baseType: !134, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2342, file: !2273, line: 909, baseType: !1367, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2332, file: !2273, line: 916, baseType: !2348, size: 128)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 912, size: 128, elements: !2349)
!2349 = !{!2350, !2351, !2352}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2348, file: !2273, line: 913, baseType: !2335, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2348, file: !2273, line: 914, baseType: !134, size: 32, offset: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2348, file: !2273, line: 915, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2332, file: !2273, line: 922, baseType: !2355, size: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 918, size: 128, elements: !2356)
!2356 = !{!2357, !2358, !2359}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2355, file: !2273, line: 919, baseType: !2335, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2355, file: !2273, line: 920, baseType: !134, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2355, file: !2273, line: 921, baseType: !2331, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2332, file: !2273, line: 928, baseType: !2361, size: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 924, size: 128, elements: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2361, file: !2273, line: 925, baseType: !2335, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2361, file: !2273, line: 926, baseType: !2335, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2361, file: !2273, line: 927, baseType: !2272, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2332, file: !2273, line: 935, baseType: !2367, size: 192)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 930, size: 192, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2373}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2367, file: !2273, line: 931, baseType: !2335, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2367, file: !2273, line: 932, baseType: !134, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2367, file: !2273, line: 933, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !2273, line: 128, baseType: !235)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2367, file: !2273, line: 934, baseType: !134, size: 32, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2332, file: !2273, line: 941, baseType: !2375, size: 96)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2332, file: !2273, line: 937, size: 96, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2375, file: !2273, line: 938, baseType: !2335, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2375, file: !2273, line: 939, baseType: !134, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2375, file: !2273, line: 940, baseType: !134, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2267, file: !2268, line: 363, baseType: !2381, size: 1344, offset: 1920)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2268, line: 275, size: 1344, elements: !2382)
!2382 = !{!2383, !2384, !2394}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2381, file: !2268, line: 276, baseType: !96, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !2268, line: 277, baseType: !2385, size: 32, offset: 32)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2268, line: 254, size: 32, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2385, file: !2268, line: 255, baseType: !134, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2385, file: !2268, line: 256, baseType: !134, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2385, file: !2268, line: 257, baseType: !134, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2385, file: !2268, line: 258, baseType: !134, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2385, file: !2268, line: 259, baseType: !134, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2385, file: !2268, line: 260, baseType: !134, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2385, file: !2268, line: 261, baseType: !134, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2381, file: !2268, line: 278, baseType: !2395, size: 1280, offset: 64)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, size: 1280, elements: !2407)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2268, line: 264, size: 256, elements: !2397)
!2397 = !{!2398, !2404, !2405, !2406}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2396, file: !2268, line: 269, baseType: !2399, size: 8)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2396, file: !2268, line: 265, size: 8, elements: !2400)
!2400 = !{!2401, !2402, !2403}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2399, file: !2268, line: 266, baseType: !119, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2399, file: !2268, line: 267, baseType: !119, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2399, file: !2268, line: 268, baseType: !119, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2396, file: !2268, line: 270, baseType: !96, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2396, file: !2268, line: 271, baseType: !96, size: 32, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2396, file: !2268, line: 272, baseType: !228, size: 128, offset: 128)
!2407 = !{!2408}
!2408 = !DISubrange(count: 5)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2267, file: !2268, line: 364, baseType: !2410, size: 640, offset: 3264)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2268, line: 315, size: 640, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2421, !2430, !2431, !2432}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2410, file: !2268, line: 316, baseType: !2272, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2410, file: !2268, line: 317, baseType: !235, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2410, file: !2268, line: 318, baseType: !235, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2410, file: !2268, line: 319, baseType: !228, size: 128, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2410, file: !2268, line: 320, baseType: !2417, size: 8, offset: 320)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2268, line: 305, size: 8, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2417, file: !2268, line: 306, baseType: !119, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2417, file: !2268, line: 307, baseType: !119, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2410, file: !2268, line: 321, baseType: !2422, size: 128, offset: 384)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2268, line: 310, size: 128, elements: !2423)
!2423 = !{!2424, !2429}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2422, file: !2268, line: 311, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2422, file: !2268, line: 312, baseType: !1661, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2410, file: !2268, line: 322, baseType: !1843, size: 64, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2410, file: !2268, line: 323, baseType: !96, size: 32, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2410, file: !2268, line: 324, baseType: !96, size: 32, offset: 608)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2267, file: !2268, line: 365, baseType: !2434, size: 192, offset: 3904)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2268, line: 297, size: 192, elements: !2435)
!2435 = !{!2436, !2437, !2441, !2442}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2434, file: !2268, line: 298, baseType: !96, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2434, file: !2268, line: 299, baseType: !2438, size: 8, offset: 32)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2268, line: 283, size: 8, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2438, file: !2268, line: 284, baseType: !119, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2434, file: !2268, line: 300, baseType: !96, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2434, file: !2268, line: 301, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2268, line: 287, size: 64, elements: !2445)
!2445 = !{!2446, !2451, !2452, !2453}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2444, file: !2268, line: 291, baseType: !2447, size: 8)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2444, file: !2268, line: 288, size: 8, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2447, file: !2268, line: 289, baseType: !119, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2447, file: !2268, line: 290, baseType: !119, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2444, file: !2268, line: 292, baseType: !119, size: 8, offset: 8)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2444, file: !2268, line: 293, baseType: !119, size: 8, offset: 16)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2444, file: !2268, line: 294, baseType: !96, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2267, file: !2268, line: 366, baseType: !2455, size: 64, offset: 4096)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2268, line: 209, size: 64, elements: !2456)
!2456 = !{!2457}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2455, file: !2268, line: 210, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2268, line: 84, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2267, file: !2268, line: 367, baseType: !2461, size: 384, offset: 4160)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2268, line: 341, size: 384, elements: !2462)
!2462 = !{!2463, !2466, !2467, !2468}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2461, file: !2268, line: 342, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2461, file: !2268, line: 343, baseType: !228, size: 128, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2461, file: !2268, line: 344, baseType: !2464, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2461, file: !2268, line: 345, baseType: !228, size: 128, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2267, file: !2268, line: 368, baseType: !2470, size: 64, offset: 4544)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2268, line: 122, size: 1216, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2480, !2484, !2488, !2489, !2490}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2471, file: !2268, line: 123, baseType: !1756, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2471, file: !2268, line: 124, baseType: !228, size: 128, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2471, file: !2268, line: 125, baseType: !2476, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!577, !1330, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2471, file: !2268, line: 126, baseType: !2481, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!96, !2266, !1756}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2471, file: !2268, line: 127, baseType: !2485, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{null, !2266}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2471, file: !2268, line: 128, baseType: !1683, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2471, file: !2268, line: 129, baseType: !1683, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2471, file: !2268, line: 130, baseType: !2491, size: 704, offset: 512)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2268, line: 108, size: 704, elements: !2492)
!2492 = !{!2493, !2494, !2498, !2499, !2500}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2491, file: !2268, line: 109, baseType: !1326, size: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2491, file: !2268, line: 110, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!96, !2266}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2491, file: !2268, line: 111, baseType: !2485, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2491, file: !2268, line: 112, baseType: !577, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2491, file: !2268, line: 113, baseType: !577, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2267, file: !2268, line: 369, baseType: !2502, size: 64, offset: 4608)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2268, line: 138, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2510, !2514}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2503, file: !2268, line: 139, baseType: !2266, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2503, file: !2268, line: 140, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!96, !2266, !134}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2503, file: !2268, line: 141, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2266, !134}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2503, file: !2268, line: 142, baseType: !2485, size: 64, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2267, file: !2268, line: 370, baseType: !2516, size: 64, offset: 4672)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2268, line: 162, size: 2816, elements: !2518)
!2518 = !{!2519, !2523, !2524, !2525, !2526, !2535, !2536}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2517, file: !2268, line: 163, baseType: !2520, size: 640)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, elements: !2521)
!2521 = !{!2522}
!2522 = !DISubrange(count: 80)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2517, file: !2268, line: 164, baseType: !2520, size: 640, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2517, file: !2268, line: 165, baseType: !1756, size: 64, offset: 1280)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2268, line: 166, baseType: !7, size: 32, offset: 1344)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2517, file: !2268, line: 167, baseType: !2527, size: 192, offset: 1408)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2268, line: 154, size: 192, elements: !2528)
!2528 = !{!2529, !2531, !2533}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2527, file: !2268, line: 155, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2268, line: 150, baseType: !2495)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2527, file: !2268, line: 156, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2268, line: 151, baseType: !2495)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2527, file: !2268, line: 157, baseType: !2534, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2268, line: 152, baseType: !2511)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2517, file: !2268, line: 168, baseType: !1733, size: 1152, offset: 1600)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2517, file: !2268, line: 169, baseType: !83, size: 64, offset: 2752)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2267, file: !2268, line: 371, baseType: !2538, size: 64, offset: 4736)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2540)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2268, line: 348, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2267, file: !2268, line: 372, baseType: !77, size: 64, offset: 4800)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2267, file: !2268, line: 373, baseType: !1323, size: 5568, offset: 4864)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2267, file: !2268, line: 374, baseType: !7, size: 32, offset: 10432)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2267, file: !2268, line: 375, baseType: !7, size: 32, offset: 10464)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2267, file: !2268, line: 376, baseType: !228, size: 128, offset: 10496)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2267, file: !2268, line: 377, baseType: !508, size: 192, offset: 10624)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2267, file: !2268, line: 378, baseType: !2485, size: 64, offset: 10816)
!2548 = !{!2549, !2554, !2559, !2564, !0, !2569}
!2549 = !DIGlobalVariableExpression(var: !2550, expr: !DIExpression())
!2550 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author175", scope: !2, file: !3, line: 463, type: !2551, isLocal: true, isDefinition: true, align: 8)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 416, elements: !2552)
!2552 = !{!2553}
!2553 = !DISubrange(count: 52)
!2554 = !DIGlobalVariableExpression(var: !2555, expr: !DIExpression())
!2555 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description176", scope: !2, file: !3, line: 464, type: !2556, isLocal: true, isDefinition: true, align: 8)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 464, elements: !2557)
!2557 = !{!2558}
!2558 = !DISubrange(count: 58)
!2559 = !DIGlobalVariableExpression(var: !2560, expr: !DIExpression())
!2560 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file177", scope: !2, file: !3, line: 465, type: !2561, isLocal: true, isDefinition: true, align: 8)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 264, elements: !2562)
!2562 = !{!2563}
!2563 = !DISubrange(count: 33)
!2564 = !DIGlobalVariableExpression(var: !2565, expr: !DIExpression())
!2565 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license178", scope: !2, file: !3, line: 465, type: !2566, isLocal: true, isDefinition: true, align: 8)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 184, elements: !2567)
!2567 = !{!2568}
!2568 = !DISubrange(count: 23)
!2569 = !DIGlobalVariableExpression(var: !2570, expr: !DIExpression())
!2570 = distinct !DIGlobalVariable(name: "i2c_parent_lock_ops", scope: !2, file: !3, line: 276, type: !139, isLocal: true, isDefinition: true)
!2571 = !{i32 7, !"Dwarf Version", i32 4}
!2572 = !{i32 2, !"Debug Info Version", i32 3}
!2573 = !{i32 1, !"wchar_size", i32 2}
!2574 = !{i32 1, !"Code Model", i32 2}
!2575 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2576 = distinct !DISubprogram(name: "i2c_root_adapter", scope: !3, file: !3, line: 213, type: !2577, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!78, !1661}
!2579 = !DILocalVariable(name: "dev", arg: 1, scope: !2576, file: !3, line: 213, type: !1661)
!2580 = !DILocation(line: 213, column: 53, scope: !2576)
!2581 = !DILocalVariable(name: "i2c", scope: !2576, file: !3, line: 215, type: !1661)
!2582 = !DILocation(line: 215, column: 17, scope: !2576)
!2583 = !DILocalVariable(name: "i2c_root", scope: !2576, file: !3, line: 216, type: !78)
!2584 = !DILocation(line: 216, column: 22, scope: !2576)
!2585 = !DILocation(line: 223, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 223, column: 2)
!2587 = !DILocation(line: 223, column: 11, scope: !2586)
!2588 = !DILocation(line: 223, column: 7, scope: !2586)
!2589 = !DILocation(line: 223, column: 18, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 223, column: 2)
!2591 = !DILocation(line: 223, column: 2, scope: !2586)
!2592 = !DILocation(line: 224, column: 7, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 224, column: 7)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 223, column: 42)
!2595 = !DILocation(line: 224, column: 12, scope: !2593)
!2596 = !DILocation(line: 224, column: 17, scope: !2593)
!2597 = !DILocation(line: 224, column: 7, scope: !2594)
!2598 = !DILocation(line: 225, column: 4, scope: !2593)
!2599 = !DILocation(line: 226, column: 2, scope: !2594)
!2600 = !DILocation(line: 223, column: 29, scope: !2590)
!2601 = !DILocation(line: 223, column: 34, scope: !2590)
!2602 = !DILocation(line: 223, column: 27, scope: !2590)
!2603 = !DILocation(line: 223, column: 2, scope: !2590)
!2604 = distinct !{!2604, !2591, !2605}
!2605 = !DILocation(line: 226, column: 2, scope: !2586)
!2606 = !DILocation(line: 227, column: 7, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 227, column: 6)
!2608 = !DILocation(line: 227, column: 6, scope: !2576)
!2609 = !DILocation(line: 228, column: 3, scope: !2607)
!2610 = !DILocalVariable(name: "__mptr", scope: !2611, file: !3, line: 231, type: !77)
!2611 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 231, column: 13)
!2612 = !DILocation(line: 231, column: 13, scope: !2611)
!2613 = !DILocation(line: 231, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 231, column: 13)
!2615 = !DILocation(line: 231, column: 11, scope: !2576)
!2616 = !DILocation(line: 232, column: 2, scope: !2576)
!2617 = !DILocation(line: 232, column: 35, scope: !2576)
!2618 = !DILocation(line: 232, column: 9, scope: !2576)
!2619 = !DILocation(line: 233, column: 40, scope: !2576)
!2620 = !DILocation(line: 233, column: 14, scope: !2576)
!2621 = !DILocation(line: 233, column: 12, scope: !2576)
!2622 = distinct !{!2622, !2616, !2623}
!2623 = !DILocation(line: 233, column: 48, scope: !2576)
!2624 = !DILocation(line: 235, column: 9, scope: !2576)
!2625 = !DILocation(line: 235, column: 2, scope: !2576)
!2626 = !DILocation(line: 236, column: 1, scope: !2576)
!2627 = distinct !DISubprogram(name: "i2c_parent_is_i2c_adapter", scope: !80, file: !80, line: 738, type: !2628, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!78, !2630}
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!2632 = !DILocalVariable(name: "adapter", arg: 1, scope: !2627, file: !80, line: 738, type: !2630)
!2633 = !DILocation(line: 738, column: 53, scope: !2627)
!2634 = !DILocalVariable(name: "parent", scope: !2627, file: !80, line: 741, type: !1661)
!2635 = !DILocation(line: 741, column: 17, scope: !2627)
!2636 = !DILocation(line: 741, column: 26, scope: !2627)
!2637 = !DILocation(line: 741, column: 35, scope: !2627)
!2638 = !DILocation(line: 741, column: 39, scope: !2627)
!2639 = !DILocation(line: 743, column: 6, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2627, file: !80, line: 743, column: 6)
!2641 = !DILocation(line: 743, column: 13, scope: !2640)
!2642 = !DILocation(line: 743, column: 21, scope: !2640)
!2643 = !DILocation(line: 743, column: 24, scope: !2640)
!2644 = !DILocation(line: 743, column: 32, scope: !2640)
!2645 = !DILocation(line: 743, column: 37, scope: !2640)
!2646 = !DILocation(line: 743, column: 6, scope: !2627)
!2647 = !DILocalVariable(name: "__mptr", scope: !2648, file: !80, line: 744, type: !77)
!2648 = distinct !DILexicalBlock(scope: !2640, file: !80, line: 744, column: 10)
!2649 = !DILocation(line: 744, column: 10, scope: !2648)
!2650 = !DILocation(line: 744, column: 10, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !80, line: 744, column: 10)
!2652 = !DILocation(line: 744, column: 3, scope: !2640)
!2653 = !DILocation(line: 747, column: 3, scope: !2640)
!2654 = !DILocation(line: 748, column: 1, scope: !2627)
!2655 = distinct !DISubprogram(name: "i2c_mux_alloc", scope: !3, file: !3, line: 239, type: !2656, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!2658, !78, !1661, !96, !96, !134, !2669, !2669}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_mux_core", file: !2660, line: 18, size: 448, elements: !2661)
!2660 = !DIFile(filename: "./include/linux/i2c-mux.h", directory: "/home/lizy2001/genbc/linux")
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667, !2668, !2672, !2673, !2674, !2675}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2659, file: !2660, line: 19, baseType: !78, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2659, file: !2660, line: 20, baseType: !1661, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mux_locked", scope: !2659, file: !2660, line: 21, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "arbitrator", scope: !2659, file: !2660, line: 22, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2659, file: !2660, line: 23, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2659, file: !2660, line: 25, baseType: !77, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2659, file: !2660, line: 27, baseType: !2669, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!96, !2658, !134}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "deselect", scope: !2659, file: !2660, line: 28, baseType: !2669, size: 64, offset: 320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "num_adapters", scope: !2659, file: !2660, line: 30, baseType: !96, size: 32, offset: 384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "max_adapters", scope: !2659, file: !2660, line: 31, baseType: !96, size: 32, offset: 416)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !2659, file: !2660, line: 32, baseType: !2676, offset: 448)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !597)
!2677 = !DILocalVariable(name: "parent", arg: 1, scope: !2655, file: !3, line: 239, type: !78)
!2678 = !DILocation(line: 239, column: 56, scope: !2655)
!2679 = !DILocalVariable(name: "dev", arg: 2, scope: !2655, file: !3, line: 240, type: !1661)
!2680 = !DILocation(line: 240, column: 23, scope: !2655)
!2681 = !DILocalVariable(name: "max_adapters", arg: 3, scope: !2655, file: !3, line: 240, type: !96)
!2682 = !DILocation(line: 240, column: 32, scope: !2655)
!2683 = !DILocalVariable(name: "sizeof_priv", arg: 4, scope: !2655, file: !3, line: 241, type: !96)
!2684 = !DILocation(line: 241, column: 12, scope: !2655)
!2685 = !DILocalVariable(name: "flags", arg: 5, scope: !2655, file: !3, line: 241, type: !134)
!2686 = !DILocation(line: 241, column: 29, scope: !2655)
!2687 = !DILocalVariable(name: "select", arg: 6, scope: !2655, file: !3, line: 242, type: !2669)
!2688 = !DILocation(line: 242, column: 14, scope: !2655)
!2689 = !DILocalVariable(name: "deselect", arg: 7, scope: !2655, file: !3, line: 243, type: !2669)
!2690 = !DILocation(line: 243, column: 14, scope: !2655)
!2691 = !DILocalVariable(name: "muxc", scope: !2655, file: !3, line: 245, type: !2658)
!2692 = !DILocation(line: 245, column: 23, scope: !2655)
!2693 = !DILocation(line: 247, column: 22, scope: !2655)
!2694 = !DILocation(line: 247, column: 27, scope: !2655)
!2695 = !DILocation(line: 248, column: 10, scope: !2655)
!2696 = !DILocation(line: 248, column: 8, scope: !2655)
!2697 = !DILocation(line: 247, column: 9, scope: !2655)
!2698 = !DILocation(line: 247, column: 7, scope: !2655)
!2699 = !DILocation(line: 249, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 249, column: 6)
!2701 = !DILocation(line: 249, column: 6, scope: !2655)
!2702 = !DILocation(line: 250, column: 3, scope: !2700)
!2703 = !DILocation(line: 251, column: 6, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 251, column: 6)
!2705 = !DILocation(line: 251, column: 6, scope: !2655)
!2706 = !DILocation(line: 252, column: 17, scope: !2704)
!2707 = !DILocation(line: 252, column: 23, scope: !2704)
!2708 = !DILocation(line: 252, column: 31, scope: !2704)
!2709 = !DILocation(line: 252, column: 16, scope: !2704)
!2710 = !DILocation(line: 252, column: 3, scope: !2704)
!2711 = !DILocation(line: 252, column: 9, scope: !2704)
!2712 = !DILocation(line: 252, column: 14, scope: !2704)
!2713 = !DILocation(line: 254, column: 17, scope: !2655)
!2714 = !DILocation(line: 254, column: 2, scope: !2655)
!2715 = !DILocation(line: 254, column: 8, scope: !2655)
!2716 = !DILocation(line: 254, column: 15, scope: !2655)
!2717 = !DILocation(line: 255, column: 14, scope: !2655)
!2718 = !DILocation(line: 255, column: 2, scope: !2655)
!2719 = !DILocation(line: 255, column: 8, scope: !2655)
!2720 = !DILocation(line: 255, column: 12, scope: !2655)
!2721 = !DILocation(line: 256, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 256, column: 6)
!2723 = !DILocation(line: 256, column: 12, scope: !2722)
!2724 = !DILocation(line: 256, column: 6, scope: !2655)
!2725 = !DILocation(line: 257, column: 3, scope: !2722)
!2726 = !DILocation(line: 257, column: 9, scope: !2722)
!2727 = !DILocation(line: 257, column: 20, scope: !2722)
!2728 = !DILocation(line: 258, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 258, column: 6)
!2730 = !DILocation(line: 258, column: 12, scope: !2729)
!2731 = !DILocation(line: 258, column: 6, scope: !2655)
!2732 = !DILocation(line: 259, column: 3, scope: !2729)
!2733 = !DILocation(line: 259, column: 9, scope: !2729)
!2734 = !DILocation(line: 259, column: 20, scope: !2729)
!2735 = !DILocation(line: 260, column: 6, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 260, column: 6)
!2737 = !DILocation(line: 260, column: 12, scope: !2736)
!2738 = !DILocation(line: 260, column: 6, scope: !2655)
!2739 = !DILocation(line: 261, column: 3, scope: !2736)
!2740 = !DILocation(line: 261, column: 9, scope: !2736)
!2741 = !DILocation(line: 261, column: 14, scope: !2736)
!2742 = !DILocation(line: 262, column: 17, scope: !2655)
!2743 = !DILocation(line: 262, column: 2, scope: !2655)
!2744 = !DILocation(line: 262, column: 8, scope: !2655)
!2745 = !DILocation(line: 262, column: 15, scope: !2655)
!2746 = !DILocation(line: 263, column: 19, scope: !2655)
!2747 = !DILocation(line: 263, column: 2, scope: !2655)
!2748 = !DILocation(line: 263, column: 8, scope: !2655)
!2749 = !DILocation(line: 263, column: 17, scope: !2655)
!2750 = !DILocation(line: 264, column: 23, scope: !2655)
!2751 = !DILocation(line: 264, column: 2, scope: !2655)
!2752 = !DILocation(line: 264, column: 8, scope: !2655)
!2753 = !DILocation(line: 264, column: 21, scope: !2655)
!2754 = !DILocation(line: 266, column: 9, scope: !2655)
!2755 = !DILocation(line: 266, column: 2, scope: !2655)
!2756 = !DILocation(line: 267, column: 1, scope: !2655)
!2757 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2758, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!77, !1661, !828, !1532}
!2760 = !DILocalVariable(name: "dev", arg: 1, scope: !2757, file: !30, line: 215, type: !1661)
!2761 = !DILocation(line: 215, column: 49, scope: !2757)
!2762 = !DILocalVariable(name: "size", arg: 2, scope: !2757, file: !30, line: 215, type: !828)
!2763 = !DILocation(line: 215, column: 61, scope: !2757)
!2764 = !DILocalVariable(name: "gfp", arg: 3, scope: !2757, file: !30, line: 215, type: !1532)
!2765 = !DILocation(line: 215, column: 73, scope: !2757)
!2766 = !DILocation(line: 217, column: 22, scope: !2757)
!2767 = !DILocation(line: 217, column: 27, scope: !2757)
!2768 = !DILocation(line: 217, column: 33, scope: !2757)
!2769 = !DILocation(line: 217, column: 37, scope: !2757)
!2770 = !DILocation(line: 217, column: 9, scope: !2757)
!2771 = !DILocation(line: 217, column: 2, scope: !2757)
!2772 = distinct !DISubprogram(name: "__ab_c_size", scope: !2773, file: !2773, line: 301, type: !2774, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2773 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!828, !828, !828, !828}
!2776 = !DILocalVariable(name: "a", arg: 1, scope: !2772, file: !2773, line: 301, type: !828)
!2777 = !DILocation(line: 301, column: 54, scope: !2772)
!2778 = !DILocalVariable(name: "b", arg: 2, scope: !2772, file: !2773, line: 301, type: !828)
!2779 = !DILocation(line: 301, column: 64, scope: !2772)
!2780 = !DILocalVariable(name: "c", arg: 3, scope: !2772, file: !2773, line: 301, type: !828)
!2781 = !DILocation(line: 301, column: 74, scope: !2772)
!2782 = !DILocalVariable(name: "bytes", scope: !2772, file: !2773, line: 303, type: !828)
!2783 = !DILocation(line: 303, column: 9, scope: !2772)
!2784 = !DILocalVariable(name: "__a", scope: !2785, file: !2773, line: 305, type: !828)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !2773, line: 305, column: 6)
!2786 = distinct !DILexicalBlock(scope: !2772, file: !2773, line: 305, column: 6)
!2787 = !DILocation(line: 305, column: 6, scope: !2785)
!2788 = !DILocalVariable(name: "__b", scope: !2785, file: !2773, line: 305, type: !828)
!2789 = !DILocalVariable(name: "__d", scope: !2785, file: !2773, line: 305, type: !2790)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!2791 = !DILocation(line: 305, column: 6, scope: !2786)
!2792 = !DILocation(line: 305, column: 6, scope: !2772)
!2793 = !DILocation(line: 306, column: 3, scope: !2786)
!2794 = !DILocalVariable(name: "__a", scope: !2795, file: !2773, line: 307, type: !828)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !2773, line: 307, column: 6)
!2796 = distinct !DILexicalBlock(scope: !2772, file: !2773, line: 307, column: 6)
!2797 = !DILocation(line: 307, column: 6, scope: !2795)
!2798 = !DILocalVariable(name: "__b", scope: !2795, file: !2773, line: 307, type: !828)
!2799 = !DILocalVariable(name: "__d", scope: !2795, file: !2773, line: 307, type: !2790)
!2800 = !DILocation(line: 307, column: 6, scope: !2796)
!2801 = !DILocation(line: 307, column: 6, scope: !2772)
!2802 = !DILocation(line: 308, column: 3, scope: !2796)
!2803 = !DILocation(line: 310, column: 9, scope: !2772)
!2804 = !DILocation(line: 310, column: 2, scope: !2772)
!2805 = !DILocation(line: 311, column: 1, scope: !2772)
!2806 = distinct !DISubprogram(name: "i2c_mux_add_adapter", scope: !3, file: !3, line: 282, type: !2807, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!96, !2658, !134, !134, !7}
!2809 = !DILocalVariable(name: "muxc", arg: 1, scope: !2806, file: !3, line: 282, type: !2658)
!2810 = !DILocation(line: 282, column: 46, scope: !2806)
!2811 = !DILocalVariable(name: "force_nr", arg: 2, scope: !2806, file: !3, line: 283, type: !134)
!2812 = !DILocation(line: 283, column: 8, scope: !2806)
!2813 = !DILocalVariable(name: "chan_id", arg: 3, scope: !2806, file: !3, line: 283, type: !134)
!2814 = !DILocation(line: 283, column: 22, scope: !2806)
!2815 = !DILocalVariable(name: "class", arg: 4, scope: !2806, file: !3, line: 284, type: !7)
!2816 = !DILocation(line: 284, column: 17, scope: !2806)
!2817 = !DILocalVariable(name: "parent", scope: !2806, file: !3, line: 286, type: !78)
!2818 = !DILocation(line: 286, column: 22, scope: !2806)
!2819 = !DILocation(line: 286, column: 31, scope: !2806)
!2820 = !DILocation(line: 286, column: 37, scope: !2806)
!2821 = !DILocalVariable(name: "priv", scope: !2806, file: !3, line: 287, type: !2822)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_mux_priv", file: !3, line: 32, size: 8000, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2828}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "adap", scope: !2823, file: !3, line: 33, baseType: !79, size: 7552)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2823, file: !3, line: 34, baseType: !90, size: 320, offset: 7552)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "muxc", scope: !2823, file: !3, line: 35, baseType: !2658, size: 64, offset: 7872)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "chan_id", scope: !2823, file: !3, line: 36, baseType: !134, size: 32, offset: 7936)
!2829 = !DILocation(line: 287, column: 23, scope: !2806)
!2830 = !DILocalVariable(name: "symlink_name", scope: !2806, file: !3, line: 288, type: !2329)
!2831 = !DILocation(line: 288, column: 7, scope: !2806)
!2832 = !DILocalVariable(name: "ret", scope: !2806, file: !3, line: 289, type: !96)
!2833 = !DILocation(line: 289, column: 6, scope: !2806)
!2834 = !DILocation(line: 291, column: 6, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 291, column: 6)
!2836 = !DILocation(line: 291, column: 12, scope: !2835)
!2837 = !DILocation(line: 291, column: 28, scope: !2835)
!2838 = !DILocation(line: 291, column: 34, scope: !2835)
!2839 = !DILocation(line: 291, column: 25, scope: !2835)
!2840 = !DILocation(line: 291, column: 6, scope: !2806)
!2841 = !DILocation(line: 292, column: 3, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 291, column: 48)
!2843 = !DILocation(line: 293, column: 3, scope: !2842)
!2844 = !DILocation(line: 296, column: 9, scope: !2806)
!2845 = !DILocation(line: 296, column: 7, scope: !2806)
!2846 = !DILocation(line: 297, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 297, column: 6)
!2848 = !DILocation(line: 297, column: 6, scope: !2806)
!2849 = !DILocation(line: 298, column: 3, scope: !2847)
!2850 = !DILocation(line: 301, column: 15, scope: !2806)
!2851 = !DILocation(line: 301, column: 2, scope: !2806)
!2852 = !DILocation(line: 301, column: 8, scope: !2806)
!2853 = !DILocation(line: 301, column: 13, scope: !2806)
!2854 = !DILocation(line: 302, column: 18, scope: !2806)
!2855 = !DILocation(line: 302, column: 2, scope: !2806)
!2856 = !DILocation(line: 302, column: 8, scope: !2806)
!2857 = !DILocation(line: 302, column: 16, scope: !2806)
!2858 = !DILocation(line: 307, column: 6, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 307, column: 6)
!2860 = !DILocation(line: 307, column: 14, scope: !2859)
!2861 = !DILocation(line: 307, column: 20, scope: !2859)
!2862 = !DILocation(line: 307, column: 6, scope: !2806)
!2863 = !DILocation(line: 308, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 308, column: 7)
!2865 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 307, column: 33)
!2866 = !DILocation(line: 308, column: 13, scope: !2864)
!2867 = !DILocation(line: 308, column: 7, scope: !2865)
!2868 = !DILocation(line: 309, column: 4, scope: !2864)
!2869 = !DILocation(line: 309, column: 10, scope: !2864)
!2870 = !DILocation(line: 309, column: 15, scope: !2864)
!2871 = !DILocation(line: 309, column: 27, scope: !2864)
!2872 = !DILocation(line: 311, column: 4, scope: !2864)
!2873 = !DILocation(line: 311, column: 10, scope: !2864)
!2874 = !DILocation(line: 311, column: 15, scope: !2864)
!2875 = !DILocation(line: 311, column: 27, scope: !2864)
!2876 = !DILocation(line: 312, column: 2, scope: !2865)
!2877 = !DILocation(line: 313, column: 6, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 313, column: 6)
!2879 = !DILocation(line: 313, column: 14, scope: !2878)
!2880 = !DILocation(line: 313, column: 20, scope: !2878)
!2881 = !DILocation(line: 313, column: 6, scope: !2806)
!2882 = !DILocation(line: 314, column: 35, scope: !2878)
!2883 = !DILocation(line: 314, column: 41, scope: !2878)
!2884 = !DILocation(line: 314, column: 46, scope: !2878)
!2885 = !DILocation(line: 314, column: 3, scope: !2878)
!2886 = !DILocation(line: 314, column: 9, scope: !2878)
!2887 = !DILocation(line: 314, column: 14, scope: !2878)
!2888 = !DILocation(line: 314, column: 33, scope: !2878)
!2889 = !DILocation(line: 316, column: 6, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 316, column: 6)
!2891 = !DILocation(line: 316, column: 14, scope: !2890)
!2892 = !DILocation(line: 316, column: 20, scope: !2890)
!2893 = !DILocation(line: 316, column: 6, scope: !2806)
!2894 = !DILocation(line: 317, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 317, column: 7)
!2896 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 316, column: 32)
!2897 = !DILocation(line: 317, column: 13, scope: !2895)
!2898 = !DILocation(line: 317, column: 7, scope: !2896)
!2899 = !DILocation(line: 318, column: 4, scope: !2895)
!2900 = !DILocation(line: 318, column: 10, scope: !2895)
!2901 = !DILocation(line: 318, column: 15, scope: !2895)
!2902 = !DILocation(line: 318, column: 26, scope: !2895)
!2903 = !DILocation(line: 320, column: 4, scope: !2895)
!2904 = !DILocation(line: 320, column: 10, scope: !2895)
!2905 = !DILocation(line: 320, column: 15, scope: !2895)
!2906 = !DILocation(line: 320, column: 26, scope: !2895)
!2907 = !DILocation(line: 321, column: 2, scope: !2896)
!2908 = !DILocation(line: 322, column: 6, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 322, column: 6)
!2910 = !DILocation(line: 322, column: 14, scope: !2909)
!2911 = !DILocation(line: 322, column: 20, scope: !2909)
!2912 = !DILocation(line: 322, column: 6, scope: !2806)
!2913 = !DILocation(line: 323, column: 34, scope: !2909)
!2914 = !DILocation(line: 323, column: 40, scope: !2909)
!2915 = !DILocation(line: 323, column: 45, scope: !2909)
!2916 = !DILocation(line: 323, column: 3, scope: !2909)
!2917 = !DILocation(line: 323, column: 9, scope: !2909)
!2918 = !DILocation(line: 323, column: 14, scope: !2909)
!2919 = !DILocation(line: 323, column: 32, scope: !2909)
!2920 = !DILocation(line: 325, column: 2, scope: !2806)
!2921 = !DILocation(line: 325, column: 8, scope: !2806)
!2922 = !DILocation(line: 325, column: 13, scope: !2806)
!2923 = !DILocation(line: 325, column: 27, scope: !2806)
!2924 = !DILocation(line: 328, column: 11, scope: !2806)
!2925 = !DILocation(line: 328, column: 17, scope: !2806)
!2926 = !DILocation(line: 328, column: 22, scope: !2806)
!2927 = !DILocation(line: 329, column: 46, scope: !2806)
!2928 = !DILocation(line: 329, column: 31, scope: !2806)
!2929 = !DILocation(line: 329, column: 55, scope: !2806)
!2930 = !DILocation(line: 328, column: 2, scope: !2806)
!2931 = !DILocation(line: 330, column: 2, scope: !2806)
!2932 = !DILocation(line: 330, column: 8, scope: !2806)
!2933 = !DILocation(line: 330, column: 13, scope: !2806)
!2934 = !DILocation(line: 330, column: 19, scope: !2806)
!2935 = !DILocation(line: 331, column: 21, scope: !2806)
!2936 = !DILocation(line: 331, column: 27, scope: !2806)
!2937 = !DILocation(line: 331, column: 2, scope: !2806)
!2938 = !DILocation(line: 331, column: 8, scope: !2806)
!2939 = !DILocation(line: 331, column: 13, scope: !2806)
!2940 = !DILocation(line: 331, column: 18, scope: !2806)
!2941 = !DILocation(line: 332, column: 25, scope: !2806)
!2942 = !DILocation(line: 332, column: 2, scope: !2806)
!2943 = !DILocation(line: 332, column: 8, scope: !2806)
!2944 = !DILocation(line: 332, column: 13, scope: !2806)
!2945 = !DILocation(line: 332, column: 23, scope: !2806)
!2946 = !DILocation(line: 333, column: 27, scope: !2806)
!2947 = !DILocation(line: 333, column: 35, scope: !2806)
!2948 = !DILocation(line: 333, column: 2, scope: !2806)
!2949 = !DILocation(line: 333, column: 8, scope: !2806)
!2950 = !DILocation(line: 333, column: 13, scope: !2806)
!2951 = !DILocation(line: 333, column: 17, scope: !2806)
!2952 = !DILocation(line: 333, column: 24, scope: !2806)
!2953 = !DILocation(line: 334, column: 23, scope: !2806)
!2954 = !DILocation(line: 334, column: 31, scope: !2806)
!2955 = !DILocation(line: 334, column: 2, scope: !2806)
!2956 = !DILocation(line: 334, column: 8, scope: !2806)
!2957 = !DILocation(line: 334, column: 13, scope: !2806)
!2958 = !DILocation(line: 334, column: 21, scope: !2806)
!2959 = !DILocation(line: 335, column: 23, scope: !2806)
!2960 = !DILocation(line: 335, column: 31, scope: !2806)
!2961 = !DILocation(line: 335, column: 2, scope: !2806)
!2962 = !DILocation(line: 335, column: 8, scope: !2806)
!2963 = !DILocation(line: 335, column: 13, scope: !2806)
!2964 = !DILocation(line: 335, column: 21, scope: !2806)
!2965 = !DILocation(line: 336, column: 22, scope: !2806)
!2966 = !DILocation(line: 336, column: 30, scope: !2806)
!2967 = !DILocation(line: 336, column: 2, scope: !2806)
!2968 = !DILocation(line: 336, column: 8, scope: !2806)
!2969 = !DILocation(line: 336, column: 13, scope: !2806)
!2970 = !DILocation(line: 336, column: 20, scope: !2806)
!2971 = !DILocation(line: 337, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 337, column: 6)
!2973 = !DILocation(line: 337, column: 12, scope: !2972)
!2974 = !DILocation(line: 337, column: 6, scope: !2806)
!2975 = !DILocation(line: 338, column: 3, scope: !2972)
!2976 = !DILocation(line: 338, column: 9, scope: !2972)
!2977 = !DILocation(line: 338, column: 14, scope: !2972)
!2978 = !DILocation(line: 338, column: 23, scope: !2972)
!2979 = !DILocation(line: 340, column: 3, scope: !2972)
!2980 = !DILocation(line: 340, column: 9, scope: !2972)
!2981 = !DILocation(line: 340, column: 14, scope: !2972)
!2982 = !DILocation(line: 340, column: 23, scope: !2972)
!2983 = !DILocation(line: 343, column: 29, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 343, column: 6)
!2985 = !DILocation(line: 343, column: 6, scope: !2984)
!2986 = !DILocation(line: 343, column: 39, scope: !2984)
!2987 = !DILocation(line: 343, column: 37, scope: !2984)
!2988 = !DILocation(line: 343, column: 6, scope: !2806)
!2989 = !DILocation(line: 344, column: 3, scope: !2984)
!2990 = !DILocation(line: 348, column: 22, scope: !2984)
!2991 = !DILocation(line: 348, column: 3, scope: !2984)
!2992 = !DILocation(line: 348, column: 9, scope: !2984)
!2993 = !DILocation(line: 348, column: 14, scope: !2984)
!2994 = !DILocation(line: 348, column: 20, scope: !2984)
!2995 = !DILocation(line: 354, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 354, column: 6)
!2997 = !DILocation(line: 354, column: 12, scope: !2996)
!2998 = !DILocation(line: 354, column: 17, scope: !2996)
!2999 = !DILocation(line: 354, column: 6, scope: !2806)
!3000 = !DILocalVariable(name: "dev_node", scope: !3001, file: !3, line: 355, type: !1957)
!3001 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 354, column: 26)
!3002 = !DILocation(line: 355, column: 23, scope: !3001)
!3003 = !DILocation(line: 355, column: 34, scope: !3001)
!3004 = !DILocation(line: 355, column: 40, scope: !3001)
!3005 = !DILocation(line: 355, column: 45, scope: !3001)
!3006 = !DILocalVariable(name: "mux_node", scope: !3001, file: !3, line: 356, type: !1957)
!3007 = !DILocation(line: 356, column: 23, scope: !3001)
!3008 = !DILocalVariable(name: "child", scope: !3001, file: !3, line: 356, type: !1957)
!3009 = !DILocation(line: 356, column: 34, scope: !3001)
!3010 = !DILocalVariable(name: "reg", scope: !3001, file: !3, line: 357, type: !134)
!3011 = !DILocation(line: 357, column: 7, scope: !3001)
!3012 = !DILocation(line: 359, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 359, column: 7)
!3014 = !DILocation(line: 359, column: 13, scope: !3013)
!3015 = !DILocation(line: 359, column: 7, scope: !3001)
!3016 = !DILocation(line: 360, column: 36, scope: !3013)
!3017 = !DILocation(line: 360, column: 15, scope: !3013)
!3018 = !DILocation(line: 360, column: 13, scope: !3013)
!3019 = !DILocation(line: 360, column: 4, scope: !3013)
!3020 = !DILocation(line: 361, column: 12, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 361, column: 12)
!3022 = !DILocation(line: 361, column: 18, scope: !3021)
!3023 = !DILocation(line: 361, column: 12, scope: !3013)
!3024 = !DILocation(line: 362, column: 36, scope: !3021)
!3025 = !DILocation(line: 362, column: 15, scope: !3021)
!3026 = !DILocation(line: 362, column: 13, scope: !3021)
!3027 = !DILocation(line: 362, column: 4, scope: !3021)
!3028 = !DILocation(line: 364, column: 36, scope: !3021)
!3029 = !DILocation(line: 364, column: 15, scope: !3021)
!3030 = !DILocation(line: 364, column: 13, scope: !3021)
!3031 = !DILocation(line: 366, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 366, column: 7)
!3033 = !DILocation(line: 366, column: 7, scope: !3001)
!3034 = !DILocation(line: 368, column: 30, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 368, column: 8)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 366, column: 17)
!3037 = !DILocation(line: 368, column: 9, scope: !3035)
!3038 = !DILocation(line: 368, column: 8, scope: !3036)
!3039 = !DILocation(line: 369, column: 17, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 368, column: 54)
!3041 = !DILocation(line: 369, column: 5, scope: !3040)
!3042 = !DILocation(line: 370, column: 14, scope: !3040)
!3043 = !DILocation(line: 371, column: 4, scope: !3040)
!3044 = !DILocation(line: 372, column: 3, scope: !3036)
!3045 = !DILocation(line: 374, column: 8, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 374, column: 7)
!3047 = !DILocation(line: 374, column: 7, scope: !3001)
!3048 = !DILocation(line: 375, column: 27, scope: !3046)
!3049 = !DILocation(line: 375, column: 15, scope: !3046)
!3050 = !DILocation(line: 375, column: 13, scope: !3046)
!3051 = !DILocation(line: 375, column: 4, scope: !3046)
!3052 = !DILocation(line: 376, column: 12, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 376, column: 12)
!3054 = !DILocation(line: 376, column: 18, scope: !3053)
!3055 = !DILocation(line: 376, column: 29, scope: !3053)
!3056 = !DILocation(line: 376, column: 32, scope: !3053)
!3057 = !DILocation(line: 376, column: 38, scope: !3053)
!3058 = !DILocation(line: 376, column: 12, scope: !3046)
!3059 = !DILocation(line: 377, column: 24, scope: !3053)
!3060 = !DILocation(line: 377, column: 12, scope: !3053)
!3061 = !DILocation(line: 377, column: 10, scope: !3053)
!3062 = !DILocation(line: 377, column: 4, scope: !3053)
!3063 = !DILocation(line: 379, column: 8, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 379, column: 7)
!3065 = !DILocation(line: 379, column: 7, scope: !3001)
!3066 = !DILocation(line: 380, column: 4, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 380, column: 4)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 379, column: 15)
!3069 = !DILocation(line: 380, column: 4, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 380, column: 4)
!3071 = !DILocation(line: 381, column: 32, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 380, column: 44)
!3073 = !DILocation(line: 381, column: 11, scope: !3072)
!3074 = !DILocation(line: 381, column: 9, scope: !3072)
!3075 = !DILocation(line: 382, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 382, column: 9)
!3077 = !DILocation(line: 382, column: 9, scope: !3072)
!3078 = !DILocation(line: 383, column: 6, scope: !3076)
!3079 = !DILocation(line: 384, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 384, column: 9)
!3081 = !DILocation(line: 384, column: 20, scope: !3080)
!3082 = !DILocation(line: 384, column: 17, scope: !3080)
!3083 = !DILocation(line: 384, column: 9, scope: !3072)
!3084 = !DILocation(line: 385, column: 6, scope: !3080)
!3085 = !DILocation(line: 386, column: 4, scope: !3072)
!3086 = distinct !{!3086, !3066, !3087}
!3087 = !DILocation(line: 386, column: 4, scope: !3067)
!3088 = !DILocation(line: 387, column: 3, scope: !3068)
!3089 = !DILocation(line: 389, column: 28, scope: !3001)
!3090 = !DILocation(line: 389, column: 3, scope: !3001)
!3091 = !DILocation(line: 389, column: 9, scope: !3001)
!3092 = !DILocation(line: 389, column: 14, scope: !3001)
!3093 = !DILocation(line: 389, column: 18, scope: !3001)
!3094 = !DILocation(line: 389, column: 26, scope: !3001)
!3095 = !DILocation(line: 390, column: 15, scope: !3001)
!3096 = !DILocation(line: 390, column: 3, scope: !3001)
!3097 = !DILocation(line: 391, column: 2, scope: !3001)
!3098 = !DILocation(line: 396, column: 25, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 396, column: 6)
!3100 = !DILocation(line: 396, column: 31, scope: !3099)
!3101 = !DILocation(line: 396, column: 6, scope: !3099)
!3102 = !DILocation(line: 396, column: 6, scope: !2806)
!3103 = !DILocation(line: 397, column: 26, scope: !3099)
!3104 = !DILocation(line: 397, column: 32, scope: !3099)
!3105 = !DILocation(line: 397, column: 37, scope: !3099)
!3106 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3107, file: !3, line: 398, type: !1970)
!3107 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 398, column: 11)
!3108 = !DILocation(line: 398, column: 11, scope: !3107)
!3109 = !DILocalVariable(name: "__mptr", scope: !3110, file: !3, line: 398, type: !77)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 398, column: 11)
!3111 = !DILocation(line: 398, column: 11, scope: !3110)
!3112 = !DILocation(line: 398, column: 11, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 398, column: 11)
!3114 = !DILocation(line: 399, column: 11, scope: !3099)
!3115 = !DILocation(line: 397, column: 3, scope: !3099)
!3116 = !DILocation(line: 401, column: 6, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 401, column: 6)
!3118 = !DILocation(line: 401, column: 6, scope: !2806)
!3119 = !DILocation(line: 402, column: 19, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 401, column: 16)
!3121 = !DILocation(line: 402, column: 3, scope: !3120)
!3122 = !DILocation(line: 402, column: 9, scope: !3120)
!3123 = !DILocation(line: 402, column: 14, scope: !3120)
!3124 = !DILocation(line: 402, column: 17, scope: !3120)
!3125 = !DILocation(line: 403, column: 35, scope: !3120)
!3126 = !DILocation(line: 403, column: 41, scope: !3120)
!3127 = !DILocation(line: 403, column: 9, scope: !3120)
!3128 = !DILocation(line: 403, column: 7, scope: !3120)
!3129 = !DILocation(line: 404, column: 7, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 404, column: 7)
!3131 = !DILocation(line: 404, column: 11, scope: !3130)
!3132 = !DILocation(line: 404, column: 7, scope: !3120)
!3133 = !DILocation(line: 405, column: 4, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 404, column: 16)
!3135 = !DILocation(line: 408, column: 4, scope: !3134)
!3136 = !DILocation(line: 410, column: 2, scope: !3120)
!3137 = !DILocation(line: 411, column: 26, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 410, column: 9)
!3139 = !DILocation(line: 411, column: 32, scope: !3138)
!3140 = !DILocation(line: 411, column: 9, scope: !3138)
!3141 = !DILocation(line: 411, column: 7, scope: !3138)
!3142 = !DILocation(line: 412, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 412, column: 7)
!3144 = !DILocation(line: 412, column: 11, scope: !3143)
!3145 = !DILocation(line: 412, column: 7, scope: !3138)
!3146 = !DILocation(line: 413, column: 4, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 412, column: 16)
!3148 = !DILocation(line: 416, column: 4, scope: !3147)
!3149 = !DILocalVariable(name: "__ret_warn_on", scope: !3150, file: !3, line: 420, type: !96)
!3150 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 420, column: 2)
!3151 = !DILocation(line: 420, column: 2, scope: !3150)
!3152 = !DILocation(line: 420, column: 2, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 420, column: 2)
!3154 = !DILocation(line: 420, column: 2, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 420, column: 2)
!3156 = !DILocation(line: 420, column: 2, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 420, column: 2)
!3158 = !DILocation(line: 420, column: 2, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 420, column: 2)
!3160 = !DILocation(line: 420, column: 2, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 420, column: 2)
!3162 = !DILocation(line: 420, column: 2, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 420, column: 2)
!3164 = !{i32 -2142737982, i32 -2142737953, i32 -2142737907, i32 -2142737849, i32 -2142737795, i32 -2142737741, i32 -2142737686, i32 -2142737655}
!3165 = !DILocation(line: 420, column: 2, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 420, column: 2)
!3167 = !{i32 -2142737241, i32 -2142737234, i32 -2142737182, i32 -2142737151, i32 -2142737121}
!3168 = !DILocation(line: 420, column: 2, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 420, column: 2)
!3170 = !DILocation(line: 420, column: 2, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3155, file: !3, line: 420, column: 2)
!3172 = !DILocation(line: 424, column: 11, scope: !2806)
!3173 = !DILocation(line: 424, column: 61, scope: !2806)
!3174 = !DILocation(line: 424, column: 2, scope: !2806)
!3175 = !DILocalVariable(name: "__ret_warn_on", scope: !3176, file: !3, line: 425, type: !96)
!3176 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 425, column: 2)
!3177 = !DILocation(line: 425, column: 2, scope: !3176)
!3178 = !DILocation(line: 425, column: 2, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 425, column: 2)
!3180 = !DILocation(line: 425, column: 2, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 425, column: 2)
!3182 = !DILocation(line: 425, column: 2, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 425, column: 2)
!3184 = !DILocation(line: 425, column: 2, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 425, column: 2)
!3186 = !DILocation(line: 425, column: 2, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 425, column: 2)
!3188 = !DILocation(line: 425, column: 2, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 425, column: 2)
!3190 = !{i32 -2142736162, i32 -2142736133, i32 -2142736087, i32 -2142736029, i32 -2142735975, i32 -2142735921, i32 -2142735866, i32 -2142735835}
!3191 = !DILocation(line: 425, column: 2, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 425, column: 2)
!3193 = !{i32 -2142735421, i32 -2142735414, i32 -2142735362, i32 -2142735331, i32 -2142735301}
!3194 = !DILocation(line: 425, column: 2, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 425, column: 2)
!3196 = !DILocation(line: 425, column: 2, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 425, column: 2)
!3198 = !DILocation(line: 428, column: 2, scope: !2806)
!3199 = !DILocation(line: 431, column: 41, scope: !2806)
!3200 = !DILocation(line: 431, column: 47, scope: !2806)
!3201 = !DILocation(line: 431, column: 2, scope: !2806)
!3202 = !DILocation(line: 431, column: 8, scope: !2806)
!3203 = !DILocation(line: 431, column: 16, scope: !2806)
!3204 = !DILocation(line: 431, column: 22, scope: !2806)
!3205 = !DILocation(line: 431, column: 34, scope: !2806)
!3206 = !DILocation(line: 431, column: 38, scope: !2806)
!3207 = !DILocation(line: 432, column: 2, scope: !2806)
!3208 = !DILabel(scope: !2806, name: "err_free_priv", file: !3, line: 434)
!3209 = !DILocation(line: 434, column: 1, scope: !2806)
!3210 = !DILocation(line: 435, column: 8, scope: !2806)
!3211 = !DILocation(line: 435, column: 2, scope: !2806)
!3212 = !DILocation(line: 436, column: 9, scope: !2806)
!3213 = !DILocation(line: 436, column: 2, scope: !2806)
!3214 = !DILocation(line: 437, column: 1, scope: !2806)
!3215 = distinct !DISubprogram(name: "kzalloc", scope: !70, file: !70, line: 662, type: !3216, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!77, !828, !1532}
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3219, file: !70, line: 445, type: !1049)
!3219 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !70, file: !70, line: 445, type: !3220, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!77, !1049, !1532, !828}
!3222 = !DILocation(line: 445, column: 72, scope: !3219, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 552, column: 10, scope: !3224, inlinedAt: !3227)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !70, line: 540, column: 34)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !70, line: 540, column: 6)
!3226 = distinct !DISubprogram(name: "kmalloc", scope: !70, file: !70, line: 538, type: !3216, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3227 = distinct !DILocation(line: 664, column: 9, scope: !3215)
!3228 = !DILocalVariable(name: "flags", arg: 2, scope: !3219, file: !70, line: 446, type: !1532)
!3229 = !DILocation(line: 446, column: 9, scope: !3219, inlinedAt: !3223)
!3230 = !DILocalVariable(name: "size", arg: 3, scope: !3219, file: !70, line: 446, type: !828)
!3231 = !DILocation(line: 446, column: 23, scope: !3219, inlinedAt: !3223)
!3232 = !DILocalVariable(name: "ret", scope: !3219, file: !70, line: 448, type: !77)
!3233 = !DILocation(line: 448, column: 8, scope: !3219, inlinedAt: !3223)
!3234 = !DILocalVariable(name: "flags", arg: 1, scope: !3235, file: !70, line: 318, type: !1532)
!3235 = distinct !DISubprogram(name: "kmalloc_type", scope: !70, file: !70, line: 318, type: !3236, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!69, !1532}
!3238 = !DILocation(line: 318, column: 67, scope: !3235, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 553, column: 20, scope: !3224, inlinedAt: !3227)
!3240 = !DILocalVariable(name: "size", arg: 1, scope: !3241, file: !70, line: 346, type: !828)
!3241 = distinct !DISubprogram(name: "kmalloc_index", scope: !70, file: !70, line: 346, type: !3242, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!7, !828}
!3244 = !DILocation(line: 346, column: 58, scope: !3241, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 547, column: 11, scope: !3224, inlinedAt: !3227)
!3246 = !DILocalVariable(name: "size", arg: 1, scope: !3247, file: !70, line: 472, type: !828)
!3247 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !70, file: !70, line: 472, type: !3248, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!77, !828, !1532, !7}
!3250 = !DILocation(line: 472, column: 28, scope: !3247, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 481, column: 9, scope: !3252, inlinedAt: !3253)
!3252 = distinct !DISubprogram(name: "kmalloc_large", scope: !70, file: !70, line: 478, type: !3216, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3253 = distinct !DILocation(line: 545, column: 11, scope: !3254, inlinedAt: !3227)
!3254 = distinct !DILexicalBlock(scope: !3224, file: !70, line: 544, column: 7)
!3255 = !DILocalVariable(name: "flags", arg: 2, scope: !3247, file: !70, line: 472, type: !1532)
!3256 = !DILocation(line: 472, column: 40, scope: !3247, inlinedAt: !3251)
!3257 = !DILocalVariable(name: "order", arg: 3, scope: !3247, file: !70, line: 472, type: !7)
!3258 = !DILocation(line: 472, column: 60, scope: !3247, inlinedAt: !3251)
!3259 = !DILocalVariable(name: "size", arg: 1, scope: !3252, file: !70, line: 478, type: !828)
!3260 = !DILocation(line: 478, column: 51, scope: !3252, inlinedAt: !3253)
!3261 = !DILocalVariable(name: "flags", arg: 2, scope: !3252, file: !70, line: 478, type: !1532)
!3262 = !DILocation(line: 478, column: 63, scope: !3252, inlinedAt: !3253)
!3263 = !DILocalVariable(name: "order", scope: !3252, file: !70, line: 480, type: !7)
!3264 = !DILocation(line: 480, column: 15, scope: !3252, inlinedAt: !3253)
!3265 = !DILocalVariable(name: "size", arg: 1, scope: !3226, file: !70, line: 538, type: !828)
!3266 = !DILocation(line: 538, column: 45, scope: !3226, inlinedAt: !3227)
!3267 = !DILocalVariable(name: "flags", arg: 2, scope: !3226, file: !70, line: 538, type: !1532)
!3268 = !DILocation(line: 538, column: 57, scope: !3226, inlinedAt: !3227)
!3269 = !DILocalVariable(name: "index", scope: !3224, file: !70, line: 542, type: !7)
!3270 = !DILocation(line: 542, column: 16, scope: !3224, inlinedAt: !3227)
!3271 = !DILocalVariable(name: "size", arg: 1, scope: !3215, file: !70, line: 662, type: !828)
!3272 = !DILocation(line: 662, column: 36, scope: !3215)
!3273 = !DILocalVariable(name: "flags", arg: 2, scope: !3215, file: !70, line: 662, type: !1532)
!3274 = !DILocation(line: 662, column: 48, scope: !3215)
!3275 = !DILocation(line: 664, column: 17, scope: !3215)
!3276 = !DILocation(line: 664, column: 23, scope: !3215)
!3277 = !DILocation(line: 664, column: 29, scope: !3215)
!3278 = !DILocation(line: 540, column: 27, scope: !3225, inlinedAt: !3227)
!3279 = !DILocation(line: 540, column: 6, scope: !3225, inlinedAt: !3227)
!3280 = !DILocation(line: 540, column: 6, scope: !3226, inlinedAt: !3227)
!3281 = !DILocation(line: 544, column: 7, scope: !3254, inlinedAt: !3227)
!3282 = !DILocation(line: 544, column: 12, scope: !3254, inlinedAt: !3227)
!3283 = !DILocation(line: 544, column: 7, scope: !3224, inlinedAt: !3227)
!3284 = !DILocation(line: 545, column: 25, scope: !3254, inlinedAt: !3227)
!3285 = !DILocation(line: 545, column: 31, scope: !3254, inlinedAt: !3227)
!3286 = !DILocation(line: 480, column: 33, scope: !3252, inlinedAt: !3253)
!3287 = !DILocation(line: 480, column: 23, scope: !3252, inlinedAt: !3253)
!3288 = !DILocation(line: 481, column: 29, scope: !3252, inlinedAt: !3253)
!3289 = !DILocation(line: 481, column: 35, scope: !3252, inlinedAt: !3253)
!3290 = !DILocation(line: 481, column: 42, scope: !3252, inlinedAt: !3253)
!3291 = !DILocation(line: 474, column: 23, scope: !3247, inlinedAt: !3251)
!3292 = !DILocation(line: 474, column: 29, scope: !3247, inlinedAt: !3251)
!3293 = !DILocation(line: 474, column: 36, scope: !3247, inlinedAt: !3251)
!3294 = !DILocation(line: 474, column: 9, scope: !3247, inlinedAt: !3251)
!3295 = !DILocation(line: 545, column: 4, scope: !3254, inlinedAt: !3227)
!3296 = !DILocation(line: 547, column: 25, scope: !3224, inlinedAt: !3227)
!3297 = !DILocation(line: 348, column: 7, scope: !3298, inlinedAt: !3245)
!3298 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 348, column: 6)
!3299 = !DILocation(line: 348, column: 6, scope: !3241, inlinedAt: !3245)
!3300 = !DILocation(line: 349, column: 3, scope: !3298, inlinedAt: !3245)
!3301 = !DILocation(line: 351, column: 6, scope: !3302, inlinedAt: !3245)
!3302 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 351, column: 6)
!3303 = !DILocation(line: 351, column: 11, scope: !3302, inlinedAt: !3245)
!3304 = !DILocation(line: 351, column: 6, scope: !3241, inlinedAt: !3245)
!3305 = !DILocation(line: 352, column: 3, scope: !3302, inlinedAt: !3245)
!3306 = !DILocation(line: 354, column: 32, scope: !3307, inlinedAt: !3245)
!3307 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 354, column: 6)
!3308 = !DILocation(line: 354, column: 37, scope: !3307, inlinedAt: !3245)
!3309 = !DILocation(line: 354, column: 42, scope: !3307, inlinedAt: !3245)
!3310 = !DILocation(line: 354, column: 45, scope: !3307, inlinedAt: !3245)
!3311 = !DILocation(line: 354, column: 50, scope: !3307, inlinedAt: !3245)
!3312 = !DILocation(line: 354, column: 6, scope: !3241, inlinedAt: !3245)
!3313 = !DILocation(line: 355, column: 3, scope: !3307, inlinedAt: !3245)
!3314 = !DILocation(line: 356, column: 32, scope: !3315, inlinedAt: !3245)
!3315 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 356, column: 6)
!3316 = !DILocation(line: 356, column: 37, scope: !3315, inlinedAt: !3245)
!3317 = !DILocation(line: 356, column: 43, scope: !3315, inlinedAt: !3245)
!3318 = !DILocation(line: 356, column: 46, scope: !3315, inlinedAt: !3245)
!3319 = !DILocation(line: 356, column: 51, scope: !3315, inlinedAt: !3245)
!3320 = !DILocation(line: 356, column: 6, scope: !3241, inlinedAt: !3245)
!3321 = !DILocation(line: 357, column: 3, scope: !3315, inlinedAt: !3245)
!3322 = !DILocation(line: 358, column: 6, scope: !3323, inlinedAt: !3245)
!3323 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 358, column: 6)
!3324 = !DILocation(line: 358, column: 11, scope: !3323, inlinedAt: !3245)
!3325 = !DILocation(line: 358, column: 6, scope: !3241, inlinedAt: !3245)
!3326 = !DILocation(line: 358, column: 26, scope: !3323, inlinedAt: !3245)
!3327 = !DILocation(line: 359, column: 6, scope: !3328, inlinedAt: !3245)
!3328 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 359, column: 6)
!3329 = !DILocation(line: 359, column: 11, scope: !3328, inlinedAt: !3245)
!3330 = !DILocation(line: 359, column: 6, scope: !3241, inlinedAt: !3245)
!3331 = !DILocation(line: 359, column: 26, scope: !3328, inlinedAt: !3245)
!3332 = !DILocation(line: 360, column: 6, scope: !3333, inlinedAt: !3245)
!3333 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 360, column: 6)
!3334 = !DILocation(line: 360, column: 11, scope: !3333, inlinedAt: !3245)
!3335 = !DILocation(line: 360, column: 6, scope: !3241, inlinedAt: !3245)
!3336 = !DILocation(line: 360, column: 26, scope: !3333, inlinedAt: !3245)
!3337 = !DILocation(line: 361, column: 6, scope: !3338, inlinedAt: !3245)
!3338 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 361, column: 6)
!3339 = !DILocation(line: 361, column: 11, scope: !3338, inlinedAt: !3245)
!3340 = !DILocation(line: 361, column: 6, scope: !3241, inlinedAt: !3245)
!3341 = !DILocation(line: 361, column: 26, scope: !3338, inlinedAt: !3245)
!3342 = !DILocation(line: 362, column: 6, scope: !3343, inlinedAt: !3245)
!3343 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 362, column: 6)
!3344 = !DILocation(line: 362, column: 11, scope: !3343, inlinedAt: !3245)
!3345 = !DILocation(line: 362, column: 6, scope: !3241, inlinedAt: !3245)
!3346 = !DILocation(line: 362, column: 26, scope: !3343, inlinedAt: !3245)
!3347 = !DILocation(line: 363, column: 6, scope: !3348, inlinedAt: !3245)
!3348 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 363, column: 6)
!3349 = !DILocation(line: 363, column: 11, scope: !3348, inlinedAt: !3245)
!3350 = !DILocation(line: 363, column: 6, scope: !3241, inlinedAt: !3245)
!3351 = !DILocation(line: 363, column: 26, scope: !3348, inlinedAt: !3245)
!3352 = !DILocation(line: 364, column: 6, scope: !3353, inlinedAt: !3245)
!3353 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 364, column: 6)
!3354 = !DILocation(line: 364, column: 11, scope: !3353, inlinedAt: !3245)
!3355 = !DILocation(line: 364, column: 6, scope: !3241, inlinedAt: !3245)
!3356 = !DILocation(line: 364, column: 26, scope: !3353, inlinedAt: !3245)
!3357 = !DILocation(line: 365, column: 6, scope: !3358, inlinedAt: !3245)
!3358 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 365, column: 6)
!3359 = !DILocation(line: 365, column: 11, scope: !3358, inlinedAt: !3245)
!3360 = !DILocation(line: 365, column: 6, scope: !3241, inlinedAt: !3245)
!3361 = !DILocation(line: 365, column: 26, scope: !3358, inlinedAt: !3245)
!3362 = !DILocation(line: 366, column: 6, scope: !3363, inlinedAt: !3245)
!3363 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 366, column: 6)
!3364 = !DILocation(line: 366, column: 11, scope: !3363, inlinedAt: !3245)
!3365 = !DILocation(line: 366, column: 6, scope: !3241, inlinedAt: !3245)
!3366 = !DILocation(line: 366, column: 26, scope: !3363, inlinedAt: !3245)
!3367 = !DILocation(line: 367, column: 6, scope: !3368, inlinedAt: !3245)
!3368 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 367, column: 6)
!3369 = !DILocation(line: 367, column: 11, scope: !3368, inlinedAt: !3245)
!3370 = !DILocation(line: 367, column: 6, scope: !3241, inlinedAt: !3245)
!3371 = !DILocation(line: 367, column: 26, scope: !3368, inlinedAt: !3245)
!3372 = !DILocation(line: 368, column: 6, scope: !3373, inlinedAt: !3245)
!3373 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 368, column: 6)
!3374 = !DILocation(line: 368, column: 11, scope: !3373, inlinedAt: !3245)
!3375 = !DILocation(line: 368, column: 6, scope: !3241, inlinedAt: !3245)
!3376 = !DILocation(line: 368, column: 26, scope: !3373, inlinedAt: !3245)
!3377 = !DILocation(line: 369, column: 6, scope: !3378, inlinedAt: !3245)
!3378 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 369, column: 6)
!3379 = !DILocation(line: 369, column: 11, scope: !3378, inlinedAt: !3245)
!3380 = !DILocation(line: 369, column: 6, scope: !3241, inlinedAt: !3245)
!3381 = !DILocation(line: 369, column: 26, scope: !3378, inlinedAt: !3245)
!3382 = !DILocation(line: 370, column: 6, scope: !3383, inlinedAt: !3245)
!3383 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 370, column: 6)
!3384 = !DILocation(line: 370, column: 11, scope: !3383, inlinedAt: !3245)
!3385 = !DILocation(line: 370, column: 6, scope: !3241, inlinedAt: !3245)
!3386 = !DILocation(line: 370, column: 26, scope: !3383, inlinedAt: !3245)
!3387 = !DILocation(line: 371, column: 6, scope: !3388, inlinedAt: !3245)
!3388 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 371, column: 6)
!3389 = !DILocation(line: 371, column: 11, scope: !3388, inlinedAt: !3245)
!3390 = !DILocation(line: 371, column: 6, scope: !3241, inlinedAt: !3245)
!3391 = !DILocation(line: 371, column: 26, scope: !3388, inlinedAt: !3245)
!3392 = !DILocation(line: 372, column: 6, scope: !3393, inlinedAt: !3245)
!3393 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 372, column: 6)
!3394 = !DILocation(line: 372, column: 11, scope: !3393, inlinedAt: !3245)
!3395 = !DILocation(line: 372, column: 6, scope: !3241, inlinedAt: !3245)
!3396 = !DILocation(line: 372, column: 26, scope: !3393, inlinedAt: !3245)
!3397 = !DILocation(line: 373, column: 6, scope: !3398, inlinedAt: !3245)
!3398 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 373, column: 6)
!3399 = !DILocation(line: 373, column: 11, scope: !3398, inlinedAt: !3245)
!3400 = !DILocation(line: 373, column: 6, scope: !3241, inlinedAt: !3245)
!3401 = !DILocation(line: 373, column: 26, scope: !3398, inlinedAt: !3245)
!3402 = !DILocation(line: 374, column: 6, scope: !3403, inlinedAt: !3245)
!3403 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 374, column: 6)
!3404 = !DILocation(line: 374, column: 11, scope: !3403, inlinedAt: !3245)
!3405 = !DILocation(line: 374, column: 6, scope: !3241, inlinedAt: !3245)
!3406 = !DILocation(line: 374, column: 26, scope: !3403, inlinedAt: !3245)
!3407 = !DILocation(line: 375, column: 6, scope: !3408, inlinedAt: !3245)
!3408 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 375, column: 6)
!3409 = !DILocation(line: 375, column: 11, scope: !3408, inlinedAt: !3245)
!3410 = !DILocation(line: 375, column: 6, scope: !3241, inlinedAt: !3245)
!3411 = !DILocation(line: 375, column: 27, scope: !3408, inlinedAt: !3245)
!3412 = !DILocation(line: 376, column: 6, scope: !3413, inlinedAt: !3245)
!3413 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 376, column: 6)
!3414 = !DILocation(line: 376, column: 11, scope: !3413, inlinedAt: !3245)
!3415 = !DILocation(line: 376, column: 6, scope: !3241, inlinedAt: !3245)
!3416 = !DILocation(line: 376, column: 32, scope: !3413, inlinedAt: !3245)
!3417 = !DILocation(line: 377, column: 6, scope: !3418, inlinedAt: !3245)
!3418 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 377, column: 6)
!3419 = !DILocation(line: 377, column: 11, scope: !3418, inlinedAt: !3245)
!3420 = !DILocation(line: 377, column: 6, scope: !3241, inlinedAt: !3245)
!3421 = !DILocation(line: 377, column: 32, scope: !3418, inlinedAt: !3245)
!3422 = !DILocation(line: 378, column: 6, scope: !3423, inlinedAt: !3245)
!3423 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 378, column: 6)
!3424 = !DILocation(line: 378, column: 11, scope: !3423, inlinedAt: !3245)
!3425 = !DILocation(line: 378, column: 6, scope: !3241, inlinedAt: !3245)
!3426 = !DILocation(line: 378, column: 32, scope: !3423, inlinedAt: !3245)
!3427 = !DILocation(line: 379, column: 6, scope: !3428, inlinedAt: !3245)
!3428 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 379, column: 6)
!3429 = !DILocation(line: 379, column: 11, scope: !3428, inlinedAt: !3245)
!3430 = !DILocation(line: 379, column: 6, scope: !3241, inlinedAt: !3245)
!3431 = !DILocation(line: 379, column: 33, scope: !3428, inlinedAt: !3245)
!3432 = !DILocation(line: 380, column: 6, scope: !3433, inlinedAt: !3245)
!3433 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 380, column: 6)
!3434 = !DILocation(line: 380, column: 11, scope: !3433, inlinedAt: !3245)
!3435 = !DILocation(line: 380, column: 6, scope: !3241, inlinedAt: !3245)
!3436 = !DILocation(line: 380, column: 33, scope: !3433, inlinedAt: !3245)
!3437 = !DILocation(line: 381, column: 6, scope: !3438, inlinedAt: !3245)
!3438 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 381, column: 6)
!3439 = !DILocation(line: 381, column: 11, scope: !3438, inlinedAt: !3245)
!3440 = !DILocation(line: 381, column: 6, scope: !3241, inlinedAt: !3245)
!3441 = !DILocation(line: 381, column: 33, scope: !3438, inlinedAt: !3245)
!3442 = !DILocation(line: 382, column: 2, scope: !3443, inlinedAt: !3245)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !70, line: 382, column: 2)
!3444 = distinct !DILexicalBlock(scope: !3241, file: !70, line: 382, column: 2)
!3445 = !{i32 -2144211261, i32 -2144211232, i32 -2144211186, i32 -2144211128, i32 -2144211074, i32 -2144211020, i32 -2144210965, i32 -2144210934}
!3446 = !DILocation(line: 382, column: 2, scope: !3447, inlinedAt: !3245)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !70, line: 382, column: 2)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !70, line: 382, column: 2)
!3449 = !{i32 -2144210491, i32 -2144210484, i32 -2144210430, i32 -2144210399, i32 -2144210369}
!3450 = !DILocation(line: 382, column: 2, scope: !3448, inlinedAt: !3245)
!3451 = !DILocation(line: 386, column: 1, scope: !3241, inlinedAt: !3245)
!3452 = !DILocation(line: 547, column: 9, scope: !3224, inlinedAt: !3227)
!3453 = !DILocation(line: 549, column: 8, scope: !3454, inlinedAt: !3227)
!3454 = distinct !DILexicalBlock(scope: !3224, file: !70, line: 549, column: 7)
!3455 = !DILocation(line: 549, column: 7, scope: !3224, inlinedAt: !3227)
!3456 = !DILocation(line: 550, column: 4, scope: !3454, inlinedAt: !3227)
!3457 = !DILocation(line: 553, column: 33, scope: !3224, inlinedAt: !3227)
!3458 = !DILocation(line: 325, column: 6, scope: !3459, inlinedAt: !3239)
!3459 = distinct !DILexicalBlock(scope: !3235, file: !70, line: 325, column: 6)
!3460 = !DILocation(line: 325, column: 6, scope: !3235, inlinedAt: !3239)
!3461 = !DILocation(line: 326, column: 3, scope: !3459, inlinedAt: !3239)
!3462 = !DILocation(line: 332, column: 9, scope: !3235, inlinedAt: !3239)
!3463 = !DILocation(line: 332, column: 15, scope: !3235, inlinedAt: !3239)
!3464 = !DILocation(line: 332, column: 2, scope: !3235, inlinedAt: !3239)
!3465 = !DILocation(line: 336, column: 1, scope: !3235, inlinedAt: !3239)
!3466 = !DILocation(line: 553, column: 5, scope: !3224, inlinedAt: !3227)
!3467 = !DILocation(line: 553, column: 41, scope: !3224, inlinedAt: !3227)
!3468 = !DILocation(line: 554, column: 5, scope: !3224, inlinedAt: !3227)
!3469 = !DILocation(line: 554, column: 12, scope: !3224, inlinedAt: !3227)
!3470 = !DILocation(line: 448, column: 31, scope: !3219, inlinedAt: !3223)
!3471 = !DILocation(line: 448, column: 34, scope: !3219, inlinedAt: !3223)
!3472 = !DILocation(line: 448, column: 14, scope: !3219, inlinedAt: !3223)
!3473 = !DILocation(line: 450, column: 22, scope: !3219, inlinedAt: !3223)
!3474 = !DILocation(line: 450, column: 25, scope: !3219, inlinedAt: !3223)
!3475 = !DILocation(line: 450, column: 30, scope: !3219, inlinedAt: !3223)
!3476 = !DILocation(line: 450, column: 36, scope: !3219, inlinedAt: !3223)
!3477 = !DILocation(line: 450, column: 8, scope: !3219, inlinedAt: !3223)
!3478 = !DILocation(line: 450, column: 6, scope: !3219, inlinedAt: !3223)
!3479 = !DILocation(line: 451, column: 9, scope: !3219, inlinedAt: !3223)
!3480 = !DILocation(line: 552, column: 3, scope: !3224, inlinedAt: !3227)
!3481 = !DILocation(line: 557, column: 19, scope: !3226, inlinedAt: !3227)
!3482 = !DILocation(line: 557, column: 25, scope: !3226, inlinedAt: !3227)
!3483 = !DILocation(line: 557, column: 9, scope: !3226, inlinedAt: !3227)
!3484 = !DILocation(line: 557, column: 2, scope: !3226, inlinedAt: !3227)
!3485 = !DILocation(line: 558, column: 1, scope: !3226, inlinedAt: !3227)
!3486 = !DILocation(line: 664, column: 2, scope: !3215)
!3487 = distinct !DISubprogram(name: "i2c_mux_master_xfer", scope: !3, file: !3, line: 58, type: !94, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3488 = !DILocalVariable(name: "adap", arg: 1, scope: !3487, file: !3, line: 58, type: !78)
!3489 = !DILocation(line: 58, column: 52, scope: !3487)
!3490 = !DILocalVariable(name: "msgs", arg: 2, scope: !3487, file: !3, line: 59, type: !97)
!3491 = !DILocation(line: 59, column: 26, scope: !3487)
!3492 = !DILocalVariable(name: "num", arg: 3, scope: !3487, file: !3, line: 59, type: !96)
!3493 = !DILocation(line: 59, column: 38, scope: !3487)
!3494 = !DILocalVariable(name: "priv", scope: !3487, file: !3, line: 61, type: !2822)
!3495 = !DILocation(line: 61, column: 23, scope: !3487)
!3496 = !DILocation(line: 61, column: 30, scope: !3487)
!3497 = !DILocation(line: 61, column: 36, scope: !3487)
!3498 = !DILocalVariable(name: "muxc", scope: !3487, file: !3, line: 62, type: !2658)
!3499 = !DILocation(line: 62, column: 23, scope: !3487)
!3500 = !DILocation(line: 62, column: 30, scope: !3487)
!3501 = !DILocation(line: 62, column: 36, scope: !3487)
!3502 = !DILocalVariable(name: "parent", scope: !3487, file: !3, line: 63, type: !78)
!3503 = !DILocation(line: 63, column: 22, scope: !3487)
!3504 = !DILocation(line: 63, column: 31, scope: !3487)
!3505 = !DILocation(line: 63, column: 37, scope: !3487)
!3506 = !DILocalVariable(name: "ret", scope: !3487, file: !3, line: 64, type: !96)
!3507 = !DILocation(line: 64, column: 6, scope: !3487)
!3508 = !DILocation(line: 68, column: 8, scope: !3487)
!3509 = !DILocation(line: 68, column: 14, scope: !3487)
!3510 = !DILocation(line: 68, column: 21, scope: !3487)
!3511 = !DILocation(line: 68, column: 27, scope: !3487)
!3512 = !DILocation(line: 68, column: 33, scope: !3487)
!3513 = !DILocation(line: 68, column: 6, scope: !3487)
!3514 = !DILocation(line: 69, column: 6, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 69, column: 6)
!3516 = !DILocation(line: 69, column: 10, scope: !3515)
!3517 = !DILocation(line: 69, column: 6, scope: !3487)
!3518 = !DILocation(line: 70, column: 22, scope: !3515)
!3519 = !DILocation(line: 70, column: 30, scope: !3515)
!3520 = !DILocation(line: 70, column: 36, scope: !3515)
!3521 = !DILocation(line: 70, column: 9, scope: !3515)
!3522 = !DILocation(line: 70, column: 7, scope: !3515)
!3523 = !DILocation(line: 70, column: 3, scope: !3515)
!3524 = !DILocation(line: 71, column: 6, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 71, column: 6)
!3526 = !DILocation(line: 71, column: 12, scope: !3525)
!3527 = !DILocation(line: 71, column: 6, scope: !3487)
!3528 = !DILocation(line: 72, column: 3, scope: !3525)
!3529 = !DILocation(line: 72, column: 9, scope: !3525)
!3530 = !DILocation(line: 72, column: 18, scope: !3525)
!3531 = !DILocation(line: 72, column: 24, scope: !3525)
!3532 = !DILocation(line: 72, column: 30, scope: !3525)
!3533 = !DILocation(line: 74, column: 9, scope: !3487)
!3534 = !DILocation(line: 74, column: 2, scope: !3487)
!3535 = distinct !DISubprogram(name: "__i2c_mux_master_xfer", scope: !3, file: !3, line: 39, type: !94, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3536 = !DILocalVariable(name: "adap", arg: 1, scope: !3535, file: !3, line: 39, type: !78)
!3537 = !DILocation(line: 39, column: 54, scope: !3535)
!3538 = !DILocalVariable(name: "msgs", arg: 2, scope: !3535, file: !3, line: 40, type: !97)
!3539 = !DILocation(line: 40, column: 21, scope: !3535)
!3540 = !DILocalVariable(name: "num", arg: 3, scope: !3535, file: !3, line: 40, type: !96)
!3541 = !DILocation(line: 40, column: 33, scope: !3535)
!3542 = !DILocalVariable(name: "priv", scope: !3535, file: !3, line: 42, type: !2822)
!3543 = !DILocation(line: 42, column: 23, scope: !3535)
!3544 = !DILocation(line: 42, column: 30, scope: !3535)
!3545 = !DILocation(line: 42, column: 36, scope: !3535)
!3546 = !DILocalVariable(name: "muxc", scope: !3535, file: !3, line: 43, type: !2658)
!3547 = !DILocation(line: 43, column: 23, scope: !3535)
!3548 = !DILocation(line: 43, column: 30, scope: !3535)
!3549 = !DILocation(line: 43, column: 36, scope: !3535)
!3550 = !DILocalVariable(name: "parent", scope: !3535, file: !3, line: 44, type: !78)
!3551 = !DILocation(line: 44, column: 22, scope: !3535)
!3552 = !DILocation(line: 44, column: 31, scope: !3535)
!3553 = !DILocation(line: 44, column: 37, scope: !3535)
!3554 = !DILocalVariable(name: "ret", scope: !3535, file: !3, line: 45, type: !96)
!3555 = !DILocation(line: 45, column: 6, scope: !3535)
!3556 = !DILocation(line: 49, column: 8, scope: !3535)
!3557 = !DILocation(line: 49, column: 14, scope: !3535)
!3558 = !DILocation(line: 49, column: 21, scope: !3535)
!3559 = !DILocation(line: 49, column: 27, scope: !3535)
!3560 = !DILocation(line: 49, column: 33, scope: !3535)
!3561 = !DILocation(line: 49, column: 6, scope: !3535)
!3562 = !DILocation(line: 50, column: 6, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 50, column: 6)
!3564 = !DILocation(line: 50, column: 10, scope: !3563)
!3565 = !DILocation(line: 50, column: 6, scope: !3535)
!3566 = !DILocation(line: 51, column: 24, scope: !3563)
!3567 = !DILocation(line: 51, column: 32, scope: !3563)
!3568 = !DILocation(line: 51, column: 38, scope: !3563)
!3569 = !DILocation(line: 51, column: 9, scope: !3563)
!3570 = !DILocation(line: 51, column: 7, scope: !3563)
!3571 = !DILocation(line: 51, column: 3, scope: !3563)
!3572 = !DILocation(line: 52, column: 6, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 52, column: 6)
!3574 = !DILocation(line: 52, column: 12, scope: !3573)
!3575 = !DILocation(line: 52, column: 6, scope: !3535)
!3576 = !DILocation(line: 53, column: 3, scope: !3573)
!3577 = !DILocation(line: 53, column: 9, scope: !3573)
!3578 = !DILocation(line: 53, column: 18, scope: !3573)
!3579 = !DILocation(line: 53, column: 24, scope: !3573)
!3580 = !DILocation(line: 53, column: 30, scope: !3573)
!3581 = !DILocation(line: 55, column: 9, scope: !3535)
!3582 = !DILocation(line: 55, column: 2, scope: !3535)
!3583 = distinct !DISubprogram(name: "i2c_mux_smbus_xfer", scope: !3, file: !3, line: 99, type: !114, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3584 = !DILocalVariable(name: "adap", arg: 1, scope: !3583, file: !3, line: 99, type: !78)
!3585 = !DILocation(line: 99, column: 51, scope: !3583)
!3586 = !DILocalVariable(name: "addr", arg: 2, scope: !3583, file: !3, line: 100, type: !116)
!3587 = !DILocation(line: 100, column: 14, scope: !3583)
!3588 = !DILocalVariable(name: "flags", arg: 3, scope: !3583, file: !3, line: 100, type: !104)
!3589 = !DILocation(line: 100, column: 35, scope: !3583)
!3590 = !DILocalVariable(name: "read_write", arg: 4, scope: !3583, file: !3, line: 101, type: !118)
!3591 = !DILocation(line: 101, column: 15, scope: !3583)
!3592 = !DILocalVariable(name: "command", arg: 5, scope: !3583, file: !3, line: 101, type: !119)
!3593 = !DILocation(line: 101, column: 30, scope: !3583)
!3594 = !DILocalVariable(name: "size", arg: 6, scope: !3583, file: !3, line: 102, type: !96)
!3595 = !DILocation(line: 102, column: 14, scope: !3583)
!3596 = !DILocalVariable(name: "data", arg: 7, scope: !3583, file: !3, line: 102, type: !120)
!3597 = !DILocation(line: 102, column: 42, scope: !3583)
!3598 = !DILocalVariable(name: "priv", scope: !3583, file: !3, line: 104, type: !2822)
!3599 = !DILocation(line: 104, column: 23, scope: !3583)
!3600 = !DILocation(line: 104, column: 30, scope: !3583)
!3601 = !DILocation(line: 104, column: 36, scope: !3583)
!3602 = !DILocalVariable(name: "muxc", scope: !3583, file: !3, line: 105, type: !2658)
!3603 = !DILocation(line: 105, column: 23, scope: !3583)
!3604 = !DILocation(line: 105, column: 30, scope: !3583)
!3605 = !DILocation(line: 105, column: 36, scope: !3583)
!3606 = !DILocalVariable(name: "parent", scope: !3583, file: !3, line: 106, type: !78)
!3607 = !DILocation(line: 106, column: 22, scope: !3583)
!3608 = !DILocation(line: 106, column: 31, scope: !3583)
!3609 = !DILocation(line: 106, column: 37, scope: !3583)
!3610 = !DILocalVariable(name: "ret", scope: !3583, file: !3, line: 107, type: !96)
!3611 = !DILocation(line: 107, column: 6, scope: !3583)
!3612 = !DILocation(line: 111, column: 8, scope: !3583)
!3613 = !DILocation(line: 111, column: 14, scope: !3583)
!3614 = !DILocation(line: 111, column: 21, scope: !3583)
!3615 = !DILocation(line: 111, column: 27, scope: !3583)
!3616 = !DILocation(line: 111, column: 33, scope: !3583)
!3617 = !DILocation(line: 111, column: 6, scope: !3583)
!3618 = !DILocation(line: 112, column: 6, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 112, column: 6)
!3620 = !DILocation(line: 112, column: 10, scope: !3619)
!3621 = !DILocation(line: 112, column: 6, scope: !3583)
!3622 = !DILocation(line: 113, column: 24, scope: !3619)
!3623 = !DILocation(line: 113, column: 32, scope: !3619)
!3624 = !DILocation(line: 113, column: 38, scope: !3619)
!3625 = !DILocation(line: 114, column: 10, scope: !3619)
!3626 = !DILocation(line: 114, column: 22, scope: !3619)
!3627 = !DILocation(line: 114, column: 31, scope: !3619)
!3628 = !DILocation(line: 114, column: 37, scope: !3619)
!3629 = !DILocation(line: 113, column: 9, scope: !3619)
!3630 = !DILocation(line: 113, column: 7, scope: !3619)
!3631 = !DILocation(line: 113, column: 3, scope: !3619)
!3632 = !DILocation(line: 115, column: 6, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 115, column: 6)
!3634 = !DILocation(line: 115, column: 12, scope: !3633)
!3635 = !DILocation(line: 115, column: 6, scope: !3583)
!3636 = !DILocation(line: 116, column: 3, scope: !3633)
!3637 = !DILocation(line: 116, column: 9, scope: !3633)
!3638 = !DILocation(line: 116, column: 18, scope: !3633)
!3639 = !DILocation(line: 116, column: 24, scope: !3633)
!3640 = !DILocation(line: 116, column: 30, scope: !3633)
!3641 = !DILocation(line: 118, column: 9, scope: !3583)
!3642 = !DILocation(line: 118, column: 2, scope: !3583)
!3643 = distinct !DISubprogram(name: "__i2c_mux_smbus_xfer", scope: !3, file: !3, line: 77, type: !114, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3644 = !DILocalVariable(name: "adap", arg: 1, scope: !3643, file: !3, line: 77, type: !78)
!3645 = !DILocation(line: 77, column: 53, scope: !3643)
!3646 = !DILocalVariable(name: "addr", arg: 2, scope: !3643, file: !3, line: 78, type: !116)
!3647 = !DILocation(line: 78, column: 9, scope: !3643)
!3648 = !DILocalVariable(name: "flags", arg: 3, scope: !3643, file: !3, line: 78, type: !104)
!3649 = !DILocation(line: 78, column: 30, scope: !3643)
!3650 = !DILocalVariable(name: "read_write", arg: 4, scope: !3643, file: !3, line: 79, type: !118)
!3651 = !DILocation(line: 79, column: 10, scope: !3643)
!3652 = !DILocalVariable(name: "command", arg: 5, scope: !3643, file: !3, line: 79, type: !119)
!3653 = !DILocation(line: 79, column: 25, scope: !3643)
!3654 = !DILocalVariable(name: "size", arg: 6, scope: !3643, file: !3, line: 80, type: !96)
!3655 = !DILocation(line: 80, column: 9, scope: !3643)
!3656 = !DILocalVariable(name: "data", arg: 7, scope: !3643, file: !3, line: 80, type: !120)
!3657 = !DILocation(line: 80, column: 37, scope: !3643)
!3658 = !DILocalVariable(name: "priv", scope: !3643, file: !3, line: 82, type: !2822)
!3659 = !DILocation(line: 82, column: 23, scope: !3643)
!3660 = !DILocation(line: 82, column: 30, scope: !3643)
!3661 = !DILocation(line: 82, column: 36, scope: !3643)
!3662 = !DILocalVariable(name: "muxc", scope: !3643, file: !3, line: 83, type: !2658)
!3663 = !DILocation(line: 83, column: 23, scope: !3643)
!3664 = !DILocation(line: 83, column: 30, scope: !3643)
!3665 = !DILocation(line: 83, column: 36, scope: !3643)
!3666 = !DILocalVariable(name: "parent", scope: !3643, file: !3, line: 84, type: !78)
!3667 = !DILocation(line: 84, column: 22, scope: !3643)
!3668 = !DILocation(line: 84, column: 31, scope: !3643)
!3669 = !DILocation(line: 84, column: 37, scope: !3643)
!3670 = !DILocalVariable(name: "ret", scope: !3643, file: !3, line: 85, type: !96)
!3671 = !DILocation(line: 85, column: 6, scope: !3643)
!3672 = !DILocation(line: 89, column: 8, scope: !3643)
!3673 = !DILocation(line: 89, column: 14, scope: !3643)
!3674 = !DILocation(line: 89, column: 21, scope: !3643)
!3675 = !DILocation(line: 89, column: 27, scope: !3643)
!3676 = !DILocation(line: 89, column: 33, scope: !3643)
!3677 = !DILocation(line: 89, column: 6, scope: !3643)
!3678 = !DILocation(line: 90, column: 6, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 90, column: 6)
!3680 = !DILocation(line: 90, column: 10, scope: !3679)
!3681 = !DILocation(line: 90, column: 6, scope: !3643)
!3682 = !DILocation(line: 91, column: 26, scope: !3679)
!3683 = !DILocation(line: 91, column: 34, scope: !3679)
!3684 = !DILocation(line: 91, column: 40, scope: !3679)
!3685 = !DILocation(line: 92, column: 12, scope: !3679)
!3686 = !DILocation(line: 92, column: 24, scope: !3679)
!3687 = !DILocation(line: 92, column: 33, scope: !3679)
!3688 = !DILocation(line: 92, column: 39, scope: !3679)
!3689 = !DILocation(line: 91, column: 9, scope: !3679)
!3690 = !DILocation(line: 91, column: 7, scope: !3679)
!3691 = !DILocation(line: 91, column: 3, scope: !3679)
!3692 = !DILocation(line: 93, column: 6, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 93, column: 6)
!3694 = !DILocation(line: 93, column: 12, scope: !3693)
!3695 = !DILocation(line: 93, column: 6, scope: !3643)
!3696 = !DILocation(line: 94, column: 3, scope: !3693)
!3697 = !DILocation(line: 94, column: 9, scope: !3693)
!3698 = !DILocation(line: 94, column: 18, scope: !3693)
!3699 = !DILocation(line: 94, column: 24, scope: !3693)
!3700 = !DILocation(line: 94, column: 30, scope: !3693)
!3701 = !DILocation(line: 96, column: 9, scope: !3643)
!3702 = !DILocation(line: 96, column: 2, scope: !3643)
!3703 = distinct !DISubprogram(name: "i2c_mux_functionality", scope: !3, file: !3, line: 122, type: !132, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3704 = !DILocalVariable(name: "adap", arg: 1, scope: !3703, file: !3, line: 122, type: !78)
!3705 = !DILocation(line: 122, column: 54, scope: !3703)
!3706 = !DILocalVariable(name: "priv", scope: !3703, file: !3, line: 124, type: !2822)
!3707 = !DILocation(line: 124, column: 23, scope: !3703)
!3708 = !DILocation(line: 124, column: 30, scope: !3703)
!3709 = !DILocation(line: 124, column: 36, scope: !3703)
!3710 = !DILocalVariable(name: "parent", scope: !3703, file: !3, line: 125, type: !78)
!3711 = !DILocation(line: 125, column: 22, scope: !3703)
!3712 = !DILocation(line: 125, column: 31, scope: !3703)
!3713 = !DILocation(line: 125, column: 37, scope: !3703)
!3714 = !DILocation(line: 125, column: 43, scope: !3703)
!3715 = !DILocation(line: 127, column: 9, scope: !3703)
!3716 = !DILocation(line: 127, column: 17, scope: !3703)
!3717 = !DILocation(line: 127, column: 23, scope: !3703)
!3718 = !DILocation(line: 127, column: 37, scope: !3703)
!3719 = !DILocation(line: 127, column: 2, scope: !3703)
!3720 = distinct !DISubprogram(name: "i2c_adapter_id", scope: !80, file: !80, line: 900, type: !2228, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3721 = !DILocalVariable(name: "adap", arg: 1, scope: !3720, file: !80, line: 900, type: !78)
!3722 = !DILocation(line: 900, column: 54, scope: !3720)
!3723 = !DILocation(line: 902, column: 9, scope: !3720)
!3724 = !DILocation(line: 902, column: 15, scope: !3720)
!3725 = !DILocation(line: 902, column: 2, scope: !3720)
!3726 = distinct !DISubprogram(name: "i2c_mux_parent_classes", scope: !3, file: !3, line: 131, type: !3727, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!7, !78}
!3729 = !DILocalVariable(name: "parent", arg: 1, scope: !3726, file: !3, line: 131, type: !78)
!3730 = !DILocation(line: 131, column: 64, scope: !3726)
!3731 = !DILocalVariable(name: "class", scope: !3726, file: !3, line: 133, type: !7)
!3732 = !DILocation(line: 133, column: 15, scope: !3726)
!3733 = !DILocation(line: 135, column: 2, scope: !3726)
!3734 = !DILocation(line: 136, column: 12, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 135, column: 5)
!3736 = !DILocation(line: 136, column: 20, scope: !3735)
!3737 = !DILocation(line: 136, column: 9, scope: !3735)
!3738 = !DILocation(line: 137, column: 38, scope: !3735)
!3739 = !DILocation(line: 137, column: 12, scope: !3735)
!3740 = !DILocation(line: 137, column: 10, scope: !3735)
!3741 = !DILocation(line: 138, column: 2, scope: !3735)
!3742 = !DILocation(line: 138, column: 11, scope: !3726)
!3743 = distinct !{!3743, !3733, !3744}
!3744 = !DILocation(line: 138, column: 17, scope: !3726)
!3745 = !DILocation(line: 140, column: 9, scope: !3726)
!3746 = !DILocation(line: 140, column: 2, scope: !3726)
!3747 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1959, file: !1959, line: 1214, type: !3748, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!96, !3750, !1330, !636}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!3752 = !DILocalVariable(name: "np", arg: 1, scope: !3747, file: !1959, line: 1214, type: !3750)
!3753 = !DILocation(line: 1214, column: 66, scope: !3747)
!3754 = !DILocalVariable(name: "propname", arg: 2, scope: !3747, file: !1959, line: 1215, type: !1330)
!3755 = !DILocation(line: 1215, column: 24, scope: !3747)
!3756 = !DILocalVariable(name: "out_value", arg: 3, scope: !3747, file: !1959, line: 1216, type: !636)
!3757 = !DILocation(line: 1216, column: 17, scope: !3747)
!3758 = !DILocation(line: 1218, column: 36, scope: !3747)
!3759 = !DILocation(line: 1218, column: 40, scope: !3747)
!3760 = !DILocation(line: 1218, column: 50, scope: !3747)
!3761 = !DILocation(line: 1218, column: 9, scope: !3747)
!3762 = !DILocation(line: 1218, column: 2, scope: !3747)
!3763 = distinct !DISubprogram(name: "of_node_put", scope: !1959, file: !1959, line: 129, type: !3764, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !1957}
!3766 = !DILocalVariable(name: "node", arg: 1, scope: !3763, file: !1959, line: 129, type: !1957)
!3767 = !DILocation(line: 129, column: 52, scope: !3763)
!3768 = !DILocation(line: 129, column: 60, scope: !3763)
!3769 = distinct !DISubprogram(name: "of_node_get", scope: !1959, file: !1959, line: 125, type: !3770, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!1957, !1957}
!3772 = !DILocalVariable(name: "node", arg: 1, scope: !3769, file: !1959, line: 125, type: !1957)
!3773 = !DILocation(line: 125, column: 67, scope: !3769)
!3774 = !DILocation(line: 127, column: 9, scope: !3769)
!3775 = !DILocation(line: 127, column: 2, scope: !3769)
!3776 = distinct !DISubprogram(name: "has_acpi_companion", scope: !3777, file: !3777, line: 84, type: !3778, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3777 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!577, !1661}
!3780 = !DILocalVariable(name: "dev", arg: 1, scope: !3776, file: !3777, line: 84, type: !1661)
!3781 = !DILocation(line: 84, column: 54, scope: !3776)
!3782 = !DILocation(line: 86, column: 29, scope: !3776)
!3783 = !DILocation(line: 86, column: 34, scope: !3776)
!3784 = !DILocation(line: 86, column: 9, scope: !3776)
!3785 = !DILocation(line: 86, column: 2, scope: !3776)
!3786 = distinct !DISubprogram(name: "acpi_preset_companion", scope: !3777, file: !3777, line: 89, type: !3787, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !1661, !2266, !235}
!3789 = !DILocalVariable(name: "dev", arg: 1, scope: !3786, file: !3777, line: 89, type: !1661)
!3790 = !DILocation(line: 89, column: 57, scope: !3786)
!3791 = !DILocalVariable(name: "parent", arg: 2, scope: !3786, file: !3777, line: 90, type: !2266)
!3792 = !DILocation(line: 90, column: 27, scope: !3786)
!3793 = !DILocalVariable(name: "addr", arg: 3, scope: !3786, file: !3777, line: 90, type: !235)
!3794 = !DILocation(line: 90, column: 39, scope: !3786)
!3795 = !DILocation(line: 92, column: 2, scope: !3786)
!3796 = !DILocation(line: 93, column: 1, scope: !3786)
!3797 = distinct !DISubprogram(name: "i2c_mux_del_adapters", scope: !3, file: !3, line: 440, type: !3798, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !2658}
!3800 = !DILocalVariable(name: "muxc", arg: 1, scope: !3797, file: !3, line: 440, type: !2658)
!3801 = !DILocation(line: 440, column: 48, scope: !3797)
!3802 = !DILocalVariable(name: "symlink_name", scope: !3797, file: !3, line: 442, type: !2329)
!3803 = !DILocation(line: 442, column: 7, scope: !3797)
!3804 = !DILocation(line: 444, column: 2, scope: !3797)
!3805 = !DILocation(line: 444, column: 9, scope: !3797)
!3806 = !DILocation(line: 444, column: 15, scope: !3797)
!3807 = !DILocalVariable(name: "adap", scope: !3808, file: !3, line: 445, type: !78)
!3808 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 444, column: 29)
!3809 = !DILocation(line: 445, column: 23, scope: !3808)
!3810 = !DILocation(line: 445, column: 30, scope: !3808)
!3811 = !DILocation(line: 445, column: 36, scope: !3808)
!3812 = !DILocation(line: 445, column: 46, scope: !3808)
!3813 = !DILocation(line: 445, column: 52, scope: !3808)
!3814 = !DILocation(line: 445, column: 44, scope: !3808)
!3815 = !DILocalVariable(name: "priv", scope: !3808, file: !3, line: 446, type: !2822)
!3816 = !DILocation(line: 446, column: 24, scope: !3808)
!3817 = !DILocation(line: 446, column: 31, scope: !3808)
!3818 = !DILocation(line: 446, column: 37, scope: !3808)
!3819 = !DILocalVariable(name: "np", scope: !3808, file: !3, line: 447, type: !1957)
!3820 = !DILocation(line: 447, column: 23, scope: !3808)
!3821 = !DILocation(line: 447, column: 28, scope: !3808)
!3822 = !DILocation(line: 447, column: 34, scope: !3808)
!3823 = !DILocation(line: 447, column: 38, scope: !3808)
!3824 = !DILocation(line: 449, column: 3, scope: !3808)
!3825 = !DILocation(line: 449, column: 9, scope: !3808)
!3826 = !DILocation(line: 449, column: 17, scope: !3808)
!3827 = !DILocation(line: 449, column: 23, scope: !3808)
!3828 = !DILocation(line: 449, column: 37, scope: !3808)
!3829 = !DILocation(line: 451, column: 12, scope: !3808)
!3830 = !DILocation(line: 452, column: 19, scope: !3808)
!3831 = !DILocation(line: 452, column: 25, scope: !3808)
!3832 = !DILocation(line: 451, column: 3, scope: !3808)
!3833 = !DILocation(line: 453, column: 22, scope: !3808)
!3834 = !DILocation(line: 453, column: 28, scope: !3808)
!3835 = !DILocation(line: 453, column: 33, scope: !3808)
!3836 = !DILocation(line: 453, column: 39, scope: !3808)
!3837 = !DILocation(line: 453, column: 3, scope: !3808)
!3838 = !DILocation(line: 455, column: 22, scope: !3808)
!3839 = !DILocation(line: 455, column: 28, scope: !3808)
!3840 = !DILocation(line: 455, column: 33, scope: !3808)
!3841 = !DILocation(line: 455, column: 37, scope: !3808)
!3842 = !DILocation(line: 455, column: 3, scope: !3808)
!3843 = !DILocation(line: 456, column: 19, scope: !3808)
!3844 = !DILocation(line: 456, column: 3, scope: !3808)
!3845 = !DILocation(line: 457, column: 15, scope: !3808)
!3846 = !DILocation(line: 457, column: 3, scope: !3808)
!3847 = !DILocation(line: 458, column: 9, scope: !3808)
!3848 = !DILocation(line: 458, column: 3, scope: !3808)
!3849 = distinct !{!3849, !3804, !3850}
!3850 = !DILocation(line: 459, column: 2, scope: !3797)
!3851 = !DILocation(line: 460, column: 1, scope: !3797)
!3852 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2773, file: !2773, line: 52, type: !3853, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!577, !577}
!3855 = !DILocalVariable(name: "overflow", arg: 1, scope: !3852, file: !2773, line: 52, type: !577)
!3856 = !DILocation(line: 52, column: 60, scope: !3852)
!3857 = !DILocation(line: 54, column: 9, scope: !3852)
!3858 = !DILocation(line: 54, column: 2, scope: !3852)
!3859 = distinct !DISubprogram(name: "get_order", scope: !3860, file: !3860, line: 29, type: !3861, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3860 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!96, !177}
!3863 = !DILocalVariable(name: "x", arg: 1, scope: !3864, file: !3865, line: 366, type: !236)
!3864 = distinct !DISubprogram(name: "fls64", scope: !3865, file: !3865, line: 366, type: !3866, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3865 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!96, !236}
!3868 = !DILocation(line: 366, column: 40, scope: !3864, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 46, column: 9, scope: !3859)
!3870 = !DILocalVariable(name: "bitpos", scope: !3864, file: !3865, line: 368, type: !96)
!3871 = !DILocation(line: 368, column: 6, scope: !3864, inlinedAt: !3869)
!3872 = !DILocalVariable(name: "size", arg: 1, scope: !3859, file: !3860, line: 29, type: !177)
!3873 = !DILocation(line: 29, column: 63, scope: !3859)
!3874 = !DILocation(line: 31, column: 27, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3859, file: !3860, line: 31, column: 6)
!3876 = !DILocation(line: 31, column: 6, scope: !3875)
!3877 = !DILocation(line: 31, column: 6, scope: !3859)
!3878 = !DILocation(line: 32, column: 8, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !3860, line: 32, column: 7)
!3880 = distinct !DILexicalBlock(scope: !3875, file: !3860, line: 31, column: 34)
!3881 = !DILocation(line: 32, column: 7, scope: !3880)
!3882 = !DILocation(line: 33, column: 4, scope: !3879)
!3883 = !DILocation(line: 35, column: 7, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3880, file: !3860, line: 35, column: 7)
!3885 = !DILocation(line: 35, column: 12, scope: !3884)
!3886 = !DILocation(line: 35, column: 7, scope: !3880)
!3887 = !DILocation(line: 36, column: 4, scope: !3884)
!3888 = !DILocation(line: 38, column: 10, scope: !3880)
!3889 = !DILocation(line: 38, column: 28, scope: !3880)
!3890 = !DILocation(line: 38, column: 41, scope: !3880)
!3891 = !DILocation(line: 38, column: 3, scope: !3880)
!3892 = !DILocation(line: 41, column: 6, scope: !3859)
!3893 = !DILocation(line: 42, column: 7, scope: !3859)
!3894 = !DILocation(line: 46, column: 15, scope: !3859)
!3895 = !DILocation(line: 374, column: 2, scope: !3864, inlinedAt: !3869)
!3896 = !DILocation(line: 376, column: 14, scope: !3864, inlinedAt: !3869)
!3897 = !{i32 323851}
!3898 = !DILocation(line: 377, column: 9, scope: !3864, inlinedAt: !3869)
!3899 = !DILocation(line: 377, column: 16, scope: !3864, inlinedAt: !3869)
!3900 = !DILocation(line: 46, column: 2, scope: !3859)
!3901 = !DILocation(line: 48, column: 1, scope: !3859)
!3902 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3903, file: !3903, line: 30, type: !3904, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3903 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!96, !235}
!3906 = !DILocation(line: 366, column: 40, scope: !3864, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 32, column: 9, scope: !3902)
!3908 = !DILocation(line: 368, column: 6, scope: !3864, inlinedAt: !3907)
!3909 = !DILocalVariable(name: "n", arg: 1, scope: !3902, file: !3903, line: 30, type: !235)
!3910 = !DILocation(line: 30, column: 21, scope: !3902)
!3911 = !DILocation(line: 32, column: 15, scope: !3902)
!3912 = !DILocation(line: 374, column: 2, scope: !3864, inlinedAt: !3907)
!3913 = !DILocation(line: 376, column: 14, scope: !3864, inlinedAt: !3907)
!3914 = !DILocation(line: 377, column: 9, scope: !3864, inlinedAt: !3907)
!3915 = !DILocation(line: 377, column: 16, scope: !3864, inlinedAt: !3907)
!3916 = !DILocation(line: 32, column: 18, scope: !3902)
!3917 = !DILocation(line: 32, column: 2, scope: !3902)
!3918 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3919, file: !3919, line: 137, type: !3920, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3919 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!77, !1049, !1130, !828, !1532}
!3922 = !DILocalVariable(name: "s", arg: 1, scope: !3918, file: !3919, line: 137, type: !1049)
!3923 = !DILocation(line: 137, column: 54, scope: !3918)
!3924 = !DILocalVariable(name: "object", arg: 2, scope: !3918, file: !3919, line: 137, type: !1130)
!3925 = !DILocation(line: 137, column: 69, scope: !3918)
!3926 = !DILocalVariable(name: "size", arg: 3, scope: !3918, file: !3919, line: 138, type: !828)
!3927 = !DILocation(line: 138, column: 12, scope: !3918)
!3928 = !DILocalVariable(name: "flags", arg: 4, scope: !3918, file: !3919, line: 138, type: !1532)
!3929 = !DILocation(line: 138, column: 24, scope: !3918)
!3930 = !DILocation(line: 140, column: 17, scope: !3918)
!3931 = !DILocation(line: 140, column: 2, scope: !3918)
!3932 = distinct !DISubprogram(name: "i2c_mux_lock_bus", scope: !3, file: !3, line: 143, type: !144, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3933 = !DILocalVariable(name: "adapter", arg: 1, scope: !3932, file: !3, line: 143, type: !78)
!3934 = !DILocation(line: 143, column: 50, scope: !3932)
!3935 = !DILocalVariable(name: "flags", arg: 2, scope: !3932, file: !3, line: 143, type: !7)
!3936 = !DILocation(line: 143, column: 72, scope: !3932)
!3937 = !DILocalVariable(name: "priv", scope: !3932, file: !3, line: 145, type: !2822)
!3938 = !DILocation(line: 145, column: 23, scope: !3932)
!3939 = !DILocation(line: 145, column: 30, scope: !3932)
!3940 = !DILocation(line: 145, column: 39, scope: !3932)
!3941 = !DILocalVariable(name: "parent", scope: !3932, file: !3, line: 146, type: !78)
!3942 = !DILocation(line: 146, column: 22, scope: !3932)
!3943 = !DILocation(line: 146, column: 31, scope: !3932)
!3944 = !DILocation(line: 146, column: 37, scope: !3932)
!3945 = !DILocation(line: 146, column: 43, scope: !3932)
!3946 = !DILocation(line: 148, column: 2, scope: !3932)
!3947 = !DILocation(line: 149, column: 8, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 149, column: 6)
!3949 = !DILocation(line: 149, column: 14, scope: !3948)
!3950 = !DILocation(line: 149, column: 6, scope: !3932)
!3951 = !DILocation(line: 150, column: 3, scope: !3948)
!3952 = !DILocation(line: 151, column: 15, scope: !3932)
!3953 = !DILocation(line: 151, column: 23, scope: !3932)
!3954 = !DILocation(line: 151, column: 2, scope: !3932)
!3955 = !DILocation(line: 152, column: 1, scope: !3932)
!3956 = distinct !DISubprogram(name: "i2c_mux_trylock_bus", scope: !3, file: !3, line: 154, type: !148, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3957 = !DILocalVariable(name: "adapter", arg: 1, scope: !3956, file: !3, line: 154, type: !78)
!3958 = !DILocation(line: 154, column: 52, scope: !3956)
!3959 = !DILocalVariable(name: "flags", arg: 2, scope: !3956, file: !3, line: 154, type: !7)
!3960 = !DILocation(line: 154, column: 74, scope: !3956)
!3961 = !DILocalVariable(name: "priv", scope: !3956, file: !3, line: 156, type: !2822)
!3962 = !DILocation(line: 156, column: 23, scope: !3956)
!3963 = !DILocation(line: 156, column: 30, scope: !3956)
!3964 = !DILocation(line: 156, column: 39, scope: !3956)
!3965 = !DILocalVariable(name: "parent", scope: !3956, file: !3, line: 157, type: !78)
!3966 = !DILocation(line: 157, column: 22, scope: !3956)
!3967 = !DILocation(line: 157, column: 31, scope: !3956)
!3968 = !DILocation(line: 157, column: 37, scope: !3956)
!3969 = !DILocation(line: 157, column: 43, scope: !3956)
!3970 = !DILocation(line: 159, column: 25, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 159, column: 6)
!3972 = !DILocation(line: 159, column: 33, scope: !3971)
!3973 = !DILocation(line: 159, column: 7, scope: !3971)
!3974 = !DILocation(line: 159, column: 6, scope: !3956)
!3975 = !DILocation(line: 160, column: 3, scope: !3971)
!3976 = !DILocation(line: 161, column: 8, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 161, column: 6)
!3978 = !DILocation(line: 161, column: 14, scope: !3977)
!3979 = !DILocation(line: 161, column: 6, scope: !3956)
!3980 = !DILocation(line: 162, column: 3, scope: !3977)
!3981 = !DILocation(line: 163, column: 22, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 163, column: 6)
!3983 = !DILocation(line: 163, column: 30, scope: !3982)
!3984 = !DILocation(line: 163, column: 6, scope: !3982)
!3985 = !DILocation(line: 163, column: 6, scope: !3956)
!3986 = !DILocation(line: 164, column: 3, scope: !3982)
!3987 = !DILocation(line: 165, column: 19, scope: !3956)
!3988 = !DILocation(line: 165, column: 27, scope: !3956)
!3989 = !DILocation(line: 165, column: 2, scope: !3956)
!3990 = !DILocation(line: 166, column: 2, scope: !3956)
!3991 = !DILocation(line: 167, column: 1, scope: !3956)
!3992 = distinct !DISubprogram(name: "i2c_mux_unlock_bus", scope: !3, file: !3, line: 169, type: !144, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!3993 = !DILocalVariable(name: "adapter", arg: 1, scope: !3992, file: !3, line: 169, type: !78)
!3994 = !DILocation(line: 169, column: 52, scope: !3992)
!3995 = !DILocalVariable(name: "flags", arg: 2, scope: !3992, file: !3, line: 169, type: !7)
!3996 = !DILocation(line: 169, column: 74, scope: !3992)
!3997 = !DILocalVariable(name: "priv", scope: !3992, file: !3, line: 171, type: !2822)
!3998 = !DILocation(line: 171, column: 23, scope: !3992)
!3999 = !DILocation(line: 171, column: 30, scope: !3992)
!4000 = !DILocation(line: 171, column: 39, scope: !3992)
!4001 = !DILocalVariable(name: "parent", scope: !3992, file: !3, line: 172, type: !78)
!4002 = !DILocation(line: 172, column: 22, scope: !3992)
!4003 = !DILocation(line: 172, column: 31, scope: !3992)
!4004 = !DILocation(line: 172, column: 37, scope: !3992)
!4005 = !DILocation(line: 172, column: 43, scope: !3992)
!4006 = !DILocation(line: 174, column: 6, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 174, column: 6)
!4008 = !DILocation(line: 174, column: 12, scope: !4007)
!4009 = !DILocation(line: 174, column: 6, scope: !3992)
!4010 = !DILocation(line: 175, column: 18, scope: !4007)
!4011 = !DILocation(line: 175, column: 26, scope: !4007)
!4012 = !DILocation(line: 175, column: 3, scope: !4007)
!4013 = !DILocation(line: 176, column: 19, scope: !3992)
!4014 = !DILocation(line: 176, column: 27, scope: !3992)
!4015 = !DILocation(line: 176, column: 2, scope: !3992)
!4016 = !DILocation(line: 177, column: 1, scope: !3992)
!4017 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !80, file: !80, line: 763, type: !144, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4018 = !DILocalVariable(name: "adapter", arg: 1, scope: !4017, file: !80, line: 763, type: !78)
!4019 = !DILocation(line: 763, column: 34, scope: !4017)
!4020 = !DILocalVariable(name: "flags", arg: 2, scope: !4017, file: !80, line: 763, type: !7)
!4021 = !DILocation(line: 763, column: 56, scope: !4017)
!4022 = !DILocation(line: 765, column: 2, scope: !4017)
!4023 = !DILocation(line: 765, column: 11, scope: !4017)
!4024 = !DILocation(line: 765, column: 21, scope: !4017)
!4025 = !DILocation(line: 765, column: 30, scope: !4017)
!4026 = !DILocation(line: 765, column: 39, scope: !4017)
!4027 = !DILocation(line: 766, column: 1, scope: !4017)
!4028 = distinct !DISubprogram(name: "i2c_trylock_bus", scope: !80, file: !80, line: 777, type: !148, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4029 = !DILocalVariable(name: "adapter", arg: 1, scope: !4028, file: !80, line: 777, type: !78)
!4030 = !DILocation(line: 777, column: 37, scope: !4028)
!4031 = !DILocalVariable(name: "flags", arg: 2, scope: !4028, file: !80, line: 777, type: !7)
!4032 = !DILocation(line: 777, column: 59, scope: !4028)
!4033 = !DILocation(line: 779, column: 9, scope: !4028)
!4034 = !DILocation(line: 779, column: 18, scope: !4028)
!4035 = !DILocation(line: 779, column: 28, scope: !4028)
!4036 = !DILocation(line: 779, column: 40, scope: !4028)
!4037 = !DILocation(line: 779, column: 49, scope: !4028)
!4038 = !DILocation(line: 779, column: 2, scope: !4028)
!4039 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !80, file: !80, line: 789, type: !144, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4040 = !DILocalVariable(name: "adapter", arg: 1, scope: !4039, file: !80, line: 789, type: !78)
!4041 = !DILocation(line: 789, column: 36, scope: !4039)
!4042 = !DILocalVariable(name: "flags", arg: 2, scope: !4039, file: !80, line: 789, type: !7)
!4043 = !DILocation(line: 789, column: 58, scope: !4039)
!4044 = !DILocation(line: 791, column: 2, scope: !4039)
!4045 = !DILocation(line: 791, column: 11, scope: !4039)
!4046 = !DILocation(line: 791, column: 21, scope: !4039)
!4047 = !DILocation(line: 791, column: 32, scope: !4039)
!4048 = !DILocation(line: 791, column: 41, scope: !4039)
!4049 = !DILocation(line: 792, column: 1, scope: !4039)
!4050 = distinct !DISubprogram(name: "i2c_parent_lock_bus", scope: !3, file: !3, line: 179, type: !144, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4051 = !DILocalVariable(name: "adapter", arg: 1, scope: !4050, file: !3, line: 179, type: !78)
!4052 = !DILocation(line: 179, column: 53, scope: !4050)
!4053 = !DILocalVariable(name: "flags", arg: 2, scope: !4050, file: !3, line: 180, type: !7)
!4054 = !DILocation(line: 180, column: 18, scope: !4050)
!4055 = !DILocalVariable(name: "priv", scope: !4050, file: !3, line: 182, type: !2822)
!4056 = !DILocation(line: 182, column: 23, scope: !4050)
!4057 = !DILocation(line: 182, column: 30, scope: !4050)
!4058 = !DILocation(line: 182, column: 39, scope: !4050)
!4059 = !DILocalVariable(name: "parent", scope: !4050, file: !3, line: 183, type: !78)
!4060 = !DILocation(line: 183, column: 22, scope: !4050)
!4061 = !DILocation(line: 183, column: 31, scope: !4050)
!4062 = !DILocation(line: 183, column: 37, scope: !4050)
!4063 = !DILocation(line: 183, column: 43, scope: !4050)
!4064 = !DILocation(line: 185, column: 2, scope: !4050)
!4065 = !DILocation(line: 186, column: 15, scope: !4050)
!4066 = !DILocation(line: 186, column: 23, scope: !4050)
!4067 = !DILocation(line: 186, column: 2, scope: !4050)
!4068 = !DILocation(line: 187, column: 1, scope: !4050)
!4069 = distinct !DISubprogram(name: "i2c_parent_trylock_bus", scope: !3, file: !3, line: 189, type: !148, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4070 = !DILocalVariable(name: "adapter", arg: 1, scope: !4069, file: !3, line: 189, type: !78)
!4071 = !DILocation(line: 189, column: 55, scope: !4069)
!4072 = !DILocalVariable(name: "flags", arg: 2, scope: !4069, file: !3, line: 190, type: !7)
!4073 = !DILocation(line: 190, column: 20, scope: !4069)
!4074 = !DILocalVariable(name: "priv", scope: !4069, file: !3, line: 192, type: !2822)
!4075 = !DILocation(line: 192, column: 23, scope: !4069)
!4076 = !DILocation(line: 192, column: 30, scope: !4069)
!4077 = !DILocation(line: 192, column: 39, scope: !4069)
!4078 = !DILocalVariable(name: "parent", scope: !4069, file: !3, line: 193, type: !78)
!4079 = !DILocation(line: 193, column: 22, scope: !4069)
!4080 = !DILocation(line: 193, column: 31, scope: !4069)
!4081 = !DILocation(line: 193, column: 37, scope: !4069)
!4082 = !DILocation(line: 193, column: 43, scope: !4069)
!4083 = !DILocation(line: 195, column: 25, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 195, column: 6)
!4085 = !DILocation(line: 195, column: 33, scope: !4084)
!4086 = !DILocation(line: 195, column: 7, scope: !4084)
!4087 = !DILocation(line: 195, column: 6, scope: !4069)
!4088 = !DILocation(line: 196, column: 3, scope: !4084)
!4089 = !DILocation(line: 197, column: 22, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 197, column: 6)
!4091 = !DILocation(line: 197, column: 30, scope: !4090)
!4092 = !DILocation(line: 197, column: 6, scope: !4090)
!4093 = !DILocation(line: 197, column: 6, scope: !4069)
!4094 = !DILocation(line: 198, column: 3, scope: !4090)
!4095 = !DILocation(line: 199, column: 19, scope: !4069)
!4096 = !DILocation(line: 199, column: 27, scope: !4069)
!4097 = !DILocation(line: 199, column: 2, scope: !4069)
!4098 = !DILocation(line: 200, column: 2, scope: !4069)
!4099 = !DILocation(line: 201, column: 1, scope: !4069)
!4100 = distinct !DISubprogram(name: "i2c_parent_unlock_bus", scope: !3, file: !3, line: 203, type: !144, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4101 = !DILocalVariable(name: "adapter", arg: 1, scope: !4100, file: !3, line: 203, type: !78)
!4102 = !DILocation(line: 203, column: 55, scope: !4100)
!4103 = !DILocalVariable(name: "flags", arg: 2, scope: !4100, file: !3, line: 204, type: !7)
!4104 = !DILocation(line: 204, column: 20, scope: !4100)
!4105 = !DILocalVariable(name: "priv", scope: !4100, file: !3, line: 206, type: !2822)
!4106 = !DILocation(line: 206, column: 23, scope: !4100)
!4107 = !DILocation(line: 206, column: 30, scope: !4100)
!4108 = !DILocation(line: 206, column: 39, scope: !4100)
!4109 = !DILocalVariable(name: "parent", scope: !4100, file: !3, line: 207, type: !78)
!4110 = !DILocation(line: 207, column: 22, scope: !4100)
!4111 = !DILocation(line: 207, column: 31, scope: !4100)
!4112 = !DILocation(line: 207, column: 37, scope: !4100)
!4113 = !DILocation(line: 207, column: 43, scope: !4100)
!4114 = !DILocation(line: 209, column: 17, scope: !4100)
!4115 = !DILocation(line: 209, column: 25, scope: !4100)
!4116 = !DILocation(line: 209, column: 2, scope: !4100)
!4117 = !DILocation(line: 210, column: 19, scope: !4100)
!4118 = !DILocation(line: 210, column: 27, scope: !4100)
!4119 = !DILocation(line: 210, column: 2, scope: !4100)
!4120 = !DILocation(line: 211, column: 1, scope: !4100)
!4121 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1959, file: !1959, line: 494, type: !4122, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!96, !3750, !1330, !636, !828}
!4124 = !DILocalVariable(name: "np", arg: 1, scope: !4121, file: !1959, line: 494, type: !3750)
!4125 = !DILocation(line: 494, column: 72, scope: !4121)
!4126 = !DILocalVariable(name: "propname", arg: 2, scope: !4121, file: !1959, line: 495, type: !1330)
!4127 = !DILocation(line: 495, column: 23, scope: !4121)
!4128 = !DILocalVariable(name: "out_values", arg: 3, scope: !4121, file: !1959, line: 496, type: !636)
!4129 = !DILocation(line: 496, column: 16, scope: !4121)
!4130 = !DILocalVariable(name: "sz", arg: 4, scope: !4121, file: !1959, line: 496, type: !828)
!4131 = !DILocation(line: 496, column: 35, scope: !4121)
!4132 = !DILocalVariable(name: "ret", scope: !4121, file: !1959, line: 498, type: !96)
!4133 = !DILocation(line: 498, column: 6, scope: !4121)
!4134 = !DILocation(line: 498, column: 48, scope: !4121)
!4135 = !DILocation(line: 498, column: 52, scope: !4121)
!4136 = !DILocation(line: 498, column: 62, scope: !4121)
!4137 = !DILocation(line: 499, column: 13, scope: !4121)
!4138 = !DILocation(line: 498, column: 12, scope: !4121)
!4139 = !DILocation(line: 500, column: 6, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4121, file: !1959, line: 500, column: 6)
!4141 = !DILocation(line: 500, column: 10, scope: !4140)
!4142 = !DILocation(line: 500, column: 6, scope: !4121)
!4143 = !DILocation(line: 501, column: 3, scope: !4140)
!4144 = !DILocation(line: 503, column: 10, scope: !4140)
!4145 = !DILocation(line: 503, column: 3, scope: !4140)
!4146 = !DILocation(line: 504, column: 1, scope: !4121)
!4147 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !2268, file: !2268, line: 438, type: !4148, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !164)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!1970, !2266}
!4150 = !DILocalVariable(name: "adev", arg: 1, scope: !4147, file: !2268, line: 438, type: !2266)
!4151 = !DILocation(line: 438, column: 76, scope: !4147)
!4152 = !DILocation(line: 440, column: 10, scope: !4147)
!4153 = !DILocation(line: 440, column: 16, scope: !4147)
!4154 = !DILocation(line: 440, column: 2, scope: !4147)
