; ModuleID = '../bcout/drivers/acpi/processor_driver.llvm.bc'
source_filename = "drivers/acpi/processor_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_acpi_processor_driver_init6:\09\09\09"
module asm ".long\09acpi_processor_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.38, %struct.device* }
%union.anon.38 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.driver_private = type opaque
%struct.cpuidle_driver = type { i8*, %struct.module*, i8, [10 x %struct.cpuidle_state], i32, i32, %struct.cpumask*, i8* }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)*, i32 (%struct.cpuidle_device*, i32)*, i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x %struct.cpuidle_state_kobj*], %struct.cpuidle_driver_kobj*, %struct.cpuidle_device_kobj*, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_state_kobj = type opaque
%struct.cpuidle_driver_kobj = type opaque
%struct.cpuidle_device_kobj = type opaque
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.acpi_processor = type { i8*, i32, i32, i32, i32, i32, i32, %struct.acpi_processor_flags, %struct.acpi_processor_power, %struct.acpi_processor_performance*, %struct.acpi_processor_throttling, %struct.acpi_processor_limit, %struct.thermal_cooling_device*, %struct.device*, %struct.freq_qos_request, %struct.freq_qos_request }
%struct.acpi_processor_flags = type { i16 }
%struct.acpi_processor_power = type { i32, %union.anon.48, i32 }
%union.anon.48 = type { [8 x %struct.acpi_lpi_state] }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i64, i8, i8, [32 x i8] }
%struct.acpi_processor_performance = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_px*, %struct.acpi_psd_package, [1 x %struct.cpumask], i32 }
%struct.acpi_pct_register = type <{ i8, i16, i8, i8, i8, i8, i64 }>
%struct.acpi_processor_px = type { i64, i64, i64, i64, i64, i64 }
%struct.acpi_psd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_throttling = type { i32, i32, %struct.acpi_pct_register, %struct.acpi_pct_register, i32, %struct.acpi_processor_tx_tss*, %struct.acpi_tsd_package, [1 x %struct.cpumask], i32 (%struct.acpi_processor*)*, i32 (%struct.acpi_processor*, i32, i1)*, i32, i8, i8, i8, i32, [16 x %struct.acpi_processor_tx] }
%struct.acpi_processor_tx_tss = type { i64, i64, i64, i64, i64 }
%struct.acpi_tsd_package = type { i64, i64, i64, i64, i64 }
%struct.acpi_processor_tx = type { i16, i16 }
%struct.acpi_processor_limit = type { %struct.acpi_processor_lx, %struct.acpi_processor_lx, %struct.acpi_processor_lx }
%struct.acpi_processor_lx = type { i32, i32 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, %struct.clk*, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, i32, %struct.cpufreq_governor*, i8*, [16 x i8], %struct.work_struct, %struct.freq_constraints, %struct.freq_qos_request*, %struct.freq_qos_request*, %struct.cpufreq_frequency_table*, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, %struct.task_struct*, %struct.cpufreq_stats*, i8*, %struct.thermal_cooling_device*, %struct.notifier_block, %struct.notifier_block }
%struct.clk = type opaque
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.cpufreq_governor = type { [16 x i8], i32 (%struct.cpufreq_policy*)*, void (%struct.cpufreq_policy*)*, i32 (%struct.cpufreq_policy*)*, void (%struct.cpufreq_policy*)*, void (%struct.cpufreq_policy*)*, i64 (%struct.cpufreq_policy*, i8*)*, i32 (%struct.cpufreq_policy*, i32)*, %struct.list_head, %struct.module*, i8 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_stats = type opaque
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.46, i32, i32, %struct.list_head }
%struct.anon.46 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.47, i8, i8, i32 }
%struct.anon.47 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque

@__UNIQUE_ID_author169 = internal constant [34 x i8] c"processor.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description170 = internal constant [44 x i8] c"processor.description=ACPI Processor Driver\00", section ".modinfo", align 1, !dbg !2891
@__UNIQUE_ID_file171 = internal constant [38 x i8] c"processor.file=drivers/acpi/processor\00", section ".modinfo", align 1, !dbg !2894
@__UNIQUE_ID_license172 = internal constant [22 x i8] c"processor.license=GPL\00", section ".modinfo", align 1, !dbg !2899
@acpi_disabled = external dso_local global i32, align 4
@acpi_processor_cpufreq_init = dso_local global i8 0, align 1, !dbg !2918
@acpi_processor_notifier_block = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @acpi_processor_notifier, %struct.notifier_block* null, i32 0 }, align 8, !dbg !2922
@hp_online = internal global i32 0, align 4, !dbg !2920
@acpi_processor_driver = internal global %struct.device_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct.bus_type* @cpu_subsys, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* getelementptr inbounds ([3 x %struct.acpi_device_id], [3 x %struct.acpi_device_id]* @processor_device_ids, i32 0, i32 0), i32 (%struct.device*)* @acpi_processor_start, void (%struct.device*)* null, i32 (%struct.device*)* @acpi_processor_stop, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, align 8, !dbg !2924
@__UNIQUE_ID___addressable_acpi_processor_driver_init176 = internal global i8* bitcast (i32 ()* @acpi_processor_driver_init to i8*), section ".discard.addressable", align 8, !dbg !2904
@__exitcall_acpi_processor_driver_exit = internal global void ()* @acpi_processor_driver_exit, section ".exitcall.exit", align 8, !dbg !2906
@__UNIQUE_ID_alias177 = internal constant [26 x i8] c"processor.alias=processor\00", section ".modinfo", align 1, !dbg !2913
@.str = private unnamed_addr constant [10 x i8] c"processor\00", align 1
@cpu_subsys = external dso_local global %struct.bus_type, align 8
@processor_device_ids = internal constant [3 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"LNXCPU\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ACPI0007\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2926
@acpi_idle_driver = external dso_local global %struct.cpuidle_driver, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1
@processor_cooling_ops = external dso_local constant %struct.thermal_cooling_device_ops, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs link 'thermal_cooling'\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to create sysfs link 'device'\0A\00", align 1
@acpi_processor_ppc_has_changed.printout = internal global i32 1, align 4, !dbg !2929
@.str.6 = private unnamed_addr constant [70 x i8] c"\014Warning: Processor Platform Limit event detected, but not handled.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\014Consider compiling CPUfreq support into your kernel.\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"acpi/cpu-drv:online\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"acpi/cpu-drv:dead\00", align 1
@processors = external dso_local global %struct.acpi_processor*, section ".data", align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"\016Will online and init hotplugged CPU: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to start CPU: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"drivers/acpi/processor_driver.c\00", align 1
@llvm.used = appending global [8 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_author169, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description170, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file171, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license172, i32 0, i32 0), i8* bitcast (void ()* @acpi_processor_driver_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_acpi_processor_driver_init176 to i8*), i8* bitcast (void ()** @__exitcall_acpi_processor_driver_exit to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_alias177, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_driver_exit() #0 section ".exit.text" !dbg !2942 {
entry:
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !2943
  %tobool = icmp ne i32 %0, 0, !dbg !2943
  br i1 %tobool, label %if.then, label %if.end, !dbg !2945

if.then:                                          ; preds = %entry
  br label %return, !dbg !2946

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @acpi_processor_cpufreq_init, align 1, !dbg !2947
  %tobool1 = trunc i8 %1 to i1, !dbg !2947
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2949

if.then2:                                         ; preds = %if.end
  %call = call i32 @cpufreq_unregister_notifier(%struct.notifier_block* @acpi_processor_notifier_block, i32 1) #5, !dbg !2950
  store i8 0, i8* @acpi_processor_cpufreq_init, align 1, !dbg !2952
  br label %if.end3, !dbg !2953

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, i32* @hp_online, align 4, !dbg !2954
  call void @cpuhp_remove_state_nocalls(i32 %2) #5, !dbg !2955
  call void @cpuhp_remove_state_nocalls(i32 22) #5, !dbg !2956
  call void @driver_unregister(%struct.device_driver* @acpi_processor_driver) #5, !dbg !2957
  br label %return, !dbg !2958

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !2958
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpufreq_unregister_notifier(%struct.notifier_block* %nb, i32 %list) #1 !dbg !2959 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %list.addr = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2962, metadata !DIExpression()), !dbg !2963
  store i32 %list, i32* %list.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %list.addr, metadata !2964, metadata !DIExpression()), !dbg !2965
  ret i32 0, !dbg !2966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuhp_remove_state_nocalls(i32 %state) #1 !dbg !2967 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  %0 = load i32, i32* %state.addr, align 4, !dbg !2972
  call void @__cpuhp_remove_state(i32 %0, i1 zeroext false) #5, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_driver_init() #0 section ".init.text" !dbg !2975 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !2978, metadata !DIExpression()), !dbg !2979
  store i32 0, i32* %result, align 4, !dbg !2979
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !2980
  %tobool = icmp ne i32 %0, 0, !dbg !2980
  br i1 %tobool, label %if.then, label %if.end, !dbg !2982

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2983
  br label %return, !dbg !2983

if.end:                                           ; preds = %entry
  %call = call i32 @driver_register(%struct.device_driver* @acpi_processor_driver) #5, !dbg !2984
  store i32 %call, i32* %result, align 4, !dbg !2985
  %1 = load i32, i32* %result, align 4, !dbg !2986
  %cmp = icmp slt i32 %1, 0, !dbg !2988
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2989

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* %result, align 4, !dbg !2990
  store i32 %2, i32* %retval, align 4, !dbg !2991
  br label %return, !dbg !2991

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @cpuhp_setup_state_nocalls(i32 182, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* @acpi_soft_cpu_online, i32 (i32)* null) #5, !dbg !2992
  store i32 %call3, i32* %result, align 4, !dbg !2993
  %3 = load i32, i32* %result, align 4, !dbg !2994
  %cmp4 = icmp slt i32 %3, 0, !dbg !2996
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2997

if.then5:                                         ; preds = %if.end2
  br label %err, !dbg !2998

if.end6:                                          ; preds = %if.end2
  %4 = load i32, i32* %result, align 4, !dbg !2999
  store i32 %4, i32* @hp_online, align 4, !dbg !3000
  %call7 = call i32 @cpuhp_setup_state_nocalls(i32 22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* null, i32 (i32)* @acpi_soft_cpu_dead) #5, !dbg !3001
  %call8 = call i32 @cpufreq_register_notifier(%struct.notifier_block* @acpi_processor_notifier_block, i32 1) #5, !dbg !3002
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3002
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3004

if.then10:                                        ; preds = %if.end6
  store i8 1, i8* @acpi_processor_cpufreq_init, align 1, !dbg !3005
  call void @acpi_processor_ignore_ppc_init() #5, !dbg !3007
  br label %if.end11, !dbg !3008

if.end11:                                         ; preds = %if.then10, %if.end6
  call void @acpi_processor_throttling_init() #5, !dbg !3009
  store i32 0, i32* %retval, align 4, !dbg !3010
  br label %return, !dbg !3010

err:                                              ; preds = %if.then5
  call void @llvm.dbg.label(metadata !3011), !dbg !3012
  call void @driver_unregister(%struct.device_driver* @acpi_processor_driver) #5, !dbg !3013
  %5 = load i32, i32* %result, align 4, !dbg !3014
  store i32 %5, i32* %retval, align 4, !dbg !3015
  br label %return, !dbg !3015

return:                                           ; preds = %err, %if.end11, %if.then1, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3016
  ret i32 %6, !dbg !3016
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_notifier(%struct.notifier_block* %nb, i64 %event, i8* %data) #1 !dbg !3017 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %event.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %policy = alloca %struct.cpufreq_policy*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata %struct.cpufreq_policy** %policy, metadata !3024, metadata !DIExpression()), !dbg !3114
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3115
  %1 = bitcast i8* %0 to %struct.cpufreq_policy*, !dbg !3115
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %policy, align 8, !dbg !3114
  %2 = load i64, i64* %event.addr, align 8, !dbg !3116
  %cmp = icmp eq i64 %2, 0, !dbg !3118
  br i1 %cmp, label %if.then, label %if.else, !dbg !3119

if.then:                                          ; preds = %entry
  %3 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %policy, align 8, !dbg !3120
  call void @acpi_thermal_cpufreq_init(%struct.cpufreq_policy* %3) #5, !dbg !3122
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %policy, align 8, !dbg !3123
  call void @acpi_processor_ppc_init(%struct.cpufreq_policy* %4) #5, !dbg !3124
  br label %if.end3, !dbg !3125

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %event.addr, align 8, !dbg !3126
  %cmp1 = icmp eq i64 %5, 1, !dbg !3128
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3129

if.then2:                                         ; preds = %if.else
  %6 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %policy, align 8, !dbg !3130
  call void @acpi_processor_ppc_exit(%struct.cpufreq_policy* %6) #5, !dbg !3132
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %policy, align 8, !dbg !3133
  call void @acpi_thermal_cpufreq_exit(%struct.cpufreq_policy* %7) #5, !dbg !3134
  br label %if.end, !dbg !3135

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  ret i32 0, !dbg !3136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_cpufreq_init(%struct.cpufreq_policy* %policy) #1 !dbg !3137 {
entry:
  %policy.addr = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %policy, %struct.cpufreq_policy** %policy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpufreq_policy** %policy.addr, metadata !3138, metadata !DIExpression()), !dbg !3139
  ret void, !dbg !3140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_ppc_init(%struct.cpufreq_policy* %policy) #1 !dbg !3141 {
entry:
  %policy.addr = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %policy, %struct.cpufreq_policy** %policy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpufreq_policy** %policy.addr, metadata !3142, metadata !DIExpression()), !dbg !3143
  ret void, !dbg !3144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_ppc_exit(%struct.cpufreq_policy* %policy) #1 !dbg !3145 {
entry:
  %policy.addr = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %policy, %struct.cpufreq_policy** %policy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpufreq_policy** %policy.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  ret void, !dbg !3148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_thermal_cpufreq_exit(%struct.cpufreq_policy* %policy) #1 !dbg !3149 {
entry:
  %policy.addr = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %policy, %struct.cpufreq_policy** %policy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpufreq_policy** %policy.addr, metadata !3150, metadata !DIExpression()), !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: noredzone
declare dso_local void @__cpuhp_remove_state(i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_start(%struct.device* %dev) #1 !dbg !3153 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3158, metadata !DIExpression()), !dbg !3160
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3160
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !3160
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3160
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3160
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3160
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #5, !dbg !3160
  br i1 %call, label %cond.true, label %cond.false, !dbg !3160

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3161, metadata !DIExpression()), !dbg !3163
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3163
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3163
  store i8* %4, i8** %__mptr, align 8, !dbg !3163
  br label %do.body, !dbg !3163

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3164

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3163
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !3163
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3163
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !3164
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !3163
  br label %cond.end, !dbg !3160

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3160

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !3160
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3160
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3160
  store %struct.acpi_device* %8, %struct.acpi_device** %device, align 8, !dbg !3157
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3166, metadata !DIExpression()), !dbg !3167
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3168
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !3168
  br i1 %tobool, label %if.end, label %if.then, !dbg !3170

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !3171
  br label %return, !dbg !3171

if.end:                                           ; preds = %cond.end
  call void @cpu_hotplug_disable() #5, !dbg !3172
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3173
  %call2 = call i32 @__acpi_processor_start(%struct.acpi_device* %10) #5, !dbg !3174
  store i32 %call2, i32* %ret, align 4, !dbg !3175
  call void @cpu_hotplug_enable() #5, !dbg !3176
  %11 = load i32, i32* %ret, align 4, !dbg !3177
  store i32 %11, i32* %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !3179
  ret i32 %12, !dbg !3179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_processor_stop(%struct.device* %dev) #1 !dbg !3180 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_device*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !3185, metadata !DIExpression()), !dbg !3187
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3187
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 24, !dbg !3187
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3187
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3187
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3187
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #5, !dbg !3187
  br i1 %call, label %cond.true, label %cond.false, !dbg !3187

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3188, metadata !DIExpression()), !dbg !3190
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !3190
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3190
  store i8* %4, i8** %__mptr, align 8, !dbg !3190
  br label %do.body, !dbg !3190

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3191

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3190
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !3190
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !3190
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp1, align 8, !dbg !3191
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp1, align 8, !dbg !3190
  br label %cond.end, !dbg !3187

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3187

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !3187
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !3187
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !3187
  store %struct.acpi_device* %8, %struct.acpi_device** %device, align 8, !dbg !3184
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !3193, metadata !DIExpression()), !dbg !3194
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3195
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !3195
  br i1 %tobool, label %if.end, label %if.then, !dbg !3197

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !3198
  br label %return, !dbg !3198

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3199
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1, !dbg !3200
  %11 = load i8*, i8** %handle, align 8, !dbg !3200
  %call2 = call i32 @acpi_remove_notify_handler(i8* %11, i32 2, void (i8*, i32, i8*)* @acpi_processor_notify) #5, !dbg !3201
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3202
  %call3 = call i8* @acpi_driver_data(%struct.acpi_device* %12) #5, !dbg !3203
  %13 = bitcast i8* %call3 to %struct.acpi_processor*, !dbg !3203
  store %struct.acpi_processor* %13, %struct.acpi_processor** %pr, align 8, !dbg !3204
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3205
  %tobool4 = icmp ne %struct.acpi_processor* %14, null, !dbg !3205
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3207

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3208
  br label %return, !dbg !3208

if.end6:                                          ; preds = %if.end
  %15 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3209
  %call7 = call i32 @acpi_processor_power_exit(%struct.acpi_processor* %15) #5, !dbg !3210
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3211
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3212
  call void @acpi_pss_perf_exit(%struct.acpi_processor* %16, %struct.acpi_device* %17) #5, !dbg !3213
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3214
  call void @acpi_cppc_processor_exit(%struct.acpi_processor* %18) #5, !dbg !3215
  store i32 0, i32* %retval, align 4, !dbg !3216
  br label %return, !dbg !3216

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3217
  ret i32 %19, !dbg !3217
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_hotplug_disable() #1 !dbg !3218 {
entry:
  ret void, !dbg !3220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__acpi_processor_start(%struct.acpi_device* %device) #1 !dbg !3221 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !3224, metadata !DIExpression()), !dbg !3225
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3226
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %0) #5, !dbg !3227
  %1 = bitcast i8* %call to %struct.acpi_processor*, !dbg !3227
  store %struct.acpi_processor* %1, %struct.acpi_processor** %pr, align 8, !dbg !3225
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3231, metadata !DIExpression()), !dbg !3232
  store i32 0, i32* %result, align 4, !dbg !3232
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3233
  %tobool = icmp ne %struct.acpi_processor* %2, null, !dbg !3233
  br i1 %tobool, label %if.end, label %if.then, !dbg !3235

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !3236
  br label %return, !dbg !3236

if.end:                                           ; preds = %entry
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3237
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 7, !dbg !3239
  %4 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3240
  %bf.load = load i16, i16* %4, align 8, !dbg !3240
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !3240
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3240
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3240
  %tobool1 = icmp ne i8 %bf.cast, 0, !dbg !3237
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3241

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3242
  br label %return, !dbg !3242

if.end3:                                          ; preds = %if.end
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3243
  %call4 = call i32 @acpi_cppc_processor_probe(%struct.acpi_processor* %5) #5, !dbg !3244
  store i32 %call4, i32* %result, align 4, !dbg !3245
  %6 = load i32, i32* %result, align 4, !dbg !3246
  %tobool5 = icmp ne i32 %6, 0, !dbg !3246
  br i1 %tobool5, label %land.lhs.true, label %if.end7, !dbg !3248

land.lhs.true:                                    ; preds = %if.end3
  br i1 true, label %if.end7, label %if.then6, !dbg !3249

if.then6:                                         ; preds = %land.lhs.true
  br label %if.end7, !dbg !3250

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %call8 = call %struct.cpuidle_driver* @cpuidle_get_driver() #5, !dbg !3251
  %tobool9 = icmp ne %struct.cpuidle_driver* %call8, null, !dbg !3251
  br i1 %tobool9, label %lor.lhs.false, label %if.then11, !dbg !3253

lor.lhs.false:                                    ; preds = %if.end7
  %call10 = call %struct.cpuidle_driver* @cpuidle_get_driver() #5, !dbg !3254
  %cmp = icmp eq %struct.cpuidle_driver* %call10, @acpi_idle_driver, !dbg !3255
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !3256

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3257
  %call12 = call i32 @acpi_processor_power_init(%struct.acpi_processor* %7) #5, !dbg !3258
  br label %if.end13, !dbg !3258

if.end13:                                         ; preds = %if.then11, %lor.lhs.false
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3259
  %9 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3260
  %call14 = call i32 @acpi_pss_perf_init(%struct.acpi_processor* %8, %struct.acpi_device* %9) #5, !dbg !3261
  store i32 %call14, i32* %result, align 4, !dbg !3262
  %10 = load i32, i32* %result, align 4, !dbg !3263
  %tobool15 = icmp ne i32 %10, 0, !dbg !3263
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3265

if.then16:                                        ; preds = %if.end13
  br label %err_power_exit, !dbg !3266

if.end17:                                         ; preds = %if.end13
  %11 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3267
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1, !dbg !3268
  %12 = load i8*, i8** %handle, align 8, !dbg !3268
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3269
  %14 = bitcast %struct.acpi_device* %13 to i8*, !dbg !3269
  %call18 = call i32 @acpi_install_notify_handler(i8* %12, i32 2, void (i8*, i32, i8*)* @acpi_processor_notify, i8* %14) #5, !dbg !3270
  store i32 %call18, i32* %status, align 4, !dbg !3271
  %15 = load i32, i32* %status, align 4, !dbg !3272
  %tobool19 = icmp ne i32 %15, 0, !dbg !3272
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !3274

if.then20:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !3275
  br label %return, !dbg !3275

if.end21:                                         ; preds = %if.end17
  store i32 -19, i32* %result, align 4, !dbg !3276
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3277
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3278
  call void @acpi_pss_perf_exit(%struct.acpi_processor* %16, %struct.acpi_device* %17) #5, !dbg !3279
  br label %err_power_exit, !dbg !3279

err_power_exit:                                   ; preds = %if.end21, %if.then16
  call void @llvm.dbg.label(metadata !3280), !dbg !3281
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3282
  %call22 = call i32 @acpi_processor_power_exit(%struct.acpi_processor* %18) #5, !dbg !3283
  %19 = load i32, i32* %result, align 4, !dbg !3284
  store i32 %19, i32* %retval, align 4, !dbg !3285
  br label %return, !dbg !3285

return:                                           ; preds = %err_power_exit, %if.then20, %if.then2, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !3286
  ret i32 %20, !dbg !3286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_hotplug_enable() #1 !dbg !3287 {
entry:
  ret void, !dbg !3288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_driver_data(%struct.acpi_device* %d) #1 !dbg !3289 {
entry:
  %d.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %d, %struct.acpi_device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %d.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  %0 = load %struct.acpi_device*, %struct.acpi_device** %d.addr, align 8, !dbg !3294
  %driver_data = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 20, !dbg !3295
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3295
  ret i8* %1, !dbg !3296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_cppc_processor_probe(%struct.acpi_processor* %pr) #1 !dbg !3297 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3298, metadata !DIExpression()), !dbg !3299
  ret i32 0, !dbg !3300
}

; Function Attrs: noredzone
declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver() #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_power_init(%struct.acpi_processor*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pss_perf_init(%struct.acpi_processor* %pr, %struct.acpi_device* %device) #1 !dbg !3301 {
entry:
  %retval = alloca i32, align 4
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %device.addr = alloca %struct.acpi_device*, align 8
  %result = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3308, metadata !DIExpression()), !dbg !3309
  store i32 0, i32* %result, align 4, !dbg !3309
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3310
  call void @acpi_processor_ppc_has_changed(%struct.acpi_processor* %0, i32 0) #5, !dbg !3311
  %1 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3312
  %call = call i32 @acpi_processor_get_throttling_info(%struct.acpi_processor* %1) #5, !dbg !3313
  %2 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3314
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %2, i32 0, i32 7, !dbg !3316
  %3 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3317
  %bf.load = load i16, i16* %3, align 8, !dbg !3317
  %bf.lshr = lshr i16 %bf.load, 2, !dbg !3317
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3317
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3317
  %tobool = icmp ne i8 %bf.cast, 0, !dbg !3314
  br i1 %tobool, label %if.then, label %if.end, !dbg !3318

if.then:                                          ; preds = %entry
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3319
  %flags1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %4, i32 0, i32 7, !dbg !3320
  %5 = bitcast %struct.acpi_processor_flags* %flags1 to i16*, !dbg !3321
  %bf.load2 = load i16, i16* %5, align 8, !dbg !3322
  %bf.clear3 = and i16 %bf.load2, -9, !dbg !3322
  %bf.set = or i16 %bf.clear3, 8, !dbg !3322
  store i16 %bf.set, i16* %5, align 8, !dbg !3322
  br label %if.end, !dbg !3319

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3323
  %7 = bitcast %struct.acpi_device* %6 to i8*, !dbg !3323
  %call4 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %7, %struct.thermal_cooling_device_ops* @processor_cooling_ops) #5, !dbg !3324
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3325
  %cdev = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 12, !dbg !3326
  store %struct.thermal_cooling_device* %call4, %struct.thermal_cooling_device** %cdev, align 8, !dbg !3327
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3328
  %cdev5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 12, !dbg !3330
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev5, align 8, !dbg !3330
  %11 = bitcast %struct.thermal_cooling_device* %10 to i8*, !dbg !3328
  %call6 = call zeroext i1 @IS_ERR(i8* %11) #5, !dbg !3331
  br i1 %call6, label %if.then7, label %if.end10, !dbg !3332

if.then7:                                         ; preds = %if.end
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3333
  %cdev8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 12, !dbg !3335
  %13 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev8, align 8, !dbg !3335
  %14 = bitcast %struct.thermal_cooling_device* %13 to i8*, !dbg !3333
  %call9 = call i64 @PTR_ERR(i8* %14) #5, !dbg !3336
  %conv = trunc i64 %call9 to i32, !dbg !3336
  store i32 %conv, i32* %result, align 4, !dbg !3337
  %15 = load i32, i32* %result, align 4, !dbg !3338
  store i32 %15, i32* %retval, align 4, !dbg !3339
  br label %return, !dbg !3339

if.end10:                                         ; preds = %if.end
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3340
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 21, !dbg !3341
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3342
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3343
  %cdev11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 12, !dbg !3344
  %18 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev11, align 8, !dbg !3344
  %device12 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %18, i32 0, i32 2, !dbg !3345
  %kobj13 = getelementptr inbounds %struct.device, %struct.device* %device12, i32 0, i32 0, !dbg !3346
  %call14 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !3347
  store i32 %call14, i32* %result, align 4, !dbg !3348
  %19 = load i32, i32* %result, align 4, !dbg !3349
  %tobool15 = icmp ne i32 %19, 0, !dbg !3349
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !3351

if.then16:                                        ; preds = %if.end10
  %20 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3352
  %dev17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 21, !dbg !3352
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3352
  br label %err_thermal_unregister, !dbg !3354

