; ModuleID = '../bcout/drivers/char/hw_random/mtk-rng.llvm.bc'
source_filename = "drivers/char/hw_random/mtk-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_mtk_rng_driver_init6:\09\09\09"
module asm ".long\09mtk_rng_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mtk_rng = type { i8*, %struct.clk*, %struct.hwrng }
%struct.clk = type opaque
%struct.hwrng = type { i8*, i32 (%struct.hwrng*)*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }

@__UNIQUE_ID___addressable_mtk_rng_driver_init164 = internal global i8* bitcast (i32 ()* @mtk_rng_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@mtk_rng_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @mtk_rng_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @mtk_rng_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @mtk_rng_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2113
@__exitcall_mtk_rng_driver_exit = internal global void ()* @mtk_rng_driver_exit, section ".exitcall.exit", align 8, !dbg !2090
@__UNIQUE_ID_description165 = internal constant [60 x i8] c"mtk_rng.description=Mediatek Random Number Generator Driver\00", section ".modinfo", align 1, !dbg !2097
@__UNIQUE_ID_author166 = internal constant [50 x i8] c"mtk_rng.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1, !dbg !2102
@__UNIQUE_ID_file167 = internal constant [44 x i8] c"mtk_rng.file=drivers/char/hw_random/mtk-rng\00", section ".modinfo", align 1, !dbg !2107
@__UNIQUE_ID_license168 = internal constant [20 x i8] c"mtk_rng.license=GPL\00", section ".modinfo", align 1, !dbg !2110
@.str = private unnamed_addr constant [8 x i8] c"mtk_rng\00", align 1
@mtk_rng_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2173
@mtk_rng_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @mtk_rng_runtime_suspend, i32 (%struct.device*)* @mtk_rng_runtime_resume, i32 (%struct.device*)* @mtk_rng_runtime_suspend, i32 (%struct.device*)* @mtk_rng_runtime_resume, i32 (%struct.device*)* @mtk_rng_runtime_suspend, i32 (%struct.device*)* @mtk_rng_runtime_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* @mtk_rng_runtime_suspend, i32 (%struct.device*)* @mtk_rng_runtime_resume, i32 (%struct.device*)* null }, align 8, !dbg !2176
@.str.1 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no clock for device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to register rng device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"registered RNG driver\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_mtk_rng_driver_init164 to i8*), i8* bitcast (void ()* @mtk_rng_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_mtk_rng_driver_exit to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_description165, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_author166, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_file167, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license168, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_driver_init() #0 section ".init.text" !dbg !2183 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @mtk_rng_driver, %struct.module* null) #6, !dbg !2186
  ret i32 %call, !dbg !2186
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @mtk_rng_driver_exit() #0 section ".exit.text" !dbg !2187 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @mtk_rng_driver) #6, !dbg !2188
  ret void, !dbg !2188
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_probe(%struct.platform_device* %pdev) #2 !dbg !2189 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %ret = alloca i32, align 4
  %priv = alloca %struct.mtk_rng*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2190, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2194, metadata !DIExpression()), !dbg !2195
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2196
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2197
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 128, i32 3264) #6, !dbg !2198
  %1 = bitcast i8* %call to %struct.mtk_rng*, !dbg !2198
  store %struct.mtk_rng* %1, %struct.mtk_rng** %priv, align 8, !dbg !2199
  %2 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2200
  %tobool = icmp ne %struct.mtk_rng* %2, null, !dbg !2200
  br i1 %tobool, label %if.end, label %if.then, !dbg !2202

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2203
  br label %return, !dbg !2203

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2204
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 0, !dbg !2205
  %4 = load i8*, i8** %name, align 8, !dbg !2205
  %5 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2206
  %rng = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %5, i32 0, i32 2, !dbg !2207
  %name1 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng, i32 0, i32 0, !dbg !2208
  store i8* %4, i8** %name1, align 8, !dbg !2209
  %6 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2210
  %rng2 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %6, i32 0, i32 2, !dbg !2211
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng2, i32 0, i32 5, !dbg !2212
  store i32 (%struct.hwrng*, i8*, i64, i1)* @mtk_rng_read, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !2213
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2214
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !2215
  %8 = ptrtoint %struct.device* %dev3 to i64, !dbg !2216
  %9 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2217
  %rng4 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %9, i32 0, i32 2, !dbg !2218
  %priv5 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng4, i32 0, i32 6, !dbg !2219
  store i64 %8, i64* %priv5, align 8, !dbg !2220
  %10 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2221
  %rng6 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %10, i32 0, i32 2, !dbg !2222
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng6, i32 0, i32 7, !dbg !2223
  store i16 900, i16* %quality, align 8, !dbg !2224
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2225
  %dev7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !2226
  %call8 = call %struct.clk* @devm_clk_get(%struct.device* %dev7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2227
  %12 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2228
  %clk = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %12, i32 0, i32 1, !dbg !2229
  store %struct.clk* %call8, %struct.clk** %clk, align 8, !dbg !2230
  %13 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2231
  %clk9 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %13, i32 0, i32 1, !dbg !2233
  %14 = load %struct.clk*, %struct.clk** %clk9, align 8, !dbg !2233
  %15 = bitcast %struct.clk* %14 to i8*, !dbg !2231
  %call10 = call zeroext i1 @IS_ERR(i8* %15) #6, !dbg !2234
  br i1 %call10, label %if.then11, label %if.end15, !dbg !2235

if.then11:                                        ; preds = %if.end
  %16 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2236
  %clk12 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %16, i32 0, i32 1, !dbg !2238
  %17 = load %struct.clk*, %struct.clk** %clk12, align 8, !dbg !2238
  %18 = bitcast %struct.clk* %17 to i8*, !dbg !2236
  %call13 = call i64 @PTR_ERR(i8* %18) #6, !dbg !2239
  %conv = trunc i64 %call13 to i32, !dbg !2239
  store i32 %conv, i32* %ret, align 4, !dbg !2240
  %19 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2241
  %dev14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 3, !dbg !2241
  %20 = load i32, i32* %ret, align 4, !dbg !2241
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %20) #7, !dbg !2241
  %21 = load i32, i32* %ret, align 4, !dbg !2242
  store i32 %21, i32* %retval, align 4, !dbg !2243
  br label %return, !dbg !2243

if.end15:                                         ; preds = %if.end
  %22 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2244
  %call16 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0) #6, !dbg !2245
  %23 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2246
  %base = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %23, i32 0, i32 0, !dbg !2247
  store i8* %call16, i8** %base, align 8, !dbg !2248
  %24 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2249
  %base17 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %24, i32 0, i32 0, !dbg !2251
  %25 = load i8*, i8** %base17, align 8, !dbg !2251
  %call18 = call zeroext i1 @IS_ERR(i8* %25) #6, !dbg !2252
  br i1 %call18, label %if.then19, label %if.end23, !dbg !2253

if.then19:                                        ; preds = %if.end15
  %26 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2254
  %base20 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %26, i32 0, i32 0, !dbg !2255
  %27 = load i8*, i8** %base20, align 8, !dbg !2255
  %call21 = call i64 @PTR_ERR(i8* %27) #6, !dbg !2256
  %conv22 = trunc i64 %call21 to i32, !dbg !2256
  store i32 %conv22, i32* %retval, align 4, !dbg !2257
  br label %return, !dbg !2257

if.end23:                                         ; preds = %if.end15
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2258
  %dev24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 3, !dbg !2259
  %29 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2260
  %rng25 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %29, i32 0, i32 2, !dbg !2261
  %call26 = call i32 @devm_hwrng_register(%struct.device* %dev24, %struct.hwrng* %rng25) #6, !dbg !2262
  store i32 %call26, i32* %ret, align 4, !dbg !2263
  %30 = load i32, i32* %ret, align 4, !dbg !2264
  %tobool27 = icmp ne i32 %30, 0, !dbg !2264
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !2266

if.then28:                                        ; preds = %if.end23
  %31 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2267
  %dev29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 3, !dbg !2267
  %32 = load i32, i32* %ret, align 4, !dbg !2267
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %32) #7, !dbg !2267
  %33 = load i32, i32* %ret, align 4, !dbg !2269
  store i32 %33, i32* %retval, align 4, !dbg !2270
  br label %return, !dbg !2270

if.end30:                                         ; preds = %if.end23
  %34 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2271
  %dev31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 3, !dbg !2272
  %35 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2273
  %36 = bitcast %struct.mtk_rng* %35 to i8*, !dbg !2273
  call void @dev_set_drvdata(%struct.device* %dev31, i8* %36) #6, !dbg !2274
  %37 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2275
  %dev32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 3, !dbg !2276
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %dev32, i32 100) #6, !dbg !2277
  %38 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2278
  %dev33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 3, !dbg !2279
  call void @pm_runtime_use_autosuspend(%struct.device* %dev33) #6, !dbg !2280
  %39 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2281
  %dev34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 3, !dbg !2282
  call void @pm_runtime_enable(%struct.device* %dev34) #6, !dbg !2283
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2284
  %dev35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 3, !dbg !2284
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !2284
  store i32 0, i32* %retval, align 4, !dbg !2285
  br label %return, !dbg !2285

return:                                           ; preds = %if.end30, %if.then28, %if.then19, %if.then11, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !2286
  ret i32 %41, !dbg !2286
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2287 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2290, metadata !DIExpression()), !dbg !2291
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2292, metadata !DIExpression()), !dbg !2293
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2296
  %1 = load i64, i64* %size.addr, align 8, !dbg !2297
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2298
  %or = or i32 %2, 256, !dbg !2299
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2300
  ret i8* %call, !dbg !2301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_read(%struct.hwrng* %rng, i8* %buf, i64 %max, i1 zeroext %wait) #2 !dbg !2302 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %buf.addr = alloca i8*, align 8
  %max.addr = alloca i64, align 8
  %wait.addr = alloca i8, align 1
  %priv = alloca %struct.mtk_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtk_rng*, align 8
  %retval1 = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i64 %max, i64* %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %max.addr, metadata !2307, metadata !DIExpression()), !dbg !2308
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2313, metadata !DIExpression()), !dbg !2315
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2315
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2315
  store i8* %1, i8** %__mptr, align 8, !dbg !2315
  br label %do.body, !dbg !2315

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2316

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2315
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2315
  %3 = bitcast i8* %add.ptr to %struct.mtk_rng*, !dbg !2315
  store %struct.mtk_rng* %3, %struct.mtk_rng** %tmp, align 8, !dbg !2316
  %4 = load %struct.mtk_rng*, %struct.mtk_rng** %tmp, align 8, !dbg !2315
  store %struct.mtk_rng* %4, %struct.mtk_rng** %priv, align 8, !dbg !2312
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2318, metadata !DIExpression()), !dbg !2319
  store i32 0, i32* %retval1, align 4, !dbg !2319
  %5 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2320
  %rng2 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %5, i32 0, i32 2, !dbg !2321
  %priv3 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng2, i32 0, i32 6, !dbg !2322
  %6 = load i64, i64* %priv3, align 8, !dbg !2322
  %7 = inttoptr i64 %6 to %struct.device*, !dbg !2323
  %call = call i32 @pm_runtime_get_sync(%struct.device* %7) #6, !dbg !2324
  br label %while.cond, !dbg !2325

while.cond:                                       ; preds = %if.end, %do.end
  %8 = load i64, i64* %max.addr, align 8, !dbg !2326
  %cmp = icmp uge i64 %8, 4, !dbg !2327
  br i1 %cmp, label %while.body, label %while.end, !dbg !2325

while.body:                                       ; preds = %while.cond
  %9 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2328
  %10 = load i8, i8* %wait.addr, align 1, !dbg !2331
  %tobool = trunc i8 %10 to i1, !dbg !2331
  %call4 = call zeroext i1 @mtk_rng_wait_ready(%struct.hwrng* %9, i1 zeroext %tobool) #6, !dbg !2332
  br i1 %call4, label %if.end, label %if.then, !dbg !2333

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !2334

if.end:                                           ; preds = %while.body
  %11 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2335
  %base = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %11, i32 0, i32 0, !dbg !2336
  %12 = load i8*, i8** %base, align 8, !dbg !2336
  %add.ptr5 = getelementptr i8, i8* %12, i64 8, !dbg !2337
  %call6 = call i32 @readl(i8* %add.ptr5) #6, !dbg !2338
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !2339
  %14 = bitcast i8* %13 to i32*, !dbg !2340
  store i32 %call6, i32* %14, align 4, !dbg !2341
  %15 = load i32, i32* %retval1, align 4, !dbg !2342
  %conv = sext i32 %15 to i64, !dbg !2342
  %add = add i64 %conv, 4, !dbg !2342
  %conv7 = trunc i64 %add to i32, !dbg !2342
  store i32 %conv7, i32* %retval1, align 4, !dbg !2342
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !2343
  %add.ptr8 = getelementptr i8, i8* %16, i64 4, !dbg !2343
  store i8* %add.ptr8, i8** %buf.addr, align 8, !dbg !2343
  %17 = load i64, i64* %max.addr, align 8, !dbg !2344
  %sub = sub i64 %17, 4, !dbg !2344
  store i64 %sub, i64* %max.addr, align 8, !dbg !2344
  br label %while.cond, !dbg !2325, !llvm.loop !2345

while.end:                                        ; preds = %if.then, %while.cond
  %18 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2347
  %rng9 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %18, i32 0, i32 2, !dbg !2348
  %priv10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng9, i32 0, i32 6, !dbg !2349
  %19 = load i64, i64* %priv10, align 8, !dbg !2349
  %20 = inttoptr i64 %19 to %struct.device*, !dbg !2350
  call void @pm_runtime_mark_last_busy(%struct.device* %20) #6, !dbg !2351
  %21 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2352
  %rng11 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %21, i32 0, i32 2, !dbg !2353
  %priv12 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %rng11, i32 0, i32 6, !dbg !2354
  %22 = load i64, i64* %priv12, align 8, !dbg !2354
  %23 = inttoptr i64 %22 to %struct.device*, !dbg !2355
  %call13 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %23) #6, !dbg !2356
  %24 = load i32, i32* %retval1, align 4, !dbg !2357
  %tobool14 = icmp ne i32 %24, 0, !dbg !2357
  br i1 %tobool14, label %cond.true, label %lor.lhs.false, !dbg !2358

lor.lhs.false:                                    ; preds = %while.end
  %25 = load i8, i8* %wait.addr, align 1, !dbg !2359
  %tobool15 = trunc i8 %25 to i1, !dbg !2359
  br i1 %tobool15, label %cond.false, label %cond.true, !dbg !2357

cond.true:                                        ; preds = %lor.lhs.false, %while.end
  %26 = load i32, i32* %retval1, align 4, !dbg !2360
  br label %cond.end, !dbg !2357

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2357

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ -5, %cond.false ], !dbg !2357
  ret i32 %cond, !dbg !2361
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2362 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2366, metadata !DIExpression()), !dbg !2367
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2368
  %1 = ptrtoint i8* %0 to i64, !dbg !2368
  %2 = inttoptr i64 %1 to i8*, !dbg !2368
  %3 = ptrtoint i8* %2 to i64, !dbg !2368
  %cmp = icmp uge i64 %3, -4095, !dbg !2368
  %lnot = xor i1 %cmp, true, !dbg !2368
  %lnot1 = xor i1 %lnot, true, !dbg !2368
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2368
  %conv = sext i32 %lnot.ext to i64, !dbg !2368
  %tobool = icmp ne i64 %conv, 0, !dbg !2368
  ret i1 %tobool, !dbg !2369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2370 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2373, metadata !DIExpression()), !dbg !2374
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2375
  %1 = ptrtoint i8* %0 to i64, !dbg !2376
  ret i64 %1, !dbg !2377
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.hwrng*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2378 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2381, metadata !DIExpression()), !dbg !2382
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2385
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2386
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2387
  store i8* %0, i8** %driver_data, align 8, !dbg !2388
  ret void, !dbg !2389
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_use_autosuspend(%struct.device* %dev) #2 !dbg !2390 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2392, metadata !DIExpression()), !dbg !2393
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2394
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext true) #6, !dbg !2395
  ret void, !dbg !2396
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #2 !dbg !2397 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2398, metadata !DIExpression()), !dbg !2399
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2400
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !2401
  ret i32 %call, !dbg !2402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mtk_rng_wait_ready(%struct.hwrng* %rng, i1 zeroext %wait) #2 !dbg !2403 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %wait.addr = alloca i8, align 1
  %priv = alloca %struct.mtk_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtk_rng*, align 8
  %ready = alloca i32, align 4
  %__timeout_us = alloca i64, align 8
  %__delay_us = alloca i64, align 8
  %__timeout = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  %frombool = zext i1 %wait to i8
  store i8 %frombool, i8* %wait.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %wait.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2412, metadata !DIExpression()), !dbg !2414
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2414
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2414
  store i8* %1, i8** %__mptr, align 8, !dbg !2414
  br label %do.body, !dbg !2414

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2415

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2414
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2414
  %3 = bitcast i8* %add.ptr to %struct.mtk_rng*, !dbg !2414
  store %struct.mtk_rng* %3, %struct.mtk_rng** %tmp, align 8, !dbg !2415
  %4 = load %struct.mtk_rng*, %struct.mtk_rng** %tmp, align 8, !dbg !2414
  store %struct.mtk_rng* %4, %struct.mtk_rng** %priv, align 8, !dbg !2411
  call void @llvm.dbg.declare(metadata i32* %ready, metadata !2417, metadata !DIExpression()), !dbg !2418
  %5 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2419
  %base = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %5, i32 0, i32 0, !dbg !2420
  %6 = load i8*, i8** %base, align 8, !dbg !2420
  %add.ptr1 = getelementptr i8, i8* %6, i64 0, !dbg !2421
  %call = call i32 @readl(i8* %add.ptr1) #6, !dbg !2422
  %conv = zext i32 %call to i64, !dbg !2422
  %and = and i64 %conv, 2147483648, !dbg !2423
  %conv2 = trunc i64 %and to i32, !dbg !2422
  store i32 %conv2, i32* %ready, align 4, !dbg !2424
  %7 = load i32, i32* %ready, align 4, !dbg !2425
  %tobool = icmp ne i32 %7, 0, !dbg !2425
  br i1 %tobool, label %if.end38, label %land.lhs.true, !dbg !2427

land.lhs.true:                                    ; preds = %do.end
  %8 = load i8, i8* %wait.addr, align 1, !dbg !2428
  %tobool3 = trunc i8 %8 to i1, !dbg !2428
  br i1 %tobool3, label %if.then, label %if.end38, !dbg !2429

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i64* %__timeout_us, metadata !2430, metadata !DIExpression()), !dbg !2432
  store i64 20, i64* %__timeout_us, align 8, !dbg !2432
  call void @llvm.dbg.declare(metadata i64* %__delay_us, metadata !2433, metadata !DIExpression()), !dbg !2432
  store i64 2, i64* %__delay_us, align 8, !dbg !2432
  call void @llvm.dbg.declare(metadata i64* %__timeout, metadata !2434, metadata !DIExpression()), !dbg !2432
  %call5 = call i64 @ktime_get() #6, !dbg !2432
  %9 = load i64, i64* %__timeout_us, align 8, !dbg !2432
  %call6 = call i64 @ktime_add_us(i64 %call5, i64 %9) #6, !dbg !2432
  store i64 %call6, i64* %__timeout, align 8, !dbg !2432
  br label %for.cond, !dbg !2432

for.cond:                                         ; preds = %if.end33, %if.then
  %10 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2435
  %base7 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %10, i32 0, i32 0, !dbg !2435
  %11 = load i8*, i8** %base7, align 8, !dbg !2435
  %add.ptr8 = getelementptr i8, i8* %11, i64 0, !dbg !2435
  %call9 = call i32 @readl(i8* %add.ptr8) #6, !dbg !2435
  store i32 %call9, i32* %ready, align 4, !dbg !2435
  %12 = load i32, i32* %ready, align 4, !dbg !2439
  %conv10 = sext i32 %12 to i64, !dbg !2439
  %and11 = and i64 %conv10, 2147483648, !dbg !2439
  %tobool12 = icmp ne i64 %and11, 0, !dbg !2439
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !2435

if.then13:                                        ; preds = %for.cond
  br label %for.end, !dbg !2439

if.end:                                           ; preds = %for.cond
  %13 = load i64, i64* %__timeout_us, align 8, !dbg !2441
  %tobool14 = icmp ne i64 %13, 0, !dbg !2441
  br i1 %tobool14, label %land.lhs.true15, label %if.end23, !dbg !2441

land.lhs.true15:                                  ; preds = %if.end
  %call16 = call i64 @ktime_get() #6, !dbg !2441
  %14 = load i64, i64* %__timeout, align 8, !dbg !2441
  %call17 = call i32 @ktime_compare(i64 %call16, i64 %14) #6, !dbg !2441
  %cmp = icmp sgt i32 %call17, 0, !dbg !2441
  br i1 %cmp, label %if.then19, label %if.end23, !dbg !2435

if.then19:                                        ; preds = %land.lhs.true15
  %15 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2443
  %base20 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %15, i32 0, i32 0, !dbg !2443
  %16 = load i8*, i8** %base20, align 8, !dbg !2443
  %add.ptr21 = getelementptr i8, i8* %16, i64 0, !dbg !2443
  %call22 = call i32 @readl(i8* %add.ptr21) #6, !dbg !2443
  store i32 %call22, i32* %ready, align 4, !dbg !2443
  br label %for.end, !dbg !2443

if.end23:                                         ; preds = %land.lhs.true15, %if.end
  %17 = load i64, i64* %__delay_us, align 8, !dbg !2445
  %tobool24 = icmp ne i64 %17, 0, !dbg !2445
  br i1 %tobool24, label %if.then25, label %if.end33, !dbg !2435

if.then25:                                        ; preds = %if.end23
  %18 = load i64, i64* %__delay_us, align 8, !dbg !2447
  %19 = call i1 @llvm.is.constant.i64(i64 %18), !dbg !2447
  br i1 %19, label %if.then26, label %if.else31, !dbg !2450

if.then26:                                        ; preds = %if.then25
  %20 = load i64, i64* %__delay_us, align 8, !dbg !2451
  %div = udiv i64 %20, 20000, !dbg !2451
  %cmp27 = icmp uge i64 %div, 1, !dbg !2451
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !2454

if.then29:                                        ; preds = %if.then26
  call void @__bad_udelay() #6, !dbg !2451
  br label %if.end30, !dbg !2451

if.else:                                          ; preds = %if.then26
  %21 = load i64, i64* %__delay_us, align 8, !dbg !2451
  %mul = mul i64 %21, 4295, !dbg !2451
  call void @__const_udelay(i64 %mul) #6, !dbg !2451
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  br label %if.end32, !dbg !2454

if.else31:                                        ; preds = %if.then25
  %22 = load i64, i64* %__delay_us, align 8, !dbg !2455
  call void @__udelay(i64 %22) #6, !dbg !2455
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.end30
  br label %if.end33, !dbg !2445

if.end33:                                         ; preds = %if.end32, %if.end23
  br label %for.cond, !dbg !2457, !llvm.loop !2458

for.end:                                          ; preds = %if.then19, %if.then13
  %23 = load i32, i32* %ready, align 4, !dbg !2432
  %conv35 = sext i32 %23 to i64, !dbg !2432
  %and36 = and i64 %conv35, 2147483648, !dbg !2432
  %tobool37 = icmp ne i64 %and36, 0, !dbg !2432
  %24 = zext i1 %tobool37 to i64, !dbg !2432
  %cond = select i1 %tobool37, i32 0, i32 -110, !dbg !2432
  store i32 %cond, i32* %tmp34, align 4, !dbg !2459
  %25 = load i32, i32* %tmp34, align 4, !dbg !2432
  br label %if.end38, !dbg !2460

if.end38:                                         ; preds = %for.end, %land.lhs.true, %do.end
  %26 = load i32, i32* %ready, align 4, !dbg !2461
  %tobool39 = icmp ne i32 %26, 0, !dbg !2462
  %lnot = xor i1 %tobool39, true, !dbg !2462
  %lnot40 = xor i1 %lnot, true, !dbg !2463
  ret i1 %lnot40, !dbg !2464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !2465 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2474, metadata !DIExpression()), !dbg !2473
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !2473
  %1 = bitcast i8* %0 to i32*, !dbg !2473
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !2473, !srcloc !2475
  store i32 %2, i32* %ret, align 4, !dbg !2473
  %3 = load i32, i32* %ret, align 4, !dbg !2473
  ret i32 %3, !dbg !2473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_mark_last_busy(%struct.device* %dev) #2 !dbg !2476 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2477, metadata !DIExpression()), !dbg !2478
  br label %do.body, !dbg !2479

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2480

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2482

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2480

do.body2:                                         ; preds = %do.end
  %call = call i64 @ktime_get_mono_fast_ns() #6, !dbg !2484
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2484
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2484
  %last_busy = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 21, !dbg !2484
  store volatile i64 %call, i64* %last_busy, align 8, !dbg !2484
  br label %do.end3, !dbg !2484

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2480

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !2486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync_autosuspend(%struct.device* %dev) #2 !dbg !2487 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2490
  %call = call i32 @__pm_runtime_suspend(%struct.device* %0, i32 12) #6, !dbg !2491
  ret i32 %call, !dbg !2492
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_add_us(i64 %kt, i64 %usec) #2 !dbg !2493 {
entry:
  %kt.addr = alloca i64, align 8
  %usec.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2498, metadata !DIExpression()), !dbg !2499
  store i64 %usec, i64* %usec.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %usec.addr, metadata !2500, metadata !DIExpression()), !dbg !2501
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2502
  %1 = load i64, i64* %usec.addr, align 8, !dbg !2502
  %mul = mul i64 %1, 1000, !dbg !2502
  %add = add i64 %0, %mul, !dbg !2502
  ret i64 %add, !dbg !2503
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ktime_compare(i64 %cmp1, i64 %cmp2) #2 !dbg !2504 {
entry:
  %retval = alloca i32, align 4
  %cmp1.addr = alloca i64, align 8
  %cmp2.addr = alloca i64, align 8
  store i64 %cmp1, i64* %cmp1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp1.addr, metadata !2507, metadata !DIExpression()), !dbg !2508
  store i64 %cmp2, i64* %cmp2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmp2.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %0 = load i64, i64* %cmp1.addr, align 8, !dbg !2511
  %1 = load i64, i64* %cmp2.addr, align 8, !dbg !2513
  %cmp = icmp slt i64 %0, %1, !dbg !2514
  br i1 %cmp, label %if.then, label %if.end, !dbg !2515

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2516
  br label %return, !dbg !2516

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %cmp1.addr, align 8, !dbg !2517
  %3 = load i64, i64* %cmp2.addr, align 8, !dbg !2519
  %cmp3 = icmp sgt i64 %2, %3, !dbg !2520
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2521

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2522
  br label %return, !dbg !2522

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2523
  br label %return, !dbg !2523

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !2524
  ret i32 %4, !dbg !2524
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #1

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #1

; Function Attrs: noredzone
declare dso_local i64 @ktime_get_mono_fast_ns() #1

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_suspend(%struct.device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_use_autosuspend(%struct.device*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_runtime_suspend(%struct.device* %dev) #2 !dbg !2525 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.mtk_rng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2530
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !2531
  %1 = bitcast i8* %call to %struct.mtk_rng*, !dbg !2531
  store %struct.mtk_rng* %1, %struct.mtk_rng** %priv, align 8, !dbg !2529
  %2 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2532
  %rng = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %2, i32 0, i32 2, !dbg !2533
  call void @mtk_rng_cleanup(%struct.hwrng* %rng) #6, !dbg !2534
  ret i32 0, !dbg !2535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_runtime_resume(%struct.device* %dev) #2 !dbg !2536 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %priv = alloca %struct.mtk_rng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2539, metadata !DIExpression()), !dbg !2540
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2541
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !2542
  %1 = bitcast i8* %call to %struct.mtk_rng*, !dbg !2542
  store %struct.mtk_rng* %1, %struct.mtk_rng** %priv, align 8, !dbg !2540
  %2 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2543
  %rng = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %2, i32 0, i32 2, !dbg !2544
  %call1 = call i32 @mtk_rng_init(%struct.hwrng* %rng) #6, !dbg !2545
  ret i32 %call1, !dbg !2546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !2547 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2552
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2553
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2553
  ret i8* %1, !dbg !2554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtk_rng_cleanup(%struct.hwrng* %rng) #2 !dbg !2555 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.mtk_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtk_rng*, align 8
  %val = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2560, metadata !DIExpression()), !dbg !2562
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2562
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2562
  store i8* %1, i8** %__mptr, align 8, !dbg !2562
  br label %do.body, !dbg !2562

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2563

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2562
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2562
  %3 = bitcast i8* %add.ptr to %struct.mtk_rng*, !dbg !2562
  store %struct.mtk_rng* %3, %struct.mtk_rng** %tmp, align 8, !dbg !2563
  %4 = load %struct.mtk_rng*, %struct.mtk_rng** %tmp, align 8, !dbg !2562
  store %struct.mtk_rng* %4, %struct.mtk_rng** %priv, align 8, !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2565, metadata !DIExpression()), !dbg !2566
  %5 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2567
  %base = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %5, i32 0, i32 0, !dbg !2568
  %6 = load i8*, i8** %base, align 8, !dbg !2568
  %add.ptr1 = getelementptr i8, i8* %6, i64 0, !dbg !2569
  %call = call i32 @readl(i8* %add.ptr1) #6, !dbg !2570
  store i32 %call, i32* %val, align 4, !dbg !2571
  %7 = load i32, i32* %val, align 4, !dbg !2572
  %conv = zext i32 %7 to i64, !dbg !2572
  %and = and i64 %conv, -2, !dbg !2572
  %conv2 = trunc i64 %and to i32, !dbg !2572
  store i32 %conv2, i32* %val, align 4, !dbg !2572
  %8 = load i32, i32* %val, align 4, !dbg !2573
  %9 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2574
  %base3 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %9, i32 0, i32 0, !dbg !2575
  %10 = load i8*, i8** %base3, align 8, !dbg !2575
  %add.ptr4 = getelementptr i8, i8* %10, i64 0, !dbg !2576
  call void @writel(i32 %8, i8* %add.ptr4) #6, !dbg !2577
  %11 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2578
  %clk = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %11, i32 0, i32 1, !dbg !2579
  %12 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2579
  call void @clk_disable_unprepare(%struct.clk* %12) #6, !dbg !2580
  ret void, !dbg !2581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2582 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2586, metadata !DIExpression()), !dbg !2587
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2588, metadata !DIExpression()), !dbg !2587
  %0 = load i32, i32* %val.addr, align 4, !dbg !2587
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2587
  %2 = bitcast i8* %1 to i32*, !dbg !2587
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !2587, !srcloc !2589
  ret void, !dbg !2587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clk_disable_unprepare(%struct.clk* %clk) #2 !dbg !2590 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2595
  call void @clk_disable(%struct.clk* %0) #6, !dbg !2596
  %1 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2597
  call void @clk_unprepare(%struct.clk* %1) #6, !dbg !2598
  ret void, !dbg !2599
}

; Function Attrs: noredzone
declare dso_local void @clk_disable(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local void @clk_unprepare(%struct.clk*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtk_rng_init(%struct.hwrng* %rng) #2 !dbg !2600 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %priv = alloca %struct.mtk_rng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtk_rng*, align 8
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.mtk_rng** %priv, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2605, metadata !DIExpression()), !dbg !2607
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !2607
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !2607
  store i8* %1, i8** %__mptr, align 8, !dbg !2607
  br label %do.body, !dbg !2607

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2608

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2607
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !2607
  %3 = bitcast i8* %add.ptr to %struct.mtk_rng*, !dbg !2607
  store %struct.mtk_rng* %3, %struct.mtk_rng** %tmp, align 8, !dbg !2608
  %4 = load %struct.mtk_rng*, %struct.mtk_rng** %tmp, align 8, !dbg !2607
  store %struct.mtk_rng* %4, %struct.mtk_rng** %priv, align 8, !dbg !2604
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2612, metadata !DIExpression()), !dbg !2613
  %5 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2614
  %clk = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %5, i32 0, i32 1, !dbg !2615
  %6 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2615
  %call = call i32 @clk_prepare_enable(%struct.clk* %6) #6, !dbg !2616
  store i32 %call, i32* %err, align 4, !dbg !2617
  %7 = load i32, i32* %err, align 4, !dbg !2618
  %tobool = icmp ne i32 %7, 0, !dbg !2618
  br i1 %tobool, label %if.then, label %if.end, !dbg !2620

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %err, align 4, !dbg !2621
  store i32 %8, i32* %retval, align 4, !dbg !2622
  br label %return, !dbg !2622

if.end:                                           ; preds = %do.end
  %9 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2623
  %base = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %9, i32 0, i32 0, !dbg !2624
  %10 = load i8*, i8** %base, align 8, !dbg !2624
  %add.ptr1 = getelementptr i8, i8* %10, i64 0, !dbg !2625
  %call2 = call i32 @readl(i8* %add.ptr1) #6, !dbg !2626
  store i32 %call2, i32* %val, align 4, !dbg !2627
  %11 = load i32, i32* %val, align 4, !dbg !2628
  %conv = zext i32 %11 to i64, !dbg !2628
  %or = or i64 %conv, 1, !dbg !2628
  %conv3 = trunc i64 %or to i32, !dbg !2628
  store i32 %conv3, i32* %val, align 4, !dbg !2628
  %12 = load i32, i32* %val, align 4, !dbg !2629
  %13 = load %struct.mtk_rng*, %struct.mtk_rng** %priv, align 8, !dbg !2630
  %base4 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %13, i32 0, i32 0, !dbg !2631
  %14 = load i8*, i8** %base4, align 8, !dbg !2631
  %add.ptr5 = getelementptr i8, i8* %14, i64 0, !dbg !2632
  call void @writel(i32 %12, i8* %add.ptr5) #6, !dbg !2633
  store i32 0, i32* %retval, align 4, !dbg !2634
  br label %return, !dbg !2634

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2635
  ret i32 %15, !dbg !2635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_prepare_enable(%struct.clk* %clk) #2 !dbg !2636 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %ret = alloca i32, align 4
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2643
  %call = call i32 @clk_prepare(%struct.clk* %0) #6, !dbg !2644
  store i32 %call, i32* %ret, align 4, !dbg !2645
  %1 = load i32, i32* %ret, align 4, !dbg !2646
  %tobool = icmp ne i32 %1, 0, !dbg !2646
  br i1 %tobool, label %if.then, label %if.end, !dbg !2648

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !2649
  store i32 %2, i32* %retval, align 4, !dbg !2650
  br label %return, !dbg !2650

if.end:                                           ; preds = %entry
  %3 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2651
  %call1 = call i32 @clk_enable(%struct.clk* %3) #6, !dbg !2652
  store i32 %call1, i32* %ret, align 4, !dbg !2653
  %4 = load i32, i32* %ret, align 4, !dbg !2654
  %tobool2 = icmp ne i32 %4, 0, !dbg !2654
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2656

if.then3:                                         ; preds = %if.end
  %5 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2657
  call void @clk_unprepare(%struct.clk* %5) #6, !dbg !2658
  br label %if.end4, !dbg !2658

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %ret, align 4, !dbg !2659
  store i32 %6, i32* %retval, align 4, !dbg !2660
  br label %return, !dbg !2660

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2661
  ret i32 %7, !dbg !2661
}

; Function Attrs: noredzone
declare dso_local i32 @clk_prepare(%struct.clk*) #1