if.end18:                                         ; preds = %if.end10
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3355
  %cdev19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 12, !dbg !3356
  %22 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev19, align 8, !dbg !3356
  %device20 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %22, i32 0, i32 2, !dbg !3357
  %kobj21 = getelementptr inbounds %struct.device, %struct.device* %device20, i32 0, i32 0, !dbg !3358
  %23 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3359
  %dev22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 21, !dbg !3360
  %kobj23 = getelementptr inbounds %struct.device, %struct.device* %dev22, i32 0, i32 0, !dbg !3361
  %call24 = call i32 @sysfs_create_link(%struct.kobject* %kobj21, %struct.kobject* %kobj23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !3362
  store i32 %call24, i32* %result, align 4, !dbg !3363
  %24 = load i32, i32* %result, align 4, !dbg !3364
  %tobool25 = icmp ne i32 %24, 0, !dbg !3364
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !3366

if.then26:                                        ; preds = %if.end18
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3367
  %cdev27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %25, i32 0, i32 12, !dbg !3367
  %26 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev27, align 8, !dbg !3367
  %device28 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %26, i32 0, i32 2, !dbg !3367
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %device28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3367
  br label %err_remove_sysfs_thermal, !dbg !3369

if.end29:                                         ; preds = %if.end18
  store i32 0, i32* %retval, align 4, !dbg !3370
  br label %return, !dbg !3370

err_remove_sysfs_thermal:                         ; preds = %if.then26
  call void @llvm.dbg.label(metadata !3371), !dbg !3372
  %27 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3373
  %dev30 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 21, !dbg !3374
  %kobj31 = getelementptr inbounds %struct.device, %struct.device* %dev30, i32 0, i32 0, !dbg !3375
  call void @sysfs_remove_link(%struct.kobject* %kobj31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !3376
  br label %err_thermal_unregister, !dbg !3376

err_thermal_unregister:                           ; preds = %err_remove_sysfs_thermal, %if.then16
  call void @llvm.dbg.label(metadata !3377), !dbg !3378
  %28 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3379
  %cdev32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %28, i32 0, i32 12, !dbg !3380
  %29 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev32, align 8, !dbg !3380
  call void @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %29) #5, !dbg !3381
  %30 = load i32, i32* %result, align 4, !dbg !3382
  store i32 %30, i32* %retval, align 4, !dbg !3383
  br label %return, !dbg !3383

return:                                           ; preds = %err_thermal_unregister, %if.end29, %if.then7
  %31 = load i32, i32* %retval, align 4, !dbg !3384
  ret i32 %31, !dbg !3384
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_install_notify_handler(i8*, i32, void (i8*, i32, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_notify(i8* %handle, i32 %event, i8* %data) #1 !dbg !3385 {
entry:
  %handle.addr = alloca i8*, align 8
  %event.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %device = alloca %struct.acpi_device*, align 8
  %pr = alloca %struct.acpi_processor*, align 8
  %saved = alloca i32, align 4
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3388, metadata !DIExpression()), !dbg !3389
  store i32 %event, i32* %event.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3394, metadata !DIExpression()), !dbg !3395
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3396
  %1 = bitcast i8* %0 to %struct.acpi_device*, !dbg !3396
  store %struct.acpi_device* %1, %struct.acpi_device** %device, align 8, !dbg !3395
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.declare(metadata i32* %saved, metadata !3399, metadata !DIExpression()), !dbg !3400
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3401
  %handle1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !3403
  %3 = load i8*, i8** %handle1, align 8, !dbg !3403
  %4 = load i8*, i8** %handle.addr, align 8, !dbg !3404
  %cmp = icmp ne i8* %3, %4, !dbg !3405
  br i1 %cmp, label %if.then, label %if.end, !dbg !3406

if.then:                                          ; preds = %entry
  br label %return, !dbg !3407

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3408
  %call = call i8* @acpi_driver_data(%struct.acpi_device* %5) #5, !dbg !3409
  %6 = bitcast i8* %call to %struct.acpi_processor*, !dbg !3409
  store %struct.acpi_processor* %6, %struct.acpi_processor** %pr, align 8, !dbg !3410
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3411
  %tobool = icmp ne %struct.acpi_processor* %7, null, !dbg !3411
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3413

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !3414

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %event.addr, align 4, !dbg !3415
  switch i32 %8, label %sw.default [
    i32 128, label %sw.bb
    i32 129, label %sw.bb11
    i32 130, label %sw.bb20
  ], !dbg !3416

sw.bb:                                            ; preds = %if.end3
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3417
  %performance_platform_limit = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 5, !dbg !3419
  %10 = load i32, i32* %performance_platform_limit, align 8, !dbg !3419
  store i32 %10, i32* %saved, align 4, !dbg !3420
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3421
  call void @acpi_processor_ppc_has_changed(%struct.acpi_processor* %11, i32 1) #5, !dbg !3422
  %12 = load i32, i32* %saved, align 4, !dbg !3423
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3425
  %performance_platform_limit4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 5, !dbg !3426
  %14 = load i32, i32* %performance_platform_limit4, align 8, !dbg !3426
  %cmp5 = icmp eq i32 %12, %14, !dbg !3427
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3428

if.then6:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !3429

if.end7:                                          ; preds = %sw.bb
  %15 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3430
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 10, !dbg !3431
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 6, !dbg !3432
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %device_class, i64 0, i64 0, !dbg !3430
  %16 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3433
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %16, i32 0, i32 21, !dbg !3434
  %call8 = call i8* @dev_name(%struct.device* %dev) #5, !dbg !3435
  %17 = load i32, i32* %event.addr, align 4, !dbg !3436
  %conv = trunc i32 %17 to i8, !dbg !3436
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3437
  %performance_platform_limit9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 5, !dbg !3438
  %19 = load i32, i32* %performance_platform_limit9, align 8, !dbg !3438
  %call10 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay, i8* %call8, i8 zeroext %conv, i32 %19) #5, !dbg !3439
  br label %sw.epilog, !dbg !3440

sw.bb11:                                          ; preds = %if.end3
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3441
  %call12 = call i32 @acpi_processor_power_state_has_changed(%struct.acpi_processor* %20) #5, !dbg !3442
  %21 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3443
  %pnp13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 10, !dbg !3444
  %device_class14 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp13, i32 0, i32 6, !dbg !3445
  %arraydecay15 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class14, i64 0, i64 0, !dbg !3443
  %22 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3446
  %dev16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 21, !dbg !3447
  %call17 = call i8* @dev_name(%struct.device* %dev16) #5, !dbg !3448
  %23 = load i32, i32* %event.addr, align 4, !dbg !3449
  %conv18 = trunc i32 %23 to i8, !dbg !3449
  %call19 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay15, i8* %call17, i8 zeroext %conv18, i32 0) #5, !dbg !3450
  br label %sw.epilog, !dbg !3451

sw.bb20:                                          ; preds = %if.end3
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3452
  %call21 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %24) #5, !dbg !3453
  %25 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3454
  %pnp22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 10, !dbg !3455
  %device_class23 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp22, i32 0, i32 6, !dbg !3456
  %arraydecay24 = getelementptr inbounds [20 x i8], [20 x i8]* %device_class23, i64 0, i64 0, !dbg !3454
  %26 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3457
  %dev25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 21, !dbg !3458
  %call26 = call i8* @dev_name(%struct.device* %dev25) #5, !dbg !3459
  %27 = load i32, i32* %event.addr, align 4, !dbg !3460
  %conv27 = trunc i32 %27 to i8, !dbg !3460
  %call28 = call i32 @acpi_bus_generate_netlink_event(i8* %arraydecay24, i8* %call26, i8 zeroext %conv27, i32 0) #5, !dbg !3461
  br label %sw.epilog, !dbg !3462

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog, !dbg !3463

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb11, %if.end7, %if.then6
  br label %return, !dbg !3464

return:                                           ; preds = %sw.epilog, %if.then2, %if.then
  ret void, !dbg !3465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_pss_perf_exit(%struct.acpi_processor* %pr, %struct.acpi_device* %device) #1 !dbg !3466 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %device.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3469, metadata !DIExpression()), !dbg !3470
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3471, metadata !DIExpression()), !dbg !3472
  %0 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3473
  %cdev = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %0, i32 0, i32 12, !dbg !3475
  %1 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev, align 8, !dbg !3475
  %tobool = icmp ne %struct.thermal_cooling_device* %1, null, !dbg !3473
  br i1 %tobool, label %if.then, label %if.end, !dbg !3476

if.then:                                          ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3477
  %dev = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 21, !dbg !3479
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3480
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !3481
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3482
  %cdev1 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 12, !dbg !3483
  %4 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev1, align 8, !dbg !3483
  %device2 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %4, i32 0, i32 2, !dbg !3484
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %device2, i32 0, i32 0, !dbg !3485
  call void @sysfs_remove_link(%struct.kobject* %kobj3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !3486
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3487
  %cdev4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %5, i32 0, i32 12, !dbg !3488
  %6 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %cdev4, align 8, !dbg !3488
  call void @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %6) #5, !dbg !3489
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %pr.addr, align 8, !dbg !3490
  %cdev5 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 12, !dbg !3491
  store %struct.thermal_cooling_device* null, %struct.thermal_cooling_device** %cdev5, align 8, !dbg !3492
  br label %if.end, !dbg !3493

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3494
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_power_exit(%struct.acpi_processor*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_ppc_has_changed(%struct.acpi_processor* %pr, i32 %event_flag) #1 !dbg !2931 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  %event_flag.addr = alloca i32, align 4
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3495, metadata !DIExpression()), !dbg !3496
  store i32 %event_flag, i32* %event_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_flag.addr, metadata !3497, metadata !DIExpression()), !dbg !3498
  %0 = load i32, i32* @acpi_processor_ppc_has_changed.printout, align 4, !dbg !3499
  %tobool = icmp ne i32 %0, 0, !dbg !3499
  br i1 %tobool, label %if.then, label %if.end, !dbg !3501

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3502
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3504
  store i32 0, i32* @acpi_processor_ppc_has_changed.printout, align 4, !dbg !3505
  br label %if.end, !dbg !3506

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3507
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_get_throttling_info(%struct.acpi_processor*) #2

; Function Attrs: noredzone
declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, i8*, %struct.thermal_cooling_device_ops*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #1 !dbg !3508 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3514
  %1 = ptrtoint i8* %0 to i64, !dbg !3514
  %2 = inttoptr i64 %1 to i8*, !dbg !3514
  %3 = ptrtoint i8* %2 to i64, !dbg !3514
  %cmp = icmp uge i64 %3, -4095, !dbg !3514
  %lnot = xor i1 %cmp, true, !dbg !3514
  %lnot1 = xor i1 %lnot, true, !dbg !3514
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3514
  %conv = sext i32 %lnot.ext to i64, !dbg !3514
  %tobool = icmp ne i64 %conv, 0, !dbg !3514
  ret i1 %tobool, !dbg !3515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #1 !dbg !3516 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3519, metadata !DIExpression()), !dbg !3520
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3521
  %1 = ptrtoint i8* %0 to i64, !dbg !3522
  ret i64 %1, !dbg !3523
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_generate_netlink_event(i8*, i8*, i8 zeroext, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #1 !dbg !3524 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3529
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3531
  %1 = load i8*, i8** %init_name, align 8, !dbg !3531
  %tobool = icmp ne i8* %1, null, !dbg !3529
  br i1 %tobool, label %if.then, label %if.end, !dbg !3532

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3533
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3534
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3534
  store i8* %3, i8** %retval, align 8, !dbg !3535
  br label %return, !dbg !3535

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3536
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3537
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !3538
  store i8* %call, i8** %retval, align 8, !dbg !3539
  br label %return, !dbg !3539

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3540
  ret i8* %5, !dbg !3540
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_power_state_has_changed(%struct.acpi_processor*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #1 !dbg !3541 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3548
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3549
  %1 = load i8*, i8** %name, align 8, !dbg !3549
  ret i8* %1, !dbg !3550
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_remove_notify_handler(i8*, i32, void (i8*, i32, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_cppc_processor_exit(%struct.acpi_processor* %pr) #1 !dbg !3551 {
entry:
  %pr.addr = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %pr, %struct.acpi_processor** %pr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  ret void, !dbg !3556
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 %state, i8* %name, i32 (i32)* %startup, i32 (i32)* %teardown) #1 !dbg !3557 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %startup.addr = alloca i32 (i32)*, align 8
  %teardown.addr = alloca i32 (i32)*, align 8
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i32 (i32)* %startup, i32 (i32)** %startup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %startup.addr, metadata !3567, metadata !DIExpression()), !dbg !3568
  store i32 (i32)* %teardown, i32 (i32)** %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %teardown.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  %0 = load i32, i32* %state.addr, align 4, !dbg !3571
  %1 = load i8*, i8** %name.addr, align 8, !dbg !3572
  %2 = load i32 (i32)*, i32 (i32)** %startup.addr, align 8, !dbg !3573
  %3 = load i32 (i32)*, i32 (i32)** %teardown.addr, align 8, !dbg !3574
  %call = call i32 @__cpuhp_setup_state(i32 %0, i8* %1, i1 zeroext false, i32 (i32)* %2, i32 (i32)* %3, i1 zeroext false) #5, !dbg !3575
  ret i32 %call, !dbg !3576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_soft_cpu_online(i32 %cpu) #1 !dbg !3577 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %pr = alloca %struct.acpi_processor*, align 8
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_processor**, align 8
  %device = alloca %struct.acpi_device*, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3578, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !3580, metadata !DIExpression()), !dbg !3581
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3582
  br label %do.body, !dbg !3584

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3586, metadata !DIExpression()), !dbg !3588
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3588
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !3588
  br label %do.end, !dbg !3588

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp1, align 8, !dbg !3588
  %2 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp1, align 8, !dbg !3584
  store %struct.acpi_processor** %2, %struct.acpi_processor*** %tmp, align 8, !dbg !3582
  %3 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !3582
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8, !dbg !3589
  store %struct.acpi_processor* %4, %struct.acpi_processor** %pr, align 8, !dbg !3581
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3590, metadata !DIExpression()), !dbg !3591
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3592
  %tobool = icmp ne %struct.acpi_processor* %5, null, !dbg !3592
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3594

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3595
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 0, !dbg !3596
  %7 = load i8*, i8** %handle, align 8, !dbg !3596
  %call = call i32 @acpi_bus_get_device(i8* %7, %struct.acpi_device** %device) #5, !dbg !3597
  %tobool2 = icmp ne i32 %call, 0, !dbg !3597
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3598

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval, align 4, !dbg !3599
  br label %return, !dbg !3599

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3600
  %flags = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 7, !dbg !3602
  %9 = bitcast %struct.acpi_processor_flags* %flags to i16*, !dbg !3603
  %bf.load = load i16, i16* %9, align 8, !dbg !3603
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !3603
  %bf.clear = and i16 %bf.lshr, 1, !dbg !3603
  %bf.cast = trunc i16 %bf.clear to i8, !dbg !3603
  %tobool3 = icmp ne i8 %bf.cast, 0, !dbg !3600
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !3604

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3605, metadata !DIExpression()), !dbg !3607
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3608
  %id = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 3, !dbg !3608
  %11 = load i32, i32* %id, align 8, !dbg !3608
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %11) #6, !dbg !3608
  %12 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3609
  %flags6 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %12, i32 0, i32 7, !dbg !3610
  %13 = bitcast %struct.acpi_processor_flags* %flags6 to i16*, !dbg !3611
  %bf.load7 = load i16, i16* %13, align 8, !dbg !3612
  %bf.clear8 = and i16 %bf.load7, -1025, !dbg !3612
  store i16 %bf.clear8, i16* %13, align 8, !dbg !3612
  %14 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !3613
  %call9 = call i32 @__acpi_processor_start(%struct.acpi_device* %14) #5, !dbg !3614
  store i32 %call9, i32* %ret, align 4, !dbg !3615
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3616, metadata !DIExpression()), !dbg !3618
  %15 = load i32, i32* %ret, align 4, !dbg !3618
  %tobool10 = icmp ne i32 %15, 0, !dbg !3618
  %lnot = xor i1 %tobool10, true, !dbg !3618
  %lnot11 = xor i1 %lnot, true, !dbg !3618
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !3618
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3618
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !3619
  %tobool12 = icmp ne i32 %16, 0, !dbg !3619
  %lnot13 = xor i1 %tobool12, true, !dbg !3619
  %lnot15 = xor i1 %lnot13, true, !dbg !3619
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !3619
  %conv = sext i32 %lnot.ext16 to i64, !dbg !3619
  %tobool17 = icmp ne i64 %conv, 0, !dbg !3619
  br i1 %tobool17, label %if.then18, label %if.end34, !dbg !3618

if.then18:                                        ; preds = %if.then4
  br label %do.body19, !dbg !3619

do.body19:                                        ; preds = %if.then18
  br label %do.body20, !dbg !3621

do.body20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3623

do.end21:                                         ; preds = %do.body20
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3621
  %id22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 3, !dbg !3621
  %18 = load i32, i32* %id22, align 8, !dbg !3621
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %18) #5, !dbg !3621
  br label %do.body23, !dbg !3621

do.body23:                                        ; preds = %do.end21
  br label %do.body24, !dbg !3625

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3627

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !3625

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 118, i32 2313, i64 12) #7, !dbg !3629, !srcloc !3631
  br label %do.end27, !dbg !3629

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #7, !dbg !3632, !srcloc !3634
  br label %do.body28, !dbg !3625

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3635

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !3625

do.end30:                                         ; preds = %do.end29
  br label %do.body31, !dbg !3621

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !3637

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !3621

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !3621

if.end34:                                         ; preds = %do.end33, %if.then4
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !3618
  %tobool36 = icmp ne i32 %19, 0, !dbg !3618
  %lnot37 = xor i1 %tobool36, true, !dbg !3618
  %lnot39 = xor i1 %lnot37, true, !dbg !3618
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3618
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3618
  store i64 %conv41, i64* %tmp35, align 8, !dbg !3619
  %20 = load i64, i64* %tmp35, align 8, !dbg !3618
  br label %if.end44, !dbg !3639

if.else:                                          ; preds = %if.end
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3640
  call void @acpi_processor_ppc_has_changed(%struct.acpi_processor* %21, i32 0) #5, !dbg !3642
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3643
  %call42 = call i32 @acpi_processor_hotplug(%struct.acpi_processor* %22) #5, !dbg !3644
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3645
  call void @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %23, i1 zeroext false) #5, !dbg !3646
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3647
  %call43 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %24) #5, !dbg !3648
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end34
  store i32 0, i32* %retval, align 4, !dbg !3649
  br label %return, !dbg !3649

return:                                           ; preds = %if.end44, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !3650
  ret i32 %25, !dbg !3650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_soft_cpu_dead(i32 %cpu) #1 !dbg !3651 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %pr = alloca %struct.acpi_processor*, align 8
  %tmp = alloca %struct.acpi_processor**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_processor**, align 8
  %device = alloca %struct.acpi_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.declare(metadata %struct.acpi_processor** %pr, metadata !3654, metadata !DIExpression()), !dbg !3655
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3656
  br label %do.body, !dbg !3658

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3660, metadata !DIExpression()), !dbg !3662
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3662
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !3662
  br label %do.end, !dbg !3662

do.end:                                           ; preds = %do.body
  store %struct.acpi_processor** @processors, %struct.acpi_processor*** %tmp1, align 8, !dbg !3662
  %2 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp1, align 8, !dbg !3658
  store %struct.acpi_processor** %2, %struct.acpi_processor*** %tmp, align 8, !dbg !3656
  %3 = load %struct.acpi_processor**, %struct.acpi_processor*** %tmp, align 8, !dbg !3656
  %4 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8, !dbg !3663
  store %struct.acpi_processor* %4, %struct.acpi_processor** %pr, align 8, !dbg !3655
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !3664, metadata !DIExpression()), !dbg !3665
  %5 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3666
  %tobool = icmp ne %struct.acpi_processor* %5, null, !dbg !3666
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3668

lor.lhs.false:                                    ; preds = %do.end
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3669
  %handle = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %6, i32 0, i32 0, !dbg !3670
  %7 = load i8*, i8** %handle, align 8, !dbg !3670
  %call = call i32 @acpi_bus_get_device(i8* %7, %struct.acpi_device** %device) #5, !dbg !3671
  %tobool2 = icmp ne i32 %call, 0, !dbg !3671
  br i1 %tobool2, label %if.then, label %if.end, !dbg !3672

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, i32* %retval, align 4, !dbg !3673
  br label %return, !dbg !3673

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %pr, align 8, !dbg !3674
  call void @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %8, i1 zeroext true) #5, !dbg !3675
  store i32 0, i32* %retval, align 4, !dbg !3676
  br label %return, !dbg !3676

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3677
  ret i32 %9, !dbg !3677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpufreq_register_notifier(%struct.notifier_block* %nb, i32 %list) #1 !dbg !3678 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %list.addr = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !3679, metadata !DIExpression()), !dbg !3680
  store i32 %list, i32* %list.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %list.addr, metadata !3681, metadata !DIExpression()), !dbg !3682
  ret i32 0, !dbg !3683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_processor_ignore_ppc_init() #1 !dbg !3684 {
entry:
  ret void, !dbg !3685
}

; Function Attrs: noredzone
declare dso_local void @acpi_processor_throttling_init() #2

; Function Attrs: noredzone
declare dso_local i32 @__cpuhp_setup_state(i32, i8*, i1 zeroext, i32 (i32)*, i32 (i32)*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_processor_hotplug(%struct.acpi_processor*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_processor_reevaluate_tstate(%struct.acpi_processor*, i1 zeroext) #2

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2937, !2938, !2939, !2940}
!llvm.ident = !{!2941}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author169", scope: !2, file: !3, line: 34, type: !2934, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !266, globals: !2890, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/processor_driver.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !185, !191, !195, !201, !206, !212, !218, !224, !231, !239, !245, !252}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !12, line: 25, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!15 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!16 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!17 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!18 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!19 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!21 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!22 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!23 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!24 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!25 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!26 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!27 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 11)
!28 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 12)
!29 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 13)
!30 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 14)
!31 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 15)
!32 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 16)
!33 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 17)
!34 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 18)
!35 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 19)
!36 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 20)
!37 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 21)
!38 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 22)
!39 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 23)
!40 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 24)
!41 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 25)
!42 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 26)
!43 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 27)
!44 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 28)
!45 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 29)
!46 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC_DEAD", value: 30)
!47 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 31)
!48 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 32)
!49 = !DIEnumerator(name: "CPUHP_IOMMU_INTEL_DEAD", value: 33)
!50 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 34)
!51 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 35)
!52 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 36)
!53 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 37)
!54 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 38)
!55 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 39)
!56 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 40)
!57 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 41)
!58 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 42)
!59 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 43)
!60 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 44)
!61 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 45)
!62 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 46)
!63 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 47)
!64 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 48)
!65 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 49)
!66 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 50)
!67 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 51)
!68 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 52)
!69 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 53)
!70 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 54)
!71 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 55)
!72 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 56)
!73 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 57)
!74 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 58)
!75 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 59)
!76 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 60)
!77 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 61)
!78 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 62)
!79 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 63)
!80 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 64)
!81 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 65)
!82 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 66)
!83 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 86)
!84 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 87)
!85 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 88)
!86 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 89)
!87 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 90)
!88 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 91)
!89 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 92)
!90 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 93)
!91 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 94)
!92 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 95)
!93 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 96)
!94 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 97)
!95 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 98)
!96 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 99)
!97 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 100)
!98 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 101)
!99 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 102)
!100 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 103)
!101 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 104)
!102 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 105)
!103 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 106)
!104 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 107)
!105 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 108)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_SDEI_STARTING", value: 109)
!107 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 110)
!108 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 111)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 112)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 113)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 114)
!112 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 115)
!113 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 116)
!114 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 117)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 118)
!116 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 119)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 120)
!118 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 121)
!119 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 122)
!120 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 123)
!121 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 124)
!122 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 125)
!123 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 126)
!124 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 127)
!125 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 128)
!126 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 129)
!127 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 130)
!128 = !DIEnumerator(name: "CPUHP_AP_KVM_STARTING", value: 131)
!129 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING", value: 132)
!130 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_STARTING", value: 133)
!131 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_TIMER_STARTING", value: 134)
!132 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 135)
!133 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 136)
!134 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 137)
!135 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 138)
!136 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 139)
!137 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 140)
!138 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 141)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 142)
!140 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 143)
!141 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 144)
!142 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 145)
!143 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 146)
!144 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 147)
!145 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 148)
!146 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 149)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 150)
!148 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 151)
!149 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 152)
!150 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 153)
!151 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 154)
!152 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 155)
!153 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 156)
!154 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 157)
!155 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 158)
!156 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 159)
!157 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 160)
!158 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 161)
!159 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 162)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 163)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 164)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 165)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 166)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 167)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 168)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 169)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 170)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 171)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 172)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 173)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 174)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 175)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 176)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 177)
!175 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 178)
!176 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 179)
!177 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 180)
!178 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 181)
!179 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 182)
!180 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 212)
!181 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 213)
!182 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 214)
!183 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 215)
!184 = !DIEnumerator(name: "CPUHP_ONLINE", value: 216)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !186, line: 41, baseType: !7, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!189 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!190 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !186, line: 80, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194}
!193 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpufreq_table_sorting", file: !196, line: 37, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "CPUFREQ_TABLE_UNSORTED", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_ASCENDING", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "CPUFREQ_TABLE_SORTED_DESCENDING", value: 2, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !202, line: 65, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205}
!204 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !207, line: 16, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!210 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !213, line: 26, baseType: !7, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !216, !217}
!215 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!217 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !219, line: 44, baseType: !7, size: 32, elements: !220)
!219 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!223 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !225, line: 343, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !229, !230}
!227 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!228 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!230 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !232, line: 524, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!235 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!236 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!237 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!238 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !232, line: 502, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!242 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!243 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!244 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !186, line: 99, baseType: !7, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !251}
!247 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!248 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!249 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!250 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!251 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !253, line: 76, baseType: !7, size: 32, elements: !254)
!253 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!255 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!256 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!259 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!260 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!261 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!262 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!263 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!264 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!265 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!266 = !{!267, !268, !427, !412, !2689}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !270, line: 351, size: 10880, elements: !271)
!270 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273, !276, !2416, !2417, !2418, !2419, !2420, !2421, !2430, !2447, !2521, !2550, !2574, !2595, !2601, !2610, !2642, !2656, !2678, !2682, !2683, !2684, !2685, !2686, !2687, !2688}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !269, file: !270, line: 352, baseType: !13, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !269, file: !270, line: 353, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !275, line: 424, baseType: !267)
!275 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !269, file: !270, line: 354, baseType: !277, size: 192, offset: 128)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !278, line: 17, size: 192, elements: !279)
!278 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !282, !2415}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !277, file: !278, line: 18, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !277, file: !278, line: 19, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !278, line: 110, size: 1152, elements: !286)
!286 = !{!287, !291, !295, !304, !2357, !2361, !2365, !2370, !2374, !2375, !2379, !2383, !2387, !2398, !2399, !2400, !2401, !2411}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !285, file: !278, line: 111, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!281, !281}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !285, file: !278, line: 112, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !281}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !285, file: !278, line: 113, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !302}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !300, line: 30, baseType: !301)
!300 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!301 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !285, file: !278, line: 114, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!308, !302, !310}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !225, line: 461, size: 5568, elements: !313)
!313 = !{!314, !1818, !1820, !1823, !1824, !1875, !1972, !1973, !1974, !1975, !1976, !1985, !2162, !2175, !2282, !2283, !2287, !2289, !2290, !2291, !2295, !2301, !2302, !2305, !2306, !2307, !2310, !2311, !2312, !2313, !2345, !2346, !2347, !2350, !2353, !2354, !2355, !2356}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !312, file: !225, line: 462, baseType: !315, size: 512)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !316, line: 64, size: 512, elements: !317)
!316 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !322, !328, !330, !390, !1654, !1808, !1813, !1814, !1815, !1816, !1817}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 65, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !315, file: !316, line: 66, baseType: !323, size: 128, offset: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !300, line: 178, size: 128, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !300, line: 179, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !323, file: !300, line: 179, baseType: !326, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !316, line: 67, baseType: !329, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !315, file: !316, line: 68, baseType: !331, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !316, line: 192, size: 704, elements: !333)
!333 = !{!334, !335, !351, !352}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !332, file: !316, line: 193, baseType: !323, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !332, file: !316, line: 194, baseType: !336, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !337, line: 83, baseType: !338)
!337 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !337, line: 71, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !337, line: 72, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !337, line: 72, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !341, file: !337, line: 73, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !337, line: 20, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !344, file: !337, line: 21, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !348, line: 25, baseType: !349)
!348 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 25, elements: !350)
!350 = !{}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !332, file: !316, line: 195, baseType: !315, size: 512, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !332, file: !316, line: 196, baseType: !353, size: 64, offset: 640)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !316, line: 156, size: 192, elements: !356)
!356 = !{!357, !362, !367}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !355, file: !316, line: 157, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!13, !331, !329}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !316, line: 158, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!319, !331, !329}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !355, file: !316, line: 159, baseType: !368, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!13, !331, !329, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !316, line: 148, size: 20736, elements: !374)
!374 = !{!375, !380, !384, !385, !389}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !373, file: !316, line: 149, baseType: !376, size: 192)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 192, elements: !378)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!378 = !{!379}
!379 = !DISubrange(count: 3)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !373, file: !316, line: 150, baseType: !381, size: 4096, offset: 192)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 4096, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !373, file: !316, line: 151, baseType: !13, size: 32, offset: 4288)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !373, file: !316, line: 152, baseType: !386, size: 16384, offset: 4320)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 16384, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 2048)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !373, file: !316, line: 153, baseType: !13, size: 32, offset: 20704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !315, file: !316, line: 69, baseType: !391, size: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !316, line: 138, size: 448, elements: !393)
!393 = !{!394, !398, !428, !430, !1602, !1633, !1637}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !392, file: !316, line: 139, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !329}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !392, file: !316, line: 140, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !402, line: 230, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !420}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !401, file: !402, line: 231, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !329, !413, !377}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !300, line: 60, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !410, line: 73, baseType: !411)
!410 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !410, line: 15, baseType: !412)
!412 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !402, line: 30, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !414, file: !402, line: 31, baseType: !319, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !414, file: !402, line: 32, baseType: !418, size: 16, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !300, line: 19, baseType: !419)
!419 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !401, file: !402, line: 232, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!408, !329, !413, !319, !424}
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !300, line: 55, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !410, line: 72, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !410, line: 16, baseType: !427)
!427 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !392, file: !316, line: 141, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !392, file: !316, line: 142, baseType: !431, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !402, line: 84, size: 320, elements: !435)
!435 = !{!436, !437, !441, !1599, !1600}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !402, line: 85, baseType: !319, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !434, file: !402, line: 86, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!418, !329, !413, !13}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !434, file: !402, line: 88, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!418, !329, !445, !13}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !402, line: 168, size: 448, elements: !447)
!447 = !{!448, !449, !450, !451, !461, !462}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !446, file: !402, line: 169, baseType: !414, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !446, file: !402, line: 170, baseType: !424, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !446, file: !402, line: 171, baseType: !267, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !446, file: !402, line: 172, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!408, !455, !329, !445, !377, !458, !424}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !457, line: 526, flags: DIFlagFwdDecl)
!457 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !300, line: 46, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !410, line: 88, baseType: !460)
!460 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !446, file: !402, line: 174, baseType: !452, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !446, file: !402, line: 176, baseType: !463, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!13, !455, !329, !445, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !468, line: 305, size: 1472, elements: !469)
!468 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!469 = !{!470, !471, !472, !473, !474, !482, !483, !1573, !1579, !1580, !1585, !1586, !1589, !1593, !1594, !1595, !1596, !1597}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !467, file: !468, line: 308, baseType: !427, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !467, file: !468, line: 309, baseType: !427, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !467, file: !468, line: 313, baseType: !466, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !467, file: !468, line: 313, baseType: !466, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !467, file: !468, line: 315, baseType: !475, size: 192, align: 64, offset: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !476, line: 24, size: 192, align: 64, elements: !477)
!476 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{!478, !479, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !475, file: !476, line: 25, baseType: !427, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !475, file: !476, line: 26, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !475, file: !476, line: 27, baseType: !480, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !467, file: !468, line: 323, baseType: !427, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !467, file: !468, line: 327, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !468, line: 388, size: 7296, elements: !486)
!486 = !{!487, !1569}
!487 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !468, line: 389, baseType: !488, size: 7296)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !468, line: 389, size: 7296, elements: !489)
!489 = !{!490, !491, !495, !501, !505, !506, !507, !508, !509, !517, !522, !523, !524, !525, !534, !535, !536, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !571, !579, !582, !630, !631, !1539, !1540, !1543, !1547, !1548, !1551, !1552, !1553, !1556, !1568}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !488, file: !468, line: 390, baseType: !466, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !488, file: !468, line: 391, baseType: !492, size: 64, offset: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !476, line: 31, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !492, file: !476, line: 32, baseType: !480, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !488, file: !468, line: 392, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !497, line: 23, baseType: !498)
!497 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !499, line: 31, baseType: !500)
!499 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!500 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !488, file: !468, line: 394, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!427, !455, !427, !427, !427, !427}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !488, file: !468, line: 398, baseType: !427, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !488, file: !468, line: 399, baseType: !427, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !488, file: !468, line: 405, baseType: !427, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !488, file: !468, line: 406, baseType: !427, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !488, file: !468, line: 407, baseType: !510, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !457, line: 286, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 286, size: 64, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !512, file: !457, line: 286, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !516, line: 18, baseType: !427)
!516 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !488, file: !468, line: 416, baseType: !518, size: 32, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !300, line: 168, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 166, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !519, file: !300, line: 167, baseType: !13, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !488, file: !468, line: 428, baseType: !518, size: 32, offset: 608)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !488, file: !468, line: 437, baseType: !518, size: 32, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !488, file: !468, line: 447, baseType: !518, size: 32, offset: 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !488, file: !468, line: 450, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !527, line: 13, baseType: !528)
!527 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !300, line: 175, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 173, size: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !529, file: !300, line: 174, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !497, line: 22, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !499, line: 30, baseType: !460)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !488, file: !468, line: 452, baseType: !13, size: 32, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !488, file: !468, line: 454, baseType: !336, offset: 800)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !488, file: !468, line: 457, baseType: !537, size: 256, offset: 832)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !538, line: 35, size: 256, elements: !539)
!538 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !541, !542, !544}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !537, file: !538, line: 36, baseType: !526, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !537, file: !538, line: 42, baseType: !526, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !537, file: !538, line: 46, baseType: !543, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !337, line: 29, baseType: !344)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !537, file: !538, line: 47, baseType: !323, size: 128, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !488, file: !468, line: 459, baseType: !323, size: 128, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !488, file: !468, line: 466, baseType: !427, size: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !488, file: !468, line: 467, baseType: !427, size: 64, offset: 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !488, file: !468, line: 469, baseType: !427, size: 64, offset: 1344)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !488, file: !468, line: 470, baseType: !427, size: 64, offset: 1408)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !488, file: !468, line: 471, baseType: !528, size: 64, offset: 1472)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !488, file: !468, line: 472, baseType: !427, size: 64, offset: 1536)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !488, file: !468, line: 473, baseType: !427, size: 64, offset: 1600)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !488, file: !468, line: 474, baseType: !427, size: 64, offset: 1664)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !488, file: !468, line: 475, baseType: !427, size: 64, offset: 1728)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !488, file: !468, line: 477, baseType: !336, offset: 1792)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !488, file: !468, line: 478, baseType: !427, size: 64, offset: 1792)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !488, file: !468, line: 478, baseType: !427, size: 64, offset: 1856)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !488, file: !468, line: 478, baseType: !427, size: 64, offset: 1920)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !488, file: !468, line: 478, baseType: !427, size: 64, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !488, file: !468, line: 479, baseType: !427, size: 64, offset: 2048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !488, file: !468, line: 479, baseType: !427, size: 64, offset: 2112)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !488, file: !468, line: 479, baseType: !427, size: 64, offset: 2176)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !488, file: !468, line: 480, baseType: !427, size: 64, offset: 2240)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !488, file: !468, line: 480, baseType: !427, size: 64, offset: 2304)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !488, file: !468, line: 480, baseType: !427, size: 64, offset: 2368)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !488, file: !468, line: 480, baseType: !427, size: 64, offset: 2432)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !488, file: !468, line: 482, baseType: !568, size: 2816, offset: 2496)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 2816, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 44)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !488, file: !468, line: 488, baseType: !572, size: 256, offset: 5312)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !573, line: 60, size: 256, elements: !574)
!573 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !572, file: !573, line: 61, baseType: !576, size: 256)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 256, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 4)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !488, file: !468, line: 490, baseType: !580, size: 64, offset: 5568)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !468, line: 490, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !488, file: !468, line: 493, baseType: !583, size: 896, offset: 5632)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !584, line: 53, baseType: !585)
!584 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 13, size: 896, elements: !586)
!586 = !{!587, !588, !589, !590, !593, !594, !601, !602, !622, !623, !626}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !585, file: !584, line: 18, baseType: !496, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !585, file: !584, line: 28, baseType: !528, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !585, file: !584, line: 31, baseType: !537, size: 256, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !585, file: !584, line: 32, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !584, line: 32, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !585, file: !584, line: 37, baseType: !419, size: 16, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !584, line: 40, baseType: !595, size: 192, offset: 512)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !596, line: 53, size: 192, elements: !597)
!596 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !595, file: !596, line: 54, baseType: !526, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !595, file: !596, line: 55, baseType: !336, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !595, file: !596, line: 59, baseType: !323, size: 128, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !585, file: !584, line: 41, baseType: !267, size: 64, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !585, file: !584, line: 42, baseType: !603, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !606, line: 13, size: 896, elements: !607)
!606 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !605, file: !606, line: 14, baseType: !267, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !606, line: 15, baseType: !427, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !605, file: !606, line: 17, baseType: !427, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !605, file: !606, line: 17, baseType: !427, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !605, file: !606, line: 19, baseType: !412, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !605, file: !606, line: 21, baseType: !412, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !605, file: !606, line: 22, baseType: !412, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !605, file: !606, line: 23, baseType: !412, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !605, file: !606, line: 24, baseType: !412, size: 64, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !605, file: !606, line: 25, baseType: !412, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !605, file: !606, line: 26, baseType: !412, size: 64, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !605, file: !606, line: 27, baseType: !412, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !605, file: !606, line: 28, baseType: !412, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !605, file: !606, line: 29, baseType: !412, size: 64, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !585, file: !584, line: 44, baseType: !518, size: 32, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !585, file: !584, line: 50, baseType: !624, size: 16, offset: 864)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !497, line: 19, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !499, line: 24, baseType: !419)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !585, file: !584, line: 51, baseType: !627, size: 16, offset: 880)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !497, line: 18, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !499, line: 23, baseType: !629)
!629 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !468, line: 495, baseType: !427, size: 64, offset: 6528)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !488, file: !468, line: 497, baseType: !632, size: 64, offset: 6592)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !468, line: 381, size: 384, elements: !634)
!634 = !{!635, !636, !1538}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !633, file: !468, line: 382, baseType: !518, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !633, file: !468, line: 383, baseType: !637, size: 128, offset: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !468, line: 376, size: 128, elements: !638)
!638 = !{!639, !1536}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !637, file: !468, line: 377, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !642, line: 640, size: 48640, elements: !643)
!642 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !652, !654, !655, !661, !662, !663, !664, !665, !666, !667, !668, !672, !690, !701, !796, !797, !798, !809, !810, !812, !813, !814, !815, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !894, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !950, !952, !953, !954, !966, !968, !969, !970, !971, !972, !978, !979, !980, !981, !982, !983, !984, !996, !1001, !1006, !1007, !1008, !1011, !1015, !1018, !1021, !1024, !1027, !1031, !1034, !1037, !1043, !1044, !1045, !1051, !1052, !1053, !1054, !1055, !1064, !1065, !1066, !1067, !1068, !1073, !1074, !1075, !1078, !1079, !1082, !1085, !1088, !1091, !1094, !1097, !1098, !1178, !1181, !1184, !1185, !1188, !1189, !1190, !1196, !1197, !1198, !1211, !1212, !1213, !1223, !1228, !1231, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !641, file: !642, line: 646, baseType: !645, size: 128)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !646, line: 56, size: 128, elements: !647)
!646 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !646, line: 57, baseType: !427, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !645, file: !646, line: 58, baseType: !650, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !497, line: 21, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !499, line: 27, baseType: !7)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !641, file: !642, line: 649, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !412)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !641, file: !642, line: 657, baseType: !267, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !641, file: !642, line: 658, baseType: !656, size: 32, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !657, line: 113, baseType: !658)
!657 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !657, line: 111, size: 32, elements: !659)
!659 = !{!660}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !658, file: !657, line: 112, baseType: !518, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !642, line: 660, baseType: !7, size: 32, offset: 288)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !641, file: !642, line: 661, baseType: !7, size: 32, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !641, file: !642, line: 684, baseType: !13, size: 32, offset: 352)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !641, file: !642, line: 686, baseType: !13, size: 32, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !641, file: !642, line: 687, baseType: !13, size: 32, offset: 416)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !641, file: !642, line: 688, baseType: !13, size: 32, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !641, file: !642, line: 689, baseType: !7, size: 32, offset: 480)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !641, file: !642, line: 691, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !642, line: 691, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !641, file: !642, line: 692, baseType: !673, size: 832, offset: 576)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !642, line: 451, size: 832, elements: !674)
!674 = !{!675, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !673, file: !642, line: 453, baseType: !676, size: 128)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !642, line: 325, size: 128, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !676, file: !642, line: 326, baseType: !427, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !676, file: !642, line: 327, baseType: !650, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !673, file: !642, line: 454, baseType: !475, size: 192, align: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !673, file: !642, line: 455, baseType: !323, size: 128, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !673, file: !642, line: 456, baseType: !7, size: 32, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !673, file: !642, line: 458, baseType: !496, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !673, file: !642, line: 459, baseType: !496, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !673, file: !642, line: 460, baseType: !496, size: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !673, file: !642, line: 461, baseType: !496, size: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !673, file: !642, line: 463, baseType: !496, size: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !673, file: !642, line: 465, baseType: !689, offset: 832)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !642, line: 415, elements: !350)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !641, file: !642, line: 693, baseType: !691, size: 384, offset: 1408)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !642, line: 489, size: 384, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !691, file: !642, line: 490, baseType: !323, size: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !691, file: !642, line: 491, baseType: !427, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !691, file: !642, line: 492, baseType: !427, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !691, file: !642, line: 493, baseType: !7, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !691, file: !642, line: 494, baseType: !419, size: 16, offset: 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !691, file: !642, line: 495, baseType: !419, size: 16, offset: 304)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !691, file: !642, line: 497, baseType: !700, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !641, file: !642, line: 697, baseType: !702, size: 1792, offset: 1792)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !642, line: 507, size: 1792, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !793, !794}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !702, file: !642, line: 508, baseType: !475, size: 192, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !702, file: !642, line: 515, baseType: !496, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !702, file: !642, line: 516, baseType: !496, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !702, file: !642, line: 517, baseType: !496, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !702, file: !642, line: 518, baseType: !496, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !702, file: !642, line: 519, baseType: !496, size: 64, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !702, file: !642, line: 526, baseType: !532, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !702, file: !642, line: 527, baseType: !496, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !642, line: 528, baseType: !7, size: 32, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !702, file: !642, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !702, file: !642, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !702, file: !642, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !702, file: !642, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !702, file: !642, line: 563, baseType: !718, size: 512, offset: 704)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !202, line: 118, size: 512, elements: !719)
!719 = !{!720, !728, !729, !734, !786, !790, !791, !792}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !202, line: 119, baseType: !721, size: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !722, line: 9, size: 256, elements: !723)
!722 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !722, line: 10, baseType: !475, size: 192, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !721, file: !722, line: 11, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !727, line: 29, baseType: !532)
!727 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !718, file: !202, line: 120, baseType: !726, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !718, file: !202, line: 121, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!201, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !718, file: !202, line: 122, baseType: !735, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !202, line: 159, size: 512, align: 512, elements: !737)
!737 = !{!738, !758, !759, !762, !772, !773, !781, !785}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !736, file: !202, line: 160, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !202, line: 214, size: 4608, align: 512, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !202, line: 215, baseType: !543)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !740, file: !202, line: 216, baseType: !7, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !740, file: !202, line: 217, baseType: !7, size: 32, offset: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !740, file: !202, line: 218, baseType: !7, size: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !740, file: !202, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !740, file: !202, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !740, file: !202, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !740, file: !202, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !740, file: !202, line: 233, baseType: !726, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !740, file: !202, line: 234, baseType: !733, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !740, file: !202, line: 235, baseType: !726, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !740, file: !202, line: 236, baseType: !733, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !740, file: !202, line: 237, baseType: !755, size: 4096, offset: 512)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 4096, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 8)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !736, file: !202, line: 161, baseType: !7, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !736, file: !202, line: 162, baseType: !760, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !300, line: 27, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !410, line: 96, baseType: !13)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !736, file: !202, line: 163, baseType: !763, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !764, line: 276, baseType: !765)
!764 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !764, line: 276, size: 32, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !765, file: !764, line: 276, baseType: !768, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !764, line: 70, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !764, line: 65, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !769, file: !764, line: 66, baseType: !7, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !736, file: !202, line: 164, baseType: !733, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !736, file: !202, line: 165, baseType: !774, size: 128, offset: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !722, line: 14, size: 128, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !774, file: !722, line: 15, baseType: !777, size: 128)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !476, line: 125, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !777, file: !476, line: 126, baseType: !492, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !777, file: !476, line: 127, baseType: !480, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !736, file: !202, line: 166, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!726}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !736, file: !202, line: 167, baseType: !726, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !718, file: !202, line: 123, baseType: !787, size: 8, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !497, line: 17, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !499, line: 21, baseType: !789)
!789 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !718, file: !202, line: 124, baseType: !787, size: 8, offset: 456)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !718, file: !202, line: 125, baseType: !787, size: 8, offset: 464)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !718, file: !202, line: 126, baseType: !787, size: 8, offset: 472)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !702, file: !642, line: 572, baseType: !718, size: 512, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !702, file: !642, line: 580, baseType: !795, size: 64, offset: 1728)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !641, file: !642, line: 721, baseType: !7, size: 32, offset: 3584)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !641, file: !642, line: 722, baseType: !13, size: 32, offset: 3616)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !641, file: !642, line: 723, baseType: !799, size: 64, offset: 3648)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !802, line: 17, baseType: !803)
!802 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !802, line: 17, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !803, file: !802, line: 17, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 64, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 1)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !641, file: !642, line: 724, baseType: !801, size: 64, offset: 3712)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !641, file: !642, line: 749, baseType: !811, offset: 3776)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !642, line: 290, elements: !350)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !641, file: !642, line: 751, baseType: !323, size: 128, offset: 3776)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !641, file: !642, line: 757, baseType: !484, size: 64, offset: 3904)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !641, file: !642, line: 758, baseType: !484, size: 64, offset: 3968)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !641, file: !642, line: 761, baseType: !816, size: 320, offset: 4032)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !573, line: 34, size: 320, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !816, file: !573, line: 35, baseType: !496, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !816, file: !573, line: 36, baseType: !820, size: 256, offset: 64)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 256, elements: !577)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !641, file: !642, line: 766, baseType: !13, size: 32, offset: 4352)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !641, file: !642, line: 767, baseType: !13, size: 32, offset: 4384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !641, file: !642, line: 768, baseType: !13, size: 32, offset: 4416)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !641, file: !642, line: 770, baseType: !13, size: 32, offset: 4448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !641, file: !642, line: 772, baseType: !427, size: 64, offset: 4480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !641, file: !642, line: 775, baseType: !7, size: 32, offset: 4544)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !641, file: !642, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !641, file: !642, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !641, file: !642, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !641, file: !642, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !641, file: !642, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !641, file: !642, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !641, file: !642, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !641, file: !642, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !641, file: !642, line: 831, baseType: !427, size: 64, offset: 4672)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !641, file: !642, line: 833, baseType: !837, size: 384, offset: 4736)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !207, line: 25, size: 384, elements: !838)
!838 = !{!839, !844}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !837, file: !207, line: 26, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!412, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !207, line: 27, baseType: !845, size: 320, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !207, line: 27, size: 320, elements: !846)
!846 = !{!847, !857, !884}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !845, file: !207, line: 36, baseType: !848, size: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !207, line: 29, size: 320, elements: !849)
!849 = !{!850, !852, !853, !854, !855, !856}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !848, file: !207, line: 30, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !848, file: !207, line: 31, baseType: !650, size: 32, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !207, line: 32, baseType: !650, size: 32, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !848, file: !207, line: 33, baseType: !650, size: 32, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !848, file: !207, line: 34, baseType: !496, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !848, file: !207, line: 35, baseType: !851, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !845, file: !207, line: 46, baseType: !858, size: 192)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !207, line: 38, size: 192, elements: !859)
!859 = !{!860, !861, !862, !883}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !858, file: !207, line: 39, baseType: !760, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !858, file: !207, line: 40, baseType: !206, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !207, line: 41, baseType: !863, size: 64, offset: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !207, line: 41, size: 64, elements: !864)
!864 = !{!865, !873}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !863, file: !207, line: 42, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !868, line: 7, size: 128, elements: !869)
!868 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !867, file: !868, line: 8, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !410, line: 93, baseType: !460)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !867, file: !868, line: 9, baseType: !460, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !863, file: !207, line: 43, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !876, line: 7, size: 64, elements: !877)
!876 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!877 = !{!878, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !875, file: !876, line: 8, baseType: !879, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !876, line: 5, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !497, line: 20, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !499, line: 26, baseType: !13)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !875, file: !876, line: 9, baseType: !880, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !858, file: !207, line: 45, baseType: !496, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !845, file: !207, line: 54, baseType: !885, size: 256)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !845, file: !207, line: 48, size: 256, elements: !886)
!886 = !{!887, !890, !891, !892, !893}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !885, file: !207, line: 49, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !207, line: 14, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !885, file: !207, line: 50, baseType: !13, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !885, file: !207, line: 51, baseType: !13, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !885, file: !207, line: 52, baseType: !427, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !885, file: !207, line: 53, baseType: !427, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !641, file: !642, line: 835, baseType: !895, size: 32, offset: 5120)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !300, line: 22, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !410, line: 28, baseType: !13)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !641, file: !642, line: 836, baseType: !895, size: 32, offset: 5152)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !641, file: !642, line: 840, baseType: !427, size: 64, offset: 5184)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !641, file: !642, line: 849, baseType: !640, size: 64, offset: 5248)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !641, file: !642, line: 852, baseType: !640, size: 64, offset: 5312)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !641, file: !642, line: 857, baseType: !323, size: 128, offset: 5376)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !641, file: !642, line: 858, baseType: !323, size: 128, offset: 5504)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !641, file: !642, line: 859, baseType: !640, size: 64, offset: 5632)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !641, file: !642, line: 867, baseType: !323, size: 128, offset: 5696)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !641, file: !642, line: 868, baseType: !323, size: 128, offset: 5824)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !641, file: !642, line: 871, baseType: !907, size: 64, offset: 5952)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !909, line: 59, size: 768, elements: !910)
!909 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912, !913, !914, !925, !926, !933, !942}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !908, file: !909, line: 61, baseType: !656, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !908, file: !909, line: 62, baseType: !7, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !908, file: !909, line: 63, baseType: !336, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !908, file: !909, line: 65, baseType: !915, size: 256, offset: 64)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !916, size: 256, elements: !577)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !300, line: 182, size: 64, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !916, file: !300, line: 183, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !300, line: 186, size: 128, elements: !921)
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !920, file: !300, line: 187, baseType: !919, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !920, file: !300, line: 187, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !908, file: !909, line: 66, baseType: !916, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !908, file: !909, line: 68, baseType: !927, size: 128, offset: 384)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !928, line: 40, baseType: !929)
!928 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !928, line: 36, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !929, file: !928, line: 37, baseType: !336)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !929, file: !928, line: 38, baseType: !323, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !908, file: !909, line: 69, baseType: !934, size: 128, align: 64, offset: 512)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !300, line: 216, size: 128, align: 64, elements: !935)
!935 = !{!936, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !934, file: !300, line: 217, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !934, file: !300, line: 218, baseType: !939, size: 64, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !937}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !908, file: !909, line: 70, baseType: !943, size: 128, offset: 640)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 128, elements: !807)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !909, line: 54, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !944, file: !909, line: 55, baseType: !13, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !944, file: !909, line: 56, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !909, line: 56, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !641, file: !642, line: 872, baseType: !951, size: 512, offset: 6016)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 512, elements: !577)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !641, file: !642, line: 873, baseType: !323, size: 128, offset: 6528)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !641, file: !642, line: 874, baseType: !323, size: 128, offset: 6656)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !641, file: !642, line: 876, baseType: !955, size: 64, offset: 6784)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !957, line: 26, size: 192, elements: !958)
!957 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !956, file: !957, line: 27, baseType: !7, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !956, file: !957, line: 28, baseType: !961, size: 128, offset: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !962, line: 43, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !962, line: 44, baseType: !543)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !961, file: !962, line: 45, baseType: !323, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !641, file: !642, line: 879, baseType: !967, size: 64, offset: 6848)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !641, file: !642, line: 882, baseType: !967, size: 64, offset: 6912)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !641, file: !642, line: 884, baseType: !496, size: 64, offset: 6976)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !641, file: !642, line: 885, baseType: !496, size: 64, offset: 7040)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !641, file: !642, line: 890, baseType: !496, size: 64, offset: 7104)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !641, file: !642, line: 891, baseType: !973, size: 128, offset: 7168)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !642, line: 242, size: 128, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !973, file: !642, line: 244, baseType: !496, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !973, file: !642, line: 245, baseType: !496, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !973, file: !642, line: 246, baseType: !543, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !641, file: !642, line: 900, baseType: !427, size: 64, offset: 7296)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !641, file: !642, line: 901, baseType: !427, size: 64, offset: 7360)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !641, file: !642, line: 904, baseType: !496, size: 64, offset: 7424)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !641, file: !642, line: 907, baseType: !496, size: 64, offset: 7488)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !641, file: !642, line: 910, baseType: !427, size: 64, offset: 7552)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !641, file: !642, line: 911, baseType: !427, size: 64, offset: 7616)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !641, file: !642, line: 914, baseType: !985, size: 640, offset: 7680)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !986, line: 123, size: 640, elements: !987)
!986 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!987 = !{!988, !994, !995}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !985, file: !986, line: 124, baseType: !989, size: 576)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 576, elements: !378)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !986, line: 108, size: 192, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !990, file: !986, line: 109, baseType: !496, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !990, file: !986, line: 110, baseType: !774, size: 128, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !985, file: !986, line: 125, baseType: !7, size: 32, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !985, file: !986, line: 126, baseType: !7, size: 32, offset: 608)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !641, file: !642, line: 917, baseType: !997, size: 192, offset: 8320)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !986, line: 134, size: 192, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !997, file: !986, line: 135, baseType: !934, size: 128, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !997, file: !986, line: 136, baseType: !7, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !641, file: !642, line: 923, baseType: !1002, size: 64, offset: 8512)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1004)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1005, line: 11, flags: DIFlagFwdDecl)
!1005 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !641, file: !642, line: 926, baseType: !1002, size: 64, offset: 8576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !641, file: !642, line: 929, baseType: !1002, size: 64, offset: 8640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !641, file: !642, line: 933, baseType: !1009, size: 64, offset: 8704)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !642, line: 933, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !641, file: !642, line: 943, baseType: !1012, size: 128, offset: 8768)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 128, elements: !1013)
!1013 = !{!1014}
!1014 = !DISubrange(count: 16)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !641, file: !642, line: 945, baseType: !1016, size: 64, offset: 8896)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !642, line: 49, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !641, file: !642, line: 956, baseType: !1019, size: 64, offset: 8960)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !642, line: 45, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !641, file: !642, line: 959, baseType: !1022, size: 64, offset: 9024)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !642, line: 959, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !641, file: !642, line: 962, baseType: !1025, size: 64, offset: 9088)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !642, line: 66, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !641, file: !642, line: 966, baseType: !1028, size: 64, offset: 9152)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1030, line: 35, flags: DIFlagFwdDecl)
!1030 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !641, file: !642, line: 969, baseType: !1032, size: 64, offset: 9216)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !986, line: 223, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !641, file: !642, line: 970, baseType: !1035, size: 64, offset: 9280)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !642, line: 62, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !641, file: !642, line: 971, baseType: !1038, size: 64, offset: 9344)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1039, line: 25, baseType: !1040)
!1039 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 23, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1040, file: !1039, line: 24, baseType: !806, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !641, file: !642, line: 972, baseType: !1038, size: 64, offset: 9408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !641, file: !642, line: 974, baseType: !1038, size: 64, offset: 9472)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !641, file: !642, line: 975, baseType: !1046, size: 192, offset: 9536)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1047, line: 30, size: 192, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1046, file: !1047, line: 31, baseType: !323, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1046, file: !1047, line: 32, baseType: !1038, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !641, file: !642, line: 976, baseType: !427, size: 64, offset: 9728)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !641, file: !642, line: 977, baseType: !424, size: 64, offset: 9792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !641, file: !642, line: 978, baseType: !7, size: 32, offset: 9856)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !641, file: !642, line: 980, baseType: !937, size: 64, offset: 9920)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !641, file: !642, line: 989, baseType: !1056, size: 128, offset: 9984)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1057, line: 35, size: 128, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1056, file: !1057, line: 36, baseType: !13, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1056, file: !1057, line: 37, baseType: !518, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1056, file: !1057, line: 38, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1057, line: 23, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !641, file: !642, line: 992, baseType: !496, size: 64, offset: 10112)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !641, file: !642, line: 993, baseType: !496, size: 64, offset: 10176)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !641, file: !642, line: 996, baseType: !336, offset: 10240)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !641, file: !642, line: 999, baseType: !543, offset: 10240)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !641, file: !642, line: 1001, baseType: !1069, size: 64, offset: 10240)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !642, line: 636, size: 64, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !642, line: 637, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !641, file: !642, line: 1005, baseType: !777, size: 128, offset: 10304)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !641, file: !642, line: 1007, baseType: !640, size: 64, offset: 10432)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !641, file: !642, line: 1009, baseType: !1076, size: 64, offset: 10496)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !642, line: 1009, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !641, file: !642, line: 1043, baseType: !267, size: 64, offset: 10560)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !641, file: !642, line: 1046, baseType: !1080, size: 64, offset: 10624)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !642, line: 41, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !641, file: !642, line: 1050, baseType: !1083, size: 64, offset: 10688)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !642, line: 42, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !641, file: !642, line: 1054, baseType: !1086, size: 64, offset: 10752)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !642, line: 55, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !641, file: !642, line: 1056, baseType: !1089, size: 64, offset: 10816)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !642, line: 40, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !641, file: !642, line: 1058, baseType: !1092, size: 64, offset: 10880)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !642, line: 47, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !641, file: !642, line: 1061, baseType: !1095, size: 64, offset: 10944)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !642, line: 43, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !641, file: !642, line: 1064, baseType: !427, size: 64, offset: 11008)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !641, file: !642, line: 1065, baseType: !1099, size: 64, offset: 11072)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1047, line: 14, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1047, line: 12, size: 384, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !1047, line: 13, baseType: !1104, size: 384)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1101, file: !1047, line: 13, size: 384, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1104, file: !1047, line: 13, baseType: !13, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1104, file: !1047, line: 13, baseType: !13, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1104, file: !1047, line: 13, baseType: !13, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1104, file: !1047, line: 13, baseType: !1110, size: 256, offset: 128)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1111, line: 32, size: 256, elements: !1112)
!1111 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1112 = !{!1113, !1119, !1132, !1138, !1147, !1167, !1172}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1110, file: !1111, line: 37, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 34, size: 64, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1114, file: !1111, line: 35, baseType: !896, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1114, file: !1111, line: 36, baseType: !1118, size: 32, offset: 32)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !410, line: 49, baseType: !7)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1110, file: !1111, line: 45, baseType: !1120, size: 192)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 40, size: 192, elements: !1121)
!1121 = !{!1122, !1124, !1125, !1131}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1120, file: !1111, line: 41, baseType: !1123, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !410, line: 95, baseType: !13)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1120, file: !1111, line: 42, baseType: !13, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1120, file: !1111, line: 43, baseType: !1126, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1111, line: 11, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1111, line: 8, size: 64, elements: !1128)
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1127, file: !1111, line: 9, baseType: !13, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1127, file: !1111, line: 10, baseType: !267, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1120, file: !1111, line: 44, baseType: !13, size: 32, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1110, file: !1111, line: 52, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 48, size: 128, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1133, file: !1111, line: 49, baseType: !896, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1133, file: !1111, line: 50, baseType: !1118, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1133, file: !1111, line: 51, baseType: !1126, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1110, file: !1111, line: 61, baseType: !1139, size: 256)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 55, size: 256, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1146}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1139, file: !1111, line: 56, baseType: !896, size: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1139, file: !1111, line: 57, baseType: !1118, size: 32, offset: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1139, file: !1111, line: 58, baseType: !13, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1139, file: !1111, line: 59, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !410, line: 94, baseType: !411)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1139, file: !1111, line: 60, baseType: !1145, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1110, file: !1111, line: 95, baseType: !1148, size: 256)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 64, size: 256, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1148, file: !1111, line: 65, baseType: !267, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !1111, line: 77, baseType: !1152, size: 192, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !1111, line: 77, size: 192, elements: !1153)
!1153 = !{!1154, !1155, !1162}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1152, file: !1111, line: 82, baseType: !629, size: 16)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1152, file: !1111, line: 88, baseType: !1156, size: 192)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !1111, line: 84, size: 192, elements: !1157)
!1157 = !{!1158, !1160, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1156, file: !1111, line: 85, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 64, elements: !756)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1156, file: !1111, line: 86, baseType: !267, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1156, file: !1111, line: 87, baseType: !267, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1152, file: !1111, line: 93, baseType: !1163, size: 96)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !1111, line: 90, size: 96, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1163, file: !1111, line: 91, baseType: !1159, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1163, file: !1111, line: 92, baseType: !651, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1110, file: !1111, line: 101, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 98, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1168, file: !1111, line: 99, baseType: !412, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1168, file: !1111, line: 100, baseType: !13, size: 32, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1110, file: !1111, line: 108, baseType: !1173, size: 128)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1111, line: 104, size: 128, elements: !1174)
!1174 = !{!1175, !1176, !1177}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1173, file: !1111, line: 105, baseType: !267, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1173, file: !1111, line: 106, baseType: !13, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1173, file: !1111, line: 107, baseType: !7, size: 32, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !641, file: !642, line: 1067, baseType: !1179, offset: 11136)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1180, line: 12, elements: !350)
!1180 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !641, file: !642, line: 1099, baseType: !1182, size: 64, offset: 11136)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !642, line: 56, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !641, file: !642, line: 1103, baseType: !323, size: 128, offset: 11200)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !641, file: !642, line: 1104, baseType: !1186, size: 64, offset: 11328)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !642, line: 46, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !641, file: !642, line: 1105, baseType: !595, size: 192, offset: 11392)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !641, file: !642, line: 1106, baseType: !7, size: 32, offset: 11584)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !641, file: !642, line: 1109, baseType: !1191, size: 128, offset: 11648)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 128, elements: !1194)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !642, line: 51, flags: DIFlagFwdDecl)
!1194 = !{!1195}
!1195 = !DISubrange(count: 2)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !641, file: !642, line: 1110, baseType: !595, size: 192, offset: 11776)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !641, file: !642, line: 1111, baseType: !323, size: 128, offset: 11968)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !641, file: !642, line: 1173, baseType: !1199, size: 64, offset: 12096)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1201, line: 62, size: 256, align: 256, elements: !1202)
!1201 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1204, !1205, !1210}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1200, file: !1201, line: 75, baseType: !651, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1200, file: !1201, line: 90, baseType: !651, size: 32, offset: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1200, file: !1201, line: 124, baseType: !1206, size: 64, offset: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1200, file: !1201, line: 109, size: 64, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1206, file: !1201, line: 110, baseType: !498, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1206, file: !1201, line: 112, baseType: !498, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !1201, line: 144, baseType: !651, size: 32, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !641, file: !642, line: 1174, baseType: !650, size: 32, offset: 12160)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !641, file: !642, line: 1179, baseType: !427, size: 64, offset: 12224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !641, file: !642, line: 1182, baseType: !1214, size: 128, offset: 12288)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !573, line: 76, size: 128, elements: !1215)
!1215 = !{!1216, !1221, !1222}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1214, file: !573, line: 85, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1218, line: 7, size: 64, elements: !1219)
!1218 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1217, file: !1218, line: 12, baseType: !803, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1214, file: !573, line: 88, baseType: !299, size: 8, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1214, file: !573, line: 95, baseType: !299, size: 8, offset: 72)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !642, line: 1184, baseType: !1224, size: 128, offset: 12416)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 1184, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1224, file: !642, line: 1185, baseType: !656, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1224, file: !642, line: 1186, baseType: !934, size: 128, align: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !641, file: !642, line: 1190, baseType: !1229, size: 64, offset: 12544)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !642, line: 53, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !641, file: !642, line: 1192, baseType: !1232, size: 128, offset: 12608)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !573, line: 64, size: 128, elements: !1233)
!1233 = !{!1234, !1327, !1328}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1232, file: !573, line: 65, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !468, line: 68, size: 512, align: 128, elements: !1237)
!1237 = !{!1238, !1239, !1319, !1326}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !468, line: 69, baseType: !427, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !468, line: 77, baseType: !1240, size: 320, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !468, line: 77, size: 320, elements: !1241)
!1241 = !{!1242, !1251, !1256, !1284, !1292, !1298, !1311, !1318}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 78, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 78, size: 320, elements: !1244)
!1244 = !{!1245, !1246, !1249, !1250}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1243, file: !468, line: 84, baseType: !323, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1243, file: !468, line: 86, baseType: !1247, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !468, line: 26, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1243, file: !468, line: 87, baseType: !427, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1243, file: !468, line: 94, baseType: !427, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 96, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 96, size: 64, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1252, file: !468, line: 101, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !300, line: 143, baseType: !496)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 103, baseType: !1257, size: 320)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 103, size: 320, elements: !1258)
!1258 = !{!1259, !1269, !1272, !1273}
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !468, line: 104, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !468, line: 104, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1260, file: !468, line: 105, baseType: !323, size: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !468, line: 106, baseType: !1264, size: 128)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !468, line: 106, size: 128, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1264, file: !468, line: 107, baseType: !1235, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1264, file: !468, line: 109, baseType: !13, size: 32, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1264, file: !468, line: 110, baseType: !13, size: 32, offset: 96)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1257, file: !468, line: 117, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !468, line: 117, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1257, file: !468, line: 119, baseType: !267, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !468, line: 120, baseType: !1274, size: 64, offset: 256)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !468, line: 120, size: 64, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1274, file: !468, line: 121, baseType: !267, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1274, file: !468, line: 122, baseType: !427, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !468, line: 123, baseType: !1279, size: 32)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !468, line: 123, size: 32, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1279, file: !468, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1279, file: !468, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1279, file: !468, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 130, baseType: !1285, size: 192)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 130, size: 192, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1285, file: !468, line: 131, baseType: !427, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1285, file: !468, line: 134, baseType: !789, size: 8, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1285, file: !468, line: 135, baseType: !789, size: 8, offset: 72)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1285, file: !468, line: 136, baseType: !518, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1285, file: !468, line: 137, baseType: !7, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 139, baseType: !1293, size: 256)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 139, size: 256, elements: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1293, file: !468, line: 140, baseType: !427, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1293, file: !468, line: 141, baseType: !518, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1293, file: !468, line: 143, baseType: !323, size: 128, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 145, baseType: !1299, size: 256)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 145, size: 256, elements: !1300)
!1300 = !{!1301, !1302, !1304, !1305, !1310}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1299, file: !468, line: 146, baseType: !427, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1299, file: !468, line: 147, baseType: !1303, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !457, line: 509, baseType: !1235)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1299, file: !468, line: 148, baseType: !427, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !468, line: 149, baseType: !1306, size: 64, offset: 192)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1299, file: !468, line: 149, size: 64, elements: !1307)
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1306, file: !468, line: 150, baseType: !484, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1306, file: !468, line: 151, baseType: !518, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1299, file: !468, line: 156, baseType: !336, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !468, line: 159, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !468, line: 159, size: 128, elements: !1313)
!1313 = !{!1314, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1312, file: !468, line: 161, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !468, line: 161, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1312, file: !468, line: 162, baseType: !267, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1240, file: !468, line: 176, baseType: !934, size: 128, align: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !468, line: 179, baseType: !1320, size: 32, offset: 384)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1236, file: !468, line: 179, size: 32, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1320, file: !468, line: 184, baseType: !518, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1320, file: !468, line: 192, baseType: !7, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1320, file: !468, line: 194, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1320, file: !468, line: 195, baseType: !13, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1236, file: !468, line: 199, baseType: !518, size: 32, offset: 416)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1232, file: !573, line: 67, baseType: !651, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1232, file: !573, line: 68, baseType: !651, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !641, file: !642, line: 1206, baseType: !13, size: 32, offset: 12736)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !641, file: !642, line: 1207, baseType: !13, size: 32, offset: 12768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !641, file: !642, line: 1209, baseType: !427, size: 64, offset: 12800)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !641, file: !642, line: 1219, baseType: !496, size: 64, offset: 12864)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !641, file: !642, line: 1220, baseType: !496, size: 64, offset: 12928)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !641, file: !642, line: 1317, baseType: !13, size: 32, offset: 12992)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !641, file: !642, line: 1319, baseType: !640, size: 64, offset: 13056)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !641, file: !642, line: 1322, baseType: !1337, size: 64, offset: 13120)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1339, line: 56, size: 512, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1347, !1348, !1350}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1338, file: !1339, line: 57, baseType: !1337, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1338, file: !1339, line: 58, baseType: !267, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1338, file: !1339, line: 59, baseType: !427, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1338, file: !1339, line: 60, baseType: !427, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1338, file: !1339, line: 61, baseType: !1346, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1338, file: !1339, line: 62, baseType: !7, size: 32, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1338, file: !1339, line: 63, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !300, line: 153, baseType: !496)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1338, file: !1339, line: 64, baseType: !308, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !641, file: !642, line: 1326, baseType: !656, size: 32, offset: 13184)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !641, file: !642, line: 1342, baseType: !267, size: 64, offset: 13248)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !641, file: !642, line: 1343, baseType: !498, size: 64, offset: 13312)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !641, file: !642, line: 1344, baseType: !496, size: 64, offset: 13376)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !641, file: !642, line: 1345, baseType: !498, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !641, file: !642, line: 1346, baseType: !498, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !641, file: !642, line: 1347, baseType: !498, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !641, file: !642, line: 1348, baseType: !934, size: 128, align: 64, offset: 13504)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !641, file: !642, line: 1358, baseType: !1360, size: 34816, offset: 13824)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1361, line: 485, size: 34816, elements: !1362)
!1361 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1362 = !{!1363, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392, !1393, !1394, !1395, !1396, !1397, !1400, !1401, !1402}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1360, file: !1361, line: 487, baseType: !1364, size: 192)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1365, size: 192, elements: !378)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1366, line: 16, size: 64, elements: !1367)
!1366 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1365, file: !1366, line: 17, baseType: !624, size: 16)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1365, file: !1366, line: 18, baseType: !624, size: 16, offset: 16)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1365, file: !1366, line: 19, baseType: !624, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1365, file: !1366, line: 19, baseType: !624, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1365, file: !1366, line: 19, baseType: !624, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1365, file: !1366, line: 19, baseType: !624, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1365, file: !1366, line: 19, baseType: !624, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1365, file: !1366, line: 20, baseType: !624, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1365, file: !1366, line: 20, baseType: !624, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1365, file: !1366, line: 20, baseType: !624, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1365, file: !1366, line: 20, baseType: !624, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1365, file: !1366, line: 20, baseType: !624, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1365, file: !1366, line: 20, baseType: !624, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1360, file: !1361, line: 491, baseType: !427, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1360, file: !1361, line: 495, baseType: !419, size: 16, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1360, file: !1361, line: 496, baseType: !419, size: 16, offset: 272)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1360, file: !1361, line: 497, baseType: !419, size: 16, offset: 288)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1360, file: !1361, line: 498, baseType: !419, size: 16, offset: 304)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1360, file: !1361, line: 502, baseType: !427, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1360, file: !1361, line: 503, baseType: !427, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1360, file: !1361, line: 514, baseType: !1389, size: 256, offset: 448)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 256, elements: !577)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1361, line: 483, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1360, file: !1361, line: 516, baseType: !427, size: 64, offset: 704)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1360, file: !1361, line: 518, baseType: !427, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1360, file: !1361, line: 520, baseType: !427, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1360, file: !1361, line: 521, baseType: !427, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1360, file: !1361, line: 522, baseType: !427, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1360, file: !1361, line: 528, baseType: !1398, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1361, line: 10, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1360, file: !1361, line: 535, baseType: !427, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1360, file: !1361, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1360, file: !1361, line: 540, baseType: !1403, size: 33280, offset: 1536)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1404, line: 317, size: 33280, elements: !1405)
!1404 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1403, file: !1404, line: 330, baseType: !7, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1403, file: !1404, line: 337, baseType: !427, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1403, file: !1404, line: 348, baseType: !1409, size: 32768, offset: 512)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1404, line: 304, size: 32768, elements: !1410)
!1410 = !{!1411, !1426, !1465, !1515, !1532}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1409, file: !1404, line: 305, baseType: !1412, size: 896)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1404, line: 12, size: 896, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1425}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1412, file: !1404, line: 13, baseType: !650, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1412, file: !1404, line: 14, baseType: !650, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1412, file: !1404, line: 15, baseType: !650, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1412, file: !1404, line: 16, baseType: !650, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1412, file: !1404, line: 17, baseType: !650, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1412, file: !1404, line: 18, baseType: !650, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1412, file: !1404, line: 19, baseType: !650, size: 32, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1412, file: !1404, line: 22, baseType: !1422, size: 640, offset: 224)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 640, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 20)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1412, file: !1404, line: 25, baseType: !650, size: 32, offset: 864)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1409, file: !1404, line: 306, baseType: !1427, size: 4096, align: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1404, line: 34, size: 4096, align: 128, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1448, !1449, !1450, !1454, !1456, !1460}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1427, file: !1404, line: 35, baseType: !624, size: 16)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1427, file: !1404, line: 36, baseType: !624, size: 16, offset: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1427, file: !1404, line: 37, baseType: !624, size: 16, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1427, file: !1404, line: 38, baseType: !624, size: 16, offset: 48)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1404, line: 39, baseType: !1434, size: 128, offset: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1404, line: 39, size: 128, elements: !1435)
!1435 = !{!1436, !1441}
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1404, line: 40, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !1404, line: 40, size: 128, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1437, file: !1404, line: 41, baseType: !496, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1437, file: !1404, line: 42, baseType: !496, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !1404, line: 44, baseType: !1442, size: 128)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1434, file: !1404, line: 44, size: 128, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1442, file: !1404, line: 45, baseType: !650, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1442, file: !1404, line: 46, baseType: !650, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1442, file: !1404, line: 47, baseType: !650, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1442, file: !1404, line: 48, baseType: !650, size: 32, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1427, file: !1404, line: 51, baseType: !650, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1427, file: !1404, line: 52, baseType: !650, size: 32, offset: 224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1427, file: !1404, line: 55, baseType: !1451, size: 1024, offset: 256)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 1024, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1427, file: !1404, line: 58, baseType: !1455, size: 2048, offset: 1280)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 2048, elements: !382)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1427, file: !1404, line: 60, baseType: !1457, size: 384, offset: 3328)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 384, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 12)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1404, line: 62, baseType: !1461, size: 384, offset: 3712)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1404, line: 62, size: 384, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1461, file: !1404, line: 63, baseType: !1457, size: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1461, file: !1404, line: 64, baseType: !1457, size: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1409, file: !1404, line: 307, baseType: !1466, size: 1088)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1404, line: 79, size: 1088, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1514}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1466, file: !1404, line: 80, baseType: !650, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1466, file: !1404, line: 81, baseType: !650, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1466, file: !1404, line: 82, baseType: !650, size: 32, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1466, file: !1404, line: 83, baseType: !650, size: 32, offset: 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1466, file: !1404, line: 84, baseType: !650, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1466, file: !1404, line: 85, baseType: !650, size: 32, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1466, file: !1404, line: 86, baseType: !650, size: 32, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1466, file: !1404, line: 88, baseType: !1422, size: 640, offset: 224)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1466, file: !1404, line: 89, baseType: !787, size: 8, offset: 864)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1466, file: !1404, line: 90, baseType: !787, size: 8, offset: 872)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1466, file: !1404, line: 91, baseType: !787, size: 8, offset: 880)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1466, file: !1404, line: 92, baseType: !787, size: 8, offset: 888)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1466, file: !1404, line: 93, baseType: !787, size: 8, offset: 896)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1466, file: !1404, line: 94, baseType: !787, size: 8, offset: 904)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1466, file: !1404, line: 95, baseType: !1483, size: 64, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1485, line: 11, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1484, file: !1485, line: 12, baseType: !412, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1484, file: !1485, line: 13, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1491, line: 56, size: 1344, elements: !1492)
!1491 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1490, file: !1491, line: 61, baseType: !427, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1490, file: !1491, line: 62, baseType: !427, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1490, file: !1491, line: 63, baseType: !427, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1490, file: !1491, line: 64, baseType: !427, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1490, file: !1491, line: 65, baseType: !427, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1490, file: !1491, line: 66, baseType: !427, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1490, file: !1491, line: 68, baseType: !427, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1490, file: !1491, line: 69, baseType: !427, size: 64, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1490, file: !1491, line: 70, baseType: !427, size: 64, offset: 512)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1490, file: !1491, line: 71, baseType: !427, size: 64, offset: 576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1490, file: !1491, line: 72, baseType: !427, size: 64, offset: 640)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1490, file: !1491, line: 73, baseType: !427, size: 64, offset: 704)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1490, file: !1491, line: 74, baseType: !427, size: 64, offset: 768)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1490, file: !1491, line: 75, baseType: !427, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1490, file: !1491, line: 76, baseType: !427, size: 64, offset: 896)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1490, file: !1491, line: 81, baseType: !427, size: 64, offset: 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1490, file: !1491, line: 83, baseType: !427, size: 64, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1490, file: !1491, line: 84, baseType: !427, size: 64, offset: 1088)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1491, line: 85, baseType: !427, size: 64, offset: 1152)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1490, file: !1491, line: 86, baseType: !427, size: 64, offset: 1216)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1490, file: !1491, line: 87, baseType: !427, size: 64, offset: 1280)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1466, file: !1404, line: 96, baseType: !650, size: 32, offset: 1024)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1409, file: !1404, line: 308, baseType: !1516, size: 4608, align: 512)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1404, line: 289, size: 4608, align: 512, elements: !1517)
!1517 = !{!1518, !1519, !1528}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1516, file: !1404, line: 290, baseType: !1427, size: 4096, align: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1516, file: !1404, line: 291, baseType: !1520, size: 512, offset: 4096)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1404, line: 268, size: 512, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1520, file: !1404, line: 269, baseType: !496, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1520, file: !1404, line: 270, baseType: !496, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1520, file: !1404, line: 271, baseType: !1525, size: 384, offset: 128)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 384, elements: !1526)
!1526 = !{!1527}
!1527 = !DISubrange(count: 6)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1516, file: !1404, line: 292, baseType: !1529, offset: 4608)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1409, file: !1404, line: 309, baseType: !1533, size: 32768)
!1533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 32768, elements: !1534)
!1534 = !{!1535}
!1535 = !DISubrange(count: 4096)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !637, file: !468, line: 378, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !633, file: !468, line: 384, baseType: !956, size: 192, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !488, file: !468, line: 500, baseType: !336, offset: 6656)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !488, file: !468, line: 501, baseType: !1541, size: 64, offset: 6656)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !468, line: 387, flags: DIFlagFwdDecl)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !488, file: !468, line: 516, baseType: !1544, size: 64, offset: 6720)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1546, line: 18, flags: DIFlagFwdDecl)
!1546 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !488, file: !468, line: 519, baseType: !455, size: 64, offset: 6784)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !488, file: !468, line: 521, baseType: !1549, size: 64, offset: 6848)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !468, line: 521, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !488, file: !468, line: 545, baseType: !518, size: 32, offset: 6912)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !488, file: !468, line: 548, baseType: !299, size: 8, offset: 6944)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !488, file: !468, line: 550, baseType: !1554, offset: 6952)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1555, line: 142, elements: !350)
!1555 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !488, file: !468, line: 554, baseType: !1557, size: 256, offset: 6976)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1558, line: 102, size: 256, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1557, file: !1558, line: 103, baseType: !526, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1557, file: !1558, line: 104, baseType: !323, size: 128, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1557, file: !1558, line: 105, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1558, line: 21, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !488, file: !468, line: 557, baseType: !650, size: 32, offset: 7232)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !485, file: !468, line: 565, baseType: !1570, offset: 7296)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: -1)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !467, file: !468, line: 333, baseType: !1574, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !457, line: 284, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !457, line: 284, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1575, file: !457, line: 284, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !516, line: 19, baseType: !427)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !467, file: !468, line: 334, baseType: !427, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !467, file: !468, line: 343, baseType: !1581, size: 256, offset: 704)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !468, line: 340, size: 256, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1581, file: !468, line: 341, baseType: !475, size: 192, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1581, file: !468, line: 342, baseType: !427, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !467, file: !468, line: 351, baseType: !323, size: 128, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !467, file: !468, line: 353, baseType: !1587, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !468, line: 353, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !467, file: !468, line: 356, baseType: !1590, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !468, line: 356, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !467, file: !468, line: 359, baseType: !427, size: 64, offset: 1216)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !467, file: !468, line: 361, baseType: !455, size: 64, offset: 1280)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !467, file: !468, line: 362, baseType: !267, size: 64, offset: 1344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !467, file: !468, line: 365, baseType: !526, size: 64, offset: 1408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !467, file: !468, line: 373, baseType: !1598, offset: 1472)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !468, line: 296, elements: !350)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !434, file: !402, line: 90, baseType: !429, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !434, file: !402, line: 91, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !392, file: !316, line: 143, baseType: !1603, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1606, !329}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !213, line: 39, size: 384, elements: !1609)
!1609 = !{!1610, !1611, !1615, !1619, !1625, !1629}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !213, line: 40, baseType: !212, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1608, file: !213, line: 41, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!299}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1608, file: !213, line: 42, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!267}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1608, file: !213, line: 43, baseType: !1620, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!308, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !213, line: 19, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1608, file: !213, line: 44, baseType: !1626, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!308}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1608, file: !213, line: 45, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !267}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !392, file: !316, line: 144, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!308, !329}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !392, file: !316, line: 145, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{null, !329, !1641, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1546, line: 23, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1546, line: 21, size: 32, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1643, file: !1546, line: 22, baseType: !1646, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !300, line: 32, baseType: !1118)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1546, line: 28, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1546, line: 26, size: 32, elements: !1650)
!1650 = !{!1651}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1649, file: !1546, line: 27, baseType: !1652, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !300, line: 33, baseType: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !410, line: 50, baseType: !7)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !315, file: !316, line: 70, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1657, line: 123, size: 1024, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1801, !1802, !1803, !1804, !1805}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1656, file: !1657, line: 124, baseType: !518, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1656, file: !1657, line: 125, baseType: !518, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1656, file: !1657, line: 135, baseType: !1655, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !1657, line: 136, baseType: !319, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1656, file: !1657, line: 138, baseType: !475, size: 192, align: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1656, file: !1657, line: 140, baseType: !308, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1656, file: !1657, line: 141, baseType: !7, size: 32, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1657, line: 142, baseType: !1667, size: 256, offset: 512)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !1657, line: 142, size: 256, elements: !1668)
!1668 = !{!1669, !1724, !1728}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1667, file: !1657, line: 143, baseType: !1670, size: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1657, line: 91, size: 192, elements: !1671)
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1670, file: !1657, line: 92, baseType: !427, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1670, file: !1657, line: 94, baseType: !492, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1670, file: !1657, line: 100, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1657, line: 180, size: 704, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1694, !1695, !1696, !1722, !1723}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1676, file: !1657, line: 182, baseType: !1655, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1676, file: !1657, line: 183, baseType: !7, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1676, file: !1657, line: 186, baseType: !1681, size: 192, offset: 128)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1682, line: 19, size: 192, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !{!1684, !1692, !1693}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1681, file: !1682, line: 20, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1686, line: 292, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1691}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1685, file: !1686, line: 293, baseType: !336)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1685, file: !1686, line: 295, baseType: !1690, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !300, line: 148, baseType: !7)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1685, file: !1686, line: 296, baseType: !267, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1681, file: !1682, line: 21, baseType: !7, size: 32, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1681, file: !1682, line: 22, baseType: !7, size: 32, offset: 160)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1676, file: !1657, line: 187, baseType: !650, size: 32, offset: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1676, file: !1657, line: 188, baseType: !650, size: 32, offset: 352)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1676, file: !1657, line: 189, baseType: !1697, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1657, line: 168, size: 320, elements: !1699)
!1699 = !{!1700, !1706, !1710, !1714, !1718}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1698, file: !1657, line: 169, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!13, !1704, !1675}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !457, line: 539, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1698, file: !1657, line: 171, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!13, !1655, !319, !418}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1698, file: !1657, line: 173, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!13, !1655}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1698, file: !1657, line: 174, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!13, !1655, !1655, !319}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1698, file: !1657, line: 176, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!13, !1704, !1655, !1675}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1676, file: !1657, line: 192, baseType: !323, size: 128, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1676, file: !1657, line: 194, baseType: !927, size: 128, offset: 576)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1667, file: !1657, line: 144, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1657, line: 103, size: 64, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1725, file: !1657, line: 104, baseType: !1655, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1667, file: !1657, line: 145, baseType: !1729, size: 256)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1657, line: 107, size: 256, elements: !1730)
!1730 = !{!1731, !1796, !1799, !1800}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1729, file: !1657, line: 108, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1657, line: 217, size: 768, elements: !1735)
!1735 = !{!1736, !1756, !1760, !1764, !1769, !1773, !1777, !1781, !1782, !1783, !1784, !1792}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1734, file: !1657, line: 222, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!13, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1657, line: 197, size: 1088, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1741, file: !1657, line: 199, baseType: !1655, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1741, file: !1657, line: 200, baseType: !455, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1741, file: !1657, line: 201, baseType: !1704, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1741, file: !1657, line: 202, baseType: !267, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1741, file: !1657, line: 205, baseType: !595, size: 192, offset: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1741, file: !1657, line: 206, baseType: !595, size: 192, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1741, file: !1657, line: 207, baseType: !13, size: 32, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1741, file: !1657, line: 208, baseType: !323, size: 128, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1741, file: !1657, line: 209, baseType: !377, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1741, file: !1657, line: 211, baseType: !424, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1741, file: !1657, line: 212, baseType: !299, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1741, file: !1657, line: 213, baseType: !299, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1741, file: !1657, line: 214, baseType: !1590, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1734, file: !1657, line: 223, baseType: !1757, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{null, !1740}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1734, file: !1657, line: 236, baseType: !1761, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!13, !1704, !267}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1734, file: !1657, line: 238, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!267, !1704, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1734, file: !1657, line: 239, baseType: !1770, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!267, !1704, !267, !1768}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1734, file: !1657, line: 240, baseType: !1774, size: 64, offset: 320)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !1704, !267}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1734, file: !1657, line: 242, baseType: !1778, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!408, !1740, !377, !424, !458}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1734, file: !1657, line: 252, baseType: !424, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1734, file: !1657, line: 259, baseType: !299, size: 8, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1734, file: !1657, line: 260, baseType: !1778, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1734, file: !1657, line: 263, baseType: !1785, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1788, !1740, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1789, line: 52, baseType: !7)
!1789 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1657, line: 27, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1734, file: !1657, line: 266, baseType: !1793, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!13, !1740, !466}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1729, file: !1657, line: 109, baseType: !1797, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1657, line: 31, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1729, file: !1657, line: 110, baseType: !458, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1729, file: !1657, line: 111, baseType: !1655, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1656, file: !1657, line: 148, baseType: !267, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1656, file: !1657, line: 154, baseType: !496, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1656, file: !1657, line: 156, baseType: !419, size: 16, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1656, file: !1657, line: 157, baseType: !418, size: 16, offset: 912)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1656, file: !1657, line: 158, baseType: !1806, size: 64, offset: 960)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1657, line: 32, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !315, file: !316, line: 71, baseType: !1809, size: 32, offset: 448)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1810, line: 19, size: 32, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1809, file: !1810, line: 20, baseType: !656, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !315, file: !316, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !315, file: !316, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !315, file: !316, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !315, file: !316, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !315, file: !316, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !312, file: !225, line: 463, baseType: !1819, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !312, file: !225, line: 465, baseType: !1821, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !225, line: 36, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !312, file: !225, line: 467, baseType: !319, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !225, line: 468, baseType: !1825, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !225, line: 87, size: 384, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1835, !1840, !1844}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1827, file: !225, line: 88, baseType: !319, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1827, file: !225, line: 89, baseType: !431, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1827, file: !225, line: 90, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!13, !1819, !372}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1827, file: !225, line: 91, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!377, !1819, !1839, !1641, !1647}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1827, file: !225, line: 93, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1819}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1827, file: !225, line: 95, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !232, line: 278, size: 1472, elements: !1848)
!1848 = !{!1849, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1847, file: !232, line: 279, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!13, !1819}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1847, file: !232, line: 280, baseType: !1841, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1847, file: !232, line: 281, baseType: !1850, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1847, file: !232, line: 282, baseType: !1850, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1847, file: !232, line: 283, baseType: !1850, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1847, file: !232, line: 284, baseType: !1850, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1847, file: !232, line: 285, baseType: !1850, size: 64, offset: 384)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1847, file: !232, line: 286, baseType: !1850, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1847, file: !232, line: 287, baseType: !1850, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1847, file: !232, line: 288, baseType: !1850, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1847, file: !232, line: 289, baseType: !1850, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1847, file: !232, line: 290, baseType: !1850, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1847, file: !232, line: 291, baseType: !1850, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1847, file: !232, line: 292, baseType: !1850, size: 64, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1847, file: !232, line: 293, baseType: !1850, size: 64, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1847, file: !232, line: 294, baseType: !1850, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1847, file: !232, line: 295, baseType: !1850, size: 64, offset: 1024)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1847, file: !232, line: 296, baseType: !1850, size: 64, offset: 1088)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1847, file: !232, line: 297, baseType: !1850, size: 64, offset: 1152)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1847, file: !232, line: 298, baseType: !1850, size: 64, offset: 1216)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1847, file: !232, line: 299, baseType: !1850, size: 64, offset: 1280)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1847, file: !232, line: 300, baseType: !1850, size: 64, offset: 1344)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1847, file: !232, line: 301, baseType: !1850, size: 64, offset: 1408)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !312, file: !225, line: 470, baseType: !1876, size: 64, offset: 768)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1878, line: 82, size: 1408, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1965, !1968, !1971}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1877, file: !1878, line: 83, baseType: !319, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1877, file: !1878, line: 84, baseType: !319, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1877, file: !1878, line: 85, baseType: !1819, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1877, file: !1878, line: 86, baseType: !431, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1877, file: !1878, line: 87, baseType: !431, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1877, file: !1878, line: 88, baseType: !431, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1877, file: !1878, line: 90, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!13, !1819, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !219, line: 95, size: 1152, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1899, !1900, !1901, !1902, !1916, !1929, !1930, !1931, !1932, !1933, !1941, !1942, !1943, !1944, !1945, !1946}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1891, file: !219, line: 96, baseType: !319, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1891, file: !219, line: 97, baseType: !1876, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1891, file: !219, line: 99, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1898, line: 76, flags: DIFlagFwdDecl)
!1898 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1891, file: !219, line: 100, baseType: !319, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1891, file: !219, line: 102, baseType: !299, size: 8, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1891, file: !219, line: 103, baseType: !218, size: 32, offset: 288)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1891, file: !219, line: 105, baseType: !1903, size: 64, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1906, line: 262, size: 1600, elements: !1907)
!1906 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1910, !1911, !1915}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1905, file: !1906, line: 263, baseType: !1909, size: 256)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !1452)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1905, file: !1906, line: 264, baseType: !1909, size: 256, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1905, file: !1906, line: 265, baseType: !1912, size: 1024, offset: 512)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 1024, elements: !1913)
!1913 = !{!1914}
!1914 = !DISubrange(count: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1905, file: !1906, line: 266, baseType: !308, size: 64, offset: 1536)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1891, file: !219, line: 106, baseType: !1917, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1919)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1906, line: 210, size: 256, elements: !1920)
!1920 = !{!1921, !1925, !1927, !1928}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1919, file: !1906, line: 211, baseType: !1922, size: 72)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 72, elements: !1923)
!1923 = !{!1924}
!1924 = !DISubrange(count: 9)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1919, file: !1906, line: 212, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1906, line: 14, baseType: !427)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1919, file: !1906, line: 213, baseType: !651, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1919, file: !1906, line: 214, baseType: !651, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1891, file: !219, line: 108, baseType: !1850, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1891, file: !219, line: 109, baseType: !1841, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1891, file: !219, line: 110, baseType: !1850, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1891, file: !219, line: 111, baseType: !1841, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1891, file: !219, line: 112, baseType: !1934, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!13, !1819, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !232, line: 52, baseType: !1938)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !232, line: 50, size: 32, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1938, file: !232, line: 51, baseType: !13, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1891, file: !219, line: 113, baseType: !1850, size: 64, offset: 768)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1891, file: !219, line: 114, baseType: !431, size: 64, offset: 832)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1891, file: !219, line: 115, baseType: !431, size: 64, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1891, file: !219, line: 117, baseType: !1845, size: 64, offset: 960)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1891, file: !219, line: 118, baseType: !1841, size: 64, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1891, file: !219, line: 120, baseType: !1947, size: 64, offset: 1088)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !219, line: 120, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1877, file: !1878, line: 91, baseType: !1832, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1877, file: !1878, line: 92, baseType: !1850, size: 64, offset: 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1877, file: !1878, line: 93, baseType: !1841, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1877, file: !1878, line: 94, baseType: !1850, size: 64, offset: 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1877, file: !1878, line: 95, baseType: !1841, size: 64, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1877, file: !1878, line: 97, baseType: !1850, size: 64, offset: 768)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1877, file: !1878, line: 98, baseType: !1850, size: 64, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1877, file: !1878, line: 100, baseType: !1934, size: 64, offset: 896)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1877, file: !1878, line: 101, baseType: !1850, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1877, file: !1878, line: 103, baseType: !1850, size: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1877, file: !1878, line: 105, baseType: !1850, size: 64, offset: 1088)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1877, file: !1878, line: 107, baseType: !1845, size: 64, offset: 1152)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1877, file: !1878, line: 109, baseType: !1962, size: 64, offset: 1216)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1878, line: 109, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1877, file: !1878, line: 111, baseType: !1966, size: 64, offset: 1280)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1878, line: 111, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1877, file: !1878, line: 112, baseType: !1969, offset: 1344)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1970, line: 187, elements: !350)
!1970 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1877, file: !1878, line: 114, baseType: !299, size: 8, offset: 1344)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !312, file: !225, line: 471, baseType: !1890, size: 64, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !312, file: !225, line: 473, baseType: !267, size: 64, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !312, file: !225, line: 475, baseType: !267, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !312, file: !225, line: 480, baseType: !595, size: 192, offset: 1024)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !312, file: !225, line: 484, baseType: !1977, size: 576, offset: 1216)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !225, line: 361, size: 576, elements: !1978)
!1978 = !{!1979, !1980, !1981, !1982, !1983, !1984}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1977, file: !225, line: 362, baseType: !323, size: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1977, file: !225, line: 363, baseType: !323, size: 128, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1977, file: !225, line: 364, baseType: !323, size: 128, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1977, file: !225, line: 365, baseType: !323, size: 128, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1977, file: !225, line: 366, baseType: !299, size: 8, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1977, file: !225, line: 367, baseType: !224, size: 32, offset: 544)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !312, file: !225, line: 485, baseType: !1986, size: 2304, offset: 1792)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !232, line: 565, size: 2304, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2083, !2087}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1986, file: !232, line: 566, baseType: !1937, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1986, file: !232, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1986, file: !232, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1986, file: !232, line: 569, baseType: !299, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1986, file: !232, line: 570, baseType: !299, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1986, file: !232, line: 571, baseType: !299, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1986, file: !232, line: 572, baseType: !299, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1986, file: !232, line: 573, baseType: !299, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1986, file: !232, line: 574, baseType: !299, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1986, file: !232, line: 575, baseType: !299, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1986, file: !232, line: 576, baseType: !299, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1986, file: !232, line: 577, baseType: !650, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1986, file: !232, line: 578, baseType: !336, offset: 96)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1986, file: !232, line: 580, baseType: !323, size: 128, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1986, file: !232, line: 581, baseType: !956, size: 192, offset: 256)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1986, file: !232, line: 582, baseType: !2004, size: 64, offset: 448)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2006, line: 43, size: 1472, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009, !2010, !2011, !2012, !2015, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2005, file: !2006, line: 44, baseType: !319, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2005, file: !2006, line: 45, baseType: !13, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2005, file: !2006, line: 46, baseType: !323, size: 128, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2005, file: !2006, line: 47, baseType: !336, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2005, file: !2006, line: 48, baseType: !2013, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !232, line: 533, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2005, file: !2006, line: 49, baseType: !2016, size: 320, offset: 320)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2017, line: 11, size: 320, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2020, !2021, !2026}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2016, file: !2017, line: 16, baseType: !920, size: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2016, file: !2017, line: 17, baseType: !427, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2016, file: !2017, line: 18, baseType: !2022, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2016, file: !2017, line: 19, baseType: !650, size: 32, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2005, file: !2006, line: 50, baseType: !427, size: 64, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2005, file: !2006, line: 51, baseType: !726, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2005, file: !2006, line: 52, baseType: !726, size: 64, offset: 768)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2005, file: !2006, line: 53, baseType: !726, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2005, file: !2006, line: 54, baseType: !726, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2005, file: !2006, line: 55, baseType: !726, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2005, file: !2006, line: 56, baseType: !427, size: 64, offset: 1024)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2005, file: !2006, line: 57, baseType: !427, size: 64, offset: 1088)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2005, file: !2006, line: 58, baseType: !427, size: 64, offset: 1152)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2005, file: !2006, line: 59, baseType: !427, size: 64, offset: 1216)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2005, file: !2006, line: 60, baseType: !427, size: 64, offset: 1280)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2005, file: !2006, line: 61, baseType: !1819, size: 64, offset: 1344)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2005, file: !2006, line: 62, baseType: !299, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2005, file: !2006, line: 63, baseType: !299, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1986, file: !232, line: 583, baseType: !299, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1986, file: !232, line: 584, baseType: !299, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1986, file: !232, line: 585, baseType: !299, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1986, file: !232, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1986, file: !232, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1986, file: !232, line: 592, baseType: !718, size: 512, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1986, file: !232, line: 593, baseType: !496, size: 64, offset: 1088)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1986, file: !232, line: 594, baseType: !1557, size: 256, offset: 1152)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1986, file: !232, line: 595, baseType: !927, size: 128, offset: 1408)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1986, file: !232, line: 596, baseType: !2013, size: 64, offset: 1536)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1986, file: !232, line: 597, baseType: !518, size: 32, offset: 1600)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1986, file: !232, line: 598, baseType: !518, size: 32, offset: 1632)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1986, file: !232, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1986, file: !232, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1986, file: !232, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1986, file: !232, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1986, file: !232, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1986, file: !232, line: 604, baseType: !299, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1986, file: !232, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1986, file: !232, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1986, file: !232, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1986, file: !232, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1986, file: !232, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1986, file: !232, line: 610, baseType: !7, size: 32, offset: 1696)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1986, file: !232, line: 611, baseType: !231, size: 32, offset: 1728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1986, file: !232, line: 612, baseType: !239, size: 32, offset: 1760)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1986, file: !232, line: 613, baseType: !13, size: 32, offset: 1792)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1986, file: !232, line: 614, baseType: !13, size: 32, offset: 1824)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1986, file: !232, line: 615, baseType: !496, size: 64, offset: 1856)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1986, file: !232, line: 616, baseType: !496, size: 64, offset: 1920)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1986, file: !232, line: 617, baseType: !496, size: 64, offset: 1984)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1986, file: !232, line: 618, baseType: !496, size: 64, offset: 2048)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1986, file: !232, line: 620, baseType: !2074, size: 64, offset: 2112)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !232, line: 536, size: 256, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2075, file: !232, line: 537, baseType: !336)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2075, file: !232, line: 538, baseType: !7, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2075, file: !232, line: 540, baseType: !323, size: 128, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2075, file: !232, line: 543, baseType: !2081, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !232, line: 534, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1986, file: !232, line: 621, baseType: !2084, size: 64, offset: 2176)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{null, !1819, !880}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1986, file: !232, line: 622, baseType: !2088, size: 64, offset: 2240)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !186, line: 117, size: 2304, elements: !2090)
!2090 = !{!2091, !2120, !2121, !2128, !2133, !2160, !2161}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !2089, file: !186, line: 118, baseType: !2092, size: 320)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !186, line: 52, size: 320, elements: !2093)
!2093 = !{!2094, !2099, !2100, !2101, !2102, !2103}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2092, file: !186, line: 53, baseType: !2095, size: 128)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2096, line: 79, size: 128, elements: !2097)
!2096 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2095, file: !2096, line: 80, baseType: !323, size: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !2092, file: !186, line: 54, baseType: !880, size: 32, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2092, file: !186, line: 55, baseType: !880, size: 32, offset: 160)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !2092, file: !186, line: 56, baseType: !880, size: 32, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2092, file: !186, line: 57, baseType: !185, size: 32, offset: 224)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !2092, file: !186, line: 58, baseType: !2104, size: 64, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2106, line: 65, size: 320, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2105, file: !2106, line: 66, baseType: !537, size: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2105, file: !2106, line: 67, baseType: !2110, size: 64, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2106, line: 54, size: 192, elements: !2112)
!2112 = !{!2113, !2118, !2119}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2111, file: !2106, line: 55, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2106, line: 51, baseType: !2115)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!13, !2110, !427, !267}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2111, file: !2106, line: 56, baseType: !2110, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2111, file: !2106, line: 57, baseType: !13, size: 32, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !2089, file: !186, line: 119, baseType: !2092, size: 320, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2089, file: !186, line: 120, baseType: !2122, size: 1280, offset: 640)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !186, line: 85, size: 1280, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !2122, file: !186, line: 86, baseType: !2092, size: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !2122, file: !186, line: 87, baseType: !2105, size: 320, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !2122, file: !186, line: 88, baseType: !2092, size: 320, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !2122, file: !186, line: 89, baseType: !2105, size: 320, offset: 960)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !186, line: 121, baseType: !2129, size: 192, offset: 1920)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !186, line: 71, size: 192, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2129, file: !186, line: 72, baseType: !323, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !2129, file: !186, line: 73, baseType: !880, size: 32, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !2089, file: !186, line: 122, baseType: !2134, size: 64, offset: 2112)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !186, line: 107, size: 576, elements: !2136)
!2136 = !{!2137, !2138, !2159}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2135, file: !186, line: 108, baseType: !245, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2135, file: !186, line: 113, baseType: !2139, size: 448, offset: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2135, file: !186, line: 109, size: 448, elements: !2140)
!2140 = !{!2141, !2147, !2152}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2139, file: !186, line: 110, baseType: !2142, size: 320)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2096, line: 83, size: 320, elements: !2143)
!2143 = !{!2144, !2145, !2146}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2142, file: !2096, line: 84, baseType: !13, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2142, file: !2096, line: 85, baseType: !323, size: 128, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2142, file: !2096, line: 86, baseType: !323, size: 128, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !2139, file: !186, line: 111, baseType: !2148, size: 192)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !186, line: 66, size: 192, elements: !2149)
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2148, file: !186, line: 67, baseType: !323, size: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !186, line: 68, baseType: !880, size: 32, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !2139, file: !186, line: 112, baseType: !2153, size: 448)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !186, line: 92, size: 448, elements: !2154)
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2153, file: !186, line: 93, baseType: !191, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !2153, file: !186, line: 94, baseType: !2142, size: 320, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2153, file: !186, line: 95, baseType: !2158, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2135, file: !186, line: 114, baseType: !1819, size: 64, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !2089, file: !186, line: 123, baseType: !2134, size: 64, offset: 2176)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !2089, file: !186, line: 124, baseType: !2134, size: 64, offset: 2240)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !312, file: !225, line: 486, baseType: !2163, size: 64, offset: 4096)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !232, line: 642, size: 1792, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2172, !2173, !2174}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2164, file: !232, line: 643, baseType: !1847, size: 1472)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2164, file: !232, line: 644, baseType: !1850, size: 64, offset: 1472)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2164, file: !232, line: 645, baseType: !2169, size: 64, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !1819, !299}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2164, file: !232, line: 646, baseType: !1850, size: 64, offset: 1600)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2164, file: !232, line: 647, baseType: !1841, size: 64, offset: 1664)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2164, file: !232, line: 648, baseType: !1841, size: 64, offset: 1728)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !312, file: !225, line: 493, baseType: !2176, size: 64, offset: 4160)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !253, line: 162, size: 1088, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2266, !2267, !2268, !2269, !2270, !2271, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2177, file: !253, line: 163, baseType: !323, size: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !253, line: 164, baseType: !319, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2177, file: !253, line: 165, baseType: !2182, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !253, line: 105, size: 640, elements: !2185)
!2185 = !{!2186, !2215, !2226, !2231, !2235, !2243, !2247, !2251, !2258, !2262}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2184, file: !253, line: 106, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!13, !2176, !2190, !252}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2192, line: 51, size: 1344, elements: !2193)
!2192 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2193 = !{!2194, !2195, !2197, !2198, !2199, !2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !2192, line: 52, baseType: !319, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2191, file: !2192, line: 53, baseType: !2196, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2192, line: 28, baseType: !650)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2191, file: !2192, line: 54, baseType: !319, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2191, file: !2192, line: 55, baseType: !277, size: 192, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2191, file: !2192, line: 57, baseType: !2200, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2192, line: 31, size: 704, elements: !2202)
!2202 = !{!2203, !2204, !2205, !2206, !2207}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2201, file: !2192, line: 32, baseType: !377, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2201, file: !2192, line: 33, baseType: !13, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2201, file: !2192, line: 34, baseType: !267, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2201, file: !2192, line: 35, baseType: !2200, size: 64, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2201, file: !2192, line: 43, baseType: !446, size: 448, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2191, file: !2192, line: 58, baseType: !2200, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2191, file: !2192, line: 59, baseType: !2190, size: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2191, file: !2192, line: 60, baseType: !2190, size: 64, offset: 576)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2191, file: !2192, line: 61, baseType: !2190, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2191, file: !2192, line: 63, baseType: !315, size: 512, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2191, file: !2192, line: 65, baseType: !427, size: 64, offset: 1216)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2191, file: !2192, line: 66, baseType: !267, size: 64, offset: 1280)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2184, file: !253, line: 108, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!13, !2176, !2219, !252}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !253, line: 63, size: 640, elements: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2220, file: !253, line: 64, baseType: !281, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2220, file: !253, line: 65, baseType: !13, size: 32, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2220, file: !253, line: 66, baseType: !2225, size: 512, offset: 96)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 512, elements: !1013)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2184, file: !253, line: 110, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!13, !2176, !7, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !300, line: 164, baseType: !427)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2184, file: !253, line: 111, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2176, !7}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2184, file: !253, line: 112, baseType: !2236, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!13, !2176, !2190, !2239, !7, !2241, !2242}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2184, file: !253, line: 117, baseType: !2244, size: 64, offset: 320)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!13, !2176, !7, !7, !267}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2184, file: !253, line: 119, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !2176, !7, !7}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2184, file: !253, line: 121, baseType: !2252, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!13, !2176, !2255, !299}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2257, line: 11, flags: DIFlagFwdDecl)
!2257 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2184, file: !253, line: 122, baseType: !2259, size: 64, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2176, !2255}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2184, file: !253, line: 123, baseType: !2263, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!13, !2176, !2219, !2241, !2242}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2177, file: !253, line: 166, baseType: !267, size: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !253, line: 167, baseType: !7, size: 32, offset: 320)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2177, file: !253, line: 168, baseType: !7, size: 32, offset: 352)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2177, file: !253, line: 171, baseType: !281, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2177, file: !253, line: 172, baseType: !252, size: 32, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2177, file: !253, line: 173, baseType: !2272, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !253, line: 134, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2177, file: !253, line: 175, baseType: !2176, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2177, file: !253, line: 182, baseType: !2230, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2177, file: !253, line: 183, baseType: !7, size: 32, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2177, file: !253, line: 184, baseType: !7, size: 32, offset: 736)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2177, file: !253, line: 185, baseType: !1685, size: 128, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2177, file: !253, line: 186, baseType: !595, size: 192, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2177, file: !253, line: 187, baseType: !2281, offset: 1088)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1571)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !312, file: !225, line: 499, baseType: !323, size: 128, offset: 4224)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !312, file: !225, line: 502, baseType: !2284, size: 64, offset: 4352)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !225, line: 502, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !312, file: !225, line: 504, baseType: !2288, size: 64, offset: 4416)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !312, file: !225, line: 505, baseType: !496, size: 64, offset: 4480)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !312, file: !225, line: 510, baseType: !496, size: 64, offset: 4544)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !312, file: !225, line: 511, baseType: !2292, size: 64, offset: 4608)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2294)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !225, line: 511, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !312, file: !225, line: 513, baseType: !2296, size: 64, offset: 4672)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !225, line: 288, size: 128, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2297, file: !225, line: 293, baseType: !7, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2297, file: !225, line: 294, baseType: !427, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !312, file: !225, line: 515, baseType: !323, size: 128, offset: 4736)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !312, file: !225, line: 526, baseType: !2303, offset: 4864)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2304, line: 5, elements: !350)
!2304 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !312, file: !225, line: 528, baseType: !2190, size: 64, offset: 4864)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !312, file: !225, line: 529, baseType: !281, size: 64, offset: 4928)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !312, file: !225, line: 534, baseType: !2308, size: 32, offset: 4992)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !300, line: 16, baseType: !2309)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !300, line: 13, baseType: !650)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !312, file: !225, line: 535, baseType: !650, size: 32, offset: 5024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !312, file: !225, line: 537, baseType: !336, offset: 5056)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !312, file: !225, line: 538, baseType: !323, size: 128, offset: 5056)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !312, file: !225, line: 540, baseType: !2314, size: 64, offset: 5184)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2316, line: 54, size: 960, elements: !2317)
!2316 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2328, !2332, !2333, !2334, !2335, !2339, !2343, !2344}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2315, file: !2316, line: 55, baseType: !319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2315, file: !2316, line: 56, baseType: !1896, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2315, file: !2316, line: 58, baseType: !431, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2315, file: !2316, line: 59, baseType: !431, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2315, file: !2316, line: 60, baseType: !329, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2315, file: !2316, line: 62, baseType: !1832, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2315, file: !2316, line: 63, baseType: !2325, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!377, !1819, !1839}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2315, file: !2316, line: 65, baseType: !2329, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{null, !2314}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2315, file: !2316, line: 66, baseType: !1841, size: 64, offset: 512)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2315, file: !2316, line: 68, baseType: !1850, size: 64, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2315, file: !2316, line: 70, baseType: !1606, size: 64, offset: 640)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2315, file: !2316, line: 71, baseType: !2336, size: 64, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!308, !1819}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2315, file: !2316, line: 73, baseType: !2340, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !1819, !1641, !1647}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2315, file: !2316, line: 75, baseType: !1845, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2315, file: !2316, line: 77, baseType: !1966, size: 64, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !312, file: !225, line: 541, baseType: !431, size: 64, offset: 5248)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !312, file: !225, line: 543, baseType: !1841, size: 64, offset: 5312)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !312, file: !225, line: 544, baseType: !2348, size: 64, offset: 5376)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !225, line: 45, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !312, file: !225, line: 545, baseType: !2351, size: 64, offset: 5440)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !225, line: 47, flags: DIFlagFwdDecl)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !312, file: !225, line: 547, baseType: !299, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !312, file: !225, line: 548, baseType: !299, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !312, file: !225, line: 549, baseType: !299, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !312, file: !225, line: 550, baseType: !299, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !285, file: !278, line: 116, baseType: !2358, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!299, !302, !319}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !285, file: !278, line: 118, baseType: !2362, size: 64, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!13, !302, !319, !7, !267, !424}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !285, file: !278, line: 123, baseType: !2366, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!13, !302, !319, !2369, !424}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !285, file: !278, line: 126, baseType: !2371, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!319, !302}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !285, file: !278, line: 127, baseType: !2371, size: 64, offset: 512)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !285, file: !278, line: 128, baseType: !2376, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!281, !302}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !285, file: !278, line: 130, baseType: !2380, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!281, !302, !281}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !285, file: !278, line: 133, baseType: !2384, size: 64, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!281, !302, !319}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !285, file: !278, line: 135, baseType: !2388, size: 64, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!13, !302, !319, !319, !7, !7, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !278, line: 43, size: 640, elements: !2393)
!2393 = !{!2394, !2395, !2396}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2392, file: !278, line: 44, baseType: !281, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2392, file: !278, line: 45, baseType: !7, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2392, file: !278, line: 46, baseType: !2397, size: 512, offset: 128)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 512, elements: !756)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !285, file: !278, line: 140, baseType: !2380, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !285, file: !278, line: 143, baseType: !2376, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !285, file: !278, line: 145, baseType: !288, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !285, file: !278, line: 146, baseType: !2402, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!13, !302, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !278, line: 29, size: 128, elements: !2407)
!2407 = !{!2408, !2409, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2406, file: !278, line: 30, baseType: !7, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2406, file: !278, line: 31, baseType: !7, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2406, file: !278, line: 32, baseType: !302, size: 64, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !285, file: !278, line: 148, baseType: !2412, size: 64, offset: 1088)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!13, !302, !1819}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !277, file: !278, line: 20, baseType: !1819, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !269, file: !270, line: 355, baseType: !268, size: 64, offset: 320)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !269, file: !270, line: 356, baseType: !323, size: 128, offset: 384)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !269, file: !270, line: 357, baseType: !323, size: 128, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !269, file: !270, line: 358, baseType: !323, size: 128, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !269, file: !270, line: 359, baseType: !323, size: 128, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !269, file: !270, line: 360, baseType: !2422, size: 32, offset: 896)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !270, line: 179, size: 32, elements: !2423)
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2422, file: !270, line: 180, baseType: !650, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2422, file: !270, line: 181, baseType: !650, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2422, file: !270, line: 182, baseType: !650, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2422, file: !270, line: 183, baseType: !650, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2422, file: !270, line: 184, baseType: !650, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2422, file: !270, line: 185, baseType: !650, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !270, line: 361, baseType: !2431, size: 32, offset: 928)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !270, line: 190, size: 32, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2431, file: !270, line: 191, baseType: !650, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2431, file: !270, line: 192, baseType: !650, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2431, file: !270, line: 193, baseType: !650, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2431, file: !270, line: 194, baseType: !650, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2431, file: !270, line: 195, baseType: !650, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2431, file: !270, line: 196, baseType: !650, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2431, file: !270, line: 197, baseType: !650, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2431, file: !270, line: 198, baseType: !650, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2431, file: !270, line: 199, baseType: !650, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2431, file: !270, line: 200, baseType: !650, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2431, file: !270, line: 201, baseType: !650, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2431, file: !270, line: 202, baseType: !650, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2431, file: !270, line: 203, baseType: !650, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2431, file: !270, line: 204, baseType: !650, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !269, file: !270, line: 362, baseType: !2448, size: 960, offset: 960)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !270, line: 234, size: 960, elements: !2449)
!2449 = !{!2450, !2452, !2459, !2461, !2462, !2463, !2468, !2471}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2448, file: !270, line: 235, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !270, line: 217, baseType: !1159)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2448, file: !270, line: 236, baseType: !2453, size: 32, offset: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !270, line: 227, size: 32, elements: !2454)
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2453, file: !270, line: 228, baseType: !650, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2453, file: !270, line: 229, baseType: !650, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2453, file: !270, line: 230, baseType: !650, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2453, file: !270, line: 231, baseType: !650, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2448, file: !270, line: 237, baseType: !2460, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !270, line: 218, baseType: !496)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2448, file: !270, line: 238, baseType: !377, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2448, file: !270, line: 239, baseType: !323, size: 128, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2448, file: !270, line: 240, baseType: !2464, size: 320, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !270, line: 219, baseType: !2465)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 320, elements: !2466)
!2466 = !{!2467}
!2467 = !DISubrange(count: 40)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2448, file: !270, line: 241, baseType: !2469, size: 160, offset: 704)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !270, line: 220, baseType: !2470)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 160, elements: !1423)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2448, file: !270, line: 242, baseType: !2472, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !275, line: 899, size: 192, elements: !2474)
!2474 = !{!2475, !2477, !2482, !2488, !2495, !2501, !2507, !2515}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2473, file: !275, line: 900, baseType: !2476, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !275, line: 635, baseType: !650)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2473, file: !275, line: 904, baseType: !2478, size: 128)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 901, size: 128, elements: !2479)
!2479 = !{!2480, !2481}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !275, line: 902, baseType: !2476, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2478, file: !275, line: 903, baseType: !496, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2473, file: !275, line: 910, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 906, size: 128, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2483, file: !275, line: 907, baseType: !2476, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2483, file: !275, line: 908, baseType: !650, size: 32, offset: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2483, file: !275, line: 909, baseType: !377, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2473, file: !275, line: 916, baseType: !2489, size: 128)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 912, size: 128, elements: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2489, file: !275, line: 913, baseType: !2476, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2489, file: !275, line: 914, baseType: !650, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2489, file: !275, line: 915, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2473, file: !275, line: 922, baseType: !2496, size: 128)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 918, size: 128, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2496, file: !275, line: 919, baseType: !2476, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2496, file: !275, line: 920, baseType: !650, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2496, file: !275, line: 921, baseType: !2472, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2473, file: !275, line: 928, baseType: !2502, size: 128)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 924, size: 128, elements: !2503)
!2503 = !{!2504, !2505, !2506}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2502, file: !275, line: 925, baseType: !2476, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2502, file: !275, line: 926, baseType: !2476, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2502, file: !275, line: 927, baseType: !274, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2473, file: !275, line: 935, baseType: !2508, size: 192)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 930, size: 192, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2514}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2508, file: !275, line: 931, baseType: !2476, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2508, file: !275, line: 932, baseType: !650, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2508, file: !275, line: 933, baseType: !2513, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !275, line: 128, baseType: !496)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2508, file: !275, line: 934, baseType: !650, size: 32, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2473, file: !275, line: 941, baseType: !2516, size: 96)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2473, file: !275, line: 937, size: 96, elements: !2517)
!2517 = !{!2518, !2519, !2520}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2516, file: !275, line: 938, baseType: !2476, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2516, file: !275, line: 939, baseType: !650, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2516, file: !275, line: 940, baseType: !650, size: 32, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !269, file: !270, line: 363, baseType: !2522, size: 1344, offset: 1920)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !270, line: 275, size: 1344, elements: !2523)
!2523 = !{!2524, !2525, !2535}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2522, file: !270, line: 276, baseType: !13, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2522, file: !270, line: 277, baseType: !2526, size: 32, offset: 32)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !270, line: 254, size: 32, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2526, file: !270, line: 255, baseType: !650, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2526, file: !270, line: 256, baseType: !650, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2526, file: !270, line: 257, baseType: !650, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2526, file: !270, line: 258, baseType: !650, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2526, file: !270, line: 259, baseType: !650, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2526, file: !270, line: 260, baseType: !650, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2526, file: !270, line: 261, baseType: !650, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2522, file: !270, line: 278, baseType: !2536, size: 1280, offset: 64)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2537, size: 1280, elements: !2548)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !270, line: 264, size: 256, elements: !2538)
!2538 = !{!2539, !2545, !2546, !2547}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2537, file: !270, line: 269, baseType: !2540, size: 8)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !270, line: 265, size: 8, elements: !2541)
!2541 = !{!2542, !2543, !2544}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2540, file: !270, line: 266, baseType: !787, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2540, file: !270, line: 267, baseType: !787, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2540, file: !270, line: 268, baseType: !787, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2537, file: !270, line: 270, baseType: !13, size: 32, offset: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2537, file: !270, line: 271, baseType: !13, size: 32, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2537, file: !270, line: 272, baseType: !323, size: 128, offset: 128)
!2548 = !{!2549}
!2549 = !DISubrange(count: 5)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !269, file: !270, line: 364, baseType: !2551, size: 640, offset: 3264)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !270, line: 315, size: 640, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2562, !2571, !2572, !2573}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2551, file: !270, line: 316, baseType: !274, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2551, file: !270, line: 317, baseType: !496, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2551, file: !270, line: 318, baseType: !496, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2551, file: !270, line: 319, baseType: !323, size: 128, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2551, file: !270, line: 320, baseType: !2558, size: 8, offset: 320)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !270, line: 305, size: 8, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2558, file: !270, line: 306, baseType: !787, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2558, file: !270, line: 307, baseType: !787, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2551, file: !270, line: 321, baseType: !2563, size: 128, offset: 384)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !270, line: 310, size: 128, elements: !2564)
!2564 = !{!2565, !2570}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2563, file: !270, line: 311, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{null, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2563, file: !270, line: 312, baseType: !1819, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2551, file: !270, line: 322, baseType: !2004, size: 64, offset: 512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2551, file: !270, line: 323, baseType: !13, size: 32, offset: 576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2551, file: !270, line: 324, baseType: !13, size: 32, offset: 608)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !269, file: !270, line: 365, baseType: !2575, size: 192, offset: 3904)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !270, line: 297, size: 192, elements: !2576)
!2576 = !{!2577, !2578, !2582, !2583}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2575, file: !270, line: 298, baseType: !13, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !270, line: 299, baseType: !2579, size: 8, offset: 32)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !270, line: 283, size: 8, elements: !2580)
!2580 = !{!2581}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2579, file: !270, line: 284, baseType: !787, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2575, file: !270, line: 300, baseType: !13, size: 32, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2575, file: !270, line: 301, baseType: !2584, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !270, line: 287, size: 64, elements: !2586)
!2586 = !{!2587, !2592, !2593, !2594}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !270, line: 291, baseType: !2588, size: 8)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2585, file: !270, line: 288, size: 8, elements: !2589)
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2588, file: !270, line: 289, baseType: !787, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2588, file: !270, line: 290, baseType: !787, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2585, file: !270, line: 292, baseType: !787, size: 8, offset: 8)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2585, file: !270, line: 293, baseType: !787, size: 8, offset: 16)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2585, file: !270, line: 294, baseType: !13, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !269, file: !270, line: 366, baseType: !2596, size: 64, offset: 4096)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !270, line: 209, size: 64, elements: !2597)
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2596, file: !270, line: 210, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !270, line: 84, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !269, file: !270, line: 367, baseType: !2602, size: 384, offset: 4160)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !270, line: 341, size: 384, elements: !2603)
!2603 = !{!2604, !2607, !2608, !2609}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2602, file: !270, line: 342, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2602, file: !270, line: 343, baseType: !323, size: 128, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2602, file: !270, line: 344, baseType: !2605, size: 64, offset: 192)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2602, file: !270, line: 345, baseType: !323, size: 128, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !269, file: !270, line: 368, baseType: !2611, size: 64, offset: 4544)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !270, line: 122, size: 1216, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2621, !2625, !2629, !2630, !2631}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2612, file: !270, line: 123, baseType: !1917, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2612, file: !270, line: 124, baseType: !323, size: 128, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2612, file: !270, line: 125, baseType: !2617, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!299, !319, !2620}
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2612, file: !270, line: 126, baseType: !2622, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!13, !268, !1917}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2612, file: !270, line: 127, baseType: !2626, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !268}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2612, file: !270, line: 128, baseType: !1841, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2612, file: !270, line: 129, baseType: !1841, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2612, file: !270, line: 130, baseType: !2632, size: 704, offset: 512)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !270, line: 108, size: 704, elements: !2633)
!2633 = !{!2634, !2635, !2639, !2640, !2641}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2632, file: !270, line: 109, baseType: !315, size: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2632, file: !270, line: 110, baseType: !2636, size: 64, offset: 512)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!13, !268}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2632, file: !270, line: 111, baseType: !2626, size: 64, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2632, file: !270, line: 112, baseType: !299, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2632, file: !270, line: 113, baseType: !299, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !269, file: !270, line: 369, baseType: !2643, size: 64, offset: 4608)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !270, line: 138, size: 256, elements: !2645)
!2645 = !{!2646, !2647, !2651, !2655}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2644, file: !270, line: 139, baseType: !268, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2644, file: !270, line: 140, baseType: !2648, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!13, !268, !650}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2644, file: !270, line: 141, baseType: !2652, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{null, !268, !650}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2644, file: !270, line: 142, baseType: !2626, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !269, file: !270, line: 370, baseType: !2657, size: 64, offset: 4672)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !270, line: 162, size: 2816, elements: !2659)
!2659 = !{!2660, !2664, !2665, !2666, !2667, !2676, !2677}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2658, file: !270, line: 163, baseType: !2661, size: 640)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 640, elements: !2662)
!2662 = !{!2663}
!2663 = !DISubrange(count: 80)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2658, file: !270, line: 164, baseType: !2661, size: 640, offset: 640)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2658, file: !270, line: 165, baseType: !1917, size: 64, offset: 1280)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2658, file: !270, line: 166, baseType: !7, size: 32, offset: 1344)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2658, file: !270, line: 167, baseType: !2668, size: 192, offset: 1408)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !270, line: 154, size: 192, elements: !2669)
!2669 = !{!2670, !2672, !2674}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2668, file: !270, line: 155, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !270, line: 150, baseType: !2636)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2668, file: !270, line: 156, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !270, line: 151, baseType: !2636)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2668, file: !270, line: 157, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !270, line: 152, baseType: !2652)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2658, file: !270, line: 168, baseType: !1891, size: 1152, offset: 1600)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2658, file: !270, line: 169, baseType: !1896, size: 64, offset: 2752)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !269, file: !270, line: 371, baseType: !2679, size: 64, offset: 4736)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !270, line: 348, flags: DIFlagFwdDecl)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !269, file: !270, line: 372, baseType: !267, size: 64, offset: 4800)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !269, file: !270, line: 373, baseType: !312, size: 5568, offset: 4864)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !269, file: !270, line: 374, baseType: !7, size: 32, offset: 10432)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !269, file: !270, line: 375, baseType: !7, size: 32, offset: 10464)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !269, file: !270, line: 376, baseType: !323, size: 128, offset: 10496)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !269, file: !270, line: 377, baseType: !595, size: 192, offset: 10624)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !269, file: !270, line: 378, baseType: !2626, size: 64, offset: 10816)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor", file: !2692, line: 218, size: 7936, elements: !2693)
!2692 = !DIFile(filename: "./include/acpi/processor.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !{!2694, !2695, !2696, !2699, !2700, !2701, !2702, !2703, !2717, !2751, !2791, !2836, !2846, !2887, !2888, !2889}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2691, file: !2692, line: 219, baseType: !274, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_id", scope: !2691, file: !2692, line: 220, baseType: !650, size: 32, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "phys_id", scope: !2691, file: !2692, line: 221, baseType: !2697, size: 32, offset: 96)
!2697 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_cpuid_t", file: !2698, line: 266, baseType: !650)
!2698 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2691, file: !2692, line: 222, baseType: !650, size: 32, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pblk", scope: !2691, file: !2692, line: 223, baseType: !650, size: 32, offset: 160)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "performance_platform_limit", scope: !2691, file: !2692, line: 224, baseType: !13, size: 32, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "throttling_platform_limit", scope: !2691, file: !2692, line: 225, baseType: !13, size: 32, offset: 224)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2691, file: !2692, line: 228, baseType: !2704, size: 16, offset: 256)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_flags", file: !2692, line: 204, size: 16, elements: !2705)
!2705 = !{!2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2704, file: !2692, line: 205, baseType: !787, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2704, file: !2692, line: 206, baseType: !787, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !2704, file: !2692, line: 207, baseType: !787, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2704, file: !2692, line: 208, baseType: !787, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bm_control", scope: !2704, file: !2692, line: 209, baseType: !787, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "bm_check", scope: !2704, file: !2692, line: 210, baseType: !787, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "has_cst", scope: !2704, file: !2692, line: 211, baseType: !787, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "has_lpi", scope: !2704, file: !2692, line: 212, baseType: !787, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "power_setup_done", scope: !2704, file: !2692, line: 213, baseType: !787, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "bm_rld_set", scope: !2704, file: !2692, line: 214, baseType: !787, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "need_hotplug_init", scope: !2704, file: !2692, line: 215, baseType: !787, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2691, file: !2692, line: 229, baseType: !2718, size: 4736, offset: 320)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_power", file: !2692, line: 87, size: 4736, elements: !2719)
!2719 = !{!2720, !2721, !2750}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2718, file: !2692, line: 88, baseType: !13, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, scope: !2718, file: !2692, line: 89, baseType: !2722, size: 4608, offset: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !2692, line: 89, size: 4608, elements: !2723)
!2723 = !{!2724, !2736}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2722, file: !2692, line: 90, baseType: !2725, size: 3328)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2726, size: 3328, elements: !756)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_cx", file: !2692, line: 63, size: 416, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2726, file: !2692, line: 64, baseType: !787, size: 8)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2726, file: !2692, line: 65, baseType: !787, size: 8, offset: 8)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2726, file: !2692, line: 66, baseType: !650, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !2726, file: !2692, line: 67, baseType: !787, size: 8, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2726, file: !2692, line: 68, baseType: !787, size: 8, offset: 72)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2726, file: !2692, line: 69, baseType: !650, size: 32, offset: 96)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bm_sts_skip", scope: !2726, file: !2692, line: 70, baseType: !787, size: 8, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2726, file: !2692, line: 71, baseType: !1909, size: 256, offset: 136)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "lpi_states", scope: !2722, file: !2692, line: 91, baseType: !2737, size: 4608)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2738, size: 4608, elements: !756)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_lpi_state", file: !2692, line: 74, size: 576, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "min_residency", scope: !2738, file: !2692, line: 75, baseType: !650, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "wake_latency", scope: !2738, file: !2692, line: 76, baseType: !650, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2738, file: !2692, line: 77, baseType: !650, size: 32, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "arch_flags", scope: !2738, file: !2692, line: 78, baseType: !650, size: 32, offset: 96)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "res_cnt_freq", scope: !2738, file: !2692, line: 79, baseType: !650, size: 32, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "enable_parent_state", scope: !2738, file: !2692, line: 80, baseType: !650, size: 32, offset: 160)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2738, file: !2692, line: 81, baseType: !496, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2738, file: !2692, line: 82, baseType: !787, size: 8, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "entry_method", scope: !2738, file: !2692, line: 83, baseType: !787, size: 8, offset: 264)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2738, file: !2692, line: 84, baseType: !1909, size: 256, offset: 272)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "timer_broadcast_on_state", scope: !2718, file: !2692, line: 93, baseType: !13, size: 32, offset: 4672)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2691, file: !2692, line: 230, baseType: !2752, size: 64, offset: 5056)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_performance", file: !2692, line: 125, size: 896, elements: !2754)
!2754 = !{!2755, !2756, !2757, !2767, !2768, !2769, !2779, !2787, !2790}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2753, file: !2692, line: 126, baseType: !7, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !2753, file: !2692, line: 127, baseType: !7, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !2753, file: !2692, line: 128, baseType: !2758, size: 120, offset: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pct_register", file: !2692, line: 106, size: 120, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2766}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !2758, file: !2692, line: 107, baseType: !787, size: 8)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2758, file: !2692, line: 108, baseType: !624, size: 16, offset: 8)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2758, file: !2692, line: 109, baseType: !787, size: 8, offset: 24)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2758, file: !2692, line: 110, baseType: !787, size: 8, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2758, file: !2692, line: 111, baseType: !787, size: 8, offset: 40)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2758, file: !2692, line: 112, baseType: !787, size: 8, offset: 48)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2758, file: !2692, line: 113, baseType: !496, size: 64, offset: 56)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !2753, file: !2692, line: 129, baseType: !2758, size: 120, offset: 184)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2753, file: !2692, line: 130, baseType: !7, size: 32, offset: 320)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2753, file: !2692, line: 131, baseType: !2770, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_px", file: !2692, line: 116, size: 384, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776, !2777, !2778}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "core_frequency", scope: !2771, file: !2692, line: 117, baseType: !496, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2771, file: !2692, line: 118, baseType: !496, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2771, file: !2692, line: 119, baseType: !496, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master_latency", scope: !2771, file: !2692, line: 120, baseType: !496, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2771, file: !2692, line: 121, baseType: !496, size: 64, offset: 256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2771, file: !2692, line: 122, baseType: !496, size: 64, offset: 320)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !2753, file: !2692, line: 132, baseType: !2780, size: 320, offset: 448)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_psd_package", file: !2692, line: 98, size: 320, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !2780, file: !2692, line: 99, baseType: !496, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2780, file: !2692, line: 100, baseType: !496, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2780, file: !2692, line: 101, baseType: !496, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !2780, file: !2692, line: 102, baseType: !496, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !2780, file: !2692, line: 103, baseType: !496, size: 64, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !2753, file: !2692, line: 133, baseType: !2788, size: 64, offset: 768)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !802, line: 756, baseType: !2789)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 64, elements: !807)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2753, file: !2692, line: 134, baseType: !7, size: 32, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "throttling", scope: !2691, file: !2692, line: 231, baseType: !2792, size: 1600, offset: 5120)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_throttling", file: !2692, line: 170, size: 1600, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799, !2808, !2816, !2817, !2821, !2825, !2826, !2827, !2828, !2829, !2830}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2792, file: !2692, line: 171, baseType: !7, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "platform_limit", scope: !2792, file: !2692, line: 172, baseType: !7, size: 32, offset: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "control_register", scope: !2792, file: !2692, line: 173, baseType: !2758, size: 120, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "status_register", scope: !2792, file: !2692, line: 174, baseType: !2758, size: 120, offset: 184)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2792, file: !2692, line: 175, baseType: !7, size: 32, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "states_tss", scope: !2792, file: !2692, line: 176, baseType: !2800, size: 64, offset: 384)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx_tss", file: !2692, line: 157, size: 320, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "freqpercentage", scope: !2801, file: !2692, line: 158, baseType: !496, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2801, file: !2692, line: 159, baseType: !496, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !2801, file: !2692, line: 160, baseType: !496, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2801, file: !2692, line: 161, baseType: !496, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2801, file: !2692, line: 162, baseType: !496, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "domain_info", scope: !2792, file: !2692, line: 177, baseType: !2809, size: 320, offset: 448)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_tsd_package", file: !2692, line: 139, size: 320, elements: !2810)
!2810 = !{!2811, !2812, !2813, !2814, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !2809, file: !2692, line: 140, baseType: !496, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2809, file: !2692, line: 141, baseType: !496, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2809, file: !2692, line: 142, baseType: !496, size: 64, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "coord_type", scope: !2809, file: !2692, line: 143, baseType: !496, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "num_processors", scope: !2809, file: !2692, line: 144, baseType: !496, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !2792, file: !2692, line: 178, baseType: !2788, size: 64, offset: 768)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_get_throttling", scope: !2792, file: !2692, line: 179, baseType: !2818, size: 64, offset: 832)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!13, !2690}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_processor_set_throttling", scope: !2792, file: !2692, line: 180, baseType: !2822, size: 64, offset: 896)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!13, !2690, !13, !299}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2792, file: !2692, line: 183, baseType: !650, size: 32, offset: 960)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "duty_offset", scope: !2792, file: !2692, line: 184, baseType: !787, size: 8, offset: 992)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "duty_width", scope: !2792, file: !2692, line: 185, baseType: !787, size: 8, offset: 1000)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_valid_flag", scope: !2792, file: !2692, line: 186, baseType: !787, size: 8, offset: 1008)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !2792, file: !2692, line: 187, baseType: !7, size: 32, offset: 1024)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2792, file: !2692, line: 188, baseType: !2831, size: 512, offset: 1056)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2832, size: 512, elements: !1013)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_tx", file: !2692, line: 164, size: 32, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2832, file: !2692, line: 165, baseType: !624, size: 16)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2832, file: !2692, line: 166, baseType: !624, size: 16, offset: 16)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2691, file: !2692, line: 232, baseType: !2837, size: 192, offset: 6720)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_limit", file: !2692, line: 198, size: 192, elements: !2838)
!2838 = !{!2839, !2844, !2845}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2837, file: !2692, line: 199, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_processor_lx", file: !2692, line: 193, size: 64, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "px", scope: !2840, file: !2692, line: 194, baseType: !13, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !2840, file: !2692, line: 195, baseType: !13, size: 32, offset: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "thermal", scope: !2837, file: !2692, line: 200, baseType: !2840, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2837, file: !2692, line: 201, baseType: !2840, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2691, file: !2692, line: 233, baseType: !2847, size: 64, offset: 6912)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !2849, line: 93, size: 6528, elements: !2850)
!2849 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857, !2883, !2884, !2885, !2886}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2848, file: !2849, line: 94, baseType: !13, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2848, file: !2849, line: 95, baseType: !2470, size: 160, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2848, file: !2849, line: 96, baseType: !312, size: 5568, offset: 192)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2848, file: !2849, line: 97, baseType: !2190, size: 64, offset: 5760)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2848, file: !2849, line: 98, baseType: !267, size: 64, offset: 5824)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2848, file: !2849, line: 99, baseType: !267, size: 64, offset: 5888)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2848, file: !2849, line: 100, baseType: !2858, size: 64, offset: 5952)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !2849, line: 84, size: 384, elements: !2861)
!2861 = !{!2862, !2866, !2867, !2871, !2875, !2879}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2860, file: !2849, line: 85, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!13, !2847, !2241}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2860, file: !2849, line: 86, baseType: !2863, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2860, file: !2849, line: 87, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!13, !2847, !427}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2860, file: !2849, line: 88, baseType: !2872, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!13, !2847, !851}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2860, file: !2849, line: 89, baseType: !2876, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!13, !2847, !427, !851}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2860, file: !2849, line: 90, baseType: !2880, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!13, !2847, !650, !2241}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2848, file: !2849, line: 101, baseType: !299, size: 8, offset: 6016)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2848, file: !2849, line: 102, baseType: !595, size: 192, offset: 6080)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2848, file: !2849, line: 103, baseType: !323, size: 128, offset: 6272)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2848, file: !2849, line: 104, baseType: !323, size: 128, offset: 6400)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2691, file: !2692, line: 234, baseType: !1819, size: 64, offset: 6976)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "perflib_req", scope: !2691, file: !2692, line: 235, baseType: !2153, size: 448, offset: 7040)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_req", scope: !2691, file: !2692, line: 236, baseType: !2153, size: 448, offset: 7488)
!2890 = !{!0, !2891, !2894, !2899, !2904, !2906, !2913, !2918, !2920, !2922, !2924, !2926, !2929}
!2891 = !DIGlobalVariableExpression(var: !2892, expr: !DIExpression())
!2892 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description170", scope: !2, file: !3, line: 35, type: !2893, isLocal: true, isDefinition: true, align: 8)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 352, elements: !569)
!2894 = !DIGlobalVariableExpression(var: !2895, expr: !DIExpression())
!2895 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file171", scope: !2, file: !3, line: 36, type: !2896, isLocal: true, isDefinition: true, align: 8)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 304, elements: !2897)
!2897 = !{!2898}
!2898 = !DISubrange(count: 38)
!2899 = !DIGlobalVariableExpression(var: !2900, expr: !DIExpression())
!2900 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license172", scope: !2, file: !3, line: 36, type: !2901, isLocal: true, isDefinition: true, align: 8)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 176, elements: !2902)
!2902 = !{!2903}
!2903 = !DISubrange(count: 22)
!2904 = !DIGlobalVariableExpression(var: !2905, expr: !DIExpression())
!2905 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_processor_driver_init176", scope: !2, file: !3, line: 364, type: !267, isLocal: true, isDefinition: true)
!2906 = !DIGlobalVariableExpression(var: !2907, expr: !DIExpression())
!2907 = distinct !DIGlobalVariable(name: "__exitcall_acpi_processor_driver_exit", scope: !2, file: !3, line: 365, type: !2908, isLocal: true, isDefinition: true)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2909, line: 117, baseType: !2910)
!2909 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{null}
!2913 = !DIGlobalVariableExpression(var: !2914, expr: !DIExpression())
!2914 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias177", scope: !2, file: !3, line: 367, type: !2915, isLocal: true, isDefinition: true, align: 8)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 208, elements: !2916)
!2916 = !{!2917}
!2917 = !DISubrange(count: 26)
!2918 = !DIGlobalVariableExpression(var: !2919, expr: !DIExpression())
!2919 = distinct !DIGlobalVariable(name: "acpi_processor_cpufreq_init", scope: !2, file: !3, line: 287, type: !299, isLocal: false, isDefinition: true)
!2920 = !DIGlobalVariableExpression(var: !2921, expr: !DIExpression())
!2921 = distinct !DIGlobalVariable(name: "hp_online", scope: !2, file: !3, line: 314, type: !11, isLocal: true, isDefinition: true)
!2922 = !DIGlobalVariableExpression(var: !2923, expr: !DIExpression())
!2923 = distinct !DIGlobalVariable(name: "acpi_processor_notifier_block", scope: !2, file: !3, line: 305, type: !2111, isLocal: true, isDefinition: true)
!2924 = !DIGlobalVariableExpression(var: !2925, expr: !DIExpression())
!2925 = distinct !DIGlobalVariable(name: "acpi_processor_driver", scope: !2, file: !3, line: 48, type: !1891, isLocal: true, isDefinition: true)
!2926 = !DIGlobalVariableExpression(var: !2927, expr: !DIExpression())
!2927 = distinct !DIGlobalVariable(name: "processor_device_ids", scope: !2, file: !3, line: 41, type: !2928, isLocal: true, isDefinition: true)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 768, elements: !378)
!2929 = !DIGlobalVariableExpression(var: !2930, expr: !DIExpression())
!2930 = distinct !DIGlobalVariable(name: "printout", scope: !2931, file: !2692, line: 333, type: !7, isLocal: true, isDefinition: true)
!2931 = distinct !DISubprogram(name: "acpi_processor_ppc_has_changed", scope: !2692, file: !2692, line: 330, type: !2932, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !2690, !13}
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 272, elements: !2935)
!2935 = !{!2936}
!2936 = !DISubrange(count: 34)
!2937 = !{i32 7, !"Dwarf Version", i32 4}
!2938 = !{i32 2, !"Debug Info Version", i32 3}
!2939 = !{i32 1, !"wchar_size", i32 2}
!2940 = !{i32 1, !"Code Model", i32 2}
!2941 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2942 = distinct !DISubprogram(name: "acpi_processor_driver_exit", scope: !3, file: !3, line: 348, type: !2911, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!2943 = !DILocation(line: 350, column: 6, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 350, column: 6)
!2945 = !DILocation(line: 350, column: 6, scope: !2942)
!2946 = !DILocation(line: 351, column: 3, scope: !2944)
!2947 = !DILocation(line: 353, column: 6, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 353, column: 6)
!2949 = !DILocation(line: 353, column: 6, scope: !2942)
!2950 = !DILocation(line: 354, column: 3, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 353, column: 35)
!2952 = !DILocation(line: 356, column: 31, scope: !2951)
!2953 = !DILocation(line: 357, column: 2, scope: !2951)
!2954 = !DILocation(line: 359, column: 29, scope: !2942)
!2955 = !DILocation(line: 359, column: 2, scope: !2942)
!2956 = !DILocation(line: 360, column: 2, scope: !2942)
!2957 = !DILocation(line: 361, column: 2, scope: !2942)
!2958 = !DILocation(line: 362, column: 1, scope: !2942)
!2959 = distinct !DISubprogram(name: "cpufreq_unregister_notifier", scope: !196, file: !196, line: 515, type: !2960, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!13, !2110, !7}
!2962 = !DILocalVariable(name: "nb", arg: 1, scope: !2959, file: !196, line: 515, type: !2110)
!2963 = !DILocation(line: 515, column: 70, scope: !2959)
!2964 = !DILocalVariable(name: "list", arg: 2, scope: !2959, file: !196, line: 516, type: !7)
!2965 = !DILocation(line: 516, column: 20, scope: !2959)
!2966 = !DILocation(line: 518, column: 2, scope: !2959)
!2967 = distinct !DISubprogram(name: "cpuhp_remove_state_nocalls", scope: !12, file: !12, line: 351, type: !2968, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !11}
!2970 = !DILocalVariable(name: "state", arg: 1, scope: !2967, file: !12, line: 351, type: !11)
!2971 = !DILocation(line: 351, column: 64, scope: !2967)
!2972 = !DILocation(line: 353, column: 23, scope: !2967)
!2973 = !DILocation(line: 353, column: 2, scope: !2967)
!2974 = !DILocation(line: 354, column: 1, scope: !2967)
!2975 = distinct !DISubprogram(name: "acpi_processor_driver_init", scope: !3, file: !3, line: 315, type: !2976, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!13}
!2978 = !DILocalVariable(name: "result", scope: !2975, file: !3, line: 317, type: !13)
!2979 = !DILocation(line: 317, column: 6, scope: !2975)
!2980 = !DILocation(line: 319, column: 6, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 319, column: 6)
!2982 = !DILocation(line: 319, column: 6, scope: !2975)
!2983 = !DILocation(line: 320, column: 3, scope: !2981)
!2984 = !DILocation(line: 322, column: 11, scope: !2975)
!2985 = !DILocation(line: 322, column: 9, scope: !2975)
!2986 = !DILocation(line: 323, column: 6, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 323, column: 6)
!2988 = !DILocation(line: 323, column: 13, scope: !2987)
!2989 = !DILocation(line: 323, column: 6, scope: !2975)
!2990 = !DILocation(line: 324, column: 10, scope: !2987)
!2991 = !DILocation(line: 324, column: 3, scope: !2987)
!2992 = !DILocation(line: 326, column: 11, scope: !2975)
!2993 = !DILocation(line: 326, column: 9, scope: !2975)
!2994 = !DILocation(line: 329, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 329, column: 6)
!2996 = !DILocation(line: 329, column: 13, scope: !2995)
!2997 = !DILocation(line: 329, column: 6, scope: !2975)
!2998 = !DILocation(line: 330, column: 3, scope: !2995)
!2999 = !DILocation(line: 331, column: 14, scope: !2975)
!3000 = !DILocation(line: 331, column: 12, scope: !2975)
!3001 = !DILocation(line: 332, column: 2, scope: !2975)
!3002 = !DILocation(line: 335, column: 7, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 335, column: 6)
!3004 = !DILocation(line: 335, column: 6, scope: !2975)
!3005 = !DILocation(line: 337, column: 31, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 336, column: 38)
!3007 = !DILocation(line: 338, column: 3, scope: !3006)
!3008 = !DILocation(line: 339, column: 2, scope: !3006)
!3009 = !DILocation(line: 341, column: 2, scope: !2975)
!3010 = !DILocation(line: 342, column: 2, scope: !2975)
!3011 = !DILabel(scope: !2975, name: "err", file: !3, line: 343)
!3012 = !DILocation(line: 343, column: 1, scope: !2975)
!3013 = !DILocation(line: 344, column: 2, scope: !2975)
!3014 = !DILocation(line: 345, column: 9, scope: !2975)
!3015 = !DILocation(line: 345, column: 2, scope: !2975)
!3016 = !DILocation(line: 346, column: 1, scope: !2975)
!3017 = distinct !DISubprogram(name: "acpi_processor_notifier", scope: !3, file: !3, line: 289, type: !2116, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3018 = !DILocalVariable(name: "nb", arg: 1, scope: !3017, file: !3, line: 289, type: !2110)
!3019 = !DILocation(line: 289, column: 59, scope: !3017)
!3020 = !DILocalVariable(name: "event", arg: 2, scope: !3017, file: !3, line: 290, type: !427)
!3021 = !DILocation(line: 290, column: 22, scope: !3017)
!3022 = !DILocalVariable(name: "data", arg: 3, scope: !3017, file: !3, line: 290, type: !267)
!3023 = !DILocation(line: 290, column: 35, scope: !3017)
!3024 = !DILocalVariable(name: "policy", scope: !3017, file: !3, line: 292, type: !3025)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_policy", file: !196, line: 51, size: 4736, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3037, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3077, !3078, !3079, !3080, !3081, !3083, !3084, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3110, !3111, !3112, !3113}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !3026, file: !196, line: 53, baseType: !2788, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "related_cpus", scope: !3026, file: !196, line: 54, baseType: !2788, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "real_cpus", scope: !3026, file: !196, line: 55, baseType: !2788, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "shared_type", scope: !3026, file: !196, line: 57, baseType: !7, size: 32, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3026, file: !196, line: 59, baseType: !7, size: 32, offset: 224)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !3026, file: !196, line: 61, baseType: !3034, size: 64, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !3036, line: 17, flags: DIFlagFwdDecl)
!3036 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cpuinfo", scope: !3026, file: !196, line: 62, baseType: !3038, size: 96, offset: 320)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_cpuinfo", file: !196, line: 43, size: 96, elements: !3039)
!3039 = !{!3040, !3041, !3042}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3038, file: !196, line: 44, baseType: !7, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3038, file: !196, line: 45, baseType: !7, size: 32, offset: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "transition_latency", scope: !3038, file: !196, line: 48, baseType: !7, size: 32, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !3026, file: !196, line: 64, baseType: !7, size: 32, offset: 416)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3026, file: !196, line: 65, baseType: !7, size: 32, offset: 448)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !3026, file: !196, line: 66, baseType: !7, size: 32, offset: 480)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "restore_freq", scope: !3026, file: !196, line: 68, baseType: !7, size: 32, offset: 512)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_freq", scope: !3026, file: !196, line: 69, baseType: !7, size: 32, offset: 544)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3026, file: !196, line: 71, baseType: !7, size: 32, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "last_policy", scope: !3026, file: !196, line: 72, baseType: !7, size: 32, offset: 608)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !3026, file: !196, line: 73, baseType: !3051, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_governor", file: !196, line: 568, size: 832, elements: !3053)
!3053 = !{!3054, !3055, !3059, !3063, !3064, !3065, !3066, !3070, !3074, !3075, !3076}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3052, file: !196, line: 569, baseType: !1012, size: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3052, file: !196, line: 570, baseType: !3056, size: 64, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!13, !3025}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !3052, file: !196, line: 571, baseType: !3060, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !3025}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3052, file: !196, line: 572, baseType: !3056, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3052, file: !196, line: 573, baseType: !3060, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !3052, file: !196, line: 574, baseType: !3060, size: 64, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "show_setspeed", scope: !3052, file: !196, line: 575, baseType: !3067, size: 64, offset: 448)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!408, !3025, !377}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "store_setspeed", scope: !3052, file: !196, line: 577, baseType: !3071, size: 64, offset: 512)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!13, !3025, !7}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !3052, file: !196, line: 579, baseType: !323, size: 128, offset: 576)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3052, file: !196, line: 580, baseType: !1896, size: 64, offset: 704)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3052, file: !196, line: 581, baseType: !787, size: 8, offset: 768)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !3026, file: !196, line: 74, baseType: !267, size: 64, offset: 704)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "last_governor", scope: !3026, file: !196, line: 75, baseType: !1012, size: 128, offset: 768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !3026, file: !196, line: 77, baseType: !1557, size: 256, offset: 896)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !3026, file: !196, line: 80, baseType: !2122, size: 1280, offset: 1152)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_req", scope: !3026, file: !196, line: 81, baseType: !3082, size: 64, offset: 2432)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_req", scope: !3026, file: !196, line: 82, baseType: !3082, size: 64, offset: 2496)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table", scope: !3026, file: !196, line: 84, baseType: !3085, size: 64, offset: 2560)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_frequency_table", file: !196, line: 668, size: 96, elements: !3087)
!3087 = !{!3088, !3089, !3090}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3086, file: !196, line: 669, baseType: !7, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3086, file: !196, line: 670, baseType: !7, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !3086, file: !196, line: 671, baseType: !7, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "freq_table_sorted", scope: !3026, file: !196, line: 85, baseType: !195, size: 32, offset: 2624)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "policy_list", scope: !3026, file: !196, line: 87, baseType: !323, size: 128, offset: 2688)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3026, file: !196, line: 88, baseType: !315, size: 512, offset: 2816)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !3026, file: !196, line: 89, baseType: !956, size: 192, offset: 3328)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3026, file: !196, line: 99, baseType: !537, size: 256, offset: 3520)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_possible", scope: !3026, file: !196, line: 109, baseType: !299, size: 8, offset: 3776)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fast_switch_enabled", scope: !3026, file: !196, line: 110, baseType: !299, size: 8, offset: 3784)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "strict_target", scope: !3026, file: !196, line: 116, baseType: !299, size: 8, offset: 3792)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "transition_delay_us", scope: !3026, file: !196, line: 123, baseType: !7, size: 32, offset: 3808)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "dvfs_possible_from_any_cpu", scope: !3026, file: !196, line: 132, baseType: !299, size: 8, offset: 3840)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "cached_target_freq", scope: !3026, file: !196, line: 135, baseType: !7, size: 32, offset: 3872)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cached_resolved_idx", scope: !3026, file: !196, line: 136, baseType: !7, size: 32, offset: 3904)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "transition_ongoing", scope: !3026, file: !196, line: 139, baseType: !299, size: 8, offset: 3936)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "transition_lock", scope: !3026, file: !196, line: 140, baseType: !336, offset: 3944)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "transition_wait", scope: !3026, file: !196, line: 141, baseType: !927, size: 128, offset: 3968)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "transition_task", scope: !3026, file: !196, line: 142, baseType: !640, size: 64, offset: 4096)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3026, file: !196, line: 145, baseType: !3108, size: 64, offset: 4160)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpufreq_stats", file: !196, line: 145, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3026, file: !196, line: 148, baseType: !267, size: 64, offset: 4224)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3026, file: !196, line: 151, baseType: !2847, size: 64, offset: 4288)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "nb_min", scope: !3026, file: !196, line: 153, baseType: !2111, size: 192, offset: 4352)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nb_max", scope: !3026, file: !196, line: 154, baseType: !2111, size: 192, offset: 4544)
!3114 = !DILocation(line: 292, column: 25, scope: !3017)
!3115 = !DILocation(line: 292, column: 34, scope: !3017)
!3116 = !DILocation(line: 294, column: 6, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 294, column: 6)
!3118 = !DILocation(line: 294, column: 12, scope: !3117)
!3119 = !DILocation(line: 294, column: 6, scope: !3017)
!3120 = !DILocation(line: 295, column: 29, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 294, column: 38)
!3122 = !DILocation(line: 295, column: 3, scope: !3121)
!3123 = !DILocation(line: 296, column: 27, scope: !3121)
!3124 = !DILocation(line: 296, column: 3, scope: !3121)
!3125 = !DILocation(line: 297, column: 2, scope: !3121)
!3126 = !DILocation(line: 297, column: 13, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 297, column: 13)
!3128 = !DILocation(line: 297, column: 19, scope: !3127)
!3129 = !DILocation(line: 297, column: 13, scope: !3117)
!3130 = !DILocation(line: 298, column: 27, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 297, column: 45)
!3132 = !DILocation(line: 298, column: 3, scope: !3131)
!3133 = !DILocation(line: 299, column: 29, scope: !3131)
!3134 = !DILocation(line: 299, column: 3, scope: !3131)
!3135 = !DILocation(line: 300, column: 2, scope: !3131)
!3136 = !DILocation(line: 302, column: 2, scope: !3017)
!3137 = distinct !DISubprogram(name: "acpi_thermal_cpufreq_init", scope: !2692, file: !2692, line: 445, type: !3061, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3138 = !DILocalVariable(name: "policy", arg: 1, scope: !3137, file: !2692, line: 445, type: !3025)
!3139 = !DILocation(line: 445, column: 69, scope: !3137)
!3140 = !DILocation(line: 447, column: 2, scope: !3137)
!3141 = distinct !DISubprogram(name: "acpi_processor_ppc_init", scope: !2692, file: !2692, line: 322, type: !3061, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3142 = !DILocalVariable(name: "policy", arg: 1, scope: !3141, file: !2692, line: 322, type: !3025)
!3143 = !DILocation(line: 322, column: 67, scope: !3141)
!3144 = !DILocation(line: 324, column: 2, scope: !3141)
!3145 = distinct !DISubprogram(name: "acpi_processor_ppc_exit", scope: !2692, file: !2692, line: 326, type: !3061, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3146 = !DILocalVariable(name: "policy", arg: 1, scope: !3145, file: !2692, line: 326, type: !3025)
!3147 = !DILocation(line: 326, column: 67, scope: !3145)
!3148 = !DILocation(line: 328, column: 2, scope: !3145)
!3149 = distinct !DISubprogram(name: "acpi_thermal_cpufreq_exit", scope: !2692, file: !2692, line: 449, type: !3061, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3150 = !DILocalVariable(name: "policy", arg: 1, scope: !3149, file: !2692, line: 449, type: !3025)
!3151 = !DILocation(line: 449, column: 69, scope: !3149)
!3152 = !DILocation(line: 451, column: 2, scope: !3149)
!3153 = distinct !DISubprogram(name: "acpi_processor_start", scope: !3, file: !3, line: 249, type: !1851, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3154 = !DILocalVariable(name: "dev", arg: 1, scope: !3153, file: !3, line: 249, type: !1819)
!3155 = !DILocation(line: 249, column: 48, scope: !3153)
!3156 = !DILocalVariable(name: "device", scope: !3153, file: !3, line: 251, type: !268)
!3157 = !DILocation(line: 251, column: 22, scope: !3153)
!3158 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3159, file: !3, line: 251, type: !281)
!3159 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 251, column: 31)
!3160 = !DILocation(line: 251, column: 31, scope: !3159)
!3161 = !DILocalVariable(name: "__mptr", scope: !3162, file: !3, line: 251, type: !267)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 251, column: 31)
!3163 = !DILocation(line: 251, column: 31, scope: !3162)
!3164 = !DILocation(line: 251, column: 31, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 251, column: 31)
!3166 = !DILocalVariable(name: "ret", scope: !3153, file: !3, line: 252, type: !13)
!3167 = !DILocation(line: 252, column: 6, scope: !3153)
!3168 = !DILocation(line: 254, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 254, column: 6)
!3170 = !DILocation(line: 254, column: 6, scope: !3153)
!3171 = !DILocation(line: 255, column: 3, scope: !3169)
!3172 = !DILocation(line: 258, column: 2, scope: !3153)
!3173 = !DILocation(line: 259, column: 31, scope: !3153)
!3174 = !DILocation(line: 259, column: 8, scope: !3153)
!3175 = !DILocation(line: 259, column: 6, scope: !3153)
!3176 = !DILocation(line: 260, column: 2, scope: !3153)
!3177 = !DILocation(line: 261, column: 9, scope: !3153)
!3178 = !DILocation(line: 261, column: 2, scope: !3153)
!3179 = !DILocation(line: 262, column: 1, scope: !3153)
!3180 = distinct !DISubprogram(name: "acpi_processor_stop", scope: !3, file: !3, line: 264, type: !1851, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3181 = !DILocalVariable(name: "dev", arg: 1, scope: !3180, file: !3, line: 264, type: !1819)
!3182 = !DILocation(line: 264, column: 47, scope: !3180)
!3183 = !DILocalVariable(name: "device", scope: !3180, file: !3, line: 266, type: !268)
!3184 = !DILocation(line: 266, column: 22, scope: !3180)
!3185 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3186, file: !3, line: 266, type: !281)
!3186 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 266, column: 31)
!3187 = !DILocation(line: 266, column: 31, scope: !3186)
!3188 = !DILocalVariable(name: "__mptr", scope: !3189, file: !3, line: 266, type: !267)
!3189 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 266, column: 31)
!3190 = !DILocation(line: 266, column: 31, scope: !3189)
!3191 = !DILocation(line: 266, column: 31, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 266, column: 31)
!3193 = !DILocalVariable(name: "pr", scope: !3180, file: !3, line: 267, type: !2690)
!3194 = !DILocation(line: 267, column: 25, scope: !3180)
!3195 = !DILocation(line: 269, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 269, column: 6)
!3197 = !DILocation(line: 269, column: 6, scope: !3180)
!3198 = !DILocation(line: 270, column: 3, scope: !3196)
!3199 = !DILocation(line: 272, column: 29, scope: !3180)
!3200 = !DILocation(line: 272, column: 37, scope: !3180)
!3201 = !DILocation(line: 272, column: 2, scope: !3180)
!3202 = !DILocation(line: 275, column: 24, scope: !3180)
!3203 = !DILocation(line: 275, column: 7, scope: !3180)
!3204 = !DILocation(line: 275, column: 5, scope: !3180)
!3205 = !DILocation(line: 276, column: 7, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 276, column: 6)
!3207 = !DILocation(line: 276, column: 6, scope: !3180)
!3208 = !DILocation(line: 277, column: 3, scope: !3206)
!3209 = !DILocation(line: 278, column: 28, scope: !3180)
!3210 = !DILocation(line: 278, column: 2, scope: !3180)
!3211 = !DILocation(line: 280, column: 21, scope: !3180)
!3212 = !DILocation(line: 280, column: 25, scope: !3180)
!3213 = !DILocation(line: 280, column: 2, scope: !3180)
!3214 = !DILocation(line: 282, column: 27, scope: !3180)
!3215 = !DILocation(line: 282, column: 2, scope: !3180)
!3216 = !DILocation(line: 284, column: 2, scope: !3180)
!3217 = !DILocation(line: 285, column: 1, scope: !3180)
!3218 = distinct !DISubprogram(name: "cpu_hotplug_disable", scope: !3219, file: !3219, line: 136, type: !2911, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3219 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !DILocation(line: 136, column: 48, scope: !3218)
!3221 = distinct !DISubprogram(name: "__acpi_processor_start", scope: !3, file: !3, line: 213, type: !2637, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3222 = !DILocalVariable(name: "device", arg: 1, scope: !3221, file: !3, line: 213, type: !268)
!3223 = !DILocation(line: 213, column: 55, scope: !3221)
!3224 = !DILocalVariable(name: "pr", scope: !3221, file: !3, line: 215, type: !2690)
!3225 = !DILocation(line: 215, column: 25, scope: !3221)
!3226 = !DILocation(line: 215, column: 47, scope: !3221)
!3227 = !DILocation(line: 215, column: 30, scope: !3221)
!3228 = !DILocalVariable(name: "status", scope: !3221, file: !3, line: 216, type: !3229)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !275, line: 421, baseType: !650)
!3230 = !DILocation(line: 216, column: 14, scope: !3221)
!3231 = !DILocalVariable(name: "result", scope: !3221, file: !3, line: 217, type: !13)
!3232 = !DILocation(line: 217, column: 6, scope: !3221)
!3233 = !DILocation(line: 219, column: 7, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 219, column: 6)
!3235 = !DILocation(line: 219, column: 6, scope: !3221)
!3236 = !DILocation(line: 220, column: 3, scope: !3234)
!3237 = !DILocation(line: 222, column: 6, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 222, column: 6)
!3239 = !DILocation(line: 222, column: 10, scope: !3238)
!3240 = !DILocation(line: 222, column: 16, scope: !3238)
!3241 = !DILocation(line: 222, column: 6, scope: !3221)
!3242 = !DILocation(line: 223, column: 3, scope: !3238)
!3243 = !DILocation(line: 225, column: 37, scope: !3221)
!3244 = !DILocation(line: 225, column: 11, scope: !3221)
!3245 = !DILocation(line: 225, column: 9, scope: !3221)
!3246 = !DILocation(line: 226, column: 6, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 226, column: 6)
!3248 = !DILocation(line: 226, column: 13, scope: !3247)
!3249 = !DILocation(line: 226, column: 6, scope: !3221)
!3250 = !DILocation(line: 227, column: 3, scope: !3247)
!3251 = !DILocation(line: 229, column: 7, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 229, column: 6)
!3253 = !DILocation(line: 229, column: 28, scope: !3252)
!3254 = !DILocation(line: 229, column: 31, scope: !3252)
!3255 = !DILocation(line: 229, column: 52, scope: !3252)
!3256 = !DILocation(line: 229, column: 6, scope: !3221)
!3257 = !DILocation(line: 230, column: 29, scope: !3252)
!3258 = !DILocation(line: 230, column: 3, scope: !3252)
!3259 = !DILocation(line: 232, column: 30, scope: !3221)
!3260 = !DILocation(line: 232, column: 34, scope: !3221)
!3261 = !DILocation(line: 232, column: 11, scope: !3221)
!3262 = !DILocation(line: 232, column: 9, scope: !3221)
!3263 = !DILocation(line: 233, column: 6, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 233, column: 6)
!3265 = !DILocation(line: 233, column: 6, scope: !3221)
!3266 = !DILocation(line: 234, column: 3, scope: !3264)
!3267 = !DILocation(line: 236, column: 39, scope: !3221)
!3268 = !DILocation(line: 236, column: 47, scope: !3221)
!3269 = !DILocation(line: 237, column: 34, scope: !3221)
!3270 = !DILocation(line: 236, column: 11, scope: !3221)
!3271 = !DILocation(line: 236, column: 9, scope: !3221)
!3272 = !DILocation(line: 238, column: 6, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 238, column: 6)
!3274 = !DILocation(line: 238, column: 6, scope: !3221)
!3275 = !DILocation(line: 239, column: 3, scope: !3273)
!3276 = !DILocation(line: 241, column: 9, scope: !3221)
!3277 = !DILocation(line: 242, column: 21, scope: !3221)
!3278 = !DILocation(line: 242, column: 25, scope: !3221)
!3279 = !DILocation(line: 242, column: 2, scope: !3221)
!3280 = !DILabel(scope: !3221, name: "err_power_exit", file: !3, line: 244)
!3281 = !DILocation(line: 244, column: 1, scope: !3221)
!3282 = !DILocation(line: 245, column: 28, scope: !3221)
!3283 = !DILocation(line: 245, column: 2, scope: !3221)
!3284 = !DILocation(line: 246, column: 9, scope: !3221)
!3285 = !DILocation(line: 246, column: 2, scope: !3221)
!3286 = !DILocation(line: 247, column: 1, scope: !3221)
!3287 = distinct !DISubprogram(name: "cpu_hotplug_enable", scope: !3219, file: !3219, line: 137, type: !2911, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3288 = !DILocation(line: 137, column: 47, scope: !3287)
!3289 = distinct !DISubprogram(name: "acpi_driver_data", scope: !270, file: !270, line: 443, type: !3290, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!267, !268}
!3292 = !DILocalVariable(name: "d", arg: 1, scope: !3289, file: !270, line: 443, type: !268)
!3293 = !DILocation(line: 443, column: 58, scope: !3289)
!3294 = !DILocation(line: 445, column: 9, scope: !3289)
!3295 = !DILocation(line: 445, column: 12, scope: !3289)
!3296 = !DILocation(line: 445, column: 2, scope: !3289)
!3297 = distinct !DISubprogram(name: "acpi_cppc_processor_probe", scope: !2692, file: !2692, line: 359, type: !2819, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3298 = !DILocalVariable(name: "pr", arg: 1, scope: !3297, file: !2692, line: 359, type: !2690)
!3299 = !DILocation(line: 359, column: 68, scope: !3297)
!3300 = !DILocation(line: 361, column: 2, scope: !3297)
!3301 = distinct !DISubprogram(name: "acpi_pss_perf_init", scope: !3, file: !3, line: 142, type: !3302, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!13, !2690, !268}
!3304 = !DILocalVariable(name: "pr", arg: 1, scope: !3301, file: !3, line: 142, type: !2690)
!3305 = !DILocation(line: 142, column: 54, scope: !3301)
!3306 = !DILocalVariable(name: "device", arg: 2, scope: !3301, file: !3, line: 143, type: !268)
!3307 = !DILocation(line: 143, column: 23, scope: !3301)
!3308 = !DILocalVariable(name: "result", scope: !3301, file: !3, line: 145, type: !13)
!3309 = !DILocation(line: 145, column: 6, scope: !3301)
!3310 = !DILocation(line: 147, column: 33, scope: !3301)
!3311 = !DILocation(line: 147, column: 2, scope: !3301)
!3312 = !DILocation(line: 149, column: 37, scope: !3301)
!3313 = !DILocation(line: 149, column: 2, scope: !3301)
!3314 = !DILocation(line: 151, column: 6, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 151, column: 6)
!3316 = !DILocation(line: 151, column: 10, scope: !3315)
!3317 = !DILocation(line: 151, column: 16, scope: !3315)
!3318 = !DILocation(line: 151, column: 6, scope: !3301)
!3319 = !DILocation(line: 152, column: 3, scope: !3315)
!3320 = !DILocation(line: 152, column: 7, scope: !3315)
!3321 = !DILocation(line: 152, column: 13, scope: !3315)
!3322 = !DILocation(line: 152, column: 19, scope: !3315)
!3323 = !DILocation(line: 154, column: 58, scope: !3301)
!3324 = !DILocation(line: 154, column: 13, scope: !3301)
!3325 = !DILocation(line: 154, column: 2, scope: !3301)
!3326 = !DILocation(line: 154, column: 6, scope: !3301)
!3327 = !DILocation(line: 154, column: 11, scope: !3301)
!3328 = !DILocation(line: 156, column: 13, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 156, column: 6)
!3330 = !DILocation(line: 156, column: 17, scope: !3329)
!3331 = !DILocation(line: 156, column: 6, scope: !3329)
!3332 = !DILocation(line: 156, column: 6, scope: !3301)
!3333 = !DILocation(line: 157, column: 20, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 156, column: 24)
!3335 = !DILocation(line: 157, column: 24, scope: !3334)
!3336 = !DILocation(line: 157, column: 12, scope: !3334)
!3337 = !DILocation(line: 157, column: 10, scope: !3334)
!3338 = !DILocation(line: 158, column: 10, scope: !3334)
!3339 = !DILocation(line: 158, column: 3, scope: !3334)
!3340 = !DILocation(line: 164, column: 30, scope: !3301)
!3341 = !DILocation(line: 164, column: 38, scope: !3301)
!3342 = !DILocation(line: 164, column: 42, scope: !3301)
!3343 = !DILocation(line: 165, column: 9, scope: !3301)
!3344 = !DILocation(line: 165, column: 13, scope: !3301)
!3345 = !DILocation(line: 165, column: 19, scope: !3301)
!3346 = !DILocation(line: 165, column: 26, scope: !3301)
!3347 = !DILocation(line: 164, column: 11, scope: !3301)
!3348 = !DILocation(line: 164, column: 9, scope: !3301)
!3349 = !DILocation(line: 167, column: 6, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 167, column: 6)
!3351 = !DILocation(line: 167, column: 6, scope: !3301)
!3352 = !DILocation(line: 168, column: 3, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 167, column: 14)
!3354 = !DILocation(line: 170, column: 3, scope: !3353)
!3355 = !DILocation(line: 173, column: 30, scope: !3301)
!3356 = !DILocation(line: 173, column: 34, scope: !3301)
!3357 = !DILocation(line: 173, column: 40, scope: !3301)
!3358 = !DILocation(line: 173, column: 47, scope: !3301)
!3359 = !DILocation(line: 174, column: 9, scope: !3301)
!3360 = !DILocation(line: 174, column: 17, scope: !3301)
!3361 = !DILocation(line: 174, column: 21, scope: !3301)
!3362 = !DILocation(line: 173, column: 11, scope: !3301)
!3363 = !DILocation(line: 173, column: 9, scope: !3301)
!3364 = !DILocation(line: 176, column: 6, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 176, column: 6)
!3366 = !DILocation(line: 176, column: 6, scope: !3301)
!3367 = !DILocation(line: 177, column: 3, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 176, column: 14)
!3369 = !DILocation(line: 179, column: 3, scope: !3368)
!3370 = !DILocation(line: 182, column: 2, scope: !3301)
!3371 = !DILabel(scope: !3301, name: "err_remove_sysfs_thermal", file: !3, line: 184)
!3372 = !DILocation(line: 184, column: 2, scope: !3301)
!3373 = !DILocation(line: 185, column: 21, scope: !3301)
!3374 = !DILocation(line: 185, column: 29, scope: !3301)
!3375 = !DILocation(line: 185, column: 33, scope: !3301)
!3376 = !DILocation(line: 185, column: 2, scope: !3301)
!3377 = !DILabel(scope: !3301, name: "err_thermal_unregister", file: !3, line: 186)
!3378 = !DILocation(line: 186, column: 2, scope: !3301)
!3379 = !DILocation(line: 187, column: 36, scope: !3301)
!3380 = !DILocation(line: 187, column: 40, scope: !3301)
!3381 = !DILocation(line: 187, column: 2, scope: !3301)
!3382 = !DILocation(line: 189, column: 9, scope: !3301)
!3383 = !DILocation(line: 189, column: 2, scope: !3301)
!3384 = !DILocation(line: 190, column: 1, scope: !3301)
!3385 = distinct !DISubprogram(name: "acpi_processor_notify", scope: !3, file: !3, line: 56, type: !3386, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !274, !650, !267}
!3388 = !DILocalVariable(name: "handle", arg: 1, scope: !3385, file: !3, line: 56, type: !274)
!3389 = !DILocation(line: 56, column: 47, scope: !3385)
!3390 = !DILocalVariable(name: "event", arg: 2, scope: !3385, file: !3, line: 56, type: !650)
!3391 = !DILocation(line: 56, column: 59, scope: !3385)
!3392 = !DILocalVariable(name: "data", arg: 3, scope: !3385, file: !3, line: 56, type: !267)
!3393 = !DILocation(line: 56, column: 72, scope: !3385)
!3394 = !DILocalVariable(name: "device", scope: !3385, file: !3, line: 58, type: !268)
!3395 = !DILocation(line: 58, column: 22, scope: !3385)
!3396 = !DILocation(line: 58, column: 31, scope: !3385)
!3397 = !DILocalVariable(name: "pr", scope: !3385, file: !3, line: 59, type: !2690)
!3398 = !DILocation(line: 59, column: 25, scope: !3385)
!3399 = !DILocalVariable(name: "saved", scope: !3385, file: !3, line: 60, type: !13)
!3400 = !DILocation(line: 60, column: 6, scope: !3385)
!3401 = !DILocation(line: 62, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 62, column: 6)
!3403 = !DILocation(line: 62, column: 14, scope: !3402)
!3404 = !DILocation(line: 62, column: 24, scope: !3402)
!3405 = !DILocation(line: 62, column: 21, scope: !3402)
!3406 = !DILocation(line: 62, column: 6, scope: !3385)
!3407 = !DILocation(line: 63, column: 3, scope: !3402)
!3408 = !DILocation(line: 65, column: 24, scope: !3385)
!3409 = !DILocation(line: 65, column: 7, scope: !3385)
!3410 = !DILocation(line: 65, column: 5, scope: !3385)
!3411 = !DILocation(line: 66, column: 7, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 66, column: 6)
!3413 = !DILocation(line: 66, column: 6, scope: !3385)
!3414 = !DILocation(line: 67, column: 3, scope: !3412)
!3415 = !DILocation(line: 69, column: 10, scope: !3385)
!3416 = !DILocation(line: 69, column: 2, scope: !3385)
!3417 = !DILocation(line: 71, column: 11, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 69, column: 17)
!3419 = !DILocation(line: 71, column: 15, scope: !3418)
!3420 = !DILocation(line: 71, column: 9, scope: !3418)
!3421 = !DILocation(line: 72, column: 34, scope: !3418)
!3422 = !DILocation(line: 72, column: 3, scope: !3418)
!3423 = !DILocation(line: 73, column: 7, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 73, column: 7)
!3425 = !DILocation(line: 73, column: 16, scope: !3424)
!3426 = !DILocation(line: 73, column: 20, scope: !3424)
!3427 = !DILocation(line: 73, column: 13, scope: !3424)
!3428 = !DILocation(line: 73, column: 7, scope: !3418)
!3429 = !DILocation(line: 74, column: 4, scope: !3424)
!3430 = !DILocation(line: 75, column: 35, scope: !3418)
!3431 = !DILocation(line: 75, column: 43, scope: !3418)
!3432 = !DILocation(line: 75, column: 47, scope: !3418)
!3433 = !DILocation(line: 76, column: 19, scope: !3418)
!3434 = !DILocation(line: 76, column: 27, scope: !3418)
!3435 = !DILocation(line: 76, column: 9, scope: !3418)
!3436 = !DILocation(line: 76, column: 33, scope: !3418)
!3437 = !DILocation(line: 77, column: 9, scope: !3418)
!3438 = !DILocation(line: 77, column: 13, scope: !3418)
!3439 = !DILocation(line: 75, column: 3, scope: !3418)
!3440 = !DILocation(line: 78, column: 3, scope: !3418)
!3441 = !DILocation(line: 80, column: 42, scope: !3418)
!3442 = !DILocation(line: 80, column: 3, scope: !3418)
!3443 = !DILocation(line: 81, column: 35, scope: !3418)
!3444 = !DILocation(line: 81, column: 43, scope: !3418)
!3445 = !DILocation(line: 81, column: 47, scope: !3418)
!3446 = !DILocation(line: 82, column: 19, scope: !3418)
!3447 = !DILocation(line: 82, column: 27, scope: !3418)
!3448 = !DILocation(line: 82, column: 9, scope: !3418)
!3449 = !DILocation(line: 82, column: 33, scope: !3418)
!3450 = !DILocation(line: 81, column: 3, scope: !3418)
!3451 = !DILocation(line: 83, column: 3, scope: !3418)
!3452 = !DILocation(line: 85, column: 37, scope: !3418)
!3453 = !DILocation(line: 85, column: 3, scope: !3418)
!3454 = !DILocation(line: 86, column: 35, scope: !3418)
!3455 = !DILocation(line: 86, column: 43, scope: !3418)
!3456 = !DILocation(line: 86, column: 47, scope: !3418)
!3457 = !DILocation(line: 87, column: 19, scope: !3418)
!3458 = !DILocation(line: 87, column: 27, scope: !3418)
!3459 = !DILocation(line: 87, column: 9, scope: !3418)
!3460 = !DILocation(line: 87, column: 33, scope: !3418)
!3461 = !DILocation(line: 86, column: 3, scope: !3418)
!3462 = !DILocation(line: 88, column: 3, scope: !3418)
!3463 = !DILocation(line: 92, column: 3, scope: !3418)
!3464 = !DILocation(line: 95, column: 2, scope: !3385)
!3465 = !DILocation(line: 96, column: 1, scope: !3385)
!3466 = distinct !DISubprogram(name: "acpi_pss_perf_exit", scope: !3, file: !3, line: 192, type: !3467, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !2690, !268}
!3469 = !DILocalVariable(name: "pr", arg: 1, scope: !3466, file: !3, line: 192, type: !2690)
!3470 = !DILocation(line: 192, column: 55, scope: !3466)
!3471 = !DILocalVariable(name: "device", arg: 2, scope: !3466, file: !3, line: 193, type: !268)
!3472 = !DILocation(line: 193, column: 23, scope: !3466)
!3473 = !DILocation(line: 195, column: 6, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 195, column: 6)
!3475 = !DILocation(line: 195, column: 10, scope: !3474)
!3476 = !DILocation(line: 195, column: 6, scope: !3466)
!3477 = !DILocation(line: 196, column: 22, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 195, column: 16)
!3479 = !DILocation(line: 196, column: 30, scope: !3478)
!3480 = !DILocation(line: 196, column: 34, scope: !3478)
!3481 = !DILocation(line: 196, column: 3, scope: !3478)
!3482 = !DILocation(line: 197, column: 22, scope: !3478)
!3483 = !DILocation(line: 197, column: 26, scope: !3478)
!3484 = !DILocation(line: 197, column: 32, scope: !3478)
!3485 = !DILocation(line: 197, column: 39, scope: !3478)
!3486 = !DILocation(line: 197, column: 3, scope: !3478)
!3487 = !DILocation(line: 198, column: 37, scope: !3478)
!3488 = !DILocation(line: 198, column: 41, scope: !3478)
!3489 = !DILocation(line: 198, column: 3, scope: !3478)
!3490 = !DILocation(line: 199, column: 3, scope: !3478)
!3491 = !DILocation(line: 199, column: 7, scope: !3478)
!3492 = !DILocation(line: 199, column: 12, scope: !3478)
!3493 = !DILocation(line: 200, column: 2, scope: !3478)
!3494 = !DILocation(line: 201, column: 1, scope: !3466)
!3495 = !DILocalVariable(name: "pr", arg: 1, scope: !2931, file: !2692, line: 330, type: !2690)
!3496 = !DILocation(line: 330, column: 74, scope: !2931)
!3497 = !DILocalVariable(name: "event_flag", arg: 2, scope: !2931, file: !2692, line: 331, type: !13)
!3498 = !DILocation(line: 331, column: 13, scope: !2931)
!3499 = !DILocation(line: 334, column: 6, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !2931, file: !2692, line: 334, column: 6)
!3501 = !DILocation(line: 334, column: 6, scope: !2931)
!3502 = !DILocation(line: 335, column: 3, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3500, file: !2692, line: 334, column: 16)
!3504 = !DILocation(line: 337, column: 3, scope: !3503)
!3505 = !DILocation(line: 339, column: 12, scope: !3503)
!3506 = !DILocation(line: 340, column: 2, scope: !3503)
!3507 = !DILocation(line: 341, column: 1, scope: !2931)
!3508 = distinct !DISubprogram(name: "IS_ERR", scope: !3509, file: !3509, line: 34, type: !3510, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3509 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!299, !308}
!3512 = !DILocalVariable(name: "ptr", arg: 1, scope: !3508, file: !3509, line: 34, type: !308)
!3513 = !DILocation(line: 34, column: 60, scope: !3508)
!3514 = !DILocation(line: 36, column: 9, scope: !3508)
!3515 = !DILocation(line: 36, column: 2, scope: !3508)
!3516 = distinct !DISubprogram(name: "PTR_ERR", scope: !3509, file: !3509, line: 29, type: !3517, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!412, !308}
!3519 = !DILocalVariable(name: "ptr", arg: 1, scope: !3516, file: !3509, line: 29, type: !308)
!3520 = !DILocation(line: 29, column: 61, scope: !3516)
!3521 = !DILocation(line: 31, column: 16, scope: !3516)
!3522 = !DILocation(line: 31, column: 9, scope: !3516)
!3523 = !DILocation(line: 31, column: 2, scope: !3516)
!3524 = distinct !DISubprogram(name: "dev_name", scope: !225, file: !225, line: 609, type: !3525, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!319, !310}
!3527 = !DILocalVariable(name: "dev", arg: 1, scope: !3524, file: !225, line: 609, type: !310)
!3528 = !DILocation(line: 609, column: 57, scope: !3524)
!3529 = !DILocation(line: 612, column: 6, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3524, file: !225, line: 612, column: 6)
!3531 = !DILocation(line: 612, column: 11, scope: !3530)
!3532 = !DILocation(line: 612, column: 6, scope: !3524)
!3533 = !DILocation(line: 613, column: 10, scope: !3530)
!3534 = !DILocation(line: 613, column: 15, scope: !3530)
!3535 = !DILocation(line: 613, column: 3, scope: !3530)
!3536 = !DILocation(line: 615, column: 23, scope: !3524)
!3537 = !DILocation(line: 615, column: 28, scope: !3524)
!3538 = !DILocation(line: 615, column: 9, scope: !3524)
!3539 = !DILocation(line: 615, column: 2, scope: !3524)
!3540 = !DILocation(line: 616, column: 1, scope: !3524)
!3541 = distinct !DISubprogram(name: "kobject_name", scope: !316, file: !316, line: 88, type: !3542, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!319, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!3546 = !DILocalVariable(name: "kobj", arg: 1, scope: !3541, file: !316, line: 88, type: !3544)
!3547 = !DILocation(line: 88, column: 62, scope: !3541)
!3548 = !DILocation(line: 90, column: 9, scope: !3541)
!3549 = !DILocation(line: 90, column: 15, scope: !3541)
!3550 = !DILocation(line: 90, column: 2, scope: !3541)
!3551 = distinct !DISubprogram(name: "acpi_cppc_processor_exit", scope: !2692, file: !2692, line: 363, type: !3552, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !2690}
!3554 = !DILocalVariable(name: "pr", arg: 1, scope: !3551, file: !2692, line: 363, type: !2690)
!3555 = !DILocation(line: 363, column: 68, scope: !3551)
!3556 = !DILocation(line: 365, column: 2, scope: !3551)
!3557 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !12, file: !12, line: 246, type: !3558, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!13, !11, !319, !3560, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!13, !7}
!3563 = !DILocalVariable(name: "state", arg: 1, scope: !3557, file: !12, line: 246, type: !11)
!3564 = !DILocation(line: 246, column: 62, scope: !3557)
!3565 = !DILocalVariable(name: "name", arg: 2, scope: !3557, file: !12, line: 247, type: !319)
!3566 = !DILocation(line: 247, column: 22, scope: !3557)
!3567 = !DILocalVariable(name: "startup", arg: 3, scope: !3557, file: !12, line: 248, type: !3560)
!3568 = !DILocation(line: 248, column: 16, scope: !3557)
!3569 = !DILocalVariable(name: "teardown", arg: 4, scope: !3557, file: !12, line: 249, type: !3560)
!3570 = !DILocation(line: 249, column: 16, scope: !3557)
!3571 = !DILocation(line: 251, column: 29, scope: !3557)
!3572 = !DILocation(line: 251, column: 36, scope: !3557)
!3573 = !DILocation(line: 251, column: 49, scope: !3557)
!3574 = !DILocation(line: 251, column: 58, scope: !3557)
!3575 = !DILocation(line: 251, column: 9, scope: !3557)
!3576 = !DILocation(line: 251, column: 2, scope: !3557)
!3577 = distinct !DISubprogram(name: "acpi_soft_cpu_online", scope: !3, file: !3, line: 100, type: !3561, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3578 = !DILocalVariable(name: "cpu", arg: 1, scope: !3577, file: !3, line: 100, type: !7)
!3579 = !DILocation(line: 100, column: 46, scope: !3577)
!3580 = !DILocalVariable(name: "pr", scope: !3577, file: !3, line: 102, type: !2690)
!3581 = !DILocation(line: 102, column: 25, scope: !3577)
!3582 = !DILocation(line: 102, column: 30, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 102, column: 30)
!3584 = !DILocation(line: 102, column: 30, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 102, column: 30)
!3586 = !DILocalVariable(name: "__vpp_verify", scope: !3587, file: !3, line: 102, type: !308)
!3587 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 102, column: 30)
!3588 = !DILocation(line: 102, column: 30, scope: !3587)
!3589 = !DILocation(line: 102, column: 30, scope: !3577)
!3590 = !DILocalVariable(name: "device", scope: !3577, file: !3, line: 103, type: !268)
!3591 = !DILocation(line: 103, column: 22, scope: !3577)
!3592 = !DILocation(line: 105, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 105, column: 6)
!3594 = !DILocation(line: 105, column: 10, scope: !3593)
!3595 = !DILocation(line: 105, column: 33, scope: !3593)
!3596 = !DILocation(line: 105, column: 37, scope: !3593)
!3597 = !DILocation(line: 105, column: 13, scope: !3593)
!3598 = !DILocation(line: 105, column: 6, scope: !3577)
!3599 = !DILocation(line: 106, column: 3, scope: !3593)
!3600 = !DILocation(line: 111, column: 6, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 111, column: 6)
!3602 = !DILocation(line: 111, column: 10, scope: !3601)
!3603 = !DILocation(line: 111, column: 16, scope: !3601)
!3604 = !DILocation(line: 111, column: 6, scope: !3577)
!3605 = !DILocalVariable(name: "ret", scope: !3606, file: !3, line: 112, type: !13)
!3606 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 111, column: 35)
!3607 = !DILocation(line: 112, column: 7, scope: !3606)
!3608 = !DILocation(line: 114, column: 3, scope: !3606)
!3609 = !DILocation(line: 116, column: 3, scope: !3606)
!3610 = !DILocation(line: 116, column: 7, scope: !3606)
!3611 = !DILocation(line: 116, column: 13, scope: !3606)
!3612 = !DILocation(line: 116, column: 31, scope: !3606)
!3613 = !DILocation(line: 117, column: 32, scope: !3606)
!3614 = !DILocation(line: 117, column: 9, scope: !3606)
!3615 = !DILocation(line: 117, column: 7, scope: !3606)
!3616 = !DILocalVariable(name: "__ret_warn_on", scope: !3617, file: !3, line: 118, type: !13)
!3617 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 118, column: 3)
!3618 = !DILocation(line: 118, column: 3, scope: !3617)
!3619 = !DILocation(line: 118, column: 3, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 118, column: 3)
!3621 = !DILocation(line: 118, column: 3, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 118, column: 3)
!3623 = !DILocation(line: 118, column: 3, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 118, column: 3)
!3625 = !DILocation(line: 118, column: 3, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 118, column: 3)
!3627 = !DILocation(line: 118, column: 3, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 118, column: 3)
!3629 = !DILocation(line: 118, column: 3, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 118, column: 3)
!3631 = !{i32 -2142637301, i32 -2142637272, i32 -2142637226, i32 -2142637168, i32 -2142637114, i32 -2142637060, i32 -2142637005, i32 -2142636974}
!3632 = !DILocation(line: 118, column: 3, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 118, column: 3)
!3634 = !{i32 -2142636550, i32 -2142636543, i32 -2142636491, i32 -2142636460, i32 -2142636430}
!3635 = !DILocation(line: 118, column: 3, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 118, column: 3)
!3637 = !DILocation(line: 118, column: 3, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 118, column: 3)
!3639 = !DILocation(line: 119, column: 2, scope: !3606)
!3640 = !DILocation(line: 121, column: 34, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 119, column: 9)
!3642 = !DILocation(line: 121, column: 3, scope: !3641)
!3643 = !DILocation(line: 122, column: 26, scope: !3641)
!3644 = !DILocation(line: 122, column: 3, scope: !3641)
!3645 = !DILocation(line: 123, column: 36, scope: !3641)
!3646 = !DILocation(line: 123, column: 3, scope: !3641)
!3647 = !DILocation(line: 124, column: 37, scope: !3641)
!3648 = !DILocation(line: 124, column: 3, scope: !3641)
!3649 = !DILocation(line: 126, column: 2, scope: !3577)
!3650 = !DILocation(line: 127, column: 1, scope: !3577)
!3651 = distinct !DISubprogram(name: "acpi_soft_cpu_dead", scope: !3, file: !3, line: 129, type: !3561, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3652 = !DILocalVariable(name: "cpu", arg: 1, scope: !3651, file: !3, line: 129, type: !7)
!3653 = !DILocation(line: 129, column: 44, scope: !3651)
!3654 = !DILocalVariable(name: "pr", scope: !3651, file: !3, line: 131, type: !2690)
!3655 = !DILocation(line: 131, column: 25, scope: !3651)
!3656 = !DILocation(line: 131, column: 30, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 131, column: 30)
!3658 = !DILocation(line: 131, column: 30, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 131, column: 30)
!3660 = !DILocalVariable(name: "__vpp_verify", scope: !3661, file: !3, line: 131, type: !308)
!3661 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 131, column: 30)
!3662 = !DILocation(line: 131, column: 30, scope: !3661)
!3663 = !DILocation(line: 131, column: 30, scope: !3651)
!3664 = !DILocalVariable(name: "device", scope: !3651, file: !3, line: 132, type: !268)
!3665 = !DILocation(line: 132, column: 22, scope: !3651)
!3666 = !DILocation(line: 134, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 134, column: 6)
!3668 = !DILocation(line: 134, column: 10, scope: !3667)
!3669 = !DILocation(line: 134, column: 33, scope: !3667)
!3670 = !DILocation(line: 134, column: 37, scope: !3667)
!3671 = !DILocation(line: 134, column: 13, scope: !3667)
!3672 = !DILocation(line: 134, column: 6, scope: !3651)
!3673 = !DILocation(line: 135, column: 3, scope: !3667)
!3674 = !DILocation(line: 137, column: 35, scope: !3651)
!3675 = !DILocation(line: 137, column: 2, scope: !3651)
!3676 = !DILocation(line: 138, column: 2, scope: !3651)
!3677 = !DILocation(line: 139, column: 1, scope: !3651)
!3678 = distinct !DISubprogram(name: "cpufreq_register_notifier", scope: !196, file: !196, line: 510, type: !2960, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3679 = !DILocalVariable(name: "nb", arg: 1, scope: !3678, file: !196, line: 510, type: !2110)
!3680 = !DILocation(line: 510, column: 68, scope: !3678)
!3681 = !DILocalVariable(name: "list", arg: 2, scope: !3678, file: !196, line: 511, type: !7)
!3682 = !DILocation(line: 511, column: 20, scope: !3678)
!3683 = !DILocation(line: 513, column: 2, scope: !3678)
!3684 = distinct !DISubprogram(name: "acpi_processor_ignore_ppc_init", scope: !2692, file: !2692, line: 318, type: !2911, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !350)
!3685 = !DILocation(line: 320, column: 2, scope: !3684)