; Function Attrs: noredzone
declare dso_local i32 @clk_enable(%struct.clk*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2178, !2179, !2180, !2181}
!llvm.ident = !{!2182}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mtk_rng_driver_init164", scope: !2, file: !3, line: 191, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !55, globals: !2089, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/mtk-rng.c", directory: "/home/lizy2001/genbc/linux")
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
!55 = !{!56, !59, !61, !62, !63, !155, !97, !2085, !2087, !239}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !58, line: 76, flags: DIFlagFwdDecl)
!58 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !60, line: 148, baseType: !7)
!60 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtk_rng", file: !3, line: 35, size: 1024, elements: !65)
!65 = !{!66, !67, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !64, file: !3, line: 36, baseType: !62, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !64, file: !3, line: 37, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !70, line: 17, flags: DIFlagFwdDecl)
!70 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !64, file: !3, line: 38, baseType: !72, size: 896, offset: 128)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !73, line: 39, size: 896, elements: !74)
!73 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !79, !85, !89, !93, !102, !112, !113, !115, !121, !135}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !73, line: 40, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !72, file: !73, line: 41, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !84}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !72, file: !73, line: 42, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !84}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !72, file: !73, line: 43, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!83, !84, !83}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !72, file: !73, line: 44, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!83, !84, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !100)
!99 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !7)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !72, file: !73, line: 45, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!83, !84, !62, !106, !110}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 55, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !108, line: 72, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !108, line: 16, baseType: !61)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !60, line: 30, baseType: !111)
!111 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !72, file: !73, line: 46, baseType: !61, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !72, file: !73, line: 47, baseType: !114, size: 16, offset: 448)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !72, file: !73, line: 50, baseType: !116, size: 128, offset: 512)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !60, line: 178, size: 128, elements: !117)
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !60, line: 179, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !60, line: 179, baseType: !119, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !72, file: !73, line: 51, baseType: !122, size: 32, offset: 640)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !123, line: 19, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !122, file: !123, line: 20, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !127, line: 113, baseType: !128)
!127 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !127, line: 111, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !128, file: !127, line: 112, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !60, line: 168, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 166, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !132, file: !60, line: 167, baseType: !83, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !72, file: !73, line: 52, baseType: !136, size: 192, offset: 704)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !137, line: 26, size: 192, elements: !138)
!137 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !136, file: !137, line: 27, baseType: !7, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !136, file: !137, line: 28, baseType: !141, size: 128, offset: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !142, line: 43, size: 128, elements: !143)
!142 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !154}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !141, file: !142, line: 44, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !146, line: 29, baseType: !147)
!146 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !146, line: 20, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !147, file: !146, line: 21, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !151, line: 25, baseType: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 25, elements: !153)
!153 = !{}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !141, file: !142, line: 45, baseType: !116, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !157)
!157 = !{!158, !1612, !1613, !1616, !1617, !1668, !1762, !1763, !1764, !1765, !1766, !1775, !1880, !1893, !1896, !1897, !1901, !1903, !1904, !1905, !1909, !1915, !1916, !1919, !2034, !2035, !2038, !2039, !2040, !2041, !2073, !2074, !2075, !2078, !2081, !2082, !2083, !2084}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !156, file: !30, line: 462, baseType: !159, size: 512)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !160, line: 64, size: 512, elements: !161)
!160 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163, !164, !166, !218, !1453, !1606, !1607, !1608, !1609, !1610, !1611}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !160, line: 65, baseType: !76, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !159, file: !160, line: 66, baseType: !116, size: 128, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !159, file: !160, line: 67, baseType: !165, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !159, file: !160, line: 68, baseType: !167, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !160, line: 192, size: 704, elements: !169)
!169 = !{!170, !171, !179, !180}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !168, file: !160, line: 193, baseType: !116, size: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !168, file: !160, line: 194, baseType: !172, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !146, line: 83, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !146, line: 71, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !146, line: 72, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !146, line: 72, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !146, line: 73, baseType: !147)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !168, file: !160, line: 195, baseType: !159, size: 512, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !168, file: !160, line: 196, baseType: !181, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !160, line: 156, size: 192, elements: !184)
!184 = !{!185, !190, !195}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !183, file: !160, line: 157, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!83, !167, !165}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !160, line: 158, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!76, !167, !165}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !183, file: !160, line: 159, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!83, !167, !165, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !160, line: 148, size: 20736, elements: !202)
!202 = !{!203, !208, !212, !213, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !201, file: !160, line: 149, baseType: !204, size: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!206 = !{!207}
!207 = !DISubrange(count: 3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !201, file: !160, line: 150, baseType: !209, size: 4096, offset: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4096, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !201, file: !160, line: 151, baseType: !83, size: 32, offset: 4288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !160, line: 152, baseType: !214, size: 16384, offset: 4320)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16384, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !201, file: !160, line: 153, baseType: !83, size: 32, offset: 20704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !159, file: !160, line: 69, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !160, line: 138, size: 448, elements: !221)
!221 = !{!222, !226, !250, !252, !1401, !1432, !1436}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !160, line: 139, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !165}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !220, file: !160, line: 140, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !230, line: 230, size: 128, elements: !231)
!230 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !246}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !229, file: !230, line: 231, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !165, !240, !205}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !60, line: 60, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !108, line: 73, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !108, line: 15, baseType: !239)
!239 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !230, line: 30, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !230, line: 31, baseType: !76, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !241, file: !230, line: 32, baseType: !245, size: 16, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !60, line: 19, baseType: !114)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !229, file: !230, line: 232, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!236, !165, !240, !76, !106}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !220, file: !160, line: 141, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !220, file: !160, line: 142, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !230, line: 84, size: 320, elements: !257)
!257 = !{!258, !259, !263, !1398, !1399}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !230, line: 85, baseType: !76, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !256, file: !230, line: 86, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!245, !165, !240, !83}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !256, file: !230, line: 88, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!245, !165, !267, !83}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !230, line: 168, size: 448, elements: !269)
!269 = !{!270, !271, !272, !273, !283, !284}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !268, file: !230, line: 169, baseType: !241, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !268, file: !230, line: 170, baseType: !106, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !268, file: !230, line: 171, baseType: !62, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !268, file: !230, line: 172, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!236, !277, !165, !267, !205, !280, !106}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !279, line: 526, flags: DIFlagFwdDecl)
!279 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !60, line: 46, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !108, line: 88, baseType: !282)
!282 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !268, file: !230, line: 174, baseType: !274, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !230, line: 176, baseType: !285, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!83, !277, !165, !267, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !290, line: 305, size: 1472, elements: !291)
!290 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !295, !296, !304, !305, !1372, !1378, !1379, !1384, !1385, !1388, !1392, !1393, !1394, !1395, !1396}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !289, file: !290, line: 308, baseType: !61, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !289, file: !290, line: 309, baseType: !61, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !289, file: !290, line: 313, baseType: !288, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !289, file: !290, line: 313, baseType: !288, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !289, file: !290, line: 315, baseType: !297, size: 192, align: 64, offset: 256)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !298, line: 24, size: 192, align: 64, elements: !299)
!298 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !297, file: !298, line: 25, baseType: !61, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !297, file: !298, line: 26, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !297, file: !298, line: 27, baseType: !302, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !289, file: !290, line: 323, baseType: !61, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !289, file: !290, line: 327, baseType: !306, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !290, line: 388, size: 7296, elements: !308)
!308 = !{!309, !1368}
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !307, file: !290, line: 389, baseType: !310, size: 7296)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !290, line: 389, size: 7296, elements: !311)
!311 = !{!312, !313, !317, !321, !325, !326, !327, !328, !329, !337, !338, !339, !340, !341, !350, !351, !352, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !386, !394, !397, !445, !446, !1338, !1339, !1342, !1346, !1347, !1350, !1351, !1352, !1355, !1367}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !310, file: !290, line: 390, baseType: !288, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !310, file: !290, line: 391, baseType: !314, size: 64, offset: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !298, line: 31, size: 64, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !314, file: !298, line: 32, baseType: !302, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !310, file: !290, line: 392, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !320)
!320 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !310, file: !290, line: 394, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!61, !277, !61, !61, !61, !61}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !310, file: !290, line: 398, baseType: !61, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !310, file: !290, line: 399, baseType: !61, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !310, file: !290, line: 405, baseType: !61, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !310, file: !290, line: 406, baseType: !61, size: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !310, file: !290, line: 407, baseType: !330, size: 64, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !279, line: 286, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 286, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !332, file: !279, line: 286, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !336, line: 18, baseType: !61)
!336 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !310, file: !290, line: 416, baseType: !131, size: 32, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !310, file: !290, line: 428, baseType: !131, size: 32, offset: 608)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !310, file: !290, line: 437, baseType: !131, size: 32, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !310, file: !290, line: 447, baseType: !131, size: 32, offset: 672)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !310, file: !290, line: 450, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !343, line: 13, baseType: !344)
!343 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !60, line: 175, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 173, size: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !345, file: !60, line: 174, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !282)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !310, file: !290, line: 452, baseType: !83, size: 32, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !310, file: !290, line: 454, baseType: !172, offset: 800)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !310, file: !290, line: 457, baseType: !353, size: 256, offset: 832)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !354, line: 35, size: 256, elements: !355)
!354 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !357, !358, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !353, file: !354, line: 36, baseType: !342, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !353, file: !354, line: 42, baseType: !342, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !353, file: !354, line: 46, baseType: !145, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !353, file: !354, line: 47, baseType: !116, size: 128, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !310, file: !290, line: 459, baseType: !116, size: 128, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !310, file: !290, line: 466, baseType: !61, size: 64, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !310, file: !290, line: 467, baseType: !61, size: 64, offset: 1280)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !310, file: !290, line: 469, baseType: !61, size: 64, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !310, file: !290, line: 470, baseType: !61, size: 64, offset: 1408)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !310, file: !290, line: 471, baseType: !344, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !310, file: !290, line: 472, baseType: !61, size: 64, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !310, file: !290, line: 473, baseType: !61, size: 64, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !310, file: !290, line: 474, baseType: !61, size: 64, offset: 1664)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !310, file: !290, line: 475, baseType: !61, size: 64, offset: 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !310, file: !290, line: 477, baseType: !172, offset: 1792)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !310, file: !290, line: 478, baseType: !61, size: 64, offset: 1792)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !310, file: !290, line: 478, baseType: !61, size: 64, offset: 1856)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !310, file: !290, line: 478, baseType: !61, size: 64, offset: 1920)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !310, file: !290, line: 478, baseType: !61, size: 64, offset: 1984)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !310, file: !290, line: 479, baseType: !61, size: 64, offset: 2048)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !310, file: !290, line: 479, baseType: !61, size: 64, offset: 2112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !310, file: !290, line: 479, baseType: !61, size: 64, offset: 2176)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !310, file: !290, line: 480, baseType: !61, size: 64, offset: 2240)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !310, file: !290, line: 480, baseType: !61, size: 64, offset: 2304)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !310, file: !290, line: 480, baseType: !61, size: 64, offset: 2368)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !310, file: !290, line: 480, baseType: !61, size: 64, offset: 2432)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !310, file: !290, line: 482, baseType: !383, size: 2816, offset: 2496)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2816, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 44)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !310, file: !290, line: 488, baseType: !387, size: 256, offset: 5312)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !388, line: 60, size: 256, elements: !389)
!388 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !387, file: !388, line: 61, baseType: !391, size: 256)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 4)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !310, file: !290, line: 490, baseType: !395, size: 64, offset: 5568)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !290, line: 490, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !310, file: !290, line: 493, baseType: !398, size: 896, offset: 5632)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !399, line: 53, baseType: !400)
!399 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 13, size: 896, elements: !401)
!401 = !{!402, !403, !404, !405, !408, !409, !416, !417, !437, !438, !441}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !400, file: !399, line: 18, baseType: !318, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !400, file: !399, line: 28, baseType: !344, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !400, file: !399, line: 31, baseType: !353, size: 256, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !400, file: !399, line: 32, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !399, line: 32, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !400, file: !399, line: 37, baseType: !114, size: 16, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !400, file: !399, line: 40, baseType: !410, size: 192, offset: 512)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !411, line: 53, size: 192, elements: !412)
!411 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!412 = !{!413, !414, !415}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !410, file: !411, line: 54, baseType: !342, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !410, file: !411, line: 55, baseType: !172, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !410, file: !411, line: 59, baseType: !116, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !400, file: !399, line: 41, baseType: !62, size: 64, offset: 704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !400, file: !399, line: 42, baseType: !418, size: 64, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !421, line: 13, size: 896, elements: !422)
!421 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !420, file: !421, line: 14, baseType: !62, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !420, file: !421, line: 15, baseType: !61, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !420, file: !421, line: 17, baseType: !61, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !420, file: !421, line: 17, baseType: !61, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !420, file: !421, line: 19, baseType: !239, size: 64, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !420, file: !421, line: 21, baseType: !239, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !420, file: !421, line: 22, baseType: !239, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !420, file: !421, line: 23, baseType: !239, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !420, file: !421, line: 24, baseType: !239, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !420, file: !421, line: 25, baseType: !239, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !420, file: !421, line: 26, baseType: !239, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !420, file: !421, line: 27, baseType: !239, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !420, file: !421, line: 28, baseType: !239, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !420, file: !421, line: 29, baseType: !239, size: 64, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !400, file: !399, line: 44, baseType: !131, size: 32, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !400, file: !399, line: 50, baseType: !439, size: 16, offset: 864)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !114)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !400, file: !399, line: 51, baseType: !442, size: 16, offset: 880)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !444)
!444 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !290, line: 495, baseType: !61, size: 64, offset: 6528)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !310, file: !290, line: 497, baseType: !447, size: 64, offset: 6592)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !290, line: 381, size: 384, elements: !449)
!449 = !{!450, !451, !1337}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !448, file: !290, line: 382, baseType: !131, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !448, file: !290, line: 383, baseType: !452, size: 128, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !290, line: 376, size: 128, elements: !453)
!453 = !{!454, !1335}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !452, file: !290, line: 377, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !457, line: 640, size: 48640, elements: !458)
!457 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !465, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !480, !498, !509, !604, !605, !606, !617, !618, !620, !621, !622, !623, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !701, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !757, !759, !760, !761, !763, !765, !766, !767, !768, !769, !775, !776, !777, !778, !779, !780, !781, !793, !798, !803, !804, !805, !808, !812, !815, !818, !821, !824, !828, !831, !834, !840, !841, !842, !848, !849, !850, !851, !852, !861, !862, !863, !864, !865, !870, !871, !872, !875, !876, !879, !882, !885, !888, !891, !894, !895, !975, !978, !981, !982, !985, !986, !987, !993, !994, !995, !1008, !1009, !1010, !1020, !1025, !1028, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !456, file: !457, line: 646, baseType: !460, size: 128)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !461, line: 56, size: 128, elements: !462)
!461 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !464}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !461, line: 57, baseType: !61, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !460, file: !461, line: 58, baseType: !98, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !456, file: !457, line: 649, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !239)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !456, file: !457, line: 657, baseType: !62, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !456, file: !457, line: 658, baseType: !126, size: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !457, line: 660, baseType: !7, size: 32, offset: 288)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !456, file: !457, line: 661, baseType: !7, size: 32, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !456, file: !457, line: 684, baseType: !83, size: 32, offset: 352)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !456, file: !457, line: 686, baseType: !83, size: 32, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !456, file: !457, line: 687, baseType: !83, size: 32, offset: 416)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !456, file: !457, line: 688, baseType: !83, size: 32, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !456, file: !457, line: 689, baseType: !7, size: 32, offset: 480)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !456, file: !457, line: 691, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !457, line: 691, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !456, file: !457, line: 692, baseType: !481, size: 832, offset: 576)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !457, line: 451, size: 832, elements: !482)
!482 = !{!483, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !481, file: !457, line: 453, baseType: !484, size: 128)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !457, line: 325, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !484, file: !457, line: 326, baseType: !61, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !484, file: !457, line: 327, baseType: !98, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !481, file: !457, line: 454, baseType: !297, size: 192, align: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !481, file: !457, line: 455, baseType: !116, size: 128, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !481, file: !457, line: 456, baseType: !7, size: 32, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !481, file: !457, line: 458, baseType: !318, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !481, file: !457, line: 459, baseType: !318, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !481, file: !457, line: 460, baseType: !318, size: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !481, file: !457, line: 461, baseType: !318, size: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !481, file: !457, line: 463, baseType: !318, size: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !481, file: !457, line: 465, baseType: !497, offset: 832)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !457, line: 415, elements: !153)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !456, file: !457, line: 693, baseType: !499, size: 384, offset: 1408)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !457, line: 489, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !499, file: !457, line: 490, baseType: !116, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !499, file: !457, line: 491, baseType: !61, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !499, file: !457, line: 492, baseType: !61, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !499, file: !457, line: 493, baseType: !7, size: 32, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !499, file: !457, line: 494, baseType: !114, size: 16, offset: 288)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !499, file: !457, line: 495, baseType: !114, size: 16, offset: 304)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !499, file: !457, line: 497, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !456, file: !457, line: 697, baseType: !510, size: 1792, offset: 1792)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !457, line: 507, size: 1792, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !601, !602}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !510, file: !457, line: 508, baseType: !297, size: 192, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !510, file: !457, line: 515, baseType: !318, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !510, file: !457, line: 516, baseType: !318, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !510, file: !457, line: 517, baseType: !318, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !510, file: !457, line: 518, baseType: !318, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !510, file: !457, line: 519, baseType: !318, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !510, file: !457, line: 526, baseType: !348, size: 64, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !510, file: !457, line: 527, baseType: !318, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !457, line: 528, baseType: !7, size: 32, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !510, file: !457, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !510, file: !457, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !510, file: !457, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !510, file: !457, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !510, file: !457, line: 563, baseType: !526, size: 512, offset: 704)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !527)
!527 = !{!528, !536, !537, !542, !594, !598, !599, !600}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !6, line: 119, baseType: !529, size: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !530, line: 9, size: 256, elements: !531)
!530 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !529, file: !530, line: 10, baseType: !297, size: 192, align: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !529, file: !530, line: 11, baseType: !534, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !535, line: 29, baseType: !348)
!535 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !526, file: !6, line: 120, baseType: !534, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !526, file: !6, line: 121, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!5, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !526, file: !6, line: 122, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !545)
!545 = !{!546, !566, !567, !570, !580, !581, !589, !593}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !544, file: !6, line: 160, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !6, line: 215, baseType: !145)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !548, file: !6, line: 216, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !548, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !548, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !548, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !548, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !548, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !548, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !548, file: !6, line: 233, baseType: !534, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !548, file: !6, line: 234, baseType: !541, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !548, file: !6, line: 235, baseType: !534, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !548, file: !6, line: 236, baseType: !541, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !548, file: !6, line: 237, baseType: !563, size: 4096, offset: 512)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 4096, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 8)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !544, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !544, file: !6, line: 162, baseType: !568, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !60, line: 27, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !108, line: 96, baseType: !83)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !544, file: !6, line: 163, baseType: !571, size: 32, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !572, line: 276, baseType: !573)
!572 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !572, line: 276, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !573, file: !572, line: 276, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !572, line: 70, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !572, line: 65, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !577, file: !572, line: 66, baseType: !7, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !544, file: !6, line: 164, baseType: !541, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !544, file: !6, line: 165, baseType: !582, size: 128, offset: 256)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !530, line: 14, size: 128, elements: !583)
!583 = !{!584}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !582, file: !530, line: 15, baseType: !585, size: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !298, line: 125, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !585, file: !298, line: 126, baseType: !314, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !585, file: !298, line: 127, baseType: !302, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !544, file: !6, line: 166, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!534}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !544, file: !6, line: 167, baseType: !534, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !526, file: !6, line: 123, baseType: !595, size: 8, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !99, line: 17, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !597)
!597 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !526, file: !6, line: 124, baseType: !595, size: 8, offset: 456)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !526, file: !6, line: 125, baseType: !595, size: 8, offset: 464)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !526, file: !6, line: 126, baseType: !595, size: 8, offset: 472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !510, file: !457, line: 572, baseType: !526, size: 512, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !510, file: !457, line: 580, baseType: !603, size: 64, offset: 1728)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !456, file: !457, line: 721, baseType: !7, size: 32, offset: 3584)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !456, file: !457, line: 722, baseType: !83, size: 32, offset: 3616)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !456, file: !457, line: 723, baseType: !607, size: 64, offset: 3648)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !610, line: 17, baseType: !611)
!610 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !610, line: 17, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !611, file: !610, line: 17, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 64, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 1)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !456, file: !457, line: 724, baseType: !609, size: 64, offset: 3712)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !456, file: !457, line: 749, baseType: !619, offset: 3776)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !457, line: 290, elements: !153)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !456, file: !457, line: 751, baseType: !116, size: 128, offset: 3776)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !456, file: !457, line: 757, baseType: !306, size: 64, offset: 3904)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !456, file: !457, line: 758, baseType: !306, size: 64, offset: 3968)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !456, file: !457, line: 761, baseType: !624, size: 320, offset: 4032)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !388, line: 34, size: 320, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !624, file: !388, line: 35, baseType: !318, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !624, file: !388, line: 36, baseType: !628, size: 256, offset: 64)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !392)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !456, file: !457, line: 766, baseType: !83, size: 32, offset: 4352)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !456, file: !457, line: 767, baseType: !83, size: 32, offset: 4384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !456, file: !457, line: 768, baseType: !83, size: 32, offset: 4416)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !456, file: !457, line: 770, baseType: !83, size: 32, offset: 4448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !456, file: !457, line: 772, baseType: !61, size: 64, offset: 4480)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !456, file: !457, line: 775, baseType: !7, size: 32, offset: 4544)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !456, file: !457, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !456, file: !457, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !456, file: !457, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !456, file: !457, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !456, file: !457, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !456, file: !457, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !456, file: !457, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !456, file: !457, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !456, file: !457, line: 831, baseType: !61, size: 64, offset: 4672)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !456, file: !457, line: 833, baseType: !645, size: 384, offset: 4736)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !646)
!646 = !{!647, !652}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !645, file: !12, line: 26, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!239, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !12, line: 27, baseType: !653, size: 320, offset: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !12, line: 27, size: 320, elements: !654)
!654 = !{!655, !664, !691}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !653, file: !12, line: 36, baseType: !656, size: 320)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !12, line: 29, size: 320, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !656, file: !12, line: 30, baseType: !97, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !656, file: !12, line: 31, baseType: !98, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !12, line: 32, baseType: !98, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !656, file: !12, line: 33, baseType: !98, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !656, file: !12, line: 34, baseType: !318, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !656, file: !12, line: 35, baseType: !97, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !653, file: !12, line: 46, baseType: !665, size: 192)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !12, line: 38, size: 192, elements: !666)
!666 = !{!667, !668, !669, !690}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !665, file: !12, line: 39, baseType: !568, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !12, line: 41, baseType: !670, size: 64, offset: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !12, line: 41, size: 64, elements: !671)
!671 = !{!672, !680}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !670, file: !12, line: 42, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !675, line: 7, size: 128, elements: !676)
!675 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !674, file: !675, line: 8, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !108, line: 93, baseType: !282)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !674, file: !675, line: 9, baseType: !282, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !670, file: !12, line: 43, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !683, line: 7, size: 64, elements: !684)
!683 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !689}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !682, file: !683, line: 8, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !683, line: 5, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !83)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !682, file: !683, line: 9, baseType: !687, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !665, file: !12, line: 45, baseType: !318, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !653, file: !12, line: 54, baseType: !692, size: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !12, line: 48, size: 256, elements: !693)
!693 = !{!694, !697, !698, !699, !700}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !692, file: !12, line: 49, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !692, file: !12, line: 50, baseType: !83, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !692, file: !12, line: 51, baseType: !83, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !692, file: !12, line: 52, baseType: !61, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !692, file: !12, line: 53, baseType: !61, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !456, file: !457, line: 835, baseType: !702, size: 32, offset: 5120)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !60, line: 22, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !108, line: 28, baseType: !83)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !456, file: !457, line: 836, baseType: !702, size: 32, offset: 5152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !456, file: !457, line: 840, baseType: !61, size: 64, offset: 5184)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !456, file: !457, line: 849, baseType: !455, size: 64, offset: 5248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !456, file: !457, line: 852, baseType: !455, size: 64, offset: 5312)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !456, file: !457, line: 857, baseType: !116, size: 128, offset: 5376)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !456, file: !457, line: 858, baseType: !116, size: 128, offset: 5504)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !456, file: !457, line: 859, baseType: !455, size: 64, offset: 5632)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !456, file: !457, line: 867, baseType: !116, size: 128, offset: 5696)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !456, file: !457, line: 868, baseType: !116, size: 128, offset: 5824)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !456, file: !457, line: 871, baseType: !714, size: 64, offset: 5952)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !716, line: 59, size: 768, elements: !717)
!716 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!717 = !{!718, !719, !720, !721, !732, !733, !740, !749}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !715, file: !716, line: 61, baseType: !126, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !715, file: !716, line: 62, baseType: !7, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !715, file: !716, line: 63, baseType: !172, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !715, file: !716, line: 65, baseType: !722, size: 256, offset: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !392)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !60, line: 182, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !723, file: !60, line: 183, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !60, line: 186, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !60, line: 187, baseType: !726, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !727, file: !60, line: 187, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !715, file: !716, line: 66, baseType: !723, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !715, file: !716, line: 68, baseType: !734, size: 128, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !735, line: 40, baseType: !736)
!735 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !735, line: 36, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !735, line: 37, baseType: !172)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !736, file: !735, line: 38, baseType: !116, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !715, file: !716, line: 69, baseType: !741, size: 128, align: 64, offset: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !60, line: 216, size: 128, align: 64, elements: !742)
!742 = !{!743, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !741, file: !60, line: 217, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !741, file: !60, line: 218, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !744}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !715, file: !716, line: 70, baseType: !750, size: 128, offset: 640)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 128, elements: !615)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !716, line: 54, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !751, file: !716, line: 55, baseType: !83, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !716, line: 56, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !716, line: 56, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !456, file: !457, line: 872, baseType: !758, size: 512, offset: 6016)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 512, elements: !392)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !456, file: !457, line: 873, baseType: !116, size: 128, offset: 6528)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !456, file: !457, line: 874, baseType: !116, size: 128, offset: 6656)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !456, file: !457, line: 876, baseType: !762, size: 64, offset: 6784)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !456, file: !457, line: 879, baseType: !764, size: 64, offset: 6848)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !456, file: !457, line: 882, baseType: !764, size: 64, offset: 6912)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !456, file: !457, line: 884, baseType: !318, size: 64, offset: 6976)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !456, file: !457, line: 885, baseType: !318, size: 64, offset: 7040)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !456, file: !457, line: 890, baseType: !318, size: 64, offset: 7104)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !456, file: !457, line: 891, baseType: !770, size: 128, offset: 7168)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !457, line: 242, size: 128, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !770, file: !457, line: 244, baseType: !318, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !770, file: !457, line: 245, baseType: !318, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !457, line: 246, baseType: !145, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !456, file: !457, line: 900, baseType: !61, size: 64, offset: 7296)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !456, file: !457, line: 901, baseType: !61, size: 64, offset: 7360)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !456, file: !457, line: 904, baseType: !318, size: 64, offset: 7424)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !456, file: !457, line: 907, baseType: !318, size: 64, offset: 7488)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !456, file: !457, line: 910, baseType: !61, size: 64, offset: 7552)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !456, file: !457, line: 911, baseType: !61, size: 64, offset: 7616)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !456, file: !457, line: 914, baseType: !782, size: 640, offset: 7680)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !783, line: 123, size: 640, elements: !784)
!783 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !791, !792}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !782, file: !783, line: 124, baseType: !786, size: 576)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 576, elements: !206)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !783, line: 108, size: 192, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !787, file: !783, line: 109, baseType: !318, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !787, file: !783, line: 110, baseType: !582, size: 128, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !782, file: !783, line: 125, baseType: !7, size: 32, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !782, file: !783, line: 126, baseType: !7, size: 32, offset: 608)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !456, file: !457, line: 917, baseType: !794, size: 192, offset: 8320)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !783, line: 134, size: 192, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !794, file: !783, line: 135, baseType: !741, size: 128, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !794, file: !783, line: 136, baseType: !7, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !456, file: !457, line: 923, baseType: !799, size: 64, offset: 8512)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !802, line: 11, flags: DIFlagFwdDecl)
!802 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !456, file: !457, line: 926, baseType: !799, size: 64, offset: 8576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !456, file: !457, line: 929, baseType: !799, size: 64, offset: 8640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !456, file: !457, line: 933, baseType: !806, size: 64, offset: 8704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !457, line: 933, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !456, file: !457, line: 943, baseType: !809, size: 128, offset: 8768)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !456, file: !457, line: 945, baseType: !813, size: 64, offset: 8896)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !457, line: 49, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !456, file: !457, line: 956, baseType: !816, size: 64, offset: 8960)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !457, line: 45, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !456, file: !457, line: 959, baseType: !819, size: 64, offset: 9024)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !457, line: 959, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !456, file: !457, line: 962, baseType: !822, size: 64, offset: 9088)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !457, line: 66, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !456, file: !457, line: 966, baseType: !825, size: 64, offset: 9152)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !827, line: 35, flags: DIFlagFwdDecl)
!827 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!828 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !456, file: !457, line: 969, baseType: !829, size: 64, offset: 9216)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !783, line: 223, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !456, file: !457, line: 970, baseType: !832, size: 64, offset: 9280)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !457, line: 62, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !456, file: !457, line: 971, baseType: !835, size: 64, offset: 9344)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !836, line: 25, baseType: !837)
!836 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !836, line: 23, size: 64, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !837, file: !836, line: 24, baseType: !614, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !456, file: !457, line: 972, baseType: !835, size: 64, offset: 9408)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !456, file: !457, line: 974, baseType: !835, size: 64, offset: 9472)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !456, file: !457, line: 975, baseType: !843, size: 192, offset: 9536)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !844, line: 30, size: 192, elements: !845)
!844 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !843, file: !844, line: 31, baseType: !116, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !843, file: !844, line: 32, baseType: !835, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !456, file: !457, line: 976, baseType: !61, size: 64, offset: 9728)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !456, file: !457, line: 977, baseType: !106, size: 64, offset: 9792)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !456, file: !457, line: 978, baseType: !7, size: 32, offset: 9856)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !456, file: !457, line: 980, baseType: !744, size: 64, offset: 9920)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !456, file: !457, line: 989, baseType: !853, size: 128, offset: 9984)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !854, line: 35, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !853, file: !854, line: 36, baseType: !83, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !853, file: !854, line: 37, baseType: !131, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !853, file: !854, line: 38, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !854, line: 23, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !456, file: !457, line: 992, baseType: !318, size: 64, offset: 10112)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !456, file: !457, line: 993, baseType: !318, size: 64, offset: 10176)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !456, file: !457, line: 996, baseType: !172, offset: 10240)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !456, file: !457, line: 999, baseType: !145, offset: 10240)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !456, file: !457, line: 1001, baseType: !866, size: 64, offset: 10240)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !457, line: 636, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !457, line: 637, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !456, file: !457, line: 1005, baseType: !585, size: 128, offset: 10304)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !456, file: !457, line: 1007, baseType: !455, size: 64, offset: 10432)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !456, file: !457, line: 1009, baseType: !873, size: 64, offset: 10496)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !457, line: 1009, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !456, file: !457, line: 1043, baseType: !62, size: 64, offset: 10560)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !456, file: !457, line: 1046, baseType: !877, size: 64, offset: 10624)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !457, line: 41, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !456, file: !457, line: 1050, baseType: !880, size: 64, offset: 10688)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !457, line: 42, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !456, file: !457, line: 1054, baseType: !883, size: 64, offset: 10752)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !457, line: 55, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !456, file: !457, line: 1056, baseType: !886, size: 64, offset: 10816)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !457, line: 40, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !456, file: !457, line: 1058, baseType: !889, size: 64, offset: 10880)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !457, line: 47, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !456, file: !457, line: 1061, baseType: !892, size: 64, offset: 10944)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !457, line: 43, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !456, file: !457, line: 1064, baseType: !61, size: 64, offset: 11008)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !456, file: !457, line: 1065, baseType: !896, size: 64, offset: 11072)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !844, line: 14, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !844, line: 12, size: 384, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !844, line: 13, baseType: !901, size: 384)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !898, file: !844, line: 13, size: 384, elements: !902)
!902 = !{!903, !904, !905, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !901, file: !844, line: 13, baseType: !83, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !901, file: !844, line: 13, baseType: !83, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !901, file: !844, line: 13, baseType: !83, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !901, file: !844, line: 13, baseType: !907, size: 256, offset: 128)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !908, line: 32, size: 256, elements: !909)
!908 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !916, !929, !935, !944, !964, !969}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !907, file: !908, line: 37, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 34, size: 64, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !911, file: !908, line: 35, baseType: !703, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !911, file: !908, line: 36, baseType: !915, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !108, line: 49, baseType: !7)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !907, file: !908, line: 45, baseType: !917, size: 192)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 40, size: 192, elements: !918)
!918 = !{!919, !921, !922, !928}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !917, file: !908, line: 41, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !108, line: 95, baseType: !83)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !917, file: !908, line: 42, baseType: !83, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !917, file: !908, line: 43, baseType: !923, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !908, line: 11, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !908, line: 8, size: 64, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !924, file: !908, line: 9, baseType: !83, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !924, file: !908, line: 10, baseType: !62, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !917, file: !908, line: 44, baseType: !83, size: 32, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !907, file: !908, line: 52, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 48, size: 128, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !930, file: !908, line: 49, baseType: !703, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !930, file: !908, line: 50, baseType: !915, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !930, file: !908, line: 51, baseType: !923, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !907, file: !908, line: 61, baseType: !936, size: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 55, size: 256, elements: !937)
!937 = !{!938, !939, !940, !941, !943}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !936, file: !908, line: 56, baseType: !703, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !936, file: !908, line: 57, baseType: !915, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !936, file: !908, line: 58, baseType: !83, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !936, file: !908, line: 59, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !108, line: 94, baseType: !238)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !936, file: !908, line: 60, baseType: !942, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !907, file: !908, line: 95, baseType: !945, size: 256)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 64, size: 256, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !945, file: !908, line: 65, baseType: !62, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !908, line: 77, baseType: !949, size: 192, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !945, file: !908, line: 77, size: 192, elements: !950)
!950 = !{!951, !952, !959}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !949, file: !908, line: 82, baseType: !444, size: 16)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !949, file: !908, line: 88, baseType: !953, size: 192)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !908, line: 84, size: 192, elements: !954)
!954 = !{!955, !957, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !953, file: !908, line: 85, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !564)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !953, file: !908, line: 86, baseType: !62, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !953, file: !908, line: 87, baseType: !62, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !949, file: !908, line: 93, baseType: !960, size: 96)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !908, line: 90, size: 96, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !960, file: !908, line: 91, baseType: !956, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !960, file: !908, line: 92, baseType: !100, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !907, file: !908, line: 101, baseType: !965, size: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 98, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !965, file: !908, line: 99, baseType: !239, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !965, file: !908, line: 100, baseType: !83, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !907, file: !908, line: 108, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !908, line: 104, size: 128, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !970, file: !908, line: 105, baseType: !62, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !970, file: !908, line: 106, baseType: !83, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !970, file: !908, line: 107, baseType: !7, size: 32, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !456, file: !457, line: 1067, baseType: !976, offset: 11136)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !977, line: 12, elements: !153)
!977 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!978 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !456, file: !457, line: 1099, baseType: !979, size: 64, offset: 11136)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !457, line: 56, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !456, file: !457, line: 1103, baseType: !116, size: 128, offset: 11200)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !456, file: !457, line: 1104, baseType: !983, size: 64, offset: 11328)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !457, line: 46, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !456, file: !457, line: 1105, baseType: !410, size: 192, offset: 11392)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !456, file: !457, line: 1106, baseType: !7, size: 32, offset: 11584)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !456, file: !457, line: 1109, baseType: !988, size: 128, offset: 11648)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 128, elements: !991)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !457, line: 51, flags: DIFlagFwdDecl)
!991 = !{!992}
!992 = !DISubrange(count: 2)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !456, file: !457, line: 1110, baseType: !410, size: 192, offset: 11776)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !456, file: !457, line: 1111, baseType: !116, size: 128, offset: 11968)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !456, file: !457, line: 1173, baseType: !996, size: 64, offset: 12096)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !998, line: 62, size: 256, align: 256, elements: !999)
!998 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1001, !1002, !1007}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !997, file: !998, line: 75, baseType: !100, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !997, file: !998, line: 90, baseType: !100, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !997, file: !998, line: 124, baseType: !1003, size: 64, offset: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !997, file: !998, line: 109, size: 64, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1003, file: !998, line: 110, baseType: !319, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1003, file: !998, line: 112, baseType: !319, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !998, line: 144, baseType: !100, size: 32, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !456, file: !457, line: 1174, baseType: !98, size: 32, offset: 12160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !456, file: !457, line: 1179, baseType: !61, size: 64, offset: 12224)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !456, file: !457, line: 1182, baseType: !1011, size: 128, offset: 12288)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !388, line: 76, size: 128, elements: !1012)
!1012 = !{!1013, !1018, !1019}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1011, file: !388, line: 85, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1015, line: 7, size: 64, elements: !1016)
!1015 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1014, file: !1015, line: 12, baseType: !611, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1011, file: !388, line: 88, baseType: !110, size: 8, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1011, file: !388, line: 95, baseType: !110, size: 8, offset: 72)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !457, line: 1184, baseType: !1021, size: 128, offset: 12416)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !457, line: 1184, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1021, file: !457, line: 1185, baseType: !126, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1021, file: !457, line: 1186, baseType: !741, size: 128, align: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !456, file: !457, line: 1190, baseType: !1026, size: 64, offset: 12544)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !457, line: 53, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !456, file: !457, line: 1192, baseType: !1029, size: 128, offset: 12608)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !388, line: 64, size: 128, elements: !1030)
!1030 = !{!1031, !1124, !1125}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1029, file: !388, line: 65, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !290, line: 68, size: 512, align: 128, elements: !1034)
!1034 = !{!1035, !1036, !1116, !1123}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1033, file: !290, line: 69, baseType: !61, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !290, line: 77, baseType: !1037, size: 320, offset: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !290, line: 77, size: 320, elements: !1038)
!1038 = !{!1039, !1048, !1053, !1081, !1089, !1095, !1108, !1115}
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 78, baseType: !1040, size: 320)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 78, size: 320, elements: !1041)
!1041 = !{!1042, !1043, !1046, !1047}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1040, file: !290, line: 84, baseType: !116, size: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1040, file: !290, line: 86, baseType: !1044, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !290, line: 26, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1040, file: !290, line: 87, baseType: !61, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1040, file: !290, line: 94, baseType: !61, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 96, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 96, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1049, file: !290, line: 101, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !60, line: 143, baseType: !318)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 103, baseType: !1054, size: 320)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 103, size: 320, elements: !1055)
!1055 = !{!1056, !1066, !1069, !1070}
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !290, line: 104, baseType: !1057, size: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !290, line: 104, size: 128, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1057, file: !290, line: 105, baseType: !116, size: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !290, line: 106, baseType: !1061, size: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !290, line: 106, size: 128, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1061, file: !290, line: 107, baseType: !1032, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1061, file: !290, line: 109, baseType: !83, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1061, file: !290, line: 110, baseType: !83, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1054, file: !290, line: 117, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !290, line: 117, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1054, file: !290, line: 119, baseType: !62, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !290, line: 120, baseType: !1071, size: 64, offset: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !290, line: 120, size: 64, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1071, file: !290, line: 121, baseType: !62, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1071, file: !290, line: 122, baseType: !61, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !290, line: 123, baseType: !1076, size: 32)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !290, line: 123, size: 32, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1076, file: !290, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1076, file: !290, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1076, file: !290, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 130, baseType: !1082, size: 192)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 130, size: 192, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1082, file: !290, line: 131, baseType: !61, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1082, file: !290, line: 134, baseType: !597, size: 8, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1082, file: !290, line: 135, baseType: !597, size: 8, offset: 72)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1082, file: !290, line: 136, baseType: !131, size: 32, offset: 96)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1082, file: !290, line: 137, baseType: !7, size: 32, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 139, baseType: !1090, size: 256)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 139, size: 256, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1090, file: !290, line: 140, baseType: !61, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1090, file: !290, line: 141, baseType: !131, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1090, file: !290, line: 143, baseType: !116, size: 128, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 145, baseType: !1096, size: 256)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 145, size: 256, elements: !1097)
!1097 = !{!1098, !1099, !1101, !1102, !1107}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1096, file: !290, line: 146, baseType: !61, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1096, file: !290, line: 147, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !279, line: 509, baseType: !1032)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1096, file: !290, line: 148, baseType: !61, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !290, line: 149, baseType: !1103, size: 64, offset: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1096, file: !290, line: 149, size: 64, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1103, file: !290, line: 150, baseType: !306, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1103, file: !290, line: 151, baseType: !131, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1096, file: !290, line: 156, baseType: !172, offset: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !290, line: 159, baseType: !1109, size: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1037, file: !290, line: 159, size: 128, elements: !1110)
!1110 = !{!1111, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1109, file: !290, line: 161, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !290, line: 161, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1109, file: !290, line: 162, baseType: !62, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1037, file: !290, line: 176, baseType: !741, size: 128, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !290, line: 179, baseType: !1117, size: 32, offset: 384)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !290, line: 179, size: 32, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1117, file: !290, line: 184, baseType: !131, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1117, file: !290, line: 192, baseType: !7, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1117, file: !290, line: 194, baseType: !7, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1117, file: !290, line: 195, baseType: !83, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1033, file: !290, line: 199, baseType: !131, size: 32, offset: 416)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1029, file: !388, line: 67, baseType: !100, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1029, file: !388, line: 68, baseType: !100, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !456, file: !457, line: 1206, baseType: !83, size: 32, offset: 12736)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !456, file: !457, line: 1207, baseType: !83, size: 32, offset: 12768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !456, file: !457, line: 1209, baseType: !61, size: 64, offset: 12800)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !456, file: !457, line: 1219, baseType: !318, size: 64, offset: 12864)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !456, file: !457, line: 1220, baseType: !318, size: 64, offset: 12928)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !456, file: !457, line: 1317, baseType: !83, size: 32, offset: 12992)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !456, file: !457, line: 1319, baseType: !455, size: 64, offset: 13056)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !456, file: !457, line: 1322, baseType: !1134, size: 64, offset: 13120)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1136, line: 56, size: 512, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1144, !1145, !1147}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1135, file: !1136, line: 57, baseType: !1134, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1135, file: !1136, line: 58, baseType: !62, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1135, file: !1136, line: 59, baseType: !61, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1135, file: !1136, line: 60, baseType: !61, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1135, file: !1136, line: 61, baseType: !1143, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1135, file: !1136, line: 62, baseType: !7, size: 32, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1135, file: !1136, line: 63, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !60, line: 153, baseType: !318)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1135, file: !1136, line: 64, baseType: !1148, size: 64, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !456, file: !457, line: 1326, baseType: !126, size: 32, offset: 13184)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !456, file: !457, line: 1342, baseType: !62, size: 64, offset: 13248)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !456, file: !457, line: 1343, baseType: !319, size: 64, offset: 13312)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !456, file: !457, line: 1344, baseType: !318, size: 64, offset: 13376)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !456, file: !457, line: 1345, baseType: !319, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !456, file: !457, line: 1346, baseType: !319, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !456, file: !457, line: 1347, baseType: !319, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !456, file: !457, line: 1348, baseType: !741, size: 128, align: 64, offset: 13504)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !456, file: !457, line: 1358, baseType: !1159, size: 34816, offset: 13824)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1160, line: 485, size: 34816, elements: !1161)
!1160 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1191, !1192, !1193, !1194, !1195, !1196, !1199, !1200, !1201}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1159, file: !1160, line: 487, baseType: !1163, size: 192)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 192, elements: !206)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1165, line: 16, size: 64, elements: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1164, file: !1165, line: 17, baseType: !439, size: 16)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1164, file: !1165, line: 18, baseType: !439, size: 16, offset: 16)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1164, file: !1165, line: 19, baseType: !439, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1164, file: !1165, line: 19, baseType: !439, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1164, file: !1165, line: 19, baseType: !439, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1164, file: !1165, line: 19, baseType: !439, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1164, file: !1165, line: 19, baseType: !439, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1164, file: !1165, line: 20, baseType: !439, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1164, file: !1165, line: 20, baseType: !439, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1164, file: !1165, line: 20, baseType: !439, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1164, file: !1165, line: 20, baseType: !439, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1164, file: !1165, line: 20, baseType: !439, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1164, file: !1165, line: 20, baseType: !439, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1159, file: !1160, line: 491, baseType: !61, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1159, file: !1160, line: 495, baseType: !114, size: 16, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1159, file: !1160, line: 496, baseType: !114, size: 16, offset: 272)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1159, file: !1160, line: 497, baseType: !114, size: 16, offset: 288)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1159, file: !1160, line: 498, baseType: !114, size: 16, offset: 304)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1159, file: !1160, line: 502, baseType: !61, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1159, file: !1160, line: 503, baseType: !61, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1159, file: !1160, line: 514, baseType: !1188, size: 256, offset: 448)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1189, size: 256, elements: !392)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1160, line: 483, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1159, file: !1160, line: 516, baseType: !61, size: 64, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1159, file: !1160, line: 518, baseType: !61, size: 64, offset: 768)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1159, file: !1160, line: 520, baseType: !61, size: 64, offset: 832)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1159, file: !1160, line: 521, baseType: !61, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1159, file: !1160, line: 522, baseType: !61, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1159, file: !1160, line: 528, baseType: !1197, size: 64, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1160, line: 10, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1159, file: !1160, line: 535, baseType: !61, size: 64, offset: 1088)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1159, file: !1160, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1159, file: !1160, line: 540, baseType: !1202, size: 33280, offset: 1536)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1203, line: 317, size: 33280, elements: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1202, file: !1203, line: 330, baseType: !7, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1202, file: !1203, line: 337, baseType: !61, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1202, file: !1203, line: 348, baseType: !1208, size: 32768, offset: 512)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1203, line: 304, size: 32768, elements: !1209)
!1209 = !{!1210, !1225, !1264, !1314, !1331}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1208, file: !1203, line: 305, baseType: !1211, size: 896)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1203, line: 12, size: 896, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1224}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1211, file: !1203, line: 13, baseType: !98, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1211, file: !1203, line: 14, baseType: !98, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1211, file: !1203, line: 15, baseType: !98, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1211, file: !1203, line: 16, baseType: !98, size: 32, offset: 96)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1211, file: !1203, line: 17, baseType: !98, size: 32, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1211, file: !1203, line: 18, baseType: !98, size: 32, offset: 160)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1211, file: !1203, line: 19, baseType: !98, size: 32, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1211, file: !1203, line: 22, baseType: !1221, size: 640, offset: 224)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 20)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1211, file: !1203, line: 25, baseType: !98, size: 32, offset: 864)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1208, file: !1203, line: 306, baseType: !1226, size: 4096, align: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1203, line: 34, size: 4096, align: 128, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1247, !1248, !1249, !1253, !1255, !1259}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1226, file: !1203, line: 35, baseType: !439, size: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1226, file: !1203, line: 36, baseType: !439, size: 16, offset: 16)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1226, file: !1203, line: 37, baseType: !439, size: 16, offset: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1226, file: !1203, line: 38, baseType: !439, size: 16, offset: 48)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1203, line: 39, baseType: !1233, size: 128, offset: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !1203, line: 39, size: 128, elements: !1234)
!1234 = !{!1235, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1203, line: 40, baseType: !1236, size: 128)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1203, line: 40, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1236, file: !1203, line: 41, baseType: !318, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1236, file: !1203, line: 42, baseType: !318, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1203, line: 44, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1203, line: 44, size: 128, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1241, file: !1203, line: 45, baseType: !98, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1241, file: !1203, line: 46, baseType: !98, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1241, file: !1203, line: 47, baseType: !98, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1241, file: !1203, line: 48, baseType: !98, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1226, file: !1203, line: 51, baseType: !98, size: 32, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1226, file: !1203, line: 52, baseType: !98, size: 32, offset: 224)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1226, file: !1203, line: 55, baseType: !1250, size: 1024, offset: 256)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1024, elements: !1251)
!1251 = !{!1252}
!1252 = !DISubrange(count: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1226, file: !1203, line: 58, baseType: !1254, size: 2048, offset: 1280)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 2048, elements: !210)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1226, file: !1203, line: 60, baseType: !1256, size: 384, offset: 3328)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 384, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 12)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1203, line: 62, baseType: !1260, size: 384, offset: 3712)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !1203, line: 62, size: 384, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1260, file: !1203, line: 63, baseType: !1256, size: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1260, file: !1203, line: 64, baseType: !1256, size: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1208, file: !1203, line: 307, baseType: !1265, size: 1088)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1203, line: 79, size: 1088, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1313}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1265, file: !1203, line: 80, baseType: !98, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1265, file: !1203, line: 81, baseType: !98, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1265, file: !1203, line: 82, baseType: !98, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1265, file: !1203, line: 83, baseType: !98, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1265, file: !1203, line: 84, baseType: !98, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1265, file: !1203, line: 85, baseType: !98, size: 32, offset: 160)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1265, file: !1203, line: 86, baseType: !98, size: 32, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1265, file: !1203, line: 88, baseType: !1221, size: 640, offset: 224)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1265, file: !1203, line: 89, baseType: !595, size: 8, offset: 864)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1265, file: !1203, line: 90, baseType: !595, size: 8, offset: 872)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1265, file: !1203, line: 91, baseType: !595, size: 8, offset: 880)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1265, file: !1203, line: 92, baseType: !595, size: 8, offset: 888)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1265, file: !1203, line: 93, baseType: !595, size: 8, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1265, file: !1203, line: 94, baseType: !595, size: 8, offset: 904)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1265, file: !1203, line: 95, baseType: !1282, size: 64, offset: 960)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1284, line: 11, size: 128, elements: !1285)
!1284 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1283, file: !1284, line: 12, baseType: !239, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1283, file: !1284, line: 13, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1290, line: 56, size: 1344, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1289, file: !1290, line: 61, baseType: !61, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1289, file: !1290, line: 62, baseType: !61, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1289, file: !1290, line: 63, baseType: !61, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1289, file: !1290, line: 64, baseType: !61, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1289, file: !1290, line: 65, baseType: !61, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1289, file: !1290, line: 66, baseType: !61, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1289, file: !1290, line: 68, baseType: !61, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1289, file: !1290, line: 69, baseType: !61, size: 64, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1289, file: !1290, line: 70, baseType: !61, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1289, file: !1290, line: 71, baseType: !61, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1289, file: !1290, line: 72, baseType: !61, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1289, file: !1290, line: 73, baseType: !61, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1289, file: !1290, line: 74, baseType: !61, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1289, file: !1290, line: 75, baseType: !61, size: 64, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1289, file: !1290, line: 76, baseType: !61, size: 64, offset: 896)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1289, file: !1290, line: 81, baseType: !61, size: 64, offset: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1289, file: !1290, line: 83, baseType: !61, size: 64, offset: 1024)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1289, file: !1290, line: 84, baseType: !61, size: 64, offset: 1088)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1290, line: 85, baseType: !61, size: 64, offset: 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1289, file: !1290, line: 86, baseType: !61, size: 64, offset: 1216)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1289, file: !1290, line: 87, baseType: !61, size: 64, offset: 1280)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1265, file: !1203, line: 96, baseType: !98, size: 32, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1208, file: !1203, line: 308, baseType: !1315, size: 4608, align: 512)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1203, line: 289, size: 4608, align: 512, elements: !1316)
!1316 = !{!1317, !1318, !1327}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1315, file: !1203, line: 290, baseType: !1226, size: 4096, align: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1315, file: !1203, line: 291, baseType: !1319, size: 512, offset: 4096)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1203, line: 268, size: 512, elements: !1320)
!1320 = !{!1321, !1322, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1319, file: !1203, line: 269, baseType: !318, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1319, file: !1203, line: 270, baseType: !318, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1319, file: !1203, line: 271, baseType: !1324, size: 384, offset: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 384, elements: !1325)
!1325 = !{!1326}
!1326 = !DISubrange(count: 6)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1315, file: !1203, line: 292, baseType: !1328, offset: 4608)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !1329)
!1329 = !{!1330}
!1330 = !DISubrange(count: 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1208, file: !1203, line: 309, baseType: !1332, size: 32768)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 32768, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 4096)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !290, line: 378, baseType: !1336, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !448, file: !290, line: 384, baseType: !136, size: 192, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !310, file: !290, line: 500, baseType: !172, offset: 6656)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !310, file: !290, line: 501, baseType: !1340, size: 64, offset: 6656)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !290, line: 387, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !310, file: !290, line: 516, baseType: !1343, size: 64, offset: 6720)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1345, line: 18, flags: DIFlagFwdDecl)
!1345 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !310, file: !290, line: 519, baseType: !277, size: 64, offset: 6784)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !310, file: !290, line: 521, baseType: !1348, size: 64, offset: 6848)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !290, line: 521, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !310, file: !290, line: 545, baseType: !131, size: 32, offset: 6912)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !310, file: !290, line: 548, baseType: !110, size: 8, offset: 6944)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !310, file: !290, line: 550, baseType: !1353, offset: 6952)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1354, line: 142, elements: !153)
!1354 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !310, file: !290, line: 554, baseType: !1356, size: 256, offset: 6976)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1357, line: 102, size: 256, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1358 = !{!1359, !1360, !1361}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1356, file: !1357, line: 103, baseType: !342, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1356, file: !1357, line: 104, baseType: !116, size: 128, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1356, file: !1357, line: 105, baseType: !1362, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1357, line: 21, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !310, file: !290, line: 557, baseType: !98, size: 32, offset: 7232)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !307, file: !290, line: 565, baseType: !1369, offset: 7296)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: -1)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !289, file: !290, line: 333, baseType: !1373, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !279, line: 284, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !279, line: 284, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1374, file: !279, line: 284, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !336, line: 19, baseType: !61)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !289, file: !290, line: 334, baseType: !61, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !289, file: !290, line: 343, baseType: !1380, size: 256, offset: 704)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !290, line: 340, size: 256, elements: !1381)
!1381 = !{!1382, !1383}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1380, file: !290, line: 341, baseType: !297, size: 192, align: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1380, file: !290, line: 342, baseType: !61, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !289, file: !290, line: 351, baseType: !116, size: 128, offset: 960)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !289, file: !290, line: 353, baseType: !1386, size: 64, offset: 1088)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !290, line: 353, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !289, file: !290, line: 356, baseType: !1389, size: 64, offset: 1152)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !290, line: 356, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !289, file: !290, line: 359, baseType: !61, size: 64, offset: 1216)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !289, file: !290, line: 361, baseType: !277, size: 64, offset: 1280)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !289, file: !290, line: 362, baseType: !62, size: 64, offset: 1344)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !289, file: !290, line: 365, baseType: !342, size: 64, offset: 1408)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !289, file: !290, line: 373, baseType: !1397, offset: 1472)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !290, line: 296, elements: !153)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !256, file: !230, line: 90, baseType: !251, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !256, file: !230, line: 91, baseType: !1400, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !220, file: !160, line: 143, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!1405, !165}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1408)
!1408 = !{!1409, !1410, !1414, !1418, !1424, !1428}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1407, file: !18, line: 40, baseType: !17, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1407, file: !18, line: 41, baseType: !1411, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!110}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1407, file: !18, line: 42, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!62}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1407, file: !18, line: 43, baseType: !1419, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!1148, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1407, file: !18, line: 44, baseType: !1425, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!1148}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1407, file: !18, line: 45, baseType: !1429, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !62}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !220, file: !160, line: 144, baseType: !1433, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!1148, !165}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !220, file: !160, line: 145, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !165, !1440, !1446}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1345, line: 23, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 21, size: 32, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1442, file: !1345, line: 22, baseType: !1445, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !60, line: 32, baseType: !915)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1345, line: 28, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1345, line: 26, size: 32, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1448, file: !1345, line: 27, baseType: !1451, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !60, line: 33, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !108, line: 50, baseType: !7)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !159, file: !160, line: 70, baseType: !1454, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1456, line: 123, size: 1024, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1599, !1600, !1601, !1602, !1603}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1455, file: !1456, line: 124, baseType: !131, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1455, file: !1456, line: 125, baseType: !131, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1455, file: !1456, line: 135, baseType: !1454, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1455, file: !1456, line: 136, baseType: !76, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1455, file: !1456, line: 138, baseType: !297, size: 192, align: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1455, file: !1456, line: 140, baseType: !1148, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1455, file: !1456, line: 141, baseType: !7, size: 32, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !1456, line: 142, baseType: !1466, size: 256, offset: 512)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !1456, line: 142, size: 256, elements: !1467)
!1467 = !{!1468, !1522, !1526}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1466, file: !1456, line: 143, baseType: !1469, size: 192)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1456, line: 91, size: 192, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1469, file: !1456, line: 92, baseType: !61, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1469, file: !1456, line: 94, baseType: !314, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1469, file: !1456, line: 100, baseType: !1474, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1456, line: 180, size: 704, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1492, !1493, !1494, !1520, !1521}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1475, file: !1456, line: 182, baseType: !1454, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1475, file: !1456, line: 183, baseType: !7, size: 32, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1475, file: !1456, line: 186, baseType: !1480, size: 192, offset: 128)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1481, line: 19, size: 192, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1490, !1491}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1480, file: !1481, line: 20, baseType: !1484, size: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1485, line: 292, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1484, file: !1485, line: 293, baseType: !172)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1484, file: !1485, line: 295, baseType: !59, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1484, file: !1485, line: 296, baseType: !62, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1480, file: !1481, line: 21, baseType: !7, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1480, file: !1481, line: 22, baseType: !7, size: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1475, file: !1456, line: 187, baseType: !98, size: 32, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1475, file: !1456, line: 188, baseType: !98, size: 32, offset: 352)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1475, file: !1456, line: 189, baseType: !1495, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1456, line: 168, size: 320, elements: !1497)
!1497 = !{!1498, !1504, !1508, !1512, !1516}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1496, file: !1456, line: 169, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!83, !1502, !1474}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !279, line: 539, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1496, file: !1456, line: 171, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!83, !1454, !76, !245}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1496, file: !1456, line: 173, baseType: !1509, size: 64, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!83, !1454}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1496, file: !1456, line: 174, baseType: !1513, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!83, !1454, !1454, !76}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1496, file: !1456, line: 176, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!83, !1502, !1454, !1474}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1475, file: !1456, line: 192, baseType: !116, size: 128, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1475, file: !1456, line: 194, baseType: !734, size: 128, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1466, file: !1456, line: 144, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1456, line: 103, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1523, file: !1456, line: 104, baseType: !1454, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1466, file: !1456, line: 145, baseType: !1527, size: 256)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1456, line: 107, size: 256, elements: !1528)
!1528 = !{!1529, !1594, !1597, !1598}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1527, file: !1456, line: 108, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1456, line: 217, size: 768, elements: !1533)
!1533 = !{!1534, !1554, !1558, !1562, !1567, !1571, !1575, !1579, !1580, !1581, !1582, !1590}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1456, line: 222, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!83, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1456, line: 197, size: 1088, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1539, file: !1456, line: 199, baseType: !1454, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1539, file: !1456, line: 200, baseType: !277, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1539, file: !1456, line: 201, baseType: !1502, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1539, file: !1456, line: 202, baseType: !62, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1539, file: !1456, line: 205, baseType: !410, size: 192, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1539, file: !1456, line: 206, baseType: !410, size: 192, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1539, file: !1456, line: 207, baseType: !83, size: 32, offset: 640)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1539, file: !1456, line: 208, baseType: !116, size: 128, offset: 704)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1539, file: !1456, line: 209, baseType: !205, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1539, file: !1456, line: 211, baseType: !106, size: 64, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1539, file: !1456, line: 212, baseType: !110, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1539, file: !1456, line: 213, baseType: !110, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1539, file: !1456, line: 214, baseType: !1389, size: 64, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1532, file: !1456, line: 223, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !1538}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1532, file: !1456, line: 236, baseType: !1559, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!83, !1502, !62}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1532, file: !1456, line: 238, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!62, !1502, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1532, file: !1456, line: 239, baseType: !1568, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!62, !1502, !62, !1566}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1532, file: !1456, line: 240, baseType: !1572, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1502, !62}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1532, file: !1456, line: 242, baseType: !1576, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!236, !1538, !205, !106, !280}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1532, file: !1456, line: 252, baseType: !106, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1532, file: !1456, line: 259, baseType: !110, size: 8, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1532, file: !1456, line: 260, baseType: !1576, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1532, file: !1456, line: 263, baseType: !1583, size: 64, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1586, !1538, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1587, line: 52, baseType: !7)
!1587 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1456, line: 27, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1532, file: !1456, line: 266, baseType: !1591, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!83, !1538, !288}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1527, file: !1456, line: 109, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1456, line: 31, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1527, file: !1456, line: 110, baseType: !280, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1527, file: !1456, line: 111, baseType: !1454, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1455, file: !1456, line: 148, baseType: !62, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1455, file: !1456, line: 154, baseType: !318, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !1456, line: 156, baseType: !114, size: 16, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1455, file: !1456, line: 157, baseType: !245, size: 16, offset: 912)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1455, file: !1456, line: 158, baseType: !1604, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1456, line: 32, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !159, file: !160, line: 71, baseType: !122, size: 32, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !159, file: !160, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !159, file: !160, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !159, file: !160, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !159, file: !160, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !159, file: !160, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !30, line: 463, baseType: !155, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !156, file: !30, line: 465, baseType: !1614, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !156, file: !30, line: 467, baseType: !76, size: 64, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !30, line: 468, baseType: !1618, size: 64, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1628, !1633, !1637}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1620, file: !30, line: 88, baseType: !76, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1620, file: !30, line: 89, baseType: !253, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1620, file: !30, line: 90, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!83, !155, !200}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1620, file: !30, line: 91, baseType: !1629, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!205, !155, !1632, !1440, !1446}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1620, file: !30, line: 93, baseType: !1634, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !155}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1620, file: !30, line: 95, baseType: !1638, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1640)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1641)
!1641 = !{!1642, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1640, file: !37, line: 279, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!83, !155}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1640, file: !37, line: 280, baseType: !1634, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1640, file: !37, line: 281, baseType: !1643, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1640, file: !37, line: 282, baseType: !1643, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1640, file: !37, line: 283, baseType: !1643, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1640, file: !37, line: 284, baseType: !1643, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1640, file: !37, line: 285, baseType: !1643, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1640, file: !37, line: 286, baseType: !1643, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1640, file: !37, line: 287, baseType: !1643, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1640, file: !37, line: 288, baseType: !1643, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1640, file: !37, line: 289, baseType: !1643, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1640, file: !37, line: 290, baseType: !1643, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1640, file: !37, line: 291, baseType: !1643, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1640, file: !37, line: 292, baseType: !1643, size: 64, offset: 832)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1640, file: !37, line: 293, baseType: !1643, size: 64, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1640, file: !37, line: 294, baseType: !1643, size: 64, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1640, file: !37, line: 295, baseType: !1643, size: 64, offset: 1024)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1640, file: !37, line: 296, baseType: !1643, size: 64, offset: 1088)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1640, file: !37, line: 297, baseType: !1643, size: 64, offset: 1152)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1640, file: !37, line: 298, baseType: !1643, size: 64, offset: 1216)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1640, file: !37, line: 299, baseType: !1643, size: 64, offset: 1280)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1640, file: !37, line: 300, baseType: !1643, size: 64, offset: 1344)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1640, file: !37, line: 301, baseType: !1643, size: 64, offset: 1408)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !156, file: !30, line: 470, baseType: !1669, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1671, line: 82, size: 1408, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1755, !1758, !1761}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1670, file: !1671, line: 83, baseType: !76, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1670, file: !1671, line: 84, baseType: !76, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1670, file: !1671, line: 85, baseType: !155, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1670, file: !1671, line: 86, baseType: !253, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1670, file: !1671, line: 87, baseType: !253, size: 64, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1670, file: !1671, line: 88, baseType: !253, size: 64, offset: 320)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1670, file: !1671, line: 90, baseType: !1680, size: 64, offset: 384)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!83, !155, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1706, !1719, !1720, !1721, !1722, !1723, !1731, !1732, !1733, !1734, !1735, !1736}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1684, file: !24, line: 96, baseType: !76, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1684, file: !24, line: 97, baseType: !1669, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1684, file: !24, line: 99, baseType: !56, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1684, file: !24, line: 100, baseType: !76, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1684, file: !24, line: 102, baseType: !110, size: 8, offset: 256)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1684, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1684, file: !24, line: 105, baseType: !1693, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1696, line: 262, size: 1600, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1700, !1701, !1705}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1695, file: !1696, line: 263, baseType: !1699, size: 256)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !1251)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1695, file: !1696, line: 264, baseType: !1699, size: 256, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1695, file: !1696, line: 265, baseType: !1702, size: 1024, offset: 512)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 1024, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1695, file: !1696, line: 266, baseType: !1148, size: 64, offset: 1536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1684, file: !24, line: 106, baseType: !1707, size: 64, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1696, line: 210, size: 256, elements: !1710)
!1710 = !{!1711, !1715, !1717, !1718}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1709, file: !1696, line: 211, baseType: !1712, size: 72)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 72, elements: !1713)
!1713 = !{!1714}
!1714 = !DISubrange(count: 9)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1709, file: !1696, line: 212, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1696, line: 14, baseType: !61)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1709, file: !1696, line: 213, baseType: !100, size: 32, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1709, file: !1696, line: 214, baseType: !100, size: 32, offset: 224)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1684, file: !24, line: 108, baseType: !1643, size: 64, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1684, file: !24, line: 109, baseType: !1634, size: 64, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1684, file: !24, line: 110, baseType: !1643, size: 64, offset: 576)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1684, file: !24, line: 111, baseType: !1634, size: 64, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1684, file: !24, line: 112, baseType: !1724, size: 64, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!83, !155, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1729)
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1728, file: !37, line: 51, baseType: !83, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1684, file: !24, line: 113, baseType: !1643, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1684, file: !24, line: 114, baseType: !253, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1684, file: !24, line: 115, baseType: !253, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1684, file: !24, line: 117, baseType: !1638, size: 64, offset: 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1684, file: !24, line: 118, baseType: !1634, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1684, file: !24, line: 120, baseType: !1737, size: 64, offset: 1088)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1670, file: !1671, line: 91, baseType: !1625, size: 64, offset: 448)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1670, file: !1671, line: 92, baseType: !1643, size: 64, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1670, file: !1671, line: 93, baseType: !1634, size: 64, offset: 576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1670, file: !1671, line: 94, baseType: !1643, size: 64, offset: 640)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1670, file: !1671, line: 95, baseType: !1634, size: 64, offset: 704)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1670, file: !1671, line: 97, baseType: !1643, size: 64, offset: 768)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1670, file: !1671, line: 98, baseType: !1643, size: 64, offset: 832)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1670, file: !1671, line: 100, baseType: !1724, size: 64, offset: 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1670, file: !1671, line: 101, baseType: !1643, size: 64, offset: 960)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1670, file: !1671, line: 103, baseType: !1643, size: 64, offset: 1024)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1670, file: !1671, line: 105, baseType: !1643, size: 64, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1670, file: !1671, line: 107, baseType: !1638, size: 64, offset: 1152)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1670, file: !1671, line: 109, baseType: !1752, size: 64, offset: 1216)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1671, line: 109, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1670, file: !1671, line: 111, baseType: !1756, size: 64, offset: 1280)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1671, line: 111, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1670, file: !1671, line: 112, baseType: !1759, offset: 1344)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1760, line: 187, elements: !153)
!1760 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1670, file: !1671, line: 114, baseType: !110, size: 8, offset: 1344)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !156, file: !30, line: 471, baseType: !1683, size: 64, offset: 832)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !156, file: !30, line: 473, baseType: !62, size: 64, offset: 896)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !156, file: !30, line: 475, baseType: !62, size: 64, offset: 960)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !156, file: !30, line: 480, baseType: !410, size: 192, offset: 1024)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !156, file: !30, line: 484, baseType: !1767, size: 576, offset: 1216)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1773, !1774}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1767, file: !30, line: 362, baseType: !116, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1767, file: !30, line: 363, baseType: !116, size: 128, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1767, file: !30, line: 364, baseType: !116, size: 128, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1767, file: !30, line: 365, baseType: !116, size: 128, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1767, file: !30, line: 366, baseType: !110, size: 8, offset: 512)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1767, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !156, file: !30, line: 485, baseType: !1776, size: 2304, offset: 1792)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1873, !1877}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1776, file: !37, line: 566, baseType: !1727, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1776, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1776, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1776, file: !37, line: 569, baseType: !110, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1776, file: !37, line: 570, baseType: !110, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1776, file: !37, line: 571, baseType: !110, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1776, file: !37, line: 572, baseType: !110, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1776, file: !37, line: 573, baseType: !110, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1776, file: !37, line: 574, baseType: !110, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1776, file: !37, line: 575, baseType: !110, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1776, file: !37, line: 576, baseType: !110, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1776, file: !37, line: 577, baseType: !98, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !37, line: 578, baseType: !172, offset: 96)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1776, file: !37, line: 580, baseType: !116, size: 128, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1776, file: !37, line: 581, baseType: !136, size: 192, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1776, file: !37, line: 582, baseType: !1794, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1796, line: 43, size: 1472, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1805, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1795, file: !1796, line: 44, baseType: !76, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1795, file: !1796, line: 45, baseType: !83, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1795, file: !1796, line: 46, baseType: !116, size: 128, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1795, file: !1796, line: 47, baseType: !172, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1795, file: !1796, line: 48, baseType: !1803, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1795, file: !1796, line: 49, baseType: !1806, size: 320, offset: 320)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1807, line: 11, size: 320, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !{!1809, !1810, !1811, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1806, file: !1807, line: 16, baseType: !727, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1806, file: !1807, line: 17, baseType: !61, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1806, file: !1807, line: 18, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !1807, line: 19, baseType: !98, size: 32, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1795, file: !1796, line: 50, baseType: !61, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1795, file: !1796, line: 51, baseType: !534, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1795, file: !1796, line: 52, baseType: !534, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1795, file: !1796, line: 53, baseType: !534, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1795, file: !1796, line: 54, baseType: !534, size: 64, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1795, file: !1796, line: 55, baseType: !534, size: 64, offset: 960)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1795, file: !1796, line: 56, baseType: !61, size: 64, offset: 1024)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1795, file: !1796, line: 57, baseType: !61, size: 64, offset: 1088)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1795, file: !1796, line: 58, baseType: !61, size: 64, offset: 1152)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1795, file: !1796, line: 59, baseType: !61, size: 64, offset: 1216)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1795, file: !1796, line: 60, baseType: !61, size: 64, offset: 1280)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1795, file: !1796, line: 61, baseType: !155, size: 64, offset: 1344)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1795, file: !1796, line: 62, baseType: !110, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1795, file: !1796, line: 63, baseType: !110, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1776, file: !37, line: 583, baseType: !110, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1776, file: !37, line: 584, baseType: !110, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1776, file: !37, line: 585, baseType: !110, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1776, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1776, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1776, file: !37, line: 592, baseType: !526, size: 512, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1776, file: !37, line: 593, baseType: !318, size: 64, offset: 1088)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1776, file: !37, line: 594, baseType: !1356, size: 256, offset: 1152)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1776, file: !37, line: 595, baseType: !734, size: 128, offset: 1408)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1776, file: !37, line: 596, baseType: !1803, size: 64, offset: 1536)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1776, file: !37, line: 597, baseType: !131, size: 32, offset: 1600)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1776, file: !37, line: 598, baseType: !131, size: 32, offset: 1632)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1776, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1776, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1776, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1776, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1776, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1776, file: !37, line: 604, baseType: !110, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1776, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1776, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1776, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1776, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1776, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1776, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1776, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1776, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1776, file: !37, line: 613, baseType: !83, size: 32, offset: 1792)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1776, file: !37, line: 614, baseType: !83, size: 32, offset: 1824)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1776, file: !37, line: 615, baseType: !318, size: 64, offset: 1856)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1776, file: !37, line: 616, baseType: !318, size: 64, offset: 1920)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1776, file: !37, line: 617, baseType: !318, size: 64, offset: 1984)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1776, file: !37, line: 618, baseType: !318, size: 64, offset: 2048)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1776, file: !37, line: 620, baseType: !1864, size: 64, offset: 2112)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1865, file: !37, line: 537, baseType: !172)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1865, file: !37, line: 538, baseType: !7, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1865, file: !37, line: 540, baseType: !116, size: 128, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1865, file: !37, line: 543, baseType: !1871, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1776, file: !37, line: 621, baseType: !1874, size: 64, offset: 2176)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !155, !687}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1776, file: !37, line: 622, baseType: !1878, size: 64, offset: 2240)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !156, file: !30, line: 486, baseType: !1881, size: 64, offset: 4096)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1890, !1891, !1892}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1882, file: !37, line: 643, baseType: !1640, size: 1472)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1882, file: !37, line: 644, baseType: !1643, size: 64, offset: 1472)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1882, file: !37, line: 645, baseType: !1887, size: 64, offset: 1536)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !155, !110}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1882, file: !37, line: 646, baseType: !1643, size: 64, offset: 1600)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1882, file: !37, line: 647, baseType: !1634, size: 64, offset: 1664)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1882, file: !37, line: 648, baseType: !1634, size: 64, offset: 1728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !156, file: !30, line: 493, baseType: !1894, size: 64, offset: 4160)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !156, file: !30, line: 499, baseType: !116, size: 128, offset: 4224)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !156, file: !30, line: 502, baseType: !1898, size: 64, offset: 4352)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1900)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !156, file: !30, line: 504, baseType: !1902, size: 64, offset: 4416)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !156, file: !30, line: 505, baseType: !318, size: 64, offset: 4480)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !156, file: !30, line: 510, baseType: !318, size: 64, offset: 4544)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !156, file: !30, line: 511, baseType: !1906, size: 64, offset: 4608)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !156, file: !30, line: 513, baseType: !1910, size: 64, offset: 4672)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1911, file: !30, line: 293, baseType: !7, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1911, file: !30, line: 294, baseType: !61, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !156, file: !30, line: 515, baseType: !116, size: 128, offset: 4736)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !156, file: !30, line: 526, baseType: !1917, offset: 4864)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1918, line: 5, elements: !153)
!1918 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !156, file: !30, line: 528, baseType: !1920, size: 64, offset: 4864)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1922, line: 51, size: 1344, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1925, !1927, !1928, !2018, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1921, file: !1922, line: 52, baseType: !76, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1921, file: !1922, line: 53, baseType: !1926, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1922, line: 28, baseType: !98)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1921, file: !1922, line: 54, baseType: !76, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1921, file: !1922, line: 55, baseType: !1929, size: 192, offset: 192)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1930, line: 17, size: 192, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1934, !2017}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1929, file: !1930, line: 18, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1929, file: !1930, line: 19, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1930, line: 110, size: 1152, elements: !1938)
!1938 = !{!1939, !1943, !1947, !1953, !1959, !1963, !1967, !1972, !1976, !1977, !1981, !1985, !1989, !2000, !2001, !2002, !2003, !2013}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1937, file: !1930, line: 111, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1933, !1933}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1937, file: !1930, line: 112, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1933}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1937, file: !1930, line: 113, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!110, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1937, file: !1930, line: 114, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!1148, !1951, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1937, file: !1930, line: 116, baseType: !1960, size: 64, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!110, !1951, !76}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1937, file: !1930, line: 118, baseType: !1964, size: 64, offset: 320)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!83, !1951, !76, !7, !62, !106}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1937, file: !1930, line: 123, baseType: !1968, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!83, !1951, !76, !1971, !106}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1937, file: !1930, line: 126, baseType: !1973, size: 64, offset: 448)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!76, !1951}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1937, file: !1930, line: 127, baseType: !1973, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1937, file: !1930, line: 128, baseType: !1978, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1933, !1951}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1937, file: !1930, line: 130, baseType: !1982, size: 64, offset: 640)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1933, !1951, !1933}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1937, file: !1930, line: 133, baseType: !1986, size: 64, offset: 704)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!1933, !1951, !76}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1937, file: !1930, line: 135, baseType: !1990, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!83, !1951, !76, !76, !7, !7, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1930, line: 43, size: 640, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1994, file: !1930, line: 44, baseType: !1933, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1994, file: !1930, line: 45, baseType: !7, size: 32, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1994, file: !1930, line: 46, baseType: !1999, size: 512, offset: 128)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 512, elements: !564)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1937, file: !1930, line: 140, baseType: !1982, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1937, file: !1930, line: 143, baseType: !1978, size: 64, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1937, file: !1930, line: 145, baseType: !1940, size: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1937, file: !1930, line: 146, baseType: !2004, size: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!83, !1951, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1930, line: 29, size: 128, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2008, file: !1930, line: 30, baseType: !7, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2008, file: !1930, line: 31, baseType: !7, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2008, file: !1930, line: 32, baseType: !1951, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1937, file: !1930, line: 148, baseType: !2014, size: 64, offset: 1088)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!83, !1951, !155}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1929, file: !1930, line: 20, baseType: !155, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1921, file: !1922, line: 57, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1922, line: 31, size: 704, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2020, file: !1922, line: 32, baseType: !205, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2020, file: !1922, line: 33, baseType: !83, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2020, file: !1922, line: 34, baseType: !62, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2020, file: !1922, line: 35, baseType: !2019, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2020, file: !1922, line: 43, baseType: !268, size: 448, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1921, file: !1922, line: 58, baseType: !2019, size: 64, offset: 448)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1921, file: !1922, line: 59, baseType: !1920, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1921, file: !1922, line: 60, baseType: !1920, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1921, file: !1922, line: 61, baseType: !1920, size: 64, offset: 640)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1921, file: !1922, line: 63, baseType: !159, size: 512, offset: 704)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1921, file: !1922, line: 65, baseType: !61, size: 64, offset: 1216)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1921, file: !1922, line: 66, baseType: !62, size: 64, offset: 1280)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !156, file: !30, line: 529, baseType: !1933, size: 64, offset: 4928)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !156, file: !30, line: 534, baseType: !2036, size: 32, offset: 4992)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !60, line: 16, baseType: !2037)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !60, line: 13, baseType: !98)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !156, file: !30, line: 535, baseType: !98, size: 32, offset: 5024)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !156, file: !30, line: 537, baseType: !172, offset: 5056)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !156, file: !30, line: 538, baseType: !116, size: 128, offset: 5056)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !156, file: !30, line: 540, baseType: !2042, size: 64, offset: 5184)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2044, line: 54, size: 960, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2056, !2060, !2061, !2062, !2063, !2067, !2071, !2072}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2043, file: !2044, line: 55, baseType: !76, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2043, file: !2044, line: 56, baseType: !56, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2043, file: !2044, line: 58, baseType: !253, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2043, file: !2044, line: 59, baseType: !253, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2043, file: !2044, line: 60, baseType: !165, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2043, file: !2044, line: 62, baseType: !1625, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2043, file: !2044, line: 63, baseType: !2053, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!205, !155, !1632}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2043, file: !2044, line: 65, baseType: !2057, size: 64, offset: 448)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2042}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2043, file: !2044, line: 66, baseType: !1634, size: 64, offset: 512)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2043, file: !2044, line: 68, baseType: !1643, size: 64, offset: 576)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2043, file: !2044, line: 70, baseType: !1405, size: 64, offset: 640)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2043, file: !2044, line: 71, baseType: !2064, size: 64, offset: 704)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!1148, !155}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2043, file: !2044, line: 73, baseType: !2068, size: 64, offset: 768)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !155, !1440, !1446}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2043, file: !2044, line: 75, baseType: !1638, size: 64, offset: 832)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2043, file: !2044, line: 77, baseType: !1756, size: 64, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !156, file: !30, line: 541, baseType: !253, size: 64, offset: 5248)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !156, file: !30, line: 543, baseType: !1634, size: 64, offset: 5312)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !156, file: !30, line: 544, baseType: !2076, size: 64, offset: 5376)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !156, file: !30, line: 545, baseType: !2079, size: 64, offset: 5440)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !156, file: !30, line: 547, baseType: !110, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !156, file: !30, line: 548, baseType: !110, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !156, file: !30, line: 549, baseType: !110, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !156, file: !30, line: 550, baseType: !110, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !318)
!2089 = !{!0, !2090, !2097, !2102, !2107, !2110, !2113, !2173, !2176}
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "__exitcall_mtk_rng_driver_exit", scope: !2, file: !3, line: 191, type: !2092, isLocal: true, isDefinition: true)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2093, line: 117, baseType: !2094)
!2093 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null}
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description165", scope: !2, file: !3, line: 193, type: !2099, isLocal: true, isDefinition: true, align: 8)
!2099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 480, elements: !2100)
!2100 = !{!2101}
!2101 = !DISubrange(count: 60)
!2102 = !DIGlobalVariableExpression(var: !2103, expr: !DIExpression())
!2103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author166", scope: !2, file: !3, line: 194, type: !2104, isLocal: true, isDefinition: true, align: 8)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 400, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 50)
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file167", scope: !2, file: !3, line: 195, type: !2109, isLocal: true, isDefinition: true, align: 8)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 352, elements: !384)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license168", scope: !2, file: !3, line: 195, type: !2112, isLocal: true, isDefinition: true, align: 8)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !1222)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(name: "mtk_rng_driver", scope: !2, file: !3, line: 182, type: !2115, isLocal: true, isDefinition: true)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2116, line: 200, size: 1600, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2160, !2161, !2165, !2169, !2170, !2171, !2172}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2115, file: !2116, line: 201, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!83, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2116, line: 22, size: 6208, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2146, !2154, !2155, !2158}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2123, file: !2116, line: 23, baseType: !76, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2123, file: !2116, line: 24, baseType: !83, size: 32, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2123, file: !2116, line: 25, baseType: !110, size: 8, offset: 96)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2123, file: !2116, line: 26, baseType: !156, size: 5568, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2123, file: !2116, line: 27, baseType: !318, size: 64, offset: 5696)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2123, file: !2116, line: 28, baseType: !1911, size: 128, offset: 5760)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2123, file: !2116, line: 29, baseType: !98, size: 32, offset: 5888)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2123, file: !2116, line: 30, baseType: !2133, size: 64, offset: 5952)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2135, line: 20, size: 512, elements: !2136)
!2135 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2134, file: !2135, line: 21, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !60, line: 158, baseType: !1146)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2134, file: !2135, line: 22, baseType: !2138, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2134, file: !2135, line: 23, baseType: !76, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2134, file: !2135, line: 24, baseType: !61, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2134, file: !2135, line: 25, baseType: !61, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2134, file: !2135, line: 26, baseType: !2133, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2134, file: !2135, line: 26, baseType: !2133, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2134, file: !2135, line: 26, baseType: !2133, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2123, file: !2116, line: 32, baseType: !2147, size: 64, offset: 6016)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1696, line: 586, size: 256, elements: !2150)
!2150 = !{!2151, !2153}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2149, file: !1696, line: 587, baseType: !2152, size: 160)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, elements: !1222)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2149, file: !1696, line: 588, baseType: !1716, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2123, file: !2116, line: 33, baseType: !205, size: 64, offset: 6080)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2123, file: !2116, line: 36, baseType: !2156, size: 64, offset: 6144)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2116, line: 18, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2123, file: !2116, line: 39, baseType: !2159, offset: 6208)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1918, line: 8, elements: !153)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2115, file: !2116, line: 202, baseType: !2119, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2115, file: !2116, line: 203, baseType: !2162, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2122}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2115, file: !2116, line: 204, baseType: !2166, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!83, !2122, !1727}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2115, file: !2116, line: 205, baseType: !2119, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2115, file: !2116, line: 206, baseType: !1684, size: 1152, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2115, file: !2116, line: 207, baseType: !2147, size: 64, offset: 1472)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2115, file: !2116, line: 208, baseType: !110, size: 8, offset: 1536)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(name: "mtk_rng_match", scope: !2, file: !3, line: 176, type: !2175, isLocal: true, isDefinition: true)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 3200, elements: !991)
!2176 = !DIGlobalVariableExpression(var: !2177, expr: !DIExpression())
!2177 = distinct !DIGlobalVariable(name: "mtk_rng_pm_ops", scope: !2, file: !3, line: 169, type: !1639, isLocal: true, isDefinition: true)
!2178 = !{i32 7, !"Dwarf Version", i32 4}
!2179 = !{i32 2, !"Debug Info Version", i32 3}
!2180 = !{i32 1, !"wchar_size", i32 2}
!2181 = !{i32 1, !"Code Model", i32 2}
!2182 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2183 = distinct !DISubprogram(name: "mtk_rng_driver_init", scope: !3, file: !3, line: 191, type: !2184, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!83}
!2186 = !DILocation(line: 191, column: 1, scope: !2183)
!2187 = distinct !DISubprogram(name: "mtk_rng_driver_exit", scope: !3, file: !3, line: 191, type: !2095, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2188 = !DILocation(line: 191, column: 1, scope: !2187)
!2189 = distinct !DISubprogram(name: "mtk_rng_probe", scope: !3, file: !3, line: 106, type: !2120, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2190 = !DILocalVariable(name: "pdev", arg: 1, scope: !2189, file: !3, line: 106, type: !2122)
!2191 = !DILocation(line: 106, column: 50, scope: !2189)
!2192 = !DILocalVariable(name: "ret", scope: !2189, file: !3, line: 108, type: !83)
!2193 = !DILocation(line: 108, column: 6, scope: !2189)
!2194 = !DILocalVariable(name: "priv", scope: !2189, file: !3, line: 109, type: !63)
!2195 = !DILocation(line: 109, column: 18, scope: !2189)
!2196 = !DILocation(line: 111, column: 23, scope: !2189)
!2197 = !DILocation(line: 111, column: 29, scope: !2189)
!2198 = !DILocation(line: 111, column: 9, scope: !2189)
!2199 = !DILocation(line: 111, column: 7, scope: !2189)
!2200 = !DILocation(line: 112, column: 7, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 112, column: 6)
!2202 = !DILocation(line: 112, column: 6, scope: !2189)
!2203 = !DILocation(line: 113, column: 3, scope: !2201)
!2204 = !DILocation(line: 115, column: 19, scope: !2189)
!2205 = !DILocation(line: 115, column: 25, scope: !2189)
!2206 = !DILocation(line: 115, column: 2, scope: !2189)
!2207 = !DILocation(line: 115, column: 8, scope: !2189)
!2208 = !DILocation(line: 115, column: 12, scope: !2189)
!2209 = !DILocation(line: 115, column: 17, scope: !2189)
!2210 = !DILocation(line: 120, column: 2, scope: !2189)
!2211 = !DILocation(line: 120, column: 8, scope: !2189)
!2212 = !DILocation(line: 120, column: 12, scope: !2189)
!2213 = !DILocation(line: 120, column: 17, scope: !2189)
!2214 = !DILocation(line: 121, column: 35, scope: !2189)
!2215 = !DILocation(line: 121, column: 41, scope: !2189)
!2216 = !DILocation(line: 121, column: 19, scope: !2189)
!2217 = !DILocation(line: 121, column: 2, scope: !2189)
!2218 = !DILocation(line: 121, column: 8, scope: !2189)
!2219 = !DILocation(line: 121, column: 12, scope: !2189)
!2220 = !DILocation(line: 121, column: 17, scope: !2189)
!2221 = !DILocation(line: 122, column: 2, scope: !2189)
!2222 = !DILocation(line: 122, column: 8, scope: !2189)
!2223 = !DILocation(line: 122, column: 12, scope: !2189)
!2224 = !DILocation(line: 122, column: 20, scope: !2189)
!2225 = !DILocation(line: 124, column: 28, scope: !2189)
!2226 = !DILocation(line: 124, column: 34, scope: !2189)
!2227 = !DILocation(line: 124, column: 14, scope: !2189)
!2228 = !DILocation(line: 124, column: 2, scope: !2189)
!2229 = !DILocation(line: 124, column: 8, scope: !2189)
!2230 = !DILocation(line: 124, column: 12, scope: !2189)
!2231 = !DILocation(line: 125, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 125, column: 6)
!2233 = !DILocation(line: 125, column: 19, scope: !2232)
!2234 = !DILocation(line: 125, column: 6, scope: !2232)
!2235 = !DILocation(line: 125, column: 6, scope: !2189)
!2236 = !DILocation(line: 126, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 125, column: 25)
!2238 = !DILocation(line: 126, column: 23, scope: !2237)
!2239 = !DILocation(line: 126, column: 9, scope: !2237)
!2240 = !DILocation(line: 126, column: 7, scope: !2237)
!2241 = !DILocation(line: 127, column: 3, scope: !2237)
!2242 = !DILocation(line: 128, column: 10, scope: !2237)
!2243 = !DILocation(line: 128, column: 3, scope: !2237)
!2244 = !DILocation(line: 131, column: 46, scope: !2189)
!2245 = !DILocation(line: 131, column: 15, scope: !2189)
!2246 = !DILocation(line: 131, column: 2, scope: !2189)
!2247 = !DILocation(line: 131, column: 8, scope: !2189)
!2248 = !DILocation(line: 131, column: 13, scope: !2189)
!2249 = !DILocation(line: 132, column: 13, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 132, column: 6)
!2251 = !DILocation(line: 132, column: 19, scope: !2250)
!2252 = !DILocation(line: 132, column: 6, scope: !2250)
!2253 = !DILocation(line: 132, column: 6, scope: !2189)
!2254 = !DILocation(line: 133, column: 18, scope: !2250)
!2255 = !DILocation(line: 133, column: 24, scope: !2250)
!2256 = !DILocation(line: 133, column: 10, scope: !2250)
!2257 = !DILocation(line: 133, column: 3, scope: !2250)
!2258 = !DILocation(line: 135, column: 29, scope: !2189)
!2259 = !DILocation(line: 135, column: 35, scope: !2189)
!2260 = !DILocation(line: 135, column: 41, scope: !2189)
!2261 = !DILocation(line: 135, column: 47, scope: !2189)
!2262 = !DILocation(line: 135, column: 8, scope: !2189)
!2263 = !DILocation(line: 135, column: 6, scope: !2189)
!2264 = !DILocation(line: 136, column: 6, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 136, column: 6)
!2266 = !DILocation(line: 136, column: 6, scope: !2189)
!2267 = !DILocation(line: 137, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 136, column: 11)
!2269 = !DILocation(line: 139, column: 10, scope: !2268)
!2270 = !DILocation(line: 139, column: 3, scope: !2268)
!2271 = !DILocation(line: 142, column: 19, scope: !2189)
!2272 = !DILocation(line: 142, column: 25, scope: !2189)
!2273 = !DILocation(line: 142, column: 30, scope: !2189)
!2274 = !DILocation(line: 142, column: 2, scope: !2189)
!2275 = !DILocation(line: 143, column: 36, scope: !2189)
!2276 = !DILocation(line: 143, column: 42, scope: !2189)
!2277 = !DILocation(line: 143, column: 2, scope: !2189)
!2278 = !DILocation(line: 144, column: 30, scope: !2189)
!2279 = !DILocation(line: 144, column: 36, scope: !2189)
!2280 = !DILocation(line: 144, column: 2, scope: !2189)
!2281 = !DILocation(line: 145, column: 21, scope: !2189)
!2282 = !DILocation(line: 145, column: 27, scope: !2189)
!2283 = !DILocation(line: 145, column: 2, scope: !2189)
!2284 = !DILocation(line: 147, column: 2, scope: !2189)
!2285 = !DILocation(line: 149, column: 2, scope: !2189)
!2286 = !DILocation(line: 150, column: 1, scope: !2189)
!2287 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2288, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!62, !155, !106, !59}
!2290 = !DILocalVariable(name: "dev", arg: 1, scope: !2287, file: !30, line: 215, type: !155)
!2291 = !DILocation(line: 215, column: 49, scope: !2287)
!2292 = !DILocalVariable(name: "size", arg: 2, scope: !2287, file: !30, line: 215, type: !106)
!2293 = !DILocation(line: 215, column: 61, scope: !2287)
!2294 = !DILocalVariable(name: "gfp", arg: 3, scope: !2287, file: !30, line: 215, type: !59)
!2295 = !DILocation(line: 215, column: 73, scope: !2287)
!2296 = !DILocation(line: 217, column: 22, scope: !2287)
!2297 = !DILocation(line: 217, column: 27, scope: !2287)
!2298 = !DILocation(line: 217, column: 33, scope: !2287)
!2299 = !DILocation(line: 217, column: 37, scope: !2287)
!2300 = !DILocation(line: 217, column: 9, scope: !2287)
!2301 = !DILocation(line: 217, column: 2, scope: !2287)
!2302 = distinct !DISubprogram(name: "mtk_rng_read", scope: !3, file: !3, line: 83, type: !104, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2303 = !DILocalVariable(name: "rng", arg: 1, scope: !2302, file: !3, line: 83, type: !84)
!2304 = !DILocation(line: 83, column: 39, scope: !2302)
!2305 = !DILocalVariable(name: "buf", arg: 2, scope: !2302, file: !3, line: 83, type: !62)
!2306 = !DILocation(line: 83, column: 50, scope: !2302)
!2307 = !DILocalVariable(name: "max", arg: 3, scope: !2302, file: !3, line: 83, type: !106)
!2308 = !DILocation(line: 83, column: 62, scope: !2302)
!2309 = !DILocalVariable(name: "wait", arg: 4, scope: !2302, file: !3, line: 83, type: !110)
!2310 = !DILocation(line: 83, column: 72, scope: !2302)
!2311 = !DILocalVariable(name: "priv", scope: !2302, file: !3, line: 85, type: !63)
!2312 = !DILocation(line: 85, column: 18, scope: !2302)
!2313 = !DILocalVariable(name: "__mptr", scope: !2314, file: !3, line: 85, type: !62)
!2314 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 85, column: 25)
!2315 = !DILocation(line: 85, column: 25, scope: !2314)
!2316 = !DILocation(line: 85, column: 25, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 85, column: 25)
!2318 = !DILocalVariable(name: "retval", scope: !2302, file: !3, line: 86, type: !83)
!2319 = !DILocation(line: 86, column: 6, scope: !2302)
!2320 = !DILocation(line: 88, column: 39, scope: !2302)
!2321 = !DILocation(line: 88, column: 45, scope: !2302)
!2322 = !DILocation(line: 88, column: 49, scope: !2302)
!2323 = !DILocation(line: 88, column: 22, scope: !2302)
!2324 = !DILocation(line: 88, column: 2, scope: !2302)
!2325 = !DILocation(line: 90, column: 2, scope: !2302)
!2326 = !DILocation(line: 90, column: 9, scope: !2302)
!2327 = !DILocation(line: 90, column: 13, scope: !2302)
!2328 = !DILocation(line: 91, column: 27, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 91, column: 7)
!2330 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 90, column: 29)
!2331 = !DILocation(line: 91, column: 32, scope: !2329)
!2332 = !DILocation(line: 91, column: 8, scope: !2329)
!2333 = !DILocation(line: 91, column: 7, scope: !2330)
!2334 = !DILocation(line: 92, column: 4, scope: !2329)
!2335 = !DILocation(line: 94, column: 23, scope: !2330)
!2336 = !DILocation(line: 94, column: 29, scope: !2330)
!2337 = !DILocation(line: 94, column: 34, scope: !2330)
!2338 = !DILocation(line: 94, column: 17, scope: !2330)
!2339 = !DILocation(line: 94, column: 11, scope: !2330)
!2340 = !DILocation(line: 94, column: 4, scope: !2330)
!2341 = !DILocation(line: 94, column: 15, scope: !2330)
!2342 = !DILocation(line: 95, column: 10, scope: !2330)
!2343 = !DILocation(line: 96, column: 7, scope: !2330)
!2344 = !DILocation(line: 97, column: 7, scope: !2330)
!2345 = distinct !{!2345, !2325, !2346}
!2346 = !DILocation(line: 98, column: 2, scope: !2302)
!2347 = !DILocation(line: 100, column: 45, scope: !2302)
!2348 = !DILocation(line: 100, column: 51, scope: !2302)
!2349 = !DILocation(line: 100, column: 55, scope: !2302)
!2350 = !DILocation(line: 100, column: 28, scope: !2302)
!2351 = !DILocation(line: 100, column: 2, scope: !2302)
!2352 = !DILocation(line: 101, column: 51, scope: !2302)
!2353 = !DILocation(line: 101, column: 57, scope: !2302)
!2354 = !DILocation(line: 101, column: 61, scope: !2302)
!2355 = !DILocation(line: 101, column: 34, scope: !2302)
!2356 = !DILocation(line: 101, column: 2, scope: !2302)
!2357 = !DILocation(line: 103, column: 9, scope: !2302)
!2358 = !DILocation(line: 103, column: 16, scope: !2302)
!2359 = !DILocation(line: 103, column: 20, scope: !2302)
!2360 = !DILocation(line: 103, column: 27, scope: !2302)
!2361 = !DILocation(line: 103, column: 2, scope: !2302)
!2362 = distinct !DISubprogram(name: "IS_ERR", scope: !2363, file: !2363, line: 34, type: !2364, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2363 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!110, !1148}
!2366 = !DILocalVariable(name: "ptr", arg: 1, scope: !2362, file: !2363, line: 34, type: !1148)
!2367 = !DILocation(line: 34, column: 60, scope: !2362)
!2368 = !DILocation(line: 36, column: 9, scope: !2362)
!2369 = !DILocation(line: 36, column: 2, scope: !2362)
!2370 = distinct !DISubprogram(name: "PTR_ERR", scope: !2363, file: !2363, line: 29, type: !2371, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!239, !1148}
!2373 = !DILocalVariable(name: "ptr", arg: 1, scope: !2370, file: !2363, line: 29, type: !1148)
!2374 = !DILocation(line: 29, column: 61, scope: !2370)
!2375 = !DILocation(line: 31, column: 16, scope: !2370)
!2376 = !DILocation(line: 31, column: 9, scope: !2370)
!2377 = !DILocation(line: 31, column: 2, scope: !2370)
!2378 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2379, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !155, !62}
!2381 = !DILocalVariable(name: "dev", arg: 1, scope: !2378, file: !30, line: 660, type: !155)
!2382 = !DILocation(line: 660, column: 51, scope: !2378)
!2383 = !DILocalVariable(name: "data", arg: 2, scope: !2378, file: !30, line: 660, type: !62)
!2384 = !DILocation(line: 660, column: 62, scope: !2378)
!2385 = !DILocation(line: 662, column: 21, scope: !2378)
!2386 = !DILocation(line: 662, column: 2, scope: !2378)
!2387 = !DILocation(line: 662, column: 7, scope: !2378)
!2388 = !DILocation(line: 662, column: 19, scope: !2378)
!2389 = !DILocation(line: 663, column: 1, scope: !2378)
!2390 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !2391, file: !2391, line: 537, type: !1635, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2391 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2392 = !DILocalVariable(name: "dev", arg: 1, scope: !2390, file: !2391, line: 537, type: !155)
!2393 = !DILocation(line: 537, column: 62, scope: !2390)
!2394 = !DILocation(line: 539, column: 31, scope: !2390)
!2395 = !DILocation(line: 539, column: 2, scope: !2390)
!2396 = !DILocation(line: 540, column: 1, scope: !2390)
!2397 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !2391, file: !2391, line: 384, type: !1644, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2398 = !DILocalVariable(name: "dev", arg: 1, scope: !2397, file: !2391, line: 384, type: !155)
!2399 = !DILocation(line: 384, column: 54, scope: !2397)
!2400 = !DILocation(line: 386, column: 29, scope: !2397)
!2401 = !DILocation(line: 386, column: 9, scope: !2397)
!2402 = !DILocation(line: 386, column: 2, scope: !2397)
!2403 = distinct !DISubprogram(name: "mtk_rng_wait_ready", scope: !3, file: !3, line: 70, type: !2404, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!110, !84, !110}
!2406 = !DILocalVariable(name: "rng", arg: 1, scope: !2403, file: !3, line: 70, type: !84)
!2407 = !DILocation(line: 70, column: 46, scope: !2403)
!2408 = !DILocalVariable(name: "wait", arg: 2, scope: !2403, file: !3, line: 70, type: !110)
!2409 = !DILocation(line: 70, column: 56, scope: !2403)
!2410 = !DILocalVariable(name: "priv", scope: !2403, file: !3, line: 72, type: !63)
!2411 = !DILocation(line: 72, column: 18, scope: !2403)
!2412 = !DILocalVariable(name: "__mptr", scope: !2413, file: !3, line: 72, type: !62)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 72, column: 25)
!2414 = !DILocation(line: 72, column: 25, scope: !2413)
!2415 = !DILocation(line: 72, column: 25, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 72, column: 25)
!2417 = !DILocalVariable(name: "ready", scope: !2403, file: !3, line: 73, type: !83)
!2418 = !DILocation(line: 73, column: 6, scope: !2403)
!2419 = !DILocation(line: 75, column: 16, scope: !2403)
!2420 = !DILocation(line: 75, column: 22, scope: !2403)
!2421 = !DILocation(line: 75, column: 27, scope: !2403)
!2422 = !DILocation(line: 75, column: 10, scope: !2403)
!2423 = !DILocation(line: 75, column: 39, scope: !2403)
!2424 = !DILocation(line: 75, column: 8, scope: !2403)
!2425 = !DILocation(line: 76, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 76, column: 6)
!2427 = !DILocation(line: 76, column: 13, scope: !2426)
!2428 = !DILocation(line: 76, column: 16, scope: !2426)
!2429 = !DILocation(line: 76, column: 6, scope: !2403)
!2430 = !DILocalVariable(name: "__timeout_us", scope: !2431, file: !3, line: 77, type: !318)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 77, column: 3)
!2432 = !DILocation(line: 77, column: 3, scope: !2431)
!2433 = !DILocalVariable(name: "__delay_us", scope: !2431, file: !3, line: 77, type: !61)
!2434 = !DILocalVariable(name: "__timeout", scope: !2431, file: !3, line: 77, type: !534)
!2435 = !DILocation(line: 77, column: 3, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 77, column: 3)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 77, column: 3)
!2438 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 77, column: 3)
!2439 = !DILocation(line: 77, column: 3, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 77, column: 3)
!2441 = !DILocation(line: 77, column: 3, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 77, column: 3)
!2443 = !DILocation(line: 77, column: 3, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 77, column: 3)
!2445 = !DILocation(line: 77, column: 3, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 77, column: 3)
!2447 = !DILocation(line: 77, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 77, column: 3)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 77, column: 3)
!2450 = !DILocation(line: 77, column: 3, scope: !2449)
!2451 = !DILocation(line: 77, column: 3, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 77, column: 3)
!2453 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 77, column: 3)
!2454 = !DILocation(line: 77, column: 3, scope: !2453)
!2455 = !DILocation(line: 77, column: 3, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 77, column: 3)
!2457 = !DILocation(line: 77, column: 3, scope: !2437)
!2458 = distinct !{!2458, !2459, !2459}
!2459 = !DILocation(line: 77, column: 3, scope: !2438)
!2460 = !DILocation(line: 77, column: 3, scope: !2426)
!2461 = !DILocation(line: 80, column: 11, scope: !2403)
!2462 = !DILocation(line: 80, column: 10, scope: !2403)
!2463 = !DILocation(line: 80, column: 9, scope: !2403)
!2464 = !DILocation(line: 80, column: 2, scope: !2403)
!2465 = distinct !DISubprogram(name: "readl", scope: !2466, file: !2466, line: 59, type: !2467, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2466 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!7, !2469}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2472 = !DILocalVariable(name: "addr", arg: 1, scope: !2465, file: !2466, line: 59, type: !2469)
!2473 = !DILocation(line: 59, column: 1, scope: !2465)
!2474 = !DILocalVariable(name: "ret", scope: !2465, file: !2466, line: 59, type: !7)
!2475 = !{i32 -2145263564}
!2476 = distinct !DISubprogram(name: "pm_runtime_mark_last_busy", scope: !2391, file: !2391, line: 194, type: !1635, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2477 = !DILocalVariable(name: "dev", arg: 1, scope: !2476, file: !2391, line: 194, type: !155)
!2478 = !DILocation(line: 194, column: 61, scope: !2476)
!2479 = !DILocation(line: 196, column: 2, scope: !2476)
!2480 = !DILocation(line: 196, column: 2, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !2391, line: 196, column: 2)
!2482 = !DILocation(line: 196, column: 2, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2481, file: !2391, line: 196, column: 2)
!2484 = !DILocation(line: 196, column: 2, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !2391, line: 196, column: 2)
!2486 = !DILocation(line: 197, column: 1, scope: !2476)
!2487 = distinct !DISubprogram(name: "pm_runtime_put_sync_autosuspend", scope: !2391, file: !2391, line: 481, type: !1644, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2488 = !DILocalVariable(name: "dev", arg: 1, scope: !2487, file: !2391, line: 481, type: !155)
!2489 = !DILocation(line: 481, column: 66, scope: !2487)
!2490 = !DILocation(line: 483, column: 30, scope: !2487)
!2491 = !DILocation(line: 483, column: 9, scope: !2487)
!2492 = !DILocation(line: 483, column: 2, scope: !2487)
!2493 = distinct !DISubprogram(name: "ktime_add_us", scope: !535, file: !535, line: 179, type: !2494, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!534, !2496, !2497}
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!2498 = !DILocalVariable(name: "kt", arg: 1, scope: !2493, file: !535, line: 179, type: !2496)
!2499 = !DILocation(line: 179, column: 50, scope: !2493)
!2500 = !DILocalVariable(name: "usec", arg: 2, scope: !2493, file: !535, line: 179, type: !2497)
!2501 = !DILocation(line: 179, column: 64, scope: !2493)
!2502 = !DILocation(line: 181, column: 9, scope: !2493)
!2503 = !DILocation(line: 181, column: 2, scope: !2493)
!2504 = distinct !DISubprogram(name: "ktime_compare", scope: !535, file: !535, line: 95, type: !2505, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!83, !2496, !2496}
!2507 = !DILocalVariable(name: "cmp1", arg: 1, scope: !2504, file: !535, line: 95, type: !2496)
!2508 = !DILocation(line: 95, column: 47, scope: !2504)
!2509 = !DILocalVariable(name: "cmp2", arg: 2, scope: !2504, file: !535, line: 95, type: !2496)
!2510 = !DILocation(line: 95, column: 67, scope: !2504)
!2511 = !DILocation(line: 97, column: 6, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !535, line: 97, column: 6)
!2513 = !DILocation(line: 97, column: 13, scope: !2512)
!2514 = !DILocation(line: 97, column: 11, scope: !2512)
!2515 = !DILocation(line: 97, column: 6, scope: !2504)
!2516 = !DILocation(line: 98, column: 3, scope: !2512)
!2517 = !DILocation(line: 99, column: 6, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2504, file: !535, line: 99, column: 6)
!2519 = !DILocation(line: 99, column: 13, scope: !2518)
!2520 = !DILocation(line: 99, column: 11, scope: !2518)
!2521 = !DILocation(line: 99, column: 6, scope: !2504)
!2522 = !DILocation(line: 100, column: 3, scope: !2518)
!2523 = !DILocation(line: 101, column: 2, scope: !2504)
!2524 = !DILocation(line: 102, column: 1, scope: !2504)
!2525 = distinct !DISubprogram(name: "mtk_rng_runtime_suspend", scope: !3, file: !3, line: 153, type: !1644, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2526 = !DILocalVariable(name: "dev", arg: 1, scope: !2525, file: !3, line: 153, type: !155)
!2527 = !DILocation(line: 153, column: 51, scope: !2525)
!2528 = !DILocalVariable(name: "priv", scope: !2525, file: !3, line: 155, type: !63)
!2529 = !DILocation(line: 155, column: 18, scope: !2525)
!2530 = !DILocation(line: 155, column: 41, scope: !2525)
!2531 = !DILocation(line: 155, column: 25, scope: !2525)
!2532 = !DILocation(line: 157, column: 19, scope: !2525)
!2533 = !DILocation(line: 157, column: 25, scope: !2525)
!2534 = !DILocation(line: 157, column: 2, scope: !2525)
!2535 = !DILocation(line: 159, column: 2, scope: !2525)
!2536 = distinct !DISubprogram(name: "mtk_rng_runtime_resume", scope: !3, file: !3, line: 162, type: !1644, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2537 = !DILocalVariable(name: "dev", arg: 1, scope: !2536, file: !3, line: 162, type: !155)
!2538 = !DILocation(line: 162, column: 50, scope: !2536)
!2539 = !DILocalVariable(name: "priv", scope: !2536, file: !3, line: 164, type: !63)
!2540 = !DILocation(line: 164, column: 18, scope: !2536)
!2541 = !DILocation(line: 164, column: 41, scope: !2536)
!2542 = !DILocation(line: 164, column: 25, scope: !2536)
!2543 = !DILocation(line: 166, column: 23, scope: !2536)
!2544 = !DILocation(line: 166, column: 29, scope: !2536)
!2545 = !DILocation(line: 166, column: 9, scope: !2536)
!2546 = !DILocation(line: 166, column: 2, scope: !2536)
!2547 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2548, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!62, !1957}
!2550 = !DILocalVariable(name: "dev", arg: 1, scope: !2547, file: !30, line: 655, type: !1957)
!2551 = !DILocation(line: 655, column: 58, scope: !2547)
!2552 = !DILocation(line: 657, column: 9, scope: !2547)
!2553 = !DILocation(line: 657, column: 14, scope: !2547)
!2554 = !DILocation(line: 657, column: 2, scope: !2547)
!2555 = distinct !DISubprogram(name: "mtk_rng_cleanup", scope: !3, file: !3, line: 58, type: !87, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2556 = !DILocalVariable(name: "rng", arg: 1, scope: !2555, file: !3, line: 58, type: !84)
!2557 = !DILocation(line: 58, column: 43, scope: !2555)
!2558 = !DILocalVariable(name: "priv", scope: !2555, file: !3, line: 60, type: !63)
!2559 = !DILocation(line: 60, column: 18, scope: !2555)
!2560 = !DILocalVariable(name: "__mptr", scope: !2561, file: !3, line: 60, type: !62)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 60, column: 25)
!2562 = !DILocation(line: 60, column: 25, scope: !2561)
!2563 = !DILocation(line: 60, column: 25, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 60, column: 25)
!2565 = !DILocalVariable(name: "val", scope: !2555, file: !3, line: 61, type: !98)
!2566 = !DILocation(line: 61, column: 6, scope: !2555)
!2567 = !DILocation(line: 63, column: 14, scope: !2555)
!2568 = !DILocation(line: 63, column: 20, scope: !2555)
!2569 = !DILocation(line: 63, column: 25, scope: !2555)
!2570 = !DILocation(line: 63, column: 8, scope: !2555)
!2571 = !DILocation(line: 63, column: 6, scope: !2555)
!2572 = !DILocation(line: 64, column: 6, scope: !2555)
!2573 = !DILocation(line: 65, column: 9, scope: !2555)
!2574 = !DILocation(line: 65, column: 14, scope: !2555)
!2575 = !DILocation(line: 65, column: 20, scope: !2555)
!2576 = !DILocation(line: 65, column: 25, scope: !2555)
!2577 = !DILocation(line: 65, column: 2, scope: !2555)
!2578 = !DILocation(line: 67, column: 24, scope: !2555)
!2579 = !DILocation(line: 67, column: 30, scope: !2555)
!2580 = !DILocation(line: 67, column: 2, scope: !2555)
!2581 = !DILocation(line: 68, column: 1, scope: !2555)
!2582 = distinct !DISubprogram(name: "writel", scope: !2466, file: !2466, line: 67, type: !2583, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !7, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2586 = !DILocalVariable(name: "val", arg: 1, scope: !2582, file: !2466, line: 67, type: !7)
!2587 = !DILocation(line: 67, column: 1, scope: !2582)
!2588 = !DILocalVariable(name: "addr", arg: 2, scope: !2582, file: !2466, line: 67, type: !2585)
!2589 = !{i32 -2145261171}
!2590 = distinct !DISubprogram(name: "clk_disable_unprepare", scope: !70, file: !70, line: 921, type: !2591, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{null, !68}
!2593 = !DILocalVariable(name: "clk", arg: 1, scope: !2590, file: !70, line: 921, type: !68)
!2594 = !DILocation(line: 921, column: 54, scope: !2590)
!2595 = !DILocation(line: 923, column: 14, scope: !2590)
!2596 = !DILocation(line: 923, column: 2, scope: !2590)
!2597 = !DILocation(line: 924, column: 16, scope: !2590)
!2598 = !DILocation(line: 924, column: 2, scope: !2590)
!2599 = !DILocation(line: 925, column: 1, scope: !2590)
!2600 = distinct !DISubprogram(name: "mtk_rng_init", scope: !3, file: !3, line: 41, type: !81, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2601 = !DILocalVariable(name: "rng", arg: 1, scope: !2600, file: !3, line: 41, type: !84)
!2602 = !DILocation(line: 41, column: 39, scope: !2600)
!2603 = !DILocalVariable(name: "priv", scope: !2600, file: !3, line: 43, type: !63)
!2604 = !DILocation(line: 43, column: 18, scope: !2600)
!2605 = !DILocalVariable(name: "__mptr", scope: !2606, file: !3, line: 43, type: !62)
!2606 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 43, column: 25)
!2607 = !DILocation(line: 43, column: 25, scope: !2606)
!2608 = !DILocation(line: 43, column: 25, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 43, column: 25)
!2610 = !DILocalVariable(name: "val", scope: !2600, file: !3, line: 44, type: !98)
!2611 = !DILocation(line: 44, column: 6, scope: !2600)
!2612 = !DILocalVariable(name: "err", scope: !2600, file: !3, line: 45, type: !83)
!2613 = !DILocation(line: 45, column: 6, scope: !2600)
!2614 = !DILocation(line: 47, column: 27, scope: !2600)
!2615 = !DILocation(line: 47, column: 33, scope: !2600)
!2616 = !DILocation(line: 47, column: 8, scope: !2600)
!2617 = !DILocation(line: 47, column: 6, scope: !2600)
!2618 = !DILocation(line: 48, column: 6, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 48, column: 6)
!2620 = !DILocation(line: 48, column: 6, scope: !2600)
!2621 = !DILocation(line: 49, column: 10, scope: !2619)
!2622 = !DILocation(line: 49, column: 3, scope: !2619)
!2623 = !DILocation(line: 51, column: 14, scope: !2600)
!2624 = !DILocation(line: 51, column: 20, scope: !2600)
!2625 = !DILocation(line: 51, column: 25, scope: !2600)
!2626 = !DILocation(line: 51, column: 8, scope: !2600)
!2627 = !DILocation(line: 51, column: 6, scope: !2600)
!2628 = !DILocation(line: 52, column: 6, scope: !2600)
!2629 = !DILocation(line: 53, column: 9, scope: !2600)
!2630 = !DILocation(line: 53, column: 14, scope: !2600)
!2631 = !DILocation(line: 53, column: 20, scope: !2600)
!2632 = !DILocation(line: 53, column: 25, scope: !2600)
!2633 = !DILocation(line: 53, column: 2, scope: !2600)
!2634 = !DILocation(line: 55, column: 2, scope: !2600)
!2635 = !DILocation(line: 56, column: 1, scope: !2600)
!2636 = distinct !DISubprogram(name: "clk_prepare_enable", scope: !70, file: !70, line: 906, type: !2637, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !153)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!83, !68}
!2639 = !DILocalVariable(name: "clk", arg: 1, scope: !2636, file: !70, line: 906, type: !68)
!2640 = !DILocation(line: 906, column: 50, scope: !2636)
!2641 = !DILocalVariable(name: "ret", scope: !2636, file: !70, line: 908, type: !83)
!2642 = !DILocation(line: 908, column: 6, scope: !2636)
!2643 = !DILocation(line: 910, column: 20, scope: !2636)
!2644 = !DILocation(line: 910, column: 8, scope: !2636)
!2645 = !DILocation(line: 910, column: 6, scope: !2636)
!2646 = !DILocation(line: 911, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2636, file: !70, line: 911, column: 6)
!2648 = !DILocation(line: 911, column: 6, scope: !2636)
!2649 = !DILocation(line: 912, column: 10, scope: !2647)
!2650 = !DILocation(line: 912, column: 3, scope: !2647)
!2651 = !DILocation(line: 913, column: 19, scope: !2636)
!2652 = !DILocation(line: 913, column: 8, scope: !2636)
!2653 = !DILocation(line: 913, column: 6, scope: !2636)
!2654 = !DILocation(line: 914, column: 6, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2636, file: !70, line: 914, column: 6)
!2656 = !DILocation(line: 914, column: 6, scope: !2636)
!2657 = !DILocation(line: 915, column: 17, scope: !2655)
!2658 = !DILocation(line: 915, column: 3, scope: !2655)
!2659 = !DILocation(line: 917, column: 9, scope: !2636)
!2660 = !DILocation(line: 917, column: 2, scope: !2636)
!2661 = !DILocation(line: 918, column: 1, scope: !2636)
